-- CIPHER TOP ENTITY
-- Cipher: Simeck
-- Key length: 96 bit
-- Plaintext length: 48 bit
-- Datapath: 1 bit
-- Cipher specs from here : "https://eprint.iacr.org/2015/612.pdf"
------------------------------------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--use work.Simeck_constants.all;

ENTITY Simeck_48_96_serial IS
	GENERIC (
		datapath : INTEGER := 1;
		plaintext_size : INTEGER := 48;
		key_size : INTEGER := 96
	);
	PORT (
		clk, data_ready : IN std_logic;
		key_in : IN std_logic_vector(0 DOWNTO 0);
		plaintext_in : IN std_logic_vector(0 DOWNTO 0);
		busy : OUT std_logic;
		start : IN std_logic;
		ciphertext_out : OUT std_logic_vector(0 DOWNTO 0) := (OTHERS => '0')
	);
END Simeck_48_96_serial;

ARCHITECTURE Behavioral OF Simeck_48_96_serial IS
------------------------------------------------------------------------------------------------------------
--Sub Components Definitions

	-- Multiplexer to route signals 
	COMPONENT MUX
		GENERIC (datapath : INTEGER := 1);
		PORT (
			l_in, r_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
			sel : IN std_logic;
			mux_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)
		);
	END COMPONENT;
	
    -- Standard Shift Register 		
	COMPONENT normal_shift_reg
		GENERIC (
			width : INTEGER; -- shift_reg width 
			length : INTEGER -- shift_reg length 
		);
		PORT (
			clk : IN std_logic;
			D : IN std_logic_vector(width - 1 DOWNTO 0);
			Q : OUT std_logic_vector(width - 1 DOWNTO 0);
			CE : IN std_logic
		);
	END COMPONENT;

    -- Shift register with output ports specified on various locations of the register because together 
    -- with multiplexers will be used to perform the rotate left operations in the round function 	
	COMPONENT tapped_shift_reg
		GENERIC (
			width : INTEGER; -- shift_reg width 
			length : INTEGER -- shift_reg length 
		);
		PORT (
			clk : IN std_logic;
			D : IN std_logic_vector(width - 1 DOWNTO 0);
			Q : OUT std_logic_vector(width - 1 DOWNTO 0);
			CE : IN std_logic;
			bn1_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			bn5_out : OUT std_logic_vector(width - 1 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Simeck round function, also used for key schedule function which is the same.
    -- a0_in is the rightmost bit in the internal state register
    -- the other MUX inputs will be mapped to the outputs of the muxes used to perform the rotate left operations
    -- this entity performs only XORs internally as the shifts will be done with muxes and control logic 	
	COMPONENT Rnd_function 
		GENERIC (
			datapath : INTEGER
		);
		PORT (
			a0_in, MUX1_in, b0_in, MUX5_in, Ki_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
			rnd_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)
		);
	END COMPONENT;

    -- The linear feedback shift register is used to generate round-unique constants 
    -- but also to determine whether the cipher has done its job.  
	COMPONENT lfsr
		GENERIC (
			length : INTEGER; 	-- different characteristic polynomials for different plaintext/key length 
			width : INTEGER 	--lfsr in/out/internal datapath 
		);
		PORT (
			lfsr_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			clk : IN std_logic;
			ce : IN std_logic;
			rst : IN std_logic;
			lfsr_parallel_out : OUT std_logic_vector(length * width - 1 DOWNTO 0)
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
	
    -- This multiplexer is used to choose the right z constant for each round
    -- the last bit of the 5 bit element counter value is fed in the input since it determines which z constant has to be used 		
	COMPONENT rnd_constants_MUX
		GENERIC (
			datapath : INTEGER;
			cnt_size : INTEGER);
		PORT (
			element_cnt_in : IN std_logic_vector(cnt_size - 1 DOWNTO 0);
			lfsr_in : IN std_logic_vector(0 DOWNTO 0);
			Const_out : OUT std_logic_vector(0 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Counter up to 24 than it resetes himself	
	COMPONENT CNT_48
		PORT (
			cnt_out : OUT std_logic_vector(4 DOWNTO 0);
			ce, rst, clk : IN std_logic
		);
	END COMPONENT;

------------------------------------------------------------------------------------------------------------	
    --INTERNAL SIGNALS DECLARATION 	

    -- CIPHER FSM SIGNALS
	TYPE state IS (LOADING, IDLE, PROCESSING);
	SIGNAL nx_state : state; 
	SIGNAL current_state : state := idle;

	-- IS INPUT MUX 
	SIGNAL IS_INPUT_MUX_OUT : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL sel_IN : std_logic;
	SIGNAL MUX_IN_out : std_logic_vector(datapath - 1 DOWNTO 0);
	
	--GLOBAL IS REGS SIGNALS 
	SIGNAL IS_ce : std_logic;
	
	--IS LEFT REG 
	SIGNAL IS_left_reg_in : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL IS_left_reg_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL IS_left_reg_bn1_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL IS_left_reg_bn5_out : std_logic_vector(datapath - 1 DOWNTO 0);

	--IS RIGHT REG 
	SIGNAL IS_right_reg_in : std_logic_vector(0 DOWNTO 0);
	SIGNAL IS_right_reg_out : std_logic_vector(0 DOWNTO 0);
	SIGNAL IS_right_reg_an1_out : std_logic_vector(0 DOWNTO 0);
	SIGNAL IS_right_reg_an5_out : std_logic_vector(0 DOWNTO 0);

	-- MUX5 and MUX1 
	SIGNAL MUX1_l_in : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL MUX1_r_in : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL MUX1_out : std_logic_vector(datapath - 1 DOWNTO 0);

	SIGNAL sel_1 : std_logic; -- also used for key schedule same control signals
	SIGNAL sel_5 : std_logic;

	SIGNAL MUX5_l_in : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL MUX5_r_in : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL MUX5_out : std_logic_vector(datapath - 1 DOWNTO 0);

	--RND FUNCTION 
	SIGNAL rnd_function_out : std_logic_vector(datapath - 1 DOWNTO 0);

	--KEY_REG_INPUT MUX
	SIGNAL KEY_INPUT_MUX_OUT : std_logic_vector(datapath - 1 DOWNTO 0);

	--KEY REG GLOBAL ENABLE 
	SIGNAL KEY_REG_CE : std_logic;

	--LEFT KEY REG 
	SIGNAL LEFT_KEY_REG_IN : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL LEFT_KEY_REG_OUT : std_logic_vector(datapath - 1 DOWNTO 0);
	
	--B KEY REG 
	SIGNAL B_KEY_REG_IN : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL B_KEY_REG_OUT : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL KEY_REG_bn1_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL KEY_REG_bn5_out : std_logic_vector(datapath - 1 DOWNTO 0);

	--A KEY REG 
	SIGNAL A_KEY_REG_OUT : std_logic_vector(datapath - 1 DOWNTO 0); --a0 working key 
	SIGNAL KEY_REG_an1_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL KEY_REG_an5_out : std_logic_vector(datapath - 1 DOWNTO 0);

	-- KEY SCHEDULE MUXES 
	SIGNAL MUX2_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL MUX3_out : std_logic_vector(datapath - 1 DOWNTO 0);

	--KEY SCHEDULE 
	SIGNAL key_schedule_out : std_logic_vector(datapath - 1 DOWNTO 0);

	--RND CONST
	SIGNAL rnd_const_out : std_logic_vector(datapath - 1 DOWNTO 0);

	-- ending cnt 
	SIGNAL ending_cnt_rst, ending_cnt_ce : std_logic;
	SIGNAL ending_cnt_out : std_logic_vector(1 DOWNTO 0); 
	SIGNAL ending_ce : std_logic;
	SIGNAL ending_cnt_inc : std_logic;

	--SERIAL CNT 
	SIGNAL serial_cnt_rst, element_cnt_ce : std_logic;
	SIGNAL serial_cnt_out : std_logic_vector(4 DOWNTO 0);
	SIGNAL serial_ce : std_logic;

	--LFSR 
	SIGNAL lfsr_ce : std_logic;
	SIGNAL lfsr_out : std_logic_vector(datapath - 1 DOWNTO 0);
	SIGNAL lfsr_rst : std_logic;
	SIGNAL lfsr_change : std_logic;
	SIGNAL lfsr_parallel_out : std_logic_vector(4 DOWNTO 0);

BEGIN

    -- SubComponents Instantiation
    
    -- Internal State multiplexer
    
    -- this mux maps the internal state register input to the input port plaintext_in when loading
    -- and when encrypting to the rnd function output 
	INST_IS_INPUT_MUX : MUX
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		l_in => Plaintext_in,
		r_in => RNd_function_out,
		sel => SEL_IN,
		mux_out => IS_INPUT_MUX_OUT
	);
	
    -- Internal State left part shift register   
    -- outputs are mapped to inputs of the muxes used for ROLs operations 	
	INST_IS_LEFT_REG : tapped_shift_reg
	GENERIC MAP(
		width => datapath,
		length => (plaintext_size/(2 * datapath)) -- 2n total plaintext size 
	)
	PORT MAP(
		CLK => clk,
		D => IS_INPUT_MUX_OUT, -- input of left portion is dictated by the input mux 
		CE => IS_ce,
		Q => IS_left_reg_out, --b0 out 
		bn1_out => IS_left_reg_bn1_out,
		bn5_out => IS_left_reg_bn5_out
	);

    -- Internal State right part shift register   
    -- outputs are mapped to inputs of the muxes used for ROLs operations  	
	INST_IS_RIGHT_REG : tapped_shift_reg
	GENERIC MAP(
		width => datapath,
		length => (plaintext_size/(2 * datapath)) -- n is 16              
	)
	PORT MAP(
		clk => clk,
		D => IS_left_reg_out, -- the two shift registers are contiguous
		CE => IS_ce,
		Q => IS_RIGHT_reg_out, --a0
		bn1_out => IS_right_reg_an1_out, -- these should be connected to muxes  1 and 5
		bn5_out => IS_right_reg_an5_out
	);

    -- used to perform the ROL by one bit specified in Simeck update algorithm
    -- MUX1_sel is chosen accordingly in the cipher state machine		
	INST_MUX1 : MUX
	GENERIC MAP(
		datapath => datapath
	)
	PORT MAP(
		l_in => IS_left_reg_bn1_out,
		r_in => IS_right_reg_an1_out,
		sel => sel_1,
		mux_out => mux1_out
	);
	
    -- used to perform the ROL by five bit specified in Simeck update algorithm
    -- MUX5_sel is chosen accordingly in the cipher state machine			
	INST_MUX5 : MUX
	GENERIC MAP(
		datapath => datapath
	)
	PORT MAP(
		l_in => IS_left_reg_bn5_out,
		r_in => IS_right_reg_an5_out,
		sel => sel_5,
		mux_out => MUX5_out
	);

	-- Simeck round function	
	INST_RND_FUNCTION : rnd_function
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		MUX1_in => MUX1_out,
		MUX5_in => MUX5_out,
		rnd_out => rnd_function_out, -- feedback in the IS shift reg 
		ki_in => A_KEY_REG_OUT, -- working key input 
		a0_in => IS_RIGHT_reg_out,
		b0_in => IS_LEFT_reg_out
	);

	 -- this mux maps the key register input to the input port key_in when loading
     -- and when encrypting to thekey schedule output 	
	INST_KEY_REG_INPUT_MUX : MUX
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		l_in => key_in,
		r_in => key_schedule_out,
		sel => SEL_IN, -- same sel signal as is inoput mux 
		mux_out => KEY_INPUT_MUX_OUT
	);
	
	-- Key left part shift register	
	INST_LEFT_KEY_REG : normal_shift_reg
	GENERIC MAP(
		width => datapath,
		length => key_size/(2 * datapath)
	)
	PORT MAP(
		clk => clk,
		D => KEY_INPUT_MUX_OUT,
		CE => KEY_REG_CE,
		Q => LEFT_KEY_REG_OUT
	);

	-- Left portion of key shift register	
	INST_B_KEY_REG : tapped_shift_reg -- B PORTION OF SHIFT REG 
	GENERIC MAP(
		width => datapath,
		length => key_size/(4 * datapath) -- 2n total plaintext size 
	)
	PORT MAP(
		clk => clk,
		D => LEFT_KEY_REG_OUT, -- b0
		CE => KEY_REG_CE,
		Q => B_KEY_REG_OUT,
		bn1_out => KEY_REG_bn1_out,
		bn5_out => KEY_REG_bn5_out
	);
	
	-- Right portion of key shift register	
	INST_A_KEY_REG : tapped_shift_reg
	GENERIC MAP(
		width => 1,
		length => key_size/(4 * datapath) -- 2n total plaintext size 
	)
	PORT MAP(
		clk => clk,
		D => B_KEY_REG_OUT,
		CE => KEY_REG_CE,
		Q => A_KEY_REG_OUT, --a0 
		bn1_out => KEY_REG_an1_out,
		bn5_out => KEY_REG_an5_out
	);
	
	-- Same as MUX1, but used in the key schedule  	
	-- Perform the ROL by 1	
	INST_MUX2 : MUX                               
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		l_in => KEY_REG_bn1_out,
		r_in => KEY_REG_an1_out,
		sel => sel_1,
		mux_out => MUX2_out
	);
	
	-- Same as MUX5, but used in the key schedule  	
	-- Perform the ROL by 5	
	INST_MUX3 : MUX 
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		l_in => KEY_REG_bn5_out,
		r_in => KEY_REG_an5_out,
		sel => sel_5,
		mux_out => MUX3_out
	);
	
	-- Simeck key schedule function, same as round function.	
	INST_KEY_SCHEDULE_FUNCTION : Rnd_function
	GENERIC MAP(datapath => datapath)
	PORT MAP(
		MUX1_in => MUX2_out,
		MUX5_in => MUX3_out,
		rnd_out => key_schedule_out,
		ki_in => rnd_const_out,
		a0_in => A_KEY_REG_OUT,
		b0_in => B_KEY_REG_OUT
	);

	-- used for the round-dependant constants in the key schedule
	-- takes in input the last bit of the counter used to count the individual bits processed in a round	
	INST_RND_CONSTANTS_GEN : rnd_constants_MUX
	GENERIC MAP(datapath => datapath, cnt_size => 5)
	PORT MAP(
		element_cnt_in => serial_cnt_out,
		lfsr_in => lfsr_out,
		Const_out => rnd_const_out
	);

	-- element counter 
	-- this counter is used to count the individual bits processed by the cipher which are 24
	INST_SERIAL_CNT : cnt_48
	PORT MAP(
		cnt_out => serial_cnt_out,
		rst => serial_cnt_rst,
		clk => clk,
		ce => serial_ce
	);

	-- end encrypt counter; will be used in the state machine to determine whether the cipher has done its work.		
	INST_ENCR_DONE_CNT : CNT
	GENERIC MAP(size => 2)
	PORT MAP(
		cnt_out => ending_cnt_out,
		rst => ending_cnt_rst,
		clk => clk,
		ce => ending_cnt_ce
	);

	-- lfsr used to generate round constants	
	-- lfsr_out is only the MSB (5th bit) of lfsr_parallel_out
	-- the lfsr should change his value every round, so when all the 16 individual bits are processed		
	INST_LFSR : lfsr
	GENERIC MAP(
		length => 5,
		width => 1)
	PORT MAP(
		lfsr_out => lfsr_out,
		clk => lfsr_change,
		ce => lfsr_ce,
		rst => lfsr_rst,
		lfsr_parallel_out => lfsr_parallel_out
	);

------------------------------------------------------------------------------------------------------------	
-- CIPHER FSM 
    --next state transition process  
	STATE_MACHINE_MAIN : PROCESS (clk, data_ready)
	BEGIN
		IF rising_edge(CLK) THEN
			IF (data_ready = '1') THEN
				current_state <= LOADING; -- continua a caricare           
			ELSE
				current_state <= nx_state;
			END IF;
		END IF;

	END PROCESS;
	STATE_MACHINE_BODY : PROCESS (current_state, start, lfsr_parallel_out, serial_cnt_out, ending_cnt_out, IS_RIGHT_reg_out)
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

				--ending cnt 
				ending_cnt_ce <= '0';
				ending_cnt_rst <= '1';

				--INPUT MUX 
				SEL_IN <= '0';

				--MUX driving for rnd function 
				sel_1 <= '1';
				sel_5 <= '1';

				-- state transition 
				-- lfsr out value is used to count up if the loading has been completed					
				IF lfsr_parallel_out = b"11100" THEN -- plaintext has been loaded keep loading the key 
					nx_state <= loading;
					IS_CE <= '0';
					KEY_REG_CE <= '1';

				ELSIF lfsr_parallel_out = b"11000" THEN -- keep loading key
					IS_CE <= '0';
					KEY_REG_CE <= '1';
					nx_state <= loading;

				ELSIF lfsr_parallel_out = b"10001" THEN -- key has been loaded 
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
				
				--lfsr 
				lfsr_rst <= '1';
				lfsr_ce <= '0';
				
				--element_cnt is disabled 
				serial_ce <= '0';
				serial_cnt_rst <= '1';

				--ending cnt 
				ending_cnt_ce <= '0';
				ending_cnt_rst <= '0';
				
				--INPUT MUX 
				SEL_IN <= '0'; --loading 

				--MUX driving for rnd function 
				sel_1 <= '1';
				sel_5 <= '1';
				
				--outputting ciphertext
				IF ending_cnt_out = b"01" THEN -- output mux 
					IS_CE <= '1';
					Ciphertext_out <= IS_RIGHT_reg_out;
				ELSE
					Ciphertext_out <= (OTHERS => '0');
					IS_CE <= '0';
				END IF;

				-- Key register enable
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
				ending_cnt_rst <= '0';

				--INPUT MUX 
				SEL_IN <= '1';

				--MUX driving for rnd function 
				IF serial_cnt_out = b"00000" THEN
					sel_1 <= '0';
				ELSE
					sel_1 <= '1';	-- ROL by 1
				END IF;

				IF serial_cnt_out <= b"00100" THEN
					sel_5 <= '0';
				ELSE
					sel_5 <= '1';	-- ROL by 5
				END IF;

				-- Key register enable
				KEY_REG_CE <= '1';
				--state transition

				IF lfsr_parallel_out = b"00011" THEN -- continue processing 
					IF ending_cnt_out = b"01" THEN	-- only if this condition is met the cipher has finished
													-- this is because we are using the lfsr also for the loading phase
													-- we used this johnson counter trick to spare logic
						IS_CE <= '0';
						nx_state <= idle;
					ELSE
						nx_state <= processing;
						IS_CE <= '1';
					END IF;

					IF serial_cnt_out = b"10111" THEN	-- if the round has ended 
						ending_cnt_ce <= '1';		-- let the johnson counter increase
					ELSE
						ending_cnt_ce <= '0';
					END IF;

				ELSE
					IS_CE <= '1';
					ending_cnt_ce <= '0';
					nx_state <= processing;
				END IF;
		END CASE;
	END PROCESS;


	-- the lfsr should change his value every round, 
    -- this happens whenever the element counter saturates		
	LFSR_CHANGE_constant : PROCESS (clk, serial_cnt_out)
	BEGIN
		IF rising_edge(clk) THEN
			IF serial_cnt_out = b"10111" THEN
				lfsr_change <= '1';
			ELSE
				lfsr_change <= '0';
			END IF;
		END IF;

	END PROCESS;
END Behavioral;