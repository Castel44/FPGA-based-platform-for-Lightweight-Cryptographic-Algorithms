-- CIPHER TOP ENTITY
-- Cipher: Simoon
-- Key length: 64 bit
-- Plaintext length: 32 bit
-- Datapath: 1 bit
-- Cipher specs from here : "https://eprint.iacr.org/2013/404.pdf"
------------------------------------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Simon_32_64_bit_serial IS

	GENERIC (Datapath : INTEGER := 1);
	PORT (
		clk, data_ready, start : IN std_logic;
		key_in : IN std_logic_vector(Datapath - 1 DOWNTO 0); 
		plaintext_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
		busy : OUT std_logic := '0';
		ciphertext_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0) := (OTHERS => '0')
	);

END Simon_32_64_bit_serial;

ARCHITECTURE Behavioral OF Simon_32_64_bit_serial IS

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

    -- Internal State shift register
	COMPONENT IS_shift_reg
		GENERIC (
			width : INTEGER;
			length : INTEGER);
		PORT (
			clk : IN std_logic;
			D : IN std_logic_vector(width - 1 DOWNTO 0);
			Q : OUT std_logic_vector(width - 1 DOWNTO 0);
			CE : std_logic;

			IS_2n1_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			IS_2n2_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			IS_2n8_out : OUT std_logic_vector(width - 1 DOWNTO 0);

			IS_n1_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			IS_n2_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			IS_n8_out : OUT std_logic_vector(width - 1 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Key Shift register
	COMPONENT key_shiftreg
		GENERIC (width, length : INTEGER);
		PORT (
			clk : IN std_logic;
			D : IN std_logic_vector(width - 1 DOWNTO 0);
			Q : OUT std_logic_vector(width - 1 DOWNTO 0);
			CE : std_logic;

			KEY_REG_3n4_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			KEY_REG_3n3_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			KEY_REG_2n4_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			KEY_REG_2n3_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			KEY_REG_n1_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			KEY_REG_1_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			KEY_REG_n_out : OUT std_logic_vector(width - 1 DOWNTO 0)
		);
	END COMPONENT;

    -- Simon round function
	COMPONENT Rnd_function
		GENERIC (
			datapath : INTEGER
		);
		PORT (
			is0_in, MUX1_in, MUX2_in, MUX8_in, ki_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
			rnd_function_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Simon key schedule
	COMPONENT KEY_SCHEDULE_FUNC
		GENERIC (datapath : INTEGER);
		PORT (
			const_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
			KEYMUX3_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
			KEYMUX4_in, KEYMUX1_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
			Ki_in, ki1_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
			key_schedule_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)
		);
	END COMPONENT;

    -- The linear feedback shift register used to generate round-unique constants 
	COMPONENT lfsr
		PORT (
			lfsr_out : OUT std_logic_vector(0 DOWNTO 0);
			clk : IN std_logic;
			ce : IN std_logic;
			rst : IN std_logic;
			lfsr_parallel_out : OUT std_logic_vector(4 DOWNTO 0)
		);
	END COMPONENT;

    -- Mux witch choose between constants
	COMPONENT CONSTANT_GEN_MUX
		GENERIC (datapath : INTEGER);
		PORT (
			element_cnt_in : IN std_logic_vector(3 DOWNTO 0);
			lfsr_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
			Const_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)
		);
	END COMPONENT;

    -- Counter
	COMPONENT CNT
		GENERIC (
			size : INTEGER
		);
		PORT (
			cnt_out : OUT std_logic_vector(size - 1 DOWNTO 0);
			rst : IN std_logic;
			clk : IN std_logic;
			ce : IN std_logic
		);
	END COMPONENT;

    -- Shift reg witch shift 0 and 1, needed to ensure the correct ciphertext
	COMPONENT end_encrypt_shift_reg
		PORT (
			ce, clk, rst : IN std_logic;
			end_encrypt : OUT std_logic
		);
	END COMPONENT;

------------------------------------------------------------------------------------------------------------	
	--INTERNAL SIGNALS DECLARATION  

	-- CIPHER FSM SIGNALS   
	TYPE state IS (LOADING, IDLE, PROCESSING, END_ENCRYPT); -- cipher possible states
	SIGNAL nx_state : state;
	SIGNAL current_state : state := idle; --default state

	-- IS INPUT MUX 
	SIGNAL IS_INPUT_MUX_OUT : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL sel_IN : std_logic;
	
	--GLOBAL IS REGS SIGNALS 
	SIGNAL IS_ce : std_logic;
	SIGNAL IS_out : std_logic_vector(datapath - 1 DOWNTO 0);

	-- IS REG taps for rnd function
	SIGNAL IS_2n1_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL IS_2n2_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL IS_2n8_out : std_logic_vector(datapath - 1 DOWNTO 0);

	SIGNAL IS_n1_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL IS_n2_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL IS_n8_out : std_logic_vector(datapath - 1 DOWNTO 0);
	
	-- RND FUNCTION MUXES: MUX8 MUX2 MUX1 
	SIGNAL MUX1_sel : std_logic;
	SIGNAL MUX1_out : std_logic_vector(datapath - 1 DOWNTO 0);
	
	SIGNAL MUX8_sel : std_logic;
	SIGNAL MUX8_out : std_logic_vector(datapath - 1 DOWNTO 0);
	
	SIGNAL MUX2_sel : std_logic;
	SIGNAL MUX2_out : std_logic_vector(datapath - 1 DOWNTO 0);
	
	--RND FUNCTION 
	SIGNAL rnd_function_out : std_logic_vector(datapath - 1 DOWNTO 0);

	--KEY_REG_INPUT MUX
	SIGNAL KEY_INPUT_MUX_OUT : std_logic_vector(datapath - 1 DOWNTO 0);

	--KEY REG GLOBAL ENABLE 
	SIGNAL KEY_REG_CE : std_logic;

	-- KEY SHIFTREG 
	SIGNAL KEY_REG_OUT : std_logic_vector(datapath - 1 DOWNTO 0);

	-- KEY SHIFTREG TAPS 
	SIGNAL KEY_REG_3n4_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL KEY_REG_3n3_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL KEY_REG_2n4_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL KEY_REG_2n3_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL KEY_REG_n1_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL KEY_REG_1_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL KEY_REG_n_out : std_logic_vector(datapath - 1 DOWNTO 0);

	-- KEY SCHEDULE MUXES 
	SIGNAL KEYMUX3_sel : std_logic;
	SIGNAL KEYMUX3_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL KEYMUX4_sel : std_logic;
	SIGNAL KEYMUX4_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL KEYMUX1_sel : std_logic;
	SIGNAL KEYMUX1_out : std_logic_vector(datapath - 1 DOWNTO 0);

	--KEY SCHEDULE 
	SIGNAL key_schedule_out : std_logic_vector(datapath - 1 DOWNTO 0);

	--RND CONST
	SIGNAL rnd_const_out : std_logic_vector(datapath - 1 DOWNTO 0);

	---- ENDING FSR
	SIGNAL end_encrypt_ce, end_encrypt_out, end_encrypt_rst : std_logic;

	--SERIAL CNT 
	SIGNAL serial_cnt_rst : std_logic;
	SIGNAL serial_cnt_out : std_logic_vector(3 DOWNTO 0);
	SIGNAL serial_ce : std_logic;

	--LFSR 
	SIGNAL lfsr_ce : std_logic;
	SIGNAL lfsr_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL lfsr_rst : std_logic;
	SIGNAL lfsr_change : std_logic;
	SIGNAL lfsr_parallel_out : std_logic_vector(4 DOWNTO 0);
	
BEGIN

    -- SubComponents Instantiation
    -- Internal State mux, loads the shift reg correclty to last operation of cipher or new plaintext
	INST_IS_INPUT_MUX : MUX
	GENERIC MAP(datapath => 1)
	PORT MAP(
		l_in => Plaintext_in,
		r_in => RNd_function_out,
		sel => SEL_IN,
		mux_out => IS_INPUT_MUX_OUT
	);

    -- Internal State shift register
	INST_IS_SHIFTREG : IS_shift_reg
	GENERIC MAP(
		width => datapath,
		length => 32)
	PORT MAP(
		clk => clk,
		D => IS_INPUT_MUX_OUT,
		Q => IS_OUT,
		CE => IS_CE,

		IS_2n1_out => IS_2n1_out,
		IS_2n2_out => IS_2n2_out,
		IS_2n8_out => IS_2n8_out,

		IS_n1_out => IS_n1_out,
		IS_n2_out => IS_n2_out,
		IS_n8_out => IS_n8_out
	);

    -- Round function mux
	INST_rnd_func : RND_FUNCTION
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		is0_in => IS_out,
		MUX1_in => MUX1_out,
		MUX2_in => MUX2_out,
		MUX8_in => MUX8_out,
		ki_in => KEY_REG_OUT,
		rnd_function_out => rnd_function_out
	);
	
	INST_MUX1 : mux
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		l_in => IS_2n1_out,
		r_in => IS_n1_out,
		sel => MUX1_sel,
		mux_out => MUX1_out
	);

	INST_MUX2 : mux
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		l_in => IS_2n2_out,
		r_in => IS_n2_out,
		sel => MUX2_sel,
		mux_out => MUX2_out
	);
	
	INST_MUX8 : mux
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		l_in => IS_2n8_out,
		r_in => IS_n8_out,
		sel => MUX8_sel,
		mux_out => MUX8_out
	);

	INST_KEY_REG_IN_MUX : mux
	GENERIC MAP(datapath => datapath)
	PORT MAP(

		l_in => KEY_IN,
		r_in => KEY_SCHEDULE_OUT,
		sel => SEL_IN,
		mux_out => KEY_INPUT_MUX_OUT
	);

    -- Key shift register
	INST_KEY_REG : key_shiftreg
	GENERIC MAP(width => datapath, length => 64)
	PORT MAP(
		clk => clk,
		D => KEY_INPUT_MUX_OUT,
		Q => KEY_REG_OUT, --ki
		CE => KEY_REG_CE,

		KEY_REG_3n4_out => KEY_REG_3n4_out,
		KEY_REG_3n3_out => KEY_REG_3n3_out,
		KEY_REG_2n4_out => KEY_REG_2n4_out,
		KEY_REG_2n3_out => KEY_REG_2n3_out,
		KEY_REG_n_out => KEY_REG_n_out,
		KEY_REG_n1_out => KEY_REG_n1_out,
		KEY_REG_1_out => KEY_REG_1_out
	);
	
	INST_KEYMUX3 : mux
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		l_in => KEY_REG_3n3_out,
		r_in => KEY_REG_2n3_out,
		sel => KEYMUX3_sel,
		mux_out => KEYMUX3_out
	);
	
	INST_KEYMUX4 : mux
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		l_in => KEY_REG_3n4_out,
		r_in => KEY_REG_2n4_out,
		sel => KEYMUX4_sel,
		mux_out => KEYMUX4_out
	);

	INST_KEYMUX1 : mux
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		l_in => KEY_REG_n1_out,
		r_in => KEY_REG_1_out,
		sel => KEYMUX1_sel,
		mux_out => KEYMUX1_out
	);

    -- Simon key schedule
	INST_KEYSCHEDULE : KEY_SCHEDULE_FUNC
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		const_in => rnd_const_out,
		KEYMUX3_in => KEYMUX3_out,
		KEYMUX4_in => KEYMUX4_out,
		KEYMUX1_in => KEYMUX1_out,
		Ki_in => KEY_REG_OUT,
		ki1_in => KEY_REG_n_out,
		KEY_SCHEDULE_OUT => KEY_SCHEDULE_OUT
	);
	
	INST_CONSTANT_GEN : CONSTANT_GEN_MUX
	GENERIC MAP(datapath => datapath)
	PORT MAP(

		element_cnt_in => serial_cnt_out,
		lfsr_in => lfsr_out,
		Const_out => rnd_const_out

	);
	
	INST_SERIAL_CNT : cnt
	GENERIC MAP(size => 4) --32
	PORT MAP(
		cnt_out => serial_cnt_out,
		rst => serial_cnt_rst,
		clk => clk,
		ce => serial_ce
	);
	
	INST_lfsr : lfsr
	PORT MAP(
		lfsr_out => lfsr_out,
		clk => lfsr_change,
		ce => lfsr_ce,
		rst => lfsr_rst,
		lfsr_parallel_out => lfsr_parallel_out
	);

	INST_END_ENCRYPT_FSR : end_encrypt_shift_reg
	PORT MAP(
		ce => end_encrypt_ce,
		rst => lfsr_rst,
		clk => clk,
		end_encrypt => end_encrypt_out
	);

------------------------------------------------------------------------------------------------------------	
-- CIPHER FSM 
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
	
	STATE_MACHINE_BODY : PROCESS (current_state, start, lfsr_parallel_out, serial_cnt_out, end_encrypt_out, IS_out)
	BEGIN
		CASE current_state IS
		
			WHEN loading =>

				-- set outputs
				BUSY <= '1';
				Ciphertext_out <= (OTHERS => '0');

				--lfsr
				lfsr_rst <= '0';
				lfsr_ce <= '1';
				
				--element_cnt is enabled
				serial_ce <= '1';
				serial_cnt_rst <= '0';

				--ending sfr
				end_encrypt_ce <= '0';
				end_encrypt_rst <= '0';

				--INPUT MUX
				SEL_IN <= '0';

				--MUX driving for rnd function
				MUX1_sel <= '1';
				MUX8_sel <= '1';
				MUX2_sel <= '1';

				--key schedule MUxes  
				KEYMUX1_sel <= '1';
				KEYMUX3_sel <= '1';
				KEYMUX4_sel <= '1';

				-- state transition
				-- lfsr out value is used to count up clk cycles
				IF lfsr_parallel_out = b"10011" THEN -- plaintext has been loaded keep loading the key
					nx_state <= loading;
					IS_CE <= '0';
					KEY_REG_CE <= '1';

				ELSIF lfsr_parallel_out = b"10111" THEN -- key has been loaded
					IS_CE <= '0';
					KEY_REG_CE <= '1';
					nx_state <= loading;

				ELSIF lfsr_parallel_out = b"11110" THEN -- key has been loaded go to idle
					IS_CE <= '0';
					KEY_REG_CE <= '0';
					nx_state <= idle;

				ELSE -- keep loading both
					nx_state <= loading;
					IS_CE <= '1';
					KEY_REG_CE <= '1';
				END IF;
				
			WHEN idle =>
				-- set outputs
				BUSY <= '0';
				Ciphertext_out <= (OTHERS => '0');
				
				--lfsr
				lfsr_rst <= '1';
				lfsr_ce <= '0';
				
				--element_cnt is disabled
				serial_ce <= '0';
				serial_cnt_rst <= '1';

				--ending sfr
				end_encrypt_ce <= '0';
				end_encrypt_rst <= '0';

				--INPUT MUX
				SEL_IN <= '0'; --loading

				--MUX driving for rnd function
				MUX1_sel <= '1';
				MUX8_sel <= '1';
				MUX2_sel <= '1';

				--key schedule MUxes 
				KEYMUX1_sel <= '1';
				KEYMUX3_sel <= '1';
				KEYMUX4_sel <= '1';
				
				-- Register enable
				IS_CE <= '0';
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

				--lfsr
				lfsr_rst <= '0';
				lfsr_ce <= '1';
				
				--serial_cnt is enabled
				serial_ce <= '1';
				serial_cnt_rst <= '0';

				--ending cnt
				end_encrypt_rst <= '0';

				--INPUT MUX
				SEL_IN <= '1';

				--MUX driving for rnd function
				IF serial_cnt_out = b"0000" THEN
					MUX1_sel <= '0';
				ELSE
					MUX1_sel <= '1';
				END IF;

				IF serial_cnt_out <= b"0001" THEN
					MUX2_sel <= '0';
				ELSE
					MUX2_sel <= '1';
				END IF;

				IF serial_cnt_out <= b"0111" THEN
					MUX8_sel <= '0';
				ELSE
					MUX8_sel <= '1';
				END IF;

				--MUX selects for key schedule 
				IF serial_cnt_out < b"1111" THEN
					KEYMUX1_sel <= '0';
				ELSE
					KEYMUX1_sel <= '1';
				END IF;

				IF serial_cnt_out < b"1101" THEN
					KEYMUX3_sel <= '0';
				ELSE
					KEYMUX3_sel <= '1';
				END IF;

				IF serial_cnt_out < b"1100" THEN
					KEYMUX4_sel <= '0';
				ELSE
					KEYMUX4_sel <= '1';
				END IF;
				
				-- key register enable
				KEY_REG_CE <= '1';
				
				--state transition
				IF lfsr_parallel_out = b"10001" THEN

					IF end_encrypt_out = '1' THEN
						IS_CE <= '0';
						nx_state <= end_encrypt;
					ELSE
						nx_state <= processing;
						IS_CE <= '1';
					END IF;
					IF serial_cnt_out = b"1111" THEN

						end_encrypt_ce <= '1';
					ELSE
						end_encrypt_ce <= '0';
					END IF;

				ELSE
					IS_CE <= '1';
					end_encrypt_ce <= '0';
					nx_state <= processing;

				END IF;

			WHEN end_encrypt =>
				-- set outputs
				BUSY <= '0';
				Ciphertext_out <= IS_out;
				
				--lfsr
				lfsr_rst <= '1';
				lfsr_ce <= '0';
				
				--element_cnt is disabled
				serial_ce <= '0';
				serial_cnt_rst <= '1';

				--ending sfr
				end_encrypt_ce <= '0';
				end_encrypt_rst <= '0';

				--INPUT MUX
				SEL_IN <= '0'; --loading

				--MUX driving for rnd function
				MUX1_sel <= '-';
				MUX8_sel <= '-';
				MUX2_sel <= '-';

				--key schedule MUxes  
				KEYMUX1_sel <= '-';
				KEYMUX3_sel <= '-';
				KEYMUX4_sel <= '-';
				
				-- Register en
				IS_CE <= '1';				
				KEY_REG_CE <= '0';
				
				--state transition
				nx_state <= end_encrypt;

		END CASE;

	END PROCESS;

    -- lfsr change his value every round, a cnt will determine when this occours    
	LFSR_CHANGE_constant : PROCESS (clk, serial_cnt_out)
	BEGIN
		IF rising_edge(clk) THEN
			IF serial_cnt_out = b"1111" THEN
				lfsr_change <= '1';
			ELSE
				lfsr_change <= '0';
			END IF;
		END IF;
	END PROCESS;
	
END Behavioral;