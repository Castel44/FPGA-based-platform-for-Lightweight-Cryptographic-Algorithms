-- CIPHER TOP ENTITY
-- Cipher: Skinny
-- Key length: 128 bit
-- Plaintext length: 128 bit
-- Datapath: 128 bit
-- Cipher specs from here : "https://eprint.iacr.org/2016/660.pdf"
------------------------------------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SKINNY_128_128_parallel IS
	PORT (
		CLK : IN STD_LOGIC;
		PLAINTEXT_IN : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
		tweakey_in : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
		START, DATA_READY : IN STD_LOGIC;
		BUSY : OUT STD_LOGIC := '0';
		CIPHERTEXT_OUT : OUT STD_LOGIC_VECTOR (127 DOWNTO 0) := (OTHERS => '0')
	);
END SKINNY_128_128_parallel;

ARCHITECTURE Behavioral OF SKINNY_128_128_parallel IS

------------------------------------------------------------------------------------------------------------
-- Sub Components Definitions
	-- Multiplexer to correct route signals 
	COMPONENT mux
		PORT (
			r_in, l_in : IN std_logic_vector(127 DOWNTO 0);
			sel : IN std_logic;
			mux_out : OUT std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Internal State and Tweakey register, with enable port
	COMPONENT REG
		PORT (
			ce, clk : IN std_logic;
			D : IN std_logic_vector(127 DOWNTO 0);
			Q : OUT std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Skinny Subcells operation (simply an SBOX)
	COMPONENT SubCells_128
		PORT (
			SUBCELLS_IN : IN std_logic_vector(127 DOWNTO 0);
			SUBCELLS_out : OUT std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Skinny Addconstant operation (xoring with a round-dependant constant generatedby a lfsr)
	COMPONENT addRoundConstants
		PORT (
			lfsr_in : IN std_logic_vector(5 DOWNTO 0);
			input : IN std_logic_vector(127 DOWNTO 0);
			output : OUT std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;
	
    -- Skinny AddRoundTweakey operation (xoring part of the internal state with the round key
	COMPONENT AddRoundTweakey
		PORT (
			tweakey_in : IN std_logic_vector(63 DOWNTO 0);
			AddRoundTweakey_in : IN std_logic_vector(127 DOWNTO 0);
			AddRoundTweakey_out : OUT std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Skinny ShiftRows operation
	COMPONENT ShiftRows
		PORT (
			SHiftRows_in : IN std_logic_vector(127 DOWNTO 0);
			ShiftRows_out : OUT std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Skinny MixColumns operation
	COMPONENT MixColumns
		PORT (
			MixCOL_in : IN std_logic_vector(127 DOWNTO 0);
			MIXCOL_out : OUT std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;
	
	-- the linear feedback shift register used to generate round-unique constants 
	COMPONENT LFSR
		PORT (
			clk : IN std_logic;
			rst : IN std_logic;
			lfsr_out : OUT std_logic_vector(5 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Skinny key schedule
	COMPONENT tw_schedule

		PORT (
			TWEAKEY_SCHEDULE_IN : IN std_logic_vector(127 DOWNTO 0);
			TWEAKEY_SCHEDULE_OUT : OUT std_logic_vector(127 DOWNTO 0)
		);
	END COMPONENT;

------------------------------------------------------------------------------------------------------------	
	-- STATE MACHINE SIGNAL DECLARATION
	TYPE state IS (LOADING, IDLE, PROCESSING);
	SIGNAL nx_state : state;
	SIGNAL current_state : state := idle;
	
	-- INTERNAL SIGNALS  
	SIGNAL OUT_MUX_SEL : std_logic;
	SIGNAL IN_MUX_SEL : std_logic;

	SIGNAL IS_REG_IN : std_logic_vector(127 DOWNTO 0);
	SIGNAL IS_REG_OUT : std_logic_vector(127 DOWNTO 0);
	SIGNAL TW_REG_IN : std_logic_vector(127 DOWNTO 0);
	SIGNAL TW_REG_OUT : std_logic_vector(127 DOWNTO 0);

	SIGNAL SUBCELLS_OUT : std_logic_vector(127 DOWNTO 0);
	
	SIGNAL AddRoundConstants_OUT : std_logic_vector(127 DOWNTO 0);
	
	SIGNAL ShiftRows_OUT : std_logic_vector(127 DOWNTO 0);
	
	SIGNAL mixcolumns_out : std_logic_vector(127 DOWNTO 0);

	SIGNAL lfsr_out : std_logic_vector(5 DOWNTO 0);

	SIGNAL TW_SCHEDULE_OUT : std_logic_vector(127 DOWNTO 0);	
	SIGNAL AddRoundTWEAKEY_OUT : std_logic_vector(127 DOWNTO 0);

	SIGNAL lfsr_rst : std_logic;

	SIGNAL regs_ce : std_logic;
	
BEGIN

    -- SubComponents Instantiation
    -- Output Ciphertext mux, data is always 0 when encrypting or idle state
	INST_OUTPUT_MUX : mux
	PORT MAP(
		l_in => (OTHERS => '0'),
		r_in => mixcolumns_out,
		sel => OUT_MUX_SEL,
		mux_out => CiPHERTEXT_OUT
	);
	
    -- Internal State mux, loads IS Reg correclty to last operation of cipher (mixcol) or new plaintext
	INST_IS_MUX_IN : mux
	PORT MAP(
		l_in => mixcolumns_out,
		r_in => plaintext_in,
		sel => IN_MUX_SEL,
		mux_out => IS_REG_IN
	);
	
    -- Tweakey mux, loads TW Reg correclty to the key schedule algorithm or new Tweakey	
	INST_TW_REG_MUX_IN : mux
	PORT MAP(
		l_in => tw_schedule_out,
		r_in => tweakey_in,
		sel => IN_MUX_SEL,
		mux_out => TW_REG_IN

	);
	
	-- Internal State register
	INST_IS_REG : reg
	PORT MAP(
		ce => regs_ce,
		clk => clk,
		D => IS_REG_IN,
		Q => IS_REG_OUT
	);

	INST_SUBCELLS : SubCells_128
	PORT MAP(
		SubCells_IN => IS_REG_OUT,
		SubCells_OUT => SUBCELLS_OUT
	);

	INST_AddRoundConstants : AddRoundConstants
	PORT MAP(
		lfsr_in => lfsr_out,
		input => SUBCELLS_OUT,
		output => AddRoundConstants_OUT
	);
	
	INST_ADDROUNDTWEAKEY : AddRoundTweakey
	PORT MAP(
		tweakey_in => TW_REG_OUT(127 DOWNTO 64), -- only first two rows are xored
		AddRoundTweakey_in => AddRoundConstants_OUT,
		AddRoundTweakey_out => AddRoundTWEAKEY_OUT
	);
	
	INST_ShiftRows : ShiftRows
	PORT MAP(
		ShiftRows_in => AddRoundTWEAKEY_OUT,
		ShiftRows_out => ShiftRows_OUT
	);

	INST_MixColumns : MixColumns
	PORT MAP(
		MIXCOL_in => ShiftRows_OUT,
		MIXCOL_out => MixColumns_OUT
	);
	
	-- Tweakey register
	INST_TW_REG : reg
	PORT MAP(
		ce => regs_ce,
		clk => clk,
		D => TW_REG_IN,
		Q => TW_REG_OUT
	);
	
	INST_KEY_SCHEDULE : tw_schedule
	PORT MAP(
		TWEAKEY_SCHEDULE_in => TW_REG_OUT,
		TWEAKEY_SCHEDULE_out => TW_SCHEDULE_OUT
	);
	
	
	INST_LFSR : lfsr
	PORT MAP(
		clk => clk,
		lfsr_out => lfsr_out,
		rst => lfsr_rst
	);
	
 ------------------------------------------------------------------------------------------------------------    
    --next state transition process
	STATE_MACHINE_MAIN : PROCESS (clk, data_ready, nx_state)
	BEGIN
		IF rising_edge(CLK) THEN
			IF (data_ready = '1') THEN
				current_state <= loading;
			ELSE
				current_state <= nx_state;
			END IF;
		END IF;
	END PROCESS;
	
	STATE_MACHINE_BODY : PROCESS (current_state, lfsr_out, start)
	BEGIN
		CASE current_state IS

			WHEN loading =>
			     -- Output Busy flag
				BUSY <= '1';
				
				-- Mux selectors				 
				IN_MUX_SEL <= '1';  -- see new plaintext
				OUT_MUX_SEL <= '0'; -- put zeros as ciphetext out
				
				-- Register load enable	
				regs_ce <= '1';
				
				-- LFSR reset
				lfsr_rst <= '1';
				
				-- State transition
				nx_state <= idle; --loading happens in 1 clk cycle

			WHEN idle =>
			     -- Output busy flag
				BUSY <= '0';
				
				-- Mux selector
				IN_MUX_SEL <= '0';
				OUT_MUX_SEL <= '0';
				
				-- Register load enable
				regs_ce <= '0';
				
				-- LFSR reset				
				lfsr_rst <= '1';
				
				-- State transition
				IF start = '1' THEN
					nx_state <= processing;
				ELSE
					nx_state <= idle;
				END IF;

			WHEN processing =>
			     -- IS mux selector, maps IS_REG to mixcol out
				IN_MUX_SEL <= '0';
				
				-- Register load enable
				regs_ce <= '1';
				
				-- LFSR reset not enabled, lsfr is shifting				
				lfsr_rst <= '0';
				
				-- State transition 
				IF lfsr_out = b"011010" THEN    --lfsr out is used to count up rounds, when it comes to his 40th value encrypt is done.
					OUT_MUX_SEL <= '1';        --output the correct ciphertext
					BUSY <= '0';           -- Busy flag goes low when encrypt is done
					nx_state <= idle;      -- go beck to idle state when is done
				ELSE        -- keep encrypting
					OUT_MUX_SEL <= '0';    -- outpus all zeros
					BUSY <= '1';           --Busy flag high
					nx_state <= processing;
				END IF;

		END CASE;

	END PROCESS;
END Behavioral;