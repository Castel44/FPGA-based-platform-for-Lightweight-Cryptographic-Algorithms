-- Top entity used for experimental measurements of power consumption on the Zybo board 
-- this top entity is kept omogeneous among all ciphers as much as possible to allow a fair comparison
-- it is implemented via a state machine. 

-- this top entity has only three ports plus clock. 
-- the three ports are mapped to Zybo GPIOs and the connections are specified in the XDC constraints file
-- More in detail, start is mapped to Pmod JA N16 pin, rst to Pmod JA L15 pin and led_out to LED PIN M14
-- the led out is only a visual cue for cipher proper functioning and encryption success.
------------------------------------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Testing_IP IS
	PORT (
		start : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic;
		led_out : OUT std_logic
	);
END Testing_IP;
ARCHITECTURE Behavioral OF Testing_IP IS
	COMPONENT AES_128_parallel IS
		PORT (
			clk, data_ready, start : IN std_logic;
			key_in : IN std_logic_vector(127 DOWNTO 0);
			plaintext_in : IN std_logic_vector(127 DOWNTO 0);
			busy : OUT std_logic := '0';
			ciphertext_out : OUT std_logic_vector(127 DOWNTO 0) := (OTHERS => '0')
		);
	END COMPONENT;
	
    -- Counter with enable port.
    -- It is used to handle the correct loading of plaintext and key 		
	COMPONENT cnt
		GENERIC (size : INTEGER := 5);
		PORT (
			ce, clk, rst : IN std_logic;
			cnt_out : OUT std_logic_vector(size - 1 DOWNTO 0)
		);
	END COMPONENT;
	
------------------------------------------------------------------------------------------------------------
    -- TEST VECTOR	
	SIGNAL KEY_REG : std_logic_vector(127 DOWNTO 0) := X"5468617473206D79204B756E67204675";
	SIGNAL PLAINTEXT_REG : std_logic_vector(127 DOWNTO 0) := X"54776F204F6E65204E696E652054776F";
	
	-- INTERNAL SIGNALS
	SIGNAL ciphertext_out_W : std_logic_vector(127 DOWNTO 0);

	SIGNAL busy_W, data_ready_W, start_W : std_logic;

	SIGNAL cnt_ce_W : std_logic;
	SIGNAL cnt_rst_W : std_logic;
	SIGNAL cnt_out_W : std_logic_vector(1 DOWNTO 0);

	TYPE state IS (START_ENC, LOADING, ENDING, IDLE, ENC, WAITING, SUCCESS);
	SIGNAL nx_state : state;
	SIGNAL current_state : state := IDLE;
	
BEGIN

------------------------------------------------------------------------------------------------------------
-- Component Instantiation

	-- Cipher under Test
	AES_DUT : AES_128_parallel
	PORT MAP(
		clk => clk,
		plaintext_in => PLAINTEXT_REG,
		key_in => KEY_REG,
		start => start_W,
		data_ready => data_ready_W,
		ciphertext_out => ciphertext_out_W,
		busy => busy_W
	);
	
	INST_CNT : cnt
	GENERIC MAP(size => 2)
	PORT MAP(
		clk => clk,
		ce => cnt_ce_W,
		rst => cnt_rst_W,
		cnt_out => cnt_out_W
	);
	
------------------------------------------------------------------------------------------------------------
    -- Finite state machine to manage the cipher operations.	
	STATE_MACHINE_MAIN : PROCESS (clk, rst)
	BEGIN
		IF rising_edge(CLK) THEN
			IF (rst = '1') THEN
				current_state <= idle;
			ELSE
				current_state <= nx_state;
			END IF;
		END IF;
	END PROCESS;
	
    -- Only 1 encryption is made, then it is checked for correctness. A led will light up if the results it's correct.
    -- To start a new encryption the Testing_IP needs to be resetted via rst port.  	
	STATE_MACHINE_BODY : PROCESS (current_state, start, cnt_out_W, ciphertext_out_W, busy_W)
	BEGIN
		CASE current_state IS
			WHEN idle =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '0';

				-- output ports 
				led_out <= '0';

				-- transition 
				IF start = '1' THEN
					nx_state <= loading;
				ELSE
					nx_state <= idle;
				END IF;

			WHEN loading =>
				-- CIPHER inputs
				data_ready_W <= '1'; -- data_ready goes high 
				start_W <= '0';

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '1';

				-- output ports 
				led_out <= '0';

				-- transition         
				nx_state <= waiting;	--data loaded in 1 clk 

			WHEN waiting =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';

				-- CNT 
				cnt_ce_W <= '1';
				cnt_rst_W <= '0';

				-- output ports 
				led_out <= '0';

				-- transition
				-- the cipher needs up to 4 clk cycle to set his registers properly         
				IF cnt_out_W = b"11" THEN
					nx_state <= start_enc;
				ELSE
					nx_state <= waiting;
				END IF;

			WHEN start_enc =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '1';

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '0'; -- reset cnt 

				-- output ports 
				led_out <= '0';

				-- transition         
				nx_state <= enc;

			WHEN enc =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '0';

				-- output ports 
				led_out <= '0';

				-- transition 
				IF busy_W = '0' THEN
					nx_state <= ending;
				ELSE
					nx_state <= enc;
				END IF;

			WHEN ending =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '1'; -- reset cnt 

				-- output ports     
				led_out <= '0';
				
				-- transition 
				IF ciphertext_out_W = X"29C3505F571420F6402299B31A02D73A" THEN
					nx_state <= success;
				ELSE
					nx_state <= enc;
				END IF;

			WHEN success =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '1'; -- reset cnt 

				-- output ports         
				led_out <= '1';		-- Success! led should turn on

				-- transition            
				nx_state <= success;

		END CASE;

	END PROCESS;
END Behavioral;