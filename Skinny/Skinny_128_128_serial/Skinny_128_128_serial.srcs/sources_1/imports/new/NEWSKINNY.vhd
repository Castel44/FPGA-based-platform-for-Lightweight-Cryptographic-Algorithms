-- CIPHER TOP ENTITY
-- Cipher: Skinny
-- Key length: 128 bit
-- Plaintext length: 128 bit
-- Datapath: 8 bit
-- Cipher specs from here : "https://eprint.iacr.org/2016/660.pdf"
------------------------------------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Skinny_128_128 IS

	PORT (
		CLK : IN STD_LOGIC;
		PLAINTEXT_IN : IN STD_LOGIC_VECTOR (7 DOWNTO 0); -- plaintext and tweakey is loaded 8 bit word by 8 bit word
		TWEAKEY_IN : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		data_ready : IN std_logic; -- data ready is used to start the loading phase
		start : IN std_logic; -- when start goes high the cipher starts encrypting 
		BUSY : OUT STD_LOGIC := '0'; -- when loading or processing is high 
		CIPHERTEXT_OUT : OUT STD_LOGIC_VECTOR (7 DOWNTO 0) := (OTHERS => '0') -- output is also serial  
	);

END Skinny_128_128;
ARCHITECTURE Behavioral OF Skinny_128_128 IS

------------------------------------------------------------------------------------------------------------
	----Sub Components Definitions

	-- A shift register is used to store the Internal State and Tweakey which is in matrix form as the register shifts, each word will be processed by the cipher operations.

	-- This is because skinny is a SPN cipher like the AES.
	-- Each row of the cipher internal state is implemented as a shift register. 
	-- The internal state is implemented via a shift register. 

    -- Internal State shift register
	COMPONENT skinny_shift_reg_64
		PORT (

			-- inputs and outputs for each row in the shift register are necessary to perform mixcolumns operations
			serial_in_first_row : IN std_logic_vector (7 DOWNTO 0);
			serial_in_second_row : IN std_logic_vector (7 DOWNTO 0);
			serial_in_third_row : IN std_logic_vector (7 DOWNTO 0);
			serial_in_fourth_row : IN std_logic_vector (7 DOWNTO 0);

			clock : IN std_logic;

			-- enables for individual rows will allow to perform shiftrows in an efficient manner
			enable_1, enable_2, enable_3, enable_4 : IN std_logic;

			serial_output_first_row : OUT std_logic_vector (7 DOWNTO 0) := (OTHERS => '0');
			serial_output_second_row : OUT std_logic_vector (7 DOWNTO 0) := (OTHERS => '0');
			serial_output_third_row : OUT std_logic_vector (7 DOWNTO 0) := (OTHERS => '0');
			serial_output_fourth_row : OUT std_logic_vector (7 DOWNTO 0) := (OTHERS => '0')

		);

	END COMPONENT;

	-- Tweakey shift register
	COMPONENT shift_reg
		PORT (
			-- a parallel in and parallel out port is needed because the cipher specification 
			-- requires a permutation on the entire key register as part of the key schedule.   
			                
			parallel_in : IN std_logic_vector (63 DOWNTO 0);
			serial_in : IN std_logic_vector(7 DOWNTO 0);
			clock, enable_in : IN std_logic;
			enable_parallel_loading : IN std_logic;
			serial_output : OUT std_logic_vector (7 DOWNTO 0) := (OTHERS => '0');
			parallel_output : OUT std_logic_vector (63 DOWNTO 0) := (OTHERS => '0')

		);

	END COMPONENT;

	-- Skinny Subcells operation (simply an SBOX)
	COMPONENT SubCells
		PORT (
			SubCells_IN : IN std_logic_vector(7 DOWNTO 0);
			SubCells_OUT : OUT std_logic_vector(7 DOWNTO 0)
		);

	END COMPONENT SubCells;
	
	-- Skinny Addconstant operation (xoring with a round-dependant constant generatedby a lfsr)
	COMPONENT AddConstant
		PORT (
			perform_AddConstant : IN std_logic_vector (4 DOWNTO 0); -- enable signal must be used for signaling the element to be xored 
			-- not all elements are to be xored 
			-- the same counter used for the loaing phase is used to spare logic			
			lfsr_in : IN std_logic_vector(5 DOWNTO 0); -- input for the lfsr generated constant 
			AddConstant_IN : IN std_logic_vector (7 DOWNTO 0); -- input for plaintext word 
			AddConstant_OUT : OUT std_logic_vector (7 DOWNTO 0) -- output word 
		);
	END COMPONENT AddConstant;
	
	-- Skinny AddRoundTweakey operation (xoring part of the internal state with the round key)
	COMPONENT AddRoundTweakey
		PORT (

			perform_AddRoundTweakey : IN std_logic_vector (4 DOWNTO 0); -- enable signal must be used for signaling the element to be xored 
			-- not all elements are to be xored 
			-- the same counter used for the loaing phase is used to spare logic
			AddRoundTweakey_TWEAKEY_IN : IN std_logic_vector(7 DOWNTO 0); -- input for the key word to be xored 
			AddRoundTweakey_IS_IN : IN std_logic_vector(7 DOWNTO 0); -- input for the plaintext word 
			AddRoundTweakey_IS_OUT : OUT std_logic_vector(7 DOWNTO 0) -- output 
		);
	END COMPONENT AddRoundTweakey;

	-- the linear feedback shift register used to generate round-unique constants 
	-- to spare logic is also used to determine when the encryption is done, used as round counter.
	COMPONENT lfsr
		PORT (
			clk, ce : IN std_logic;
			reset : IN std_logic;
			lfsr_out : OUT std_logic_vector (5 DOWNTO 0)
		);
	END COMPONENT lfsr;

	-- Counter used to handle the loading for plaintext and key but also in addroundtweakey and addroundconstant 
	-- to control for which word the xoring has to be made.
	COMPONENT skinny_cnt
		PORT (
			clk : IN std_logic;
			reset : IN std_logic;
			enable_element_counter_in : IN std_logic;
			ELEMENT_CNT_OUT : OUT std_logic_vector (4 DOWNTO 0)
		);
	END COMPONENT;

	-- this component performs the key scheduling algorithm 
	-- which is a permutation over the entire key reg 
	-- unfortunately this operation can't be serialized 
	COMPONENT rnd_key_update
		PORT (
			TWEAKEY_permutation_IN : IN std_logic_vector(63 DOWNTO 0);
			TWEAKEY_permutation_OUT : OUT std_logic_vector(63 DOWNTO 0) := (OTHERS => '0');
			enable_permutation : IN std_logic
		);
	END COMPONENT rnd_key_update;

	-- Mixcolumns operation

	-- this operation is performed on the rows and it consists of  xoring some rows together or simply 
	-- mix up the rows. this can be done serially taking each first internal state 8-bit word row element 
	-- at the same time and perform the required operations on them. the result of the operations is then 
	-- placed at the last position in each row of the internal state. 
	-- in this way this operation requires 4 clock cycles but it spares logic. 
	COMPONENT MixColumns
		PORT (
			MixColumns_first_row_in : IN std_logic_vector(7 DOWNTO 0);
			MixColumns_second_row_in : IN std_logic_vector(7 DOWNTO 0);
			MixColumns_third_row_in : IN std_logic_vector(7 DOWNTO 0);
			MixColumns_fourth_row_in : IN std_logic_vector(7 DOWNTO 0);
			MixColumns_first_row_out : OUT std_logic_vector(7 DOWNTO 0);
			MixColumns_second_row_out : OUT std_logic_vector(7 DOWNTO 0);
			MixColumns_third_row_out : OUT std_logic_vector(7 DOWNTO 0);
			MixColumns_fourth_row_out : OUT std_logic_vector(7 DOWNTO 0)
		);

	END COMPONENT MixColumns;

------------------------------------------------------------------------------------------------------------
	-- STATE MACHINE SIGNAL DECLARATION

	-- state machine states
	-- shiftrows is entirely performed in the state machine
	-- mixcolumns has its own state 
	-- in rnd_end the key scheduling algorithm is performed

	TYPE state IS (LOADING, IDLE, PROCESSING, ShiftR, MixCol, RND_END); -- cipher possible states
	SIGNAL nx_state : state; 
	SIGNAL current_state : state := idle;

	ATTRIBUTE fsm_safe_state : STRING;
	ATTRIBUTE fsm_safe_state OF nx_state : SIGNAL IS "default_state";
	
    -- Internal signals declaration:

	-- IS SHIFT REG SIGNALS
	SIGNAL IS_enable1_buf : std_logic;
	SIGNAL IS_enable2_buf : std_logic;
	SIGNAL IS_enable3_buf : std_logic;
	SIGNAL IS_enable4_buf : std_logic;

	SIGNAL IS_serial_in_first_row_buf : std_logic_vector (7 DOWNTO 0);
	SIGNAL IS_serial_in_second_row_buf : std_logic_vector (7 DOWNTO 0);
	SIGNAL IS_serial_in_third_row_buf : std_logic_vector (7 DOWNTO 0);
	SIGNAL IS_serial_in_fourth_row_buf : std_logic_vector (7 DOWNTO 0);

	SIGNAL IS_serial_output_first_row_buf : std_logic_vector (7 DOWNTO 0);
	SIGNAL IS_serial_output_second_row_buf : std_logic_vector (7 DOWNTO 0);
	SIGNAL IS_serial_output_third_row_buf : std_logic_vector (7 DOWNTO 0);
	SIGNAL IS_serial_output_fourth_row_buf : std_logic_vector (7 DOWNTO 0);

	-- TW SHIFR REG SIGNALS
	SIGNAL TW_REG_enable_in_buf : std_logic;
	SIGNAL TW_REG_parallel_in_buf : std_logic_vector(63 DOWNTO 0);
	SIGNAL TW_REG_parallel_out_buf : std_logic_vector(63 DOWNTO 0);
	SIGNAL TW_REG_enable_parallel_loading_buf : std_logic;
	SIGNAL TW_REG_serial_in_buf : std_logic_vector(7 DOWNTO 0);
	SIGNAL TW_REG_serial_out_buf : std_logic_vector(7 DOWNTO 0);

	-- RND KEY UPFATE PERMUTATION
	SIGNAL enable_TW_permutation_buf : std_logic;
	
	--SUBCELLS SIGNALS
	SIGNAL Subcells_in_buf : std_logic_vector(7 DOWNTO 0);
	SIGNAL Subcells_out_buf : std_logic_vector(7 DOWNTO 0);

	--ADDROUNDCONSTANT SIGNALS
	SIGNAL AddConstant_OUT_BUF : std_logic_vector (7 DOWNTO 0);

	-- ADDROUNDTWEAKEY SIGNALS
	SIGNAL AddRoundTweakey_IS_OUT_BUF : std_logic_vector(7 DOWNTO 0);
	
	-- MIXCOLUMN SIGNALS
	SIGNAL MixColumns_first_row_in_buf : std_logic_vector(7 DOWNTO 0);
	SIGNAL MixColumns_second_row_in_buf : std_logic_vector(7 DOWNTO 0);
	SIGNAL MixColumns_third_row_in_buf : std_logic_vector(7 DOWNTO 0);
	SIGNAL MixColumns_fourth_row_in_buf : std_logic_vector(7 DOWNTO 0);
	SIGNAL MixColumns_first_row_out_buf : std_logic_vector(7 DOWNTO 0);
	SIGNAL MixColumns_second_row_out_buf : std_logic_vector(7 DOWNTO 0);
	SIGNAL MixColumns_third_row_out_buf : std_logic_vector(7 DOWNTO 0);
	SIGNAL MixColumns_fourth_row_out_buf : std_logic_vector(7 DOWNTO 0);

	--LFSR SIGNALS
	SIGNAL lfsr_out_buf : std_logic_vector(5 DOWNTO 0);
	SIGNAL lfsr_rst_buf : std_logic;
	SIGNAL lfsr_enable_buf : std_logic;
	
	-- CNT SIGNALS
	SIGNAL rst_CNT_buf : std_logic;
	SIGNAL enable_CNT_buf : std_logic := '0';
	SIGNAL cnt_out_buf : std_logic_vector(4 DOWNTO 0);

BEGIN

------------------------------------------------------------------------------------------------------------
	-- SubComponents Instantiation

	INST_IS : skinny_shift_reg_64
	PORT MAP(
		serial_in_first_row => IS_serial_in_first_row_buf, serial_in_second_row => IS_serial_in_second_row_buf,
		serial_in_third_row => IS_serial_in_third_row_buf, serial_in_fourth_row => IS_serial_in_fourth_row_buf,

		clock => clk,
		enable_1 => IS_enable1_buf, enable_2 => IS_enable2_buf,
		enable_3 => IS_enable3_buf, enable_4 => IS_enable4_buf,
		serial_output_first_row => IS_serial_output_first_row_buf, serial_output_second_row => IS_serial_output_second_row_buf,
		serial_output_third_row => IS_serial_output_third_row_buf, serial_output_fourth_row => IS_serial_output_fourth_row_buf
	);
	
	INST_TW_REG : shift_reg
	PORT MAP(
		parallel_in => TW_REG_parallel_in_buf, clock => clk,
		enable_in => TW_REG_enable_in_buf, enable_parallel_loading => TW_REG_enable_parallel_loading_buf,
		serial_in => TW_REG_serial_in_buf, serial_output => TW_REG_serial_out_buf,
		parallel_output => TW_REG_parallel_out_buf
	);
	
	INST_SubCells : SubCells
	PORT MAP(
		SubCells_IN => SubCells_in_buf,
		SubCells_OUT => SubCells_OUT_BUF
	);
	
	INST_AddConstant : AddConstant
	PORT MAP(-- non combinatorial (LFSR)
		lfsr_in => lfsr_out_buf,
		Perform_AddConstant => CNT_OUT_BUF,
		AddConstant_IN => SubCells_OUT_BUF,
		AddConstant_OUT => AddConstant_OUT_BUF
	);
	
	INST_AddRoundTweakey : AddRoundTweakey
	PORT MAP(
		perform_AddRoundTweakey => CNT_OUT_BUF,
		AddRoundTweakey_IS_IN => AddConstant_OUT_BUF,
		AddRoundTweakey_IS_OUT => AddRoundTweakey_IS_OUT_BUF,
		AddRoundTweakey_TWEAKEY_IN => TW_REG_serial_out_buf
	);

	INST_LFSR : lfsr
	PORT MAP(
		clk => clk,
		ce => lfsr_enable_buf,
		reset => lfsr_rst_buf,
		lfsr_out => lfsr_out_buf
	);

	INST_SKINNY_CNT : skinny_cnt
	PORT MAP(
		clk => clk,
		reset => rst_cnt_buf,
		enable_element_counter_in => enable_cnt_buf,
		ELEMENT_CNT_OUT => cnt_out_buf
	);

	INST_KEY_UPDATE : rnd_key_update
	PORT MAP(
		TWEAKEY_permutation_IN => TW_reg_parallel_out_buf,
		TWEAKEY_permutation_OUT => TW_REG_parallel_in_buf,
		enable_permutation => enable_TW_permutation_buf
	);
	
	INST_MIXCOLUMNS : MixColumns
	PORT MAP(
		MixColumns_first_row_in => MixColumns_first_row_in_buf,
		MixColumns_second_row_in => MixColumns_second_row_in_buf,
		MixColumns_third_row_in => MixColumns_third_row_in_buf,
		MixColumns_fourth_row_in => MixColumns_fourth_row_in_buf,
		MixColumns_first_row_out => MixColumns_first_row_out_buf,
		MixColumns_second_row_out => MixColumns_second_row_out_buf,
		MixColumns_third_row_out => MixColumns_third_row_out_buf,
		MixColumns_fourth_row_out => MixColumns_fourth_row_out_buf
	);

------------------------------------------------------------------------------------------------------------
	--next state transition process
	STATE_MACHINE_MAIN : PROCESS (clk, data_ready, nx_state)
	BEGIN
		IF rising_edge(CLK) THEN
			IF (data_ready = '1') THEN

				current_state <= LOADING;
			ELSE

				current_state <= nx_state;
			END IF;
		END IF;

	END PROCESS;

	STATE_MACHINE_BODY : PROCESS (start, current_state, cnt_out_buf, lfsr_out_buf, IS_serial_output_first_row_buf, IS_serial_output_fourth_row_buf, IS_serial_output_third_row_buf, 
	                               IS_serial_output_second_row_buf, tweakey_in, plaintext_in, Mixcolumns_fourth_row_out_buf, Mixcolumns_first_row_out_buf, Mixcolumns_second_row_out_buf,
	                               Mixcolumns_third_row_out_buf, Tw_REG_serial_out_buf, AddRoundTweakey_IS_OUT_BUF)

	BEGIN
		CASE current_state IS

			WHEN loading =>

				--enable TW and IS shift registers and set MUXES accordingly to load the plaintext and the tweakey properly

				--IS REG
				IS_enable1_buf <= '1';
				IS_enable2_buf <= '1';
				IS_enable3_buf <= '1';
				IS_enable4_buf <= '1';

				IS_serial_in_third_row_buf <= IS_serial_output_fourth_row_buf;
				IS_serial_in_second_row_buf <= IS_serial_output_third_row_buf;
				IS_serial_in_first_row_buf <= IS_serial_output_second_row_buf;

				IS_serial_in_fourth_row_buf <= plaintext_in; -- loading plaintext 

				--Subcells_in
				Subcells_in_buf <= IS_serial_output_first_row_buf;
				
				--TW REG is enabled
				TW_REG_serial_in_buf <= tweakey_in; -- loading key
				enable_TW_permutation_buf <= '0';
				TW_REG_enable_parallel_loading_buf <= '0';
				TW_REG_enable_in_buf <= '1';
				
				-- LFSR
				LFSR_RST_BUF <= '1';
				LFSR_ENABLE_BUF <= '0';
				
				--enable cnt and start counting to load the words.
				ENABLE_CNT_BUF <= '1'; -- counting the words 
				RST_CNT_BUF <= '0';
				
				IF (cnt_out_buf = b"01111") THEN
					nx_state <= idle; -- plaintext and key have been loaded
				ELSE
					nx_state <= loading;
				END IF;

				--MixColumns
				MixColumns_first_row_in_buf <= (OTHERS => '-'); -- don't care 
				MixColumns_second_row_in_buf <= (OTHERS => '-');
				MixColumns_third_row_in_buf <= (OTHERS => '-');
				MixColumns_fourth_row_in_buf <= (OTHERS => '-');

				--output signals
				CIPHERTEXT_OUT <= (OTHERS => '0');
				BUSY <= '1'; -- loading ! busy is high 
				
			WHEN idle =>
				IF (lfsr_out_buf = b"011010") THEN -- the cipher has done encrypting !!

					-- enable the IS shift register
					-- and output each word sequentially from ciphertext_out port 

					IS_enable1_buf <= '1';
					IS_enable2_buf <= '1';
					IS_enable3_buf <= '1';
					IS_enable4_buf <= '1';
					CIPHERTEXT_OUT <= IS_serial_output_first_row_buf;

				ELSE -- cipher has not even started working freeze the loaded internal state
					IS_enable1_buf <= '0';
					IS_enable2_buf <= '0';
					IS_enable3_buf <= '0';
					IS_enable4_buf <= '0';
					CIPHERTEXT_OUT <= (OTHERS => '0');

				END IF;
				-- the internal state is simply connected sequentially as one contiguos vector 
				-- as the idle state is also the same state when the cipher has done encypting and must output the ciphertext
				-- in this way the ciphertext is output serially word by word                                 

				IS_serial_in_third_row_buf <= IS_serial_output_fourth_row_buf;
				IS_serial_in_second_row_buf <= IS_serial_output_third_row_buf;
				IS_serial_in_first_row_buf <= IS_serial_output_second_row_buf;
				IS_serial_in_fourth_row_buf <= MixColumns_fourth_row_out_buf;

				Subcells_in_buf <= (OTHERS => '-'); -- don't care 

				---- stop shifting the TW reg cipher is in idle 

				TW_REG_enable_in_buf <= '0'; -- not shifting 
				TW_REG_serial_in_buf <= TW_REG_serial_out_buf; --circular buffering of key reg 
				enable_TW_permutation_buf <= '0';
				TW_REG_enable_parallel_loading_buf <= '0';

				--state
				IF (start = '1') THEN

					nx_state <= processing;
				ELSE

					nx_state <= idle;

				END IF;

				--LFSR 
				LFSR_RST_BUF <= '0';
				LFSR_ENABLE_BUF <= '0';
				--CNT
				RST_CNT_BUF <= '1';
				ENABLE_CNT_BUF <= '0';
				--MixColumns
				MixColumns_first_row_in_buf <= (OTHERS => '-');
				MixColumns_second_row_in_buf <= (OTHERS => '-');
				MixColumns_third_row_in_buf <= (OTHERS => '-');
				MixColumns_fourth_row_in_buf <= (OTHERS => '-');

				BUSY <= '0'; -- not busy cipher is in idle or encryption has done 

			WHEN processing => -- perform SubCells, AddRoundTweakey and AddConstants sequentially
				-- mixcolumns and shiftows are performed separately as they can't be performed fully sequentially 
				-- as they operate on the internal state rows and not on a singular word/cell.

				-- outputs                                  
				CIPHERTEXT_OUT <= (OTHERS => '0');
				BUSY <= '1';

				--CNT
				ENABLE_CNT_BUF <= '1'; --counter is enabled because it controls which words are to be xored in addroundconstant 
				-- and addroundtweakey 
				rst_CNT_buf <= '0';

				--LFSR
				lfsr_enable_buf <= '0';
				lfsr_rst_buf <= '0';

				--IS shifts
				IS_enable1_buf <= '1';
				IS_enable2_buf <= '1';
				IS_enable3_buf <= '1';
				IS_enable4_buf <= '1';

				-- the internal state shifts normally as a contiguos vector
				--  each word is processed by subcells addroundconstants and addroundtweakey and then put 
				-- back at the end of the internal state
				IS_serial_in_third_row_buf <= IS_serial_output_fourth_row_buf;
				IS_serial_in_second_row_buf <= IS_serial_output_third_row_buf;
				IS_serial_in_first_row_buf <= IS_serial_output_second_row_buf;

				-- IS and subcells and addRoundTweakey
				IS_serial_in_fourth_row_buf <= AddRoundTweakey_IS_out_buf; -- put result of addrndtweakey back onto IS
				SubCells_in_buf <= IS_serial_output_first_row_buf; --output m0 to subcells (m0 is te first cell in the IS)

				--TW
				TW_REG_enable_in_buf <= '1'; -- keep shiting the key reg on itself 
				TW_REG_serial_in_buf <= TW_REG_serial_out_buf; --circular buffering 
				-- the key register shifts circularly and the first word at each clock cycle is used 
				-- in the AddRoundTweakey operation 
				enable_TW_permutation_buf <= '0'; -- no key scheduling the round is not complete 
				TW_REG_enable_parallel_loading_buf <= '0';

				--MixColumns
				MixColumns_first_row_in_buf <= (OTHERS => '-');
				MixColumns_second_row_in_buf <= (OTHERS => '-');
				MixColumns_third_row_in_buf <= (OTHERS => '-');
				MixColumns_fourth_row_in_buf <= (OTHERS => '-');
				-- nx_state transition                     
				IF cnt_out_buf = b"01111" THEN
					nx_state <= SHIFTR; -- the internal state is aligned and all the three operations are complete
					-- proceed with shiftrows

				ELSE

					nx_state <= processing;
				END IF;
			WHEN SHIFTR =>

				-- perform shiftrows, keep shifting TW REG 

				-- outputs

				CIPHERTEXT_OUT <= (OTHERS => '0');
				BUSY <= '1';

				--CNT
				ENABLE_CNT_BUF <= '1'; --counter is enabled it is used to count the necessary shifts for each row 
				rst_CNT_buf <= '0';

				--LFSR
				lfsr_enable_buf <= '0';
				lfsr_rst_buf <= '0';

				-- IS mapping 

				-- first row not shifted

				IS_enable1_buf <= '0'; -- first row is not shifted
				IS_serial_in_first_row_buf <= (OTHERS => '-');

				--circular shifting on others rows 
				IS_serial_in_second_row_buf <= IS_serial_output_second_row_buf;
				IS_serial_in_third_row_buf <= IS_serial_output_third_row_buf;
				IS_serial_in_fourth_row_buf <= IS_serial_output_fourth_row_buf;

				--TW reg 
				TW_REG_enable_in_buf <= '1'; -- keep shifting the key on itself 
				TW_REG_serial_in_buf <= TW_REG_serial_out_buf; --circular buffering
				enable_TW_permutation_buf <= '0';
				TW_REG_enable_parallel_loading_buf <= '0';
				--Subcells in and MixColumns 
				Subcells_in_buf <= (OTHERS => '-');

				MixColumns_first_row_in_buf <= (OTHERS => '-');
				MixColumns_second_row_in_buf <= (OTHERS => '-');
				MixColumns_third_row_in_buf <= (OTHERS => '-');
				MixColumns_fourth_row_in_buf <= (OTHERS => '-');

				--shifting other rows 
				-- the counter and enables are used to shift circularly each row accordingly to the cipher specification 

				IF cnt_out_buf = b"10001" THEN

					IS_enable2_buf <= '1';
					IS_enable3_buf <= '1';
					IS_enable4_buf <= '0'; -- fourth row has been shifted

					nx_state <= SHIFTR;

				ELSIF cnt_out_buf = b"10010" THEN

					IS_enable4_buf <= '0'; --fourth row has been shifted 
					IS_enable2_buf <= '1';
					IS_enable3_buf <= '0';

					nx_state <= MIXCOL;
				ELSE

					IS_enable2_buf <= '1';
					IS_enable3_buf <= '1';
					IS_enable4_buf <= '1';

					nx_state <= SHIFTR;

				END IF;

			WHEN MIXCOL => -- perform MIXCOLUMNS
				-- outputs
				CIPHERTEXT_OUT <= (OTHERS => '0');
				BUSY <= '1';

				--CNT
				ENABLE_CNT_BUF <= '1'; --counter is enabled
				rst_CNT_buf <= '0';

				--LFSR
				lfsr_enable_buf <= '0';
				lfsr_rst_buf <= '0';
				
				-- all rows mapped to mixcolumns
				-- mixcolumns must be performed on all rows on the same time 
				-- each row of the internal state shifts and the first element is processed by mixcolumns
				-- this operation requires 4 clock cycles.

				MixColumns_first_row_in_buf <= IS_serial_output_first_row_buf;
				IS_serial_in_first_row_buf <= MixColumns_first_row_out_buf;
				
				IS_serial_in_second_row_buf <= MixColumns_second_row_out_buf;
				MixColumns_second_row_in_buf <= IS_serial_output_second_row_buf;

				IS_serial_in_third_row_buf <= MixColumns_third_row_out_buf;
				MixColumns_third_row_in_buf <= IS_serial_output_third_row_buf;

				IS_serial_in_fourth_row_buf <= MixColumns_fourth_row_out_buf;
				MixColumns_fourth_row_in_buf <= IS_serial_output_fourth_row_buf;

				--Subcells_in
				SubCells_in_buf <= (OTHERS => '-');

				--TW 
				TW_REG_serial_in_buf <= TW_REG_serial_out_buf; --circular buffering
				TW_REG_enable_in_buf <= '1'; -- shifting on itself 
				enable_TW_permutation_buf <= '0';
				TW_REG_enable_parallel_loading_buf <= '0';

				IF cnt_out_buf = b"10111" THEN
					IS_enable1_buf <= '0';
					IS_enable4_buf <= '0';
					IS_enable3_buf <= '0';
					IS_enable2_buf <= '0';
                    
                    -- lfsr used to track the round number 
					IF lfsr_out_buf = b"011010" THEN -- cipher has done encrypting go to idle and output ciphertext
						nx_state <= IDLE;
					ELSE
						nx_state <= RND_END; -- rnd_end operation 
					END IF;
					
				ELSE -- keep performing MIXCOLUMNS
					IS_enable1_buf <= '1';
					IS_enable4_buf <= '1';
					IS_enable3_buf <= '1';
					IS_enable2_buf <= '1';

					nx_state <= MIXCOL;

				END IF;

			WHEN RND_END =>
				-- in rnd_end operation the key schedule is performed
				
				-- outputs
				CIPHERTEXT_OUT <= (OTHERS => '0');
				BUSY <= '1';

				--IS 
				IS_enable1_buf <= '0'; -- internal state is not shifted 
				IS_enable2_buf <= '0';
				IS_enable3_buf <= '0';
				IS_enable4_buf <= '0';

				IS_serial_in_third_row_buf <= (OTHERS => '-');
				IS_serial_in_second_row_buf <= (OTHERS => '-');
				IS_serial_in_first_row_buf <= (OTHERS => '-');

				-- IS and subcells and addRoundTweakey
				IS_serial_in_fourth_row_buf <= (OTHERS => '-');
				SubCells_in_buf <= (OTHERS => '-');

				--TW 
				-- perform permutation
				TW_REG_enable_in_buf <= '0'; -- not shifting
				enable_TW_permutation_buf <= '1'; -- perform permutation on the tweakey reg 
				TW_REG_enable_parallel_loading_buf <= '1';
				TW_REG_serial_in_buf <= TW_REG_serial_out_buf;
				
				--LFSR
				lfsr_rst_buf <= '0';
				lfsr_enable_buf <= '1'; -- increase the lfsr count because one round is complete

				--CNT
				rst_CNT_buf <= '1'; -- reset the counter 
				ENABLE_CNT_BUF <= '1';
				
				--state
				nx_state <= processing;

				--MixColumns
				MixColumns_first_row_in_buf <= (OTHERS => '-'); -- don't care the result has been placed in the IS in the preceding state
				MixColumns_second_row_in_buf <= (OTHERS => '-');
				MixColumns_third_row_in_buf <= (OTHERS => '-');
				MixColumns_fourth_row_in_buf <= (OTHERS => '-');
		END CASE;

	END PROCESS;
END behavioral;