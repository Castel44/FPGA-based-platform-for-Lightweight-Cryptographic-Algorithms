-- CIPHER TOP ENTITY
-- Cipher: AES
-- Key length: 128 bit
-- Plaintext length: 128 bit
-- Datapath: 128 bit
------------------------------------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY AES_128_parallel IS
	PORT (
		clk, data_ready, start : IN std_logic;
		key_in : IN std_logic_vector(127 DOWNTO 0); -- met� caricata
		plaintext_in : IN std_logic_vector(127 DOWNTO 0);
		busy : OUT std_logic := '0';
		ciphertext_out : OUT std_logic_vector(127 DOWNTO 0) := (OTHERS => '0')
	);
END AES_128_parallel;

ARCHITECTURE Behavioral OF AES_128_parallel IS
------------------------------------------------------------------------------------------------------------
----Sub Components Definitions

    -- Multiplexer to correct route signals 
	COMPONENT MUX
		GENERIC (datapath : INTEGER := 1);
		PORT (
			l_in, r_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
			sel : IN std_logic;
			mux_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Standard register, with enable port
	COMPONENT reg
		GENERIC (length : INTEGER := 128);
		PORT (
			clk, ce, rst : IN std_logic;
			D : IN std_logic_vector(length - 1 DOWNTO 0);
			Q : OUT std_logic_vector(length - 1 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT SubBytes
		PORT (
			input : IN std_logic_vector(127 DOWNTO 0);
			output : OUT std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT ShiftRows
		PORT (
			input : IN std_logic_vector(127 DOWNTO 0);
			output : OUT std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT MixColumns
		PORT (
			input : IN std_logic_vector(127 DOWNTO 0);
			output : OUT std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT AddRoundKey
		PORT (
			mixcol_in : IN std_logic_vector(127 DOWNTO 0);
			output : OUT std_logic_vector(127 DOWNTO 0);
			wkey_in : IN std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT key_schedule
		PORT (
			clk, key_schedule_ce, rcon_rst : std_logic;
			input : IN std_logic_vector(127 DOWNTO 0);
			output : OUT std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;
	
	-- counter
	COMPONENT cnt
		GENERIC (size : INTEGER := 5);
		PORT (
			ce, clk, rst : IN std_logic;
			cnt_out : OUT std_logic_vector(size - 1 DOWNTO 0)
		);
	END COMPONENT;
	
------------------------------------------------------------------------------------------------------------	
	-- STATE MACHINE SIGNAL DECLARATION
	TYPE state IS (LOADING, IDLE, PROCESSING, END_ENCRYPT);
	SIGNAL nx_state : state; -- cipher possible states
	SIGNAL current_state : state := idle;

	--IS REG
	SIGNAL IS_CE, IS_RST : std_logic;
	SIGNAL IS_IN, IS_OUT : std_logic_vector(127 DOWNTO 0);

	-- IN MUX sel
	SIGNAL SEL_IN : std_logic;

	--SUBBYTES  
	SIGNAL subbytes_out : std_logic_vector(127 DOWNTO 0);

	--SHIFTROWS 
	SIGNAL shiftrows_out : std_logic_vector(127 DOWNTO 0);

	--MIXCOLUMNS
	SIGNAL mixcolumns_out : std_logic_vector(127 DOWNTO 0);

	--AddRoundKEY
	SIGNAL addRoundKey_out : std_logic_vector(127 DOWNTO 0);
	SIGNAL addRoundKey_in : std_logic_vector(127 DOWNTO 0);

	--KEY REG and KEY update 
	SIGNAL key_schedule_out : std_logic_vector(127 DOWNTO 0);
	SIGNAL KEY_REG_CE, KEY_REG_rst : std_logic;
	SIGNAL KEY_REG_IN, KEY_REG_OUT : std_logic_vector(127 DOWNTO 0);

	--CNT 
	SIGNAL cnt_rst, cnt_ce : std_logic;
	SIGNAL cnt_out : std_logic_vector(3 DOWNTO 0);
	
BEGIN

	-- COMPONENTS INSTANTIATION 
	
	INST_IS_MUX_IN : mux
	GENERIC MAP(datapath => 128)
	PORT MAP(
		l_in => plaintext_in,
		r_in => AddRoundKey_OUT,
		sel => SEL_IN,
		mux_out => IS_IN
	);
	
	INST_IS_REG : reg
	GENERIC MAP(length => 128)
	PORT MAP(
		clk => clk,
		ce => IS_CE,
		rst => IS_RST,
		D => IS_IN,
		Q => IS_OUT
	);
	
	INST_SBOX_LAYER : SubBytes
	PORT MAP(
		input => IS_OUT,
		output => subbytes_out
	);
	
	INST_SHIFTROWS : SHiftRows
	PORT MAP(
		input => suBBytes_out,
		output => shiftrows_out
	);
	
	INST_MixColumns : MixColumns
	PORT MAP(
		input => shiftrows_out,
		output => mixcolumns_out
	);
	
	INST_KEY_IN_MUX : mux
	GENERIC MAP(datapath => 128)
	PORT MAP(
		l_in => key_in,
		r_in => key_schedule_out,
		sel => SEL_IN,
		mux_out => KEY_REG_IN
	);
	
	INST_KEY_REG : reg
	PORT MAP(
		clk => clk,
		ce => KEY_REG_CE,
		rst => KEY_REG_rst,
		D => KEY_REG_IN,
		Q => KEY_REG_OUT
	);
	
	INST_KEY_SCHEDULE : key_schedule
	PORT MAP(
		clk => clk,
		key_schedule_ce => cnt_ce,
		rcon_rst => cnt_rst,
		input => KEY_REG_OUT,
		output => key_schedule_out
	);
	
	INST_AddRoundKey : AddRoundKey
	PORT MAP(
		mixcol_in => AddRoundKey_in,
		output => AddRoundKey_out,
		wkey_in => KEY_REG_OUT
	);
	
	INST_CNT : cnt
	GENERIC MAP(size => 4)
	PORT MAP(
		clk => clk,
		ce => cnt_ce,
		rst => cnt_rst,
		cnt_out => cnt_out
	);
	
 ------------------------------------------------------------------------------------------------------------	
	--next state transition process
	STATE_MACHINE_MAIN : PROCESS (clk, data_ready)
	BEGIN
		IF rising_edge(CLK) THEN
			IF (data_ready = '1') THEN
				current_state <= LOADING;
			ELSE
				current_state <= nx_state;
			END IF;
		END IF;
	END PROCESS;
	
	STATE_MACHINE_BODY : PROCESS (current_state, start, shiftrows_out, cnt_out, IS_out)
	BEGIN
		CASE current_state IS
			WHEN loading =>
				-- set outputs 
				BUSY <= '1';
				Ciphertext_out <= (OTHERS => '0');

				IS_RST <= '0';
				KEY_REG_RST <= '0';
				cnt_ce <= '1';
				cnt_rst <= '0';

				--INPUT MUX 
				--loading value from Input pin
				SEL_IN <= '0'; --loading                                                

				--state transition  
				IF cnt_out = b"0001" THEN
					IS_CE <= '0';
					KEY_REG_CE <= '0';
					nx_state <= idle;
				ELSE
					nx_state <= loading;
					IS_CE <= '1';
					KEY_REG_CE <= '1';
				END IF;

			WHEN idle =>
				-- set outputs 
				BUSY <= '0';
				Ciphertext_out <= (OTHERS => '0');

				IS_CE <= '0';
				IS_RST <= '0';
				KEY_REG_RST <= '0';
				cnt_ce <= '0';
				cnt_rst <= '1';

				--INPUT MUX 
				SEL_IN <= '0'; --loading                             
				KEY_REG_CE <= '0';

				--state transition          
				IF start = '1' THEN
					nx_state <= processing;
				ELSE
					nx_state <= idle;
				END IF;

			WHEN processing =>
				-- set outputs 
				BUSY <= '1';
				Ciphertext_out <= (OTHERS => '0');

				IS_RST <= '0';
				IS_CE <= '1';
				KEY_REG_RST <= '0';
				cnt_ce <= '1';
				cnt_rst <= '0';

				--INPUT MUX 
				SEL_IN <= '1';
				KEY_REG_CE <= '1';

				--state transition                                                                         
				IF cnt_out = b"1010" THEN --10 rounds passed                  
					nx_state <= end_encrypt;
				ELSE
					nx_state <= processing;
				END IF;

			WHEN end_encrypt =>
				-- set outputs 
				BUSY <= '0';
				-- perform last mix_columns                                 
				Ciphertext_out <= IS_OUT(127 DOWNTO 120) & IS_OUT(95 DOWNTO 88) & IS_OUT(63 DOWNTO 56) & IS_OUT(31 DOWNTO 24)
					& IS_OUT(119 DOWNTO 112) & IS_OUT(87 DOWNTO 80) & IS_OUT(55 DOWNTO 48) & IS_OUT(23 DOWNTO 16)
					& IS_OUT(111 DOWNTO 104) & IS_OUT(79 DOWNTO 72) & IS_OUT(47 DOWNTO 40) & IS_OUT(15 DOWNTO 8)
					& IS_OUT(103 DOWNTO 96) & IS_OUT(71 DOWNTO 64) & IS_OUT(39 DOWNTO 32) & IS_OUT(7 DOWNTO 0);

				IS_CE <= '0';
				IS_RST <= '0';
				KEY_REG_RST <= '0';

				cnt_ce <= '0';
				cnt_rst <= '1';

				--INPUT MUX 
				SEL_IN <= '0';
				KEY_REG_CE <= '0';

				-- transition
				nx_state <= end_encrypt;

		END CASE;

	END PROCESS;

	-- ASYNC OPERATION
	WITH cnt_out SELECT
		AddRoundKey_in <= IS_OUT WHEN b"0000",
		ShiftRows_out WHEN b"1010",
		MixColumns_out WHEN OTHERS;
END Behavioral;