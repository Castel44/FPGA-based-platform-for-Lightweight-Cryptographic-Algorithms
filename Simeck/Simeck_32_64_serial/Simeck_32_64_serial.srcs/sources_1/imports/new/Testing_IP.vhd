-- Top entity used for experimental measurements of power consumption on the Zybo board 
-- this top entity is kept omogeneous among all ciphers as much as possible to allow a fair comparison
-- it is implemented via a state machine. 

-- this top entity has only three ports plus clock. 
-- the three ports are mapped to Zybo GPIOs and the connections are specified in the XDC constraints file
-- More in detail, start is mapped to Pmod JA N16 pin, rst to Pmod JA L15 pin and led_out to LED PIN M14
-- the led out is only a visual cue for cipher proper functioning and encryption success.

-- The generic datapath is just for easily reuse of this top module with another ciphers.
-- It is not literally the datapath, but half the plaintext size.
------------------------------------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Testing_IP IS
	GENERIC (Datapath : INTEGER RANGE 0 TO 32 := 16);
	PORT (
		start : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic;
		led_out : OUT std_logic
	);
END Testing_IP;

ARCHITECTURE Behavioral OF Testing_IP IS

------------------------------------------------------------------------------------------------------------
	-- Subcomponents declaration:
	-- DUT: Simeck with Block size = 32 bit; Key size = 64 bit
	-- Datapath = 1 bit
	COMPONENT Simeck_32_64_serial IS
		PORT (
			clk, data_ready, start : IN std_logic;
			key_in : IN std_logic_vector(0 DOWNTO 0);
			plaintext_in : IN std_logic_vector(0 DOWNTO 0);
			busy : OUT std_logic := '0';
			ciphertext_out : OUT std_logic_vector(0 DOWNTO 0) := (OTHERS => '0')
		);
	END COMPONENT;
	
    -- Counter with enable port.
    -- It is used to handle the correct loading of plaintext and key 	
	COMPONENT cnt
		GENERIC (size : INTEGER := 6);
		PORT (
			ce, clk, rst : IN std_logic;
			cnt_out : OUT std_logic_vector(size - 1 DOWNTO 0)
		);
	END COMPONENT;

------------------------------------------------------------------------------------------------------------
    -- TEST VECTOR
	SIGNAL key_tst : std_logic_vector(Datapath * 4 - 1 DOWNTO 0) := X"1918111009080100";
	SIGNAL plaintext_tst : std_logic_vector(Datapath * 4 - 1 DOWNTO 0) := (X"00000000" & X"65656877");	-- plaintext with some zeros concatenate on top of it, makes easier the correct loading into Internal state register
	SIGNAL ciphertext_out_W : std_logic_vector(0 DOWNTO 0);
	SIGNAL correct_ciphertext : std_logic_vector(Datapath * 2 - 1 DOWNTO 0) := X"770d2c76";

	-- INTERNAL SIGNALS
	SIGNAL plaintext_reg : std_logic_vector(0 DOWNTO 0) := (OTHERS => '0');
	SIGNAL key_reg : std_logic_vector(0 DOWNTO 0) := (OTHERS => '0');

	SIGNAL busy_W, data_ready_W, start_W : std_logic;

	SIGNAL cnt_ce_W : std_logic;
	SIGNAL cnt_rst_W : std_logic;
	SIGNAL cnt_out_W : std_logic_vector(5 DOWNTO 0);

	-- FSM SIGNALS
	TYPE state IS (START_ENC, LOADING, ENDING, IDLE, ENC, WAITING, SUCCESS);
	SIGNAL nx_state : state;
	SIGNAL current_state : state := IDLE;
	
BEGIN

------------------------------------------------------------------------------------------------------------
-- Component Instantiation

	-- Cipher under Test
	Simeck_DUT : Simeck_32_64_serial
	PORT MAP(
		clk => clk,
		plaintext_in => plaintext_reg,
		key_in => key_reg,
		start => start_W,
		data_ready => data_ready_W,
		ciphertext_out => ciphertext_out_W,
		busy => busy_W
	);
	
	INST_CNT : cnt
	GENERIC MAP(size => 6)
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
	STATE_MACHINE_BODY : PROCESS (current_state, start, cnt_out_W, ciphertext_out_W, busy_W, key_tst, plaintext_tst, correct_ciphertext)
	BEGIN
		CASE current_state IS

			WHEN idle =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';
				plaintext_reg <= (OTHERS => '0');
				key_reg <= (OTHERS => '0');

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
				data_ready_W <= '1'; -- signal for cipher to start loading new key and plaintext
				start_W <= '0';
				plaintext_reg <= (OTHERS => '0');
				key_reg <= (OTHERS => '0');

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '1';

				-- output ports 
				led_out <= '0';

				-- transition         
				nx_state <= waiting;

			WHEN waiting =>
				-- CNT 
				cnt_ce_W <= '1';
				cnt_rst_W <= '0';

				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';
				plaintext_reg <= plaintext_tst(to_integer(unsigned(cnt_out_W)) DOWNTO(to_integer(unsigned(cnt_out_W))));
				key_reg <= key_tst(to_integer(unsigned(cnt_out_W)) DOWNTO (to_integer(unsigned(cnt_out_W))));

				-- output ports 
				led_out <= '0';

				-- State transition   
				-- Since datapath is 1 bit, it takes 64 clk clycle to correct load new key and plaintext
				IF cnt_out_W = b"111111" THEN
					nx_state <= start_enc;
				ELSE
					nx_state <= waiting;
				END IF;

			WHEN start_enc =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '1';
				plaintext_reg <= (OTHERS => '0');
				key_reg <= (OTHERS => '0');

				-- CNT 
				cnt_ce_W <= '1';
				cnt_rst_W <= '0'; -- reset cnt 

				-- output ports 
				led_out <= '0';

				-- transition
				-- the cipher needs up to 4 clk cycle to set his registers properly  
				IF cnt_out_W = b"0000011" THEN
					nx_state <= enc;
				ELSE
					nx_state <= start_enc;
				END IF;

			WHEN enc =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';
				plaintext_reg <= (OTHERS => '0');
				key_reg <= (OTHERS => '0');

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '1';

				-- output ports 
				led_out <= '0';

				-- transition 
                -- Control the first part of ciphertext if it is correct 
				IF (busy_W = '0') AND (ciphertext_out_W = correct_ciphertext(0 DOWNTO 0)) THEN
					nx_state <= ending;
				ELSE
					nx_state <= enc;
				END IF;

			WHEN ending =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';
				plaintext_reg <= (OTHERS => '0');
				key_reg <= (OTHERS => '0');

				-- CNT 
				cnt_ce_W <= '1';
				cnt_rst_W <= '0'; -- reset cnt 

				-- output ports     
				led_out <= '0';

				-- transition    
				IF ciphertext_out_W = correct_ciphertext(1 + to_integer(unsigned(cnt_out_W)) DOWNTO 1 + to_integer(unsigned(cnt_out_W))) THEN
				    -- check the first 64 value of ciphertext (63 here, 1 on previous state)				
					IF cnt_out_W = b"11110" THEN
						nx_state <= success;
					ELSE
						nx_state <= ending;
					END IF;
				ELSE	 -- if an error occurs go into idle state
					nx_state <= idle;
				END IF;

			WHEN success =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';
				plaintext_reg <= (OTHERS => '0');
				key_reg <= (OTHERS => '0');

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