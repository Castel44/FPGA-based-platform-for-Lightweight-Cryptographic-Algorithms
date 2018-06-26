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
USE ieee.std_logic_unsigned.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Testing_IP IS
	PORT (
		start : IN std_logic;
		clk : IN std_logic;
		rst : IN std_logic;
		led_out : OUT std_logic
	);
END Testing_IP;

ARCHITECTURE Behavioral OF Testing_IP IS

------------------------------------------------------------------------------------------------------------
-- Subcomponents delcaraton:
    -- DUT: Skinny with Block size = 64 bit; Tweakey size = 64 bit
    -- Datapath = 4 bit
	COMPONENT Skinny_64_64 IS
		PORT (
			clk, data_ready, start : IN std_logic;
			tweakey_in : IN std_logic_vector(3 DOWNTO 0);
			plaintext_in : IN std_logic_vector(3 DOWNTO 0);
			busy : OUT std_logic := '0';
			ciphertext_out : OUT std_logic_vector(3 DOWNTO 0) := (OTHERS => '0')
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
-- Internal signals declaration:
    	
	-- internal signal 
	SIGNAL tweakey_tst : std_logic_vector(63 DOWNTO 0) := X"f5269826fc681238";     --key test vector
	SIGNAL plaintext_tst : std_logic_vector(63 DOWNTO 0) := X"06034f957724d19d";   -- plaintext test vector
	SIGNAL correct_ciphertext : std_logic_vector(63 DOWNTO 0) := X"bb39dfb2429b8ac7"; -- ciphertext test vector

	SIGNAL plaintext_reg : std_logic_vector(3 DOWNTO 0) := (OTHERS => '0');
	SIGNAL tweakey_reg : std_logic_vector(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL ciphertext_out_W : std_logic_vector(3 DOWNTO 0);

	SIGNAL busy_W, data_ready_W, start_W : std_logic;

	SIGNAL cnt_ce_W : std_logic;
	SIGNAL cnt_rst_W : std_logic;
	SIGNAL cnt_out_W : std_logic_vector(3 DOWNTO 0);

    -- FSM signals
	TYPE state IS (START_ENC, LOADING, ENDING, IDLE, ENC, WAITING, SUCCESS);
	SIGNAL nx_state : state;
	SIGNAL current_state : state := IDLE;
	
BEGIN

------------------------------------------------------------------------------------------------------------
-- Component Instantiation

    -- Cipher under Test
	Skinny_DUT : Skinny_64_64
	PORT MAP(
		clk => clk,
		plaintext_in => plaintext_reg,
		tweakey_in => tweakey_reg,
		start => start_W,
		data_ready => data_ready_W,
		ciphertext_out => ciphertext_out_W,
		busy => busy_W
	);
	
	INST_CNT : cnt
	GENERIC MAP(size => 4)
	PORT MAP(
		clk => clk,
		ce => cnt_ce_W,
		rst => cnt_rst_W,
		cnt_out => cnt_out_W
	);
	
------------------------------------------------------------------------------------------------------------
    -- Finite state machine to handle the cipher.
	STATE_MACHINE_MAIN : PROCESS (clk, rst)
	BEGIN
		IF rising_edge(CLK) THEN
		  -- Reset the FSM for a new encryption
			IF (rst = '1') THEN
				current_state <= idle;
			ELSE
				current_state <= nx_state;
			END IF;
		END IF;
	END PROCESS;
	
	-- Only 1 encryption is made, then it is checked to secure correctness. A led will light if results it's correct.
    -- To start a new encryption needs to reset the FSM.	
	STATE_MACHINE_BODY : PROCESS (current_state, start, cnt_out_W, ciphertext_out_W, busy_W, tweakey_tst, plaintext_tst, correct_ciphertext)
	BEGIN
		CASE current_state IS

			WHEN idle =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';
				plaintext_reg <= (OTHERS => '0');
				tweakey_reg <= (OTHERS => '0');

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '0';

				-- output ports 
				led_out <= '0';

				-- State transition 
				IF start = '1' THEN
					nx_state <= loading;
				ELSE
					nx_state <= idle;
				END IF;

			WHEN loading =>
				-- CIPHER inputs
				data_ready_W <= '1'; -- data_ready goes high 
				start_W <= '0';
				plaintext_reg <= (OTHERS => '0');
				tweakey_reg <= (OTHERS => '0');

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '1';

				-- output ports 
				led_out <= '0';

				-- State transition          
				nx_state <= waiting;

			WHEN waiting =>
				-- CNT 
				cnt_ce_W <= '1';
				cnt_rst_W <= '0';

				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';
				plaintext_reg <= plaintext_tst(63 - 4 * (to_integer(unsigned(cnt_out_W))) DOWNTO 60 - 4 * (to_integer(unsigned(cnt_out_W))));
				tweakey_reg <= tweakey_tst(63 - 4 * (to_integer(unsigned(cnt_out_W))) DOWNTO 60 - 4 * (to_integer(unsigned(cnt_out_W))));

				-- output ports 
				led_out <= '0';

				-- State transition   
				-- Since datapath is 4 bit, it takes 16 clk clycle to correct load new key and plaintext
				IF cnt_out_W = b"1111" THEN
					nx_state <= start_enc;
				ELSE
					nx_state <= waiting;
				END IF;

			WHEN start_enc =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '1';   --start signal for cipher
				plaintext_reg <= (OTHERS => '0');
				tweakey_reg <= (OTHERS => '0');

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '1'; -- reset cnt 

				-- output ports 
				led_out <= '0';

				-- transition         
				nx_state <= enc;

			WHEN enc =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';
				plaintext_reg <= (OTHERS => '0');
				tweakey_reg <= (OTHERS => '0');

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '0';

				-- output ports 
				led_out <= '0';

				-- State transition  
				-- Control the first part of ciphertext if it is correct 
				IF (busy_W = '0') AND (ciphertext_out_W = correct_ciphertext(63 DOWNTO 60)) THEN
					nx_state <= ending;
				ELSE
					nx_state <= enc;
				END IF;

			WHEN ending =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';
				plaintext_reg <= (OTHERS => '0');
				tweakey_reg <= (OTHERS => '0');

				-- CNT 
				cnt_ce_W <= '1';
				cnt_rst_W <= '0'; -- reset cnt 

				-- output ports     
				led_out <= '0';

				-- State transition     
				-- control the others part of the ciphertext if it is correct    
				IF (cnt_out_W = b"1110") AND (ciphertext_out_W = correct_ciphertext(59 - 4 * (to_integer(unsigned(cnt_out_W))) DOWNTO 56 - 4 * (to_integer(unsigned(cnt_out_W))))) THEN
					nx_state <= success;
				ELSE
					nx_state <= ending;
				END IF;

			WHEN success =>
				-- CIPHER inputs
				data_ready_W <= '0';
				start_W <= '0';
				plaintext_reg <= (OTHERS => '0');
				tweakey_reg <= (OTHERS => '0');

				-- CNT 
				cnt_ce_W <= '0';
				cnt_rst_W <= '1'; -- reset cnt 

				-- output ports         
				led_out <= '1';

				-- transition            
				nx_state <= success;

		END CASE;

	END PROCESS;
END Behavioral;