-- CIPHER TOP ENTITY
-- Cipher: Skinny
-- Key length: 128 bit
-- Plaintext length: 64 bit
-- Datapath: 4 bit
-- Cipher specs from here : "https://eprint.iacr.org/2016/660.pdf"
------------------------------------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Skinny_64_128 IS
	PORT (
		CLK : IN STD_LOGIC;
		PLAINTEXT_IN : IN STD_LOGIC_VECTOR (3 DOWNTO 0);  -- plaintext and tweakey is loaded 4 bit word by 4 bit word
		TWEAKEY_IN : IN STD_LOGIC_VECTOR (3 DOWNTO 0); 
		data_ready : IN std_logic; -- data ready is used to start the loading phase
		start : IN std_logic; -- when start goes high the cipher starts encrypting 
		BUSY : OUT STD_LOGIC := '0'; -- when loading or processing is high    
		CIPHERTEXT_OUT : OUT STD_LOGIC_VECTOR (3 DOWNTO 0) := (OTHERS => '0') -- output is also serial  
	);
END Skinny_64_128;

ARCHITECTURE Behavioral OF Skinny_64_128 IS

------------------------------------------------------------------------------------------------------------
	----Sub Components Definitions

	-- A shift register is used to store the Internal State and Tweakey which is in matrix form as the register shifts, each word will be processed by the cipher operations.

	-- This is because skinny is a SPN cipher like the AES.
	-- Each row of the cipher internal state is implemented as a shift register. 


    -- Internal State shift register
	COMPONENT skinny_shift_reg_64
		PORT (
		  -- inputs and outputs for each row in the shift register are necessary to perform mixcolumns operations
			serial_in_first_row : IN std_logic_vector (3 DOWNTO 0);
			serial_in_second_row : IN std_logic_vector (3 DOWNTO 0);
			serial_in_third_row : IN std_logic_vector (3 DOWNTO 0);
			serial_in_fourth_row : IN std_logic_vector (3 DOWNTO 0);
			
			clock : IN std_logic;
			-- enables for individual rows will allow to perform shiftrows in an efficient manner
			enable_1, enable_2, enable_3, enable_4 : IN std_logic; --enable shifting for individual rows
			
			serial_output_first_row : OUT std_logic_vector (3 DOWNTO 0);
			serial_output_second_row : OUT std_logic_vector (3 DOWNTO 0);
			serial_output_third_row : OUT std_logic_vector (3 DOWNTO 0);
			serial_output_fourth_row : OUT std_logic_vector (3 DOWNTO 0)
		);
	END COMPONENT;

    -- Tweakey Shift Register
	COMPONENT shift_reg
		PORT (
		    -- a parallel in and parallel out port is needed because the cipher specification 
            -- requires a permutation on the entire key register as part of the key schedule. 
			parallel_in : IN std_logic_vector (31 DOWNTO 0);
			serial_in : IN std_logic_vector(3 DOWNTO 0);
			clock, enable_in : IN std_logic;
			enable_parallel_loading : IN std_logic;
			serial_output : OUT std_logic_vector (3 DOWNTO 0);
			parallel_output : OUT std_logic_vector (31 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Skinny Subcells operation (simply an SBOX)
	COMPONENT SubCells
		PORT (
			SubCells_IN : IN std_logic_vector(3 DOWNTO 0);
			SubCells_OUT : OUT std_logic_vector(3 DOWNTO 0)
		);
	END COMPONENT SubCells;
	
	-- Skinny Addconstant operation (xoring with a round-dependant constant generatedby a lfsr)
	COMPONENT AddConstant
		PORT (
			perform_AddConstant : IN std_logic_vector (4 DOWNTO 0); -- enable signal must be used for signaling the element to be xored 
            -- not all elements are to be xored 
            -- the same counter used for the loaing phase is used to spare logic 
			lfsr_in : IN std_logic_vector(5 DOWNTO 0);   -- input for the lfsr generated constant 
			AddConstant_IN : IN std_logic_vector (3 DOWNTO 0); -- input for plaintext word 
			AddConstant_OUT : OUT std_logic_vector (3 DOWNTO 0)
		);
	END COMPONENT AddConstant;
	
	-- Skinny AddRoundTweakey operation (xoring part of the internal state with the round key). This version needs 2 Tweakey, TK1 and TK2. Those are treated separately.
	COMPONENT AddRoundTweakey
		PORT (
			perform_AddRoundTweakey : IN std_logic_vector (4 DOWNTO 0); -- enable signal must be used for signaling the element to be xored 
            -- not all elements are to be xored 
            -- the same counter used for the loaing phase is used to spare logic
			AddRoundTweakey_TK1_IN : IN std_logic_vector(3 DOWNTO 0);
			AddRoundTweakey_TK2_IN : IN std_logic_vector(3 DOWNTO 0);
			AddRoundTweakey_IS_IN : IN std_logic_vector(3 DOWNTO 0); 
			AddRoundTweakey_IS_OUT : OUT std_logic_vector(3 DOWNTO 0)
		);
	END COMPONENT AddRoundTweakey;
	
	-- the linear feedback shift register used to generate round-unique constants 
    -- to spare logic is also used to determine when the encryption is done, used as round counter
	COMPONENT lfsr
		PORT (
			clk, ce : IN std_logic;
			reset : IN std_logic;
			lfsr_out : OUT std_logic_vector (5 DOWNTO 0)
		);
	END COMPONENT lfsr;
	
	-- The Linear feedback shift register used for the TK2 key schedule algorithm.
	COMPONENT LFSR_TK2 IS
		PORT (
			lfsr_tk2_in : IN std_logic_vector(3 DOWNTO 0);
			lfsr_tk2_out : OUT std_logic_vector (3 DOWNTO 0)
		);
	END COMPONENT LFSR_TK2;
	
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
	COMPONENT rnd_key_permutation
		PORT (
			TWEAKEY_permutation_IN : IN std_logic_vector(31 DOWNTO 0);
			TWEAKEY_permutation_OUT : OUT std_logic_vector(31 DOWNTO 0);
			enable_permutation : IN std_logic
		);
	END COMPONENT rnd_key_permutation;
	
    -- Mixcolumns operation
    
    -- this operation is performed on the rows and it consists of  xoring some rows together or simply 
    -- mix up the rows. this can be done serially taking each first internal state 8-bit word row element 
    -- at the same time and perform the required operations on them. the result of the operations is then 
    -- placed at the last position in each row of the internal state. 
    -- in this way this operation requires 4 clock cycles but it spares logic.     
	COMPONENT MixColumns
		PORT (
			MixColumns_first_row_in : IN std_logic_vector(3 DOWNTO 0);
			MixColumns_second_row_in : IN std_logic_vector(3 DOWNTO 0);
			MixColumns_third_row_in : IN std_logic_vector(3 DOWNTO 0);
			MixColumns_fourth_row_in : IN std_logic_vector(3 DOWNTO 0);
			MixColumns_first_row_out : OUT std_logic_vector(3 DOWNTO 0);
			MixColumns_second_row_out : OUT std_logic_vector(3 DOWNTO 0);
			MixColumns_third_row_out : OUT std_logic_vector(3 DOWNTO 0);
			MixColumns_fourth_row_out : OUT std_logic_vector(3 DOWNTO 0)
		);
	END COMPONENT MixColumns;
	
------------------------------------------------------------------------------------------------------------
    -- STATE MACHINE SIGNAL DECLARATION
    
    -- state machine states
    -- shiftrows is entirely performed in the state machine
    -- mixcolumns has its own state 
    -- in rnd_end the key scheduling algorithm is performed
	TYPE state IS (LOADING, IDLE, PROCESSING, ShiftR, MixCol, TW_PERM, TK2_UPDATE, RND_END);
	SIGNAL nx_state : state; 
	SIGNAL current_state : state := idle;

	ATTRIBUTE fsm_safe_state : STRING;
	ATTRIBUTE fsm_safe_state OF nx_state : SIGNAL IS "default_state";

	-- IS SHIFT REG SIGNALS
	SIGNAL IS_enable1_buf : std_logic;
	SIGNAL IS_enable2_buf : std_logic;
	SIGNAL IS_enable3_buf : std_logic;
	SIGNAL IS_enable4_buf : std_logic;

	SIGNAL IS_serial_in_first_row_buf : std_logic_vector (3 DOWNTO 0);
	SIGNAL IS_serial_in_second_row_buf : std_logic_vector (3 DOWNTO 0);
	SIGNAL IS_serial_in_third_row_buf : std_logic_vector (3 DOWNTO 0);
	SIGNAL IS_serial_in_fourth_row_buf : std_logic_vector (3 DOWNTO 0);

	SIGNAL IS_serial_output_first_row_buf : std_logic_vector (3 DOWNTO 0);
	SIGNAL IS_serial_output_second_row_buf : std_logic_vector (3 DOWNTO 0);
	SIGNAL IS_serial_output_third_row_buf : std_logic_vector (3 DOWNTO 0);
	SIGNAL IS_serial_output_fourth_row_buf : std_logic_vector (3 DOWNTO 0);

	-- TK1 REGISTER SIGNALS
	SIGNAL TK1_REG_enable_in_buf : std_logic;
	SIGNAL TK1_REG_parallel_in_buf : std_logic_vector(31 DOWNTO 0);
	SIGNAL TK1_REG_parallel_out_buf : std_logic_vector(31 DOWNTO 0);
	SIGNAL TK1_REG_serial_in_buf : std_logic_vector(3 DOWNTO 0);
	SIGNAL TK1_REG_serial_out_buf : std_logic_vector(3 DOWNTO 0);

	--TK2 REGISTER SIGNALS
	SIGNAL TK2_REG_enable_in_buf : std_logic;
	SIGNAL TK2_REG_parallel_in_buf : std_logic_vector(31 DOWNTO 0);
	SIGNAL TK2_REG_parallel_out_buf : std_logic_vector(31 DOWNTO 0);
	SIGNAL TK2_REG_serial_in_buf : std_logic_vector(3 DOWNTO 0);
	SIGNAL TK2_REG_serial_out_buf : std_logic_vector(3 DOWNTO 0);

	SIGNAL TW_REG_enable_parallel_loading_buf : std_logic;

	-- RND KEY UPFATE PERMUTATION
	SIGNAL enable_TW_permutation_buf : std_logic;

	--TK2_UPDATE SIGNALS
	SIGNAL lfsr_TK2_out_buf : std_logic_vector(3 DOWNTO 0);

	--SUBCELLS SIGNALS
	SIGNAL Subcells_in_buf : std_logic_vector(3 DOWNTO 0);
	SIGNAL Subcells_out_buf : std_logic_vector(3 DOWNTO 0);

	--AddRoundConstant
	SIGNAL AddConstant_OUT_BUF : std_logic_vector (3 DOWNTO 0);

	-- ADDROUNDTWEAKEY SIGNALS
	SIGNAL AddRoundTweakey_IS_OUT_BUF : std_logic_vector(3 DOWNTO 0);
	
	-- Mixcolumns
	SIGNAL MixColumns_first_row_in_buf : std_logic_vector(3 DOWNTO 0);
	SIGNAL MixColumns_second_row_in_buf : std_logic_vector(3 DOWNTO 0);
	SIGNAL MixColumns_third_row_in_buf : std_logic_vector(3 DOWNTO 0);
	SIGNAL MixColumns_fourth_row_in_buf : std_logic_vector(3 DOWNTO 0);

	SIGNAL MixColumns_first_row_out_buf : std_logic_vector(3 DOWNTO 0);
	SIGNAL MixColumns_second_row_out_buf : std_logic_vector(3 DOWNTO 0);
	SIGNAL MixColumns_third_row_out_buf : std_logic_vector(3 DOWNTO 0);
	SIGNAL MixColumns_fourth_row_out_buf : std_logic_vector(3 DOWNTO 0);

	--LFSR SIGNALS
	SIGNAL lfsr_out_buf : std_logic_vector(5 DOWNTO 0);
	SIGNAL lfsr_rst_buf : std_logic;
	SIGNAL lfsr_enable_buf : std_logic;

	-- CNT SIGNALS
	SIGNAL rst_CNT_buf : std_logic;
	SIGNAL enable_CNT_buf : std_logic := '0';
	SIGNAL cnt_out_buf : std_logic_vector(4 DOWNTO 0);

BEGIN

	-- SubComponents Instantiation
	INST_IS : skinny_shift_reg_64
	PORT MAP(
		serial_in_first_row => IS_serial_in_first_row_buf,
		serial_in_second_row => IS_serial_in_second_row_buf,
		serial_in_third_row => IS_serial_in_third_row_buf,
		serial_in_fourth_row => IS_serial_in_fourth_row_buf,
		clock => clk,
		enable_1 => IS_enable1_buf,
		enable_2 => IS_enable2_buf,
		enable_3 => IS_enable3_buf,
		enable_4 => IS_enable4_buf,
		serial_output_first_row => IS_serial_output_first_row_buf,
		serial_output_second_row => IS_serial_output_second_row_buf,
		serial_output_third_row => IS_serial_output_third_row_buf,
		serial_output_fourth_row => IS_serial_output_fourth_row_buf
	);

	--TK1 REGISTER
	INST_TK1_REG : shift_reg
	PORT MAP(
		parallel_in => TK1_REG_parallel_in_buf,
		clock => clk,
		enable_in => TK1_REG_enable_in_buf,
		enable_parallel_loading => TW_REG_enable_parallel_loading_buf,
		serial_in => TK1_REG_serial_in_buf,
		serial_output => TK1_REG_serial_out_buf,
		parallel_output => TK1_REG_parallel_out_buf
	);

	--TK2 REGISTER
	INST_TK2_REG : shift_reg
	PORT MAP(
		parallel_in => TK2_REG_parallel_in_buf,
		clock => clk,
		enable_in => TK2_REG_enable_in_buf,
		enable_parallel_loading => TW_REG_enable_parallel_loading_buf,
		serial_in => TK2_REG_serial_in_buf,
		serial_output => TK2_REG_serial_out_buf,
		parallel_output => TK2_REG_parallel_out_buf
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
		AddRoundTweakey_TK1_IN => TK1_REG_serial_out_buf,
		AddRoundTweakey_TK2_IN => TK2_REG_serial_out_buf
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

	INST_TK1_PERM : rnd_key_permutation
	PORT MAP(
		TWEAKEY_permutation_IN => TK1_reg_parallel_out_buf,
		TWEAKEY_permutation_OUT => TK1_REG_parallel_in_buf,
		enable_permutation => enable_TW_permutation_buf
	);

	INST_TK2_PERM : rnd_key_permutation
	PORT MAP(
		TWEAKEY_permutation_IN => TK2_reg_parallel_out_buf,
		TWEAKEY_permutation_OUT => TK2_REG_parallel_in_buf,
		enable_permutation => enable_TW_permutation_buf
	);

	INST_TK2_UPDATE : lfsr_TK2
	PORT MAP(
		lfsr_TK2_in => TK2_REG_serial_out_buf,
		lfsr_TK2_out => lfsr_TK2_out_buf
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
				current_state <= LOADING; -- continua a caricare 
			ELSE
				current_state <= nx_state;
			END IF;
		END IF;
	END PROCESS;


	STATE_MACHINE_BODY : PROCESS (start, current_state, cnt_out_buf, lfsr_out_buf, IS_serial_output_first_row_buf, IS_serial_output_fourth_row_buf, IS_serial_output_third_row_buf, IS_serial_output_second_row_buf, 
                                    tweakey_in, plaintext_in, Mixcolumns_fourth_row_out_buf, Mixcolumns_first_row_out_buf, Mixcolumns_second_row_out_buf, Mixcolumns_third_row_out_buf, 
                                    TK1_REG_serial_out_buf, TK2_REG_serial_out_buf, AddRoundTweakey_IS_OUT_BUF, lfsr_TK2_out_buf)
	BEGIN
		CASE current_state IS

			WHEN LOADING =>
				--enable TW and IS shift registers and set MUXES accordingly to load the plaintext and the tweakey properly
				--cnt until 16, loading IS and TK1
				--cnt from 16 to 31, loading TK2      

				-- LFSR
				LFSR_RST_BUF <= '1';
				LFSR_ENABLE_BUF <= '0';

				-- enable cnt and start counting to load the words.
				ENABLE_CNT_BUF <= '1'; -- conta e scorre
				RST_CNT_BUF <= '0';

				--MixColumns
				MixColumns_first_row_in_buf <= (OTHERS => '0');
				MixColumns_second_row_in_buf <= (OTHERS => '0');
				MixColumns_third_row_in_buf <= (OTHERS => '0');
				MixColumns_fourth_row_in_buf <= (OTHERS => '0');

				--output signals
				CIPHERTEXT_OUT <= (OTHERS => '0');
				BUSY <= '1';

				--IS REG MAPPING
				IS_serial_in_third_row_buf <= IS_serial_output_fourth_row_buf;
				IS_serial_in_second_row_buf <= IS_serial_output_third_row_buf;
				IS_serial_in_first_row_buf <= IS_serial_output_second_row_buf;
				IS_serial_in_fourth_row_buf <= plaintext_in; -- loading plaintext 

				--Subcells_in
				Subcells_in_buf <= IS_serial_output_first_row_buf;

				enable_TW_permutation_buf <= '0';
				TW_REG_enable_parallel_loading_buf <= '0';

				IF cnt_out_buf <= b"01111" THEN

					--IS REG ENABLED
					IS_enable1_buf <= '1';
					IS_enable2_buf <= '1';
					IS_enable3_buf <= '1';
					IS_enable4_buf <= '1';

					--TK1 REG ENABLED
					TK1_REG_serial_in_buf <= tweakey_in; -- loading key                        
					TK1_REG_enable_in_buf <= '1';

					--TK2 REG DISABLED
					TK2_REG_serial_in_buf <= (OTHERS => '0');
					TK2_REG_enable_in_buf <= '0';

				ELSE
					--IS REG DISABLED
					IS_enable1_buf <= '0';
					IS_enable2_buf <= '0';
					IS_enable3_buf <= '0';
					IS_enable4_buf <= '0';

					--TK1 REG DISABLED
					TK1_REG_serial_in_buf <= TK1_REG_serial_out_buf; --buffering                    
					TK1_REG_enable_in_buf <= '0';

					--TK2 REG ENABLED
					TK2_REG_serial_in_buf <= tweakey_in;
					TK2_REG_enable_in_buf <= '1';

				END IF;
				IF (cnt_out_buf = b"11111") THEN
					nx_state <= idle;
				ELSE
					nx_state <= loading;
				END IF;
				
			WHEN idle =>
             -- IS REG
				IF (lfsr_out_buf = b"001101") THEN   -- the cipher has done encrypting !!
					IS_enable1_buf <= '1';
					IS_enable2_buf <= '1';
					IS_enable3_buf <= '1';
					IS_enable4_buf <= '1';
					CIPHERTEXT_OUT <= IS_serial_output_first_row_buf;
				ELSE
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

				Subcells_in_buf <= (OTHERS => '0');

				---- stop shifting the TK1 and TK2 reg 
				TK1_REG_enable_in_buf <= '0';
				TK1_REG_serial_in_buf <= TK1_REG_serial_out_buf; --circular buffering 
				TK2_REG_enable_in_buf <= '0';
				TK2_REG_serial_in_buf <= TK2_REG_serial_out_buf; --circular buffering 
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
				MixColumns_first_row_in_buf <= (OTHERS => '0');
				MixColumns_second_row_in_buf <= (OTHERS => '0');
				MixColumns_third_row_in_buf <= (OTHERS => '0');
				MixColumns_fourth_row_in_buf <= (OTHERS => '0');

				BUSY <= '0'; -- not busy

			WHEN processing => -- perform SubCells, AddRoundTweakey and AddConstants        
                -- mixcolumns and shiftows are performed separately as they can't be performed fully sequentially 
                -- as they operate on the internal state rows and not on a singular word/cell.
                 
				-- outputs              
				CIPHERTEXT_OUT <= (OTHERS => '0');
				BUSY <= '1';

				--CNT
				ENABLE_CNT_BUF <= '1'; --counter is enabled
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
				SubCells_in_buf <= IS_serial_output_first_row_buf; --output m0 to subcells

				--TW
				TK1_REG_enable_in_buf <= '1';
				TK1_REG_serial_in_buf <= TK1_REG_serial_out_buf; --circular buffering
				TK2_REG_enable_in_buf <= '1';
				TK2_REG_serial_in_buf <= TK2_REG_serial_out_buf; --circular buffering
                -- the key registers shifts circularly and the first word at each clock cycle is used 
                -- in the AddRoundTweakey operation 
				enable_TW_permutation_buf <= '0';
				TW_REG_enable_parallel_loading_buf <= '0';

				--MixColumns
				MixColumns_first_row_in_buf <= (OTHERS => '0');
				MixColumns_second_row_in_buf <= (OTHERS => '0');
				MixColumns_third_row_in_buf <= (OTHERS => '0');
				MixColumns_fourth_row_in_buf <= (OTHERS => '0');

				-- nx_state transition 

				IF cnt_out_buf = b"01111" THEN
					nx_state <= SHIFTR;    -- the internal state is aligned and all the three operations are complete    
				ELSE
					nx_state <= processing;
				END IF;
			WHEN SHIFTR =>
				-- perform shiftrows, keep shifting TW REG             
				-- outputs                                              
				CIPHERTEXT_OUT <= (OTHERS => '0');
				BUSY <= '1';

				--CNT
				ENABLE_CNT_BUF <= '1'; --counter is enabled
				rst_CNT_buf <= '0';

				--LFSR
				lfsr_enable_buf <= '0';
				lfsr_rst_buf <= '0';

				-- IS mapping             
				-- first row not shifted            
				IS_enable1_buf <= '0'; -- first row is not shifted
				IS_serial_in_first_row_buf <= (OTHERS => '0');

				--circular shifting on others rows row
				IS_serial_in_second_row_buf <= IS_serial_output_second_row_buf;
				IS_serial_in_third_row_buf <= IS_serial_output_third_row_buf;
				IS_serial_in_fourth_row_buf <= IS_serial_output_fourth_row_buf;

				--TW reg 
				TK1_REG_enable_in_buf <= '1'; --KEEP SHIFTING, OTHER 8 TIMES
				TK1_REG_serial_in_buf <= TK1_REG_serial_out_buf; --circular buffering
				TK2_REG_enable_in_buf <= '1';
				TK2_REG_serial_in_buf <= TK2_REG_serial_out_buf; --circular buffering
				enable_TW_permutation_buf <= '0';
				TW_REG_enable_parallel_loading_buf <= '0';

				--Subcells in and MixColumns 
				Subcells_in_buf <= (OTHERS => '0');

				MixColumns_first_row_in_buf <= (OTHERS => '0');
				MixColumns_second_row_in_buf <= (OTHERS => '0');
				MixColumns_third_row_in_buf <= (OTHERS => '0');
				MixColumns_fourth_row_in_buf <= (OTHERS => '0');

				--shifting other rows 

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
				SubCells_in_buf <= (OTHERS => '0');

				--TW 
				-- shifting 
				TK1_REG_enable_in_buf <= '1'; --KEEP SHIFTING
				TK1_REG_serial_in_buf <= TK1_REG_serial_out_buf; --circular buffering
				TK2_REG_enable_in_buf <= '1';
				TK2_REG_serial_in_buf <= TK2_REG_serial_out_buf; --circular buffering
				enable_TW_permutation_buf <= '0';
				TW_REG_enable_parallel_loading_buf <= '0';

				IF cnt_out_buf = b"10111" THEN
					IS_enable1_buf <= '0';
					IS_enable4_buf <= '0';
					IS_enable3_buf <= '0';
					IS_enable2_buf <= '0';

					IF lfsr_out_buf = b"001101" THEN
						nx_state <= IDLE;
					ELSE
						nx_state <= TW_PERM;
					END IF;

				ELSE -- keep performing MIXCOL                    
					IS_enable1_buf <= '1';
					IS_enable4_buf <= '1';
					IS_enable3_buf <= '1';
					IS_enable2_buf <= '1';

					nx_state <= MIXCOL;
				END IF;

			WHEN TW_PERM => 
			     --Tweakey extended schedule cause the TK2 key part.
				CIPHERTEXT_OUT <= (OTHERS => '0');
				BUSY <= '1';

				--IS NOT ENABLED
				IS_enable1_buf <= '0';
				IS_enable2_buf <= '0';
				IS_enable3_buf <= '0';
				IS_enable4_buf <= '0';

				IS_serial_in_third_row_buf <= (OTHERS => '0');
				IS_serial_in_second_row_buf <= (OTHERS => '0');
				IS_serial_in_first_row_buf <= (OTHERS => '0');

				-- IS and subcells and addRoundTweakey
				IS_serial_in_fourth_row_buf <= (OTHERS => '0');
				SubCells_in_buf <= (OTHERS => '0');

				--TW -- perform permutation
				enable_TW_permutation_buf <= '1';
				TW_REG_enable_parallel_loading_buf <= '1';
				TK1_REG_enable_in_buf <= '0'; -- not shifting
				TK1_REG_serial_in_buf <= TK1_REG_serial_out_buf;
				TK2_REG_enable_in_buf <= '0'; -- not shifting
				TK2_REG_serial_in_buf <= TK2_REG_serial_out_buf;

				--LFSR
				lfsr_rst_buf <= '0';
				lfsr_enable_buf <= '0';

				--CNT
				rst_CNT_buf <= '1';
				ENABLE_CNT_BUF <= '0';

				--state
				nx_state <= TK2_UPDATE;

				--MixColumns
				MixColumns_first_row_in_buf <= (OTHERS => '0');
				MixColumns_second_row_in_buf <= (OTHERS => '0');
				MixColumns_third_row_in_buf <= (OTHERS => '0');
				MixColumns_fourth_row_in_buf <= (OTHERS => '0');

			WHEN TK2_UPDATE =>
			     -- TK2 extended schedule.
				CIPHERTEXT_OUT <= (OTHERS => '0');
				BUSY <= '1';

				--IS NOT ENABLED
				IS_enable1_buf <= '0';
				IS_enable2_buf <= '0';
				IS_enable3_buf <= '0';
				IS_enable4_buf <= '0';

				IS_serial_in_third_row_buf <= (OTHERS => '0');
				IS_serial_in_second_row_buf <= (OTHERS => '0');
				IS_serial_in_first_row_buf <= (OTHERS => '0');

				-- IS and subcells and addRoundTweakey
				IS_serial_in_fourth_row_buf <= (OTHERS => '0');
				SubCells_in_buf <= (OTHERS => '0');

				--LFSR
				lfsr_rst_buf <= '0';
				lfsr_enable_buf <= '0'; -- increase the lfsr count

				--CNT
				rst_CNT_buf <= '0';
				ENABLE_CNT_BUF <= '1';

				--MixColumns
				MixColumns_first_row_in_buf <= (OTHERS => '0');
				MixColumns_second_row_in_buf <= (OTHERS => '0');
				MixColumns_third_row_in_buf <= (OTHERS => '0');
				MixColumns_fourth_row_in_buf <= (OTHERS => '0');

				--TW
				enable_TW_permutation_buf <= '0';
				TW_REG_enable_parallel_loading_buf <= '0';
				TK1_REG_enable_in_buf <= '0';
				TK1_REG_serial_in_buf <= TK1_REG_serial_out_buf; --circular buffering 

				IF cnt_out_buf <= b"00111" THEN
					TK2_REG_enable_in_buf <= '1';
					TK2_REG_serial_in_buf <= lfsr_TK2_out_buf;
				ELSE
					TK2_REG_enable_in_buf <= '1';
					TK2_REG_serial_in_buf <= TK2_REG_serial_out_buf;

				END IF;

				IF cnt_out_buf = b"01111" THEN --after 16clk ccyles all regs are syncronized and this op. is ended properly
					nx_state <= RND_END;
				ELSE
					nx_state <= TK2_UPDATE;
				END IF;

			WHEN RND_END =>
                --End round, prepare for next   
                
                --output
				CIPHERTEXT_OUT <= (OTHERS => '0');
				BUSY <= '1';

				--IS 
				IS_enable1_buf <= '0';
				IS_enable2_buf <= '0';
				IS_enable3_buf <= '0';
				IS_enable4_buf <= '0';

				IS_serial_in_third_row_buf <= (OTHERS => '0');
				IS_serial_in_second_row_buf <= (OTHERS => '0');
				IS_serial_in_first_row_buf <= (OTHERS => '0');

				-- IS and subcells and addRoundTweakey
				IS_serial_in_fourth_row_buf <= (OTHERS => '0');
				SubCells_in_buf <= (OTHERS => '0');

				--TW 
				enable_TW_permutation_buf <= '0';
				TW_REG_enable_parallel_loading_buf <= '0';
				TK1_REG_enable_in_buf <= '0'; -- not shifting
				TK1_REG_serial_in_buf <= TK1_REG_serial_out_buf;
				TK2_REG_enable_in_buf <= '0'; -- not shifting
				TK2_REG_serial_in_buf <= TK2_REG_serial_out_buf;

				--LFSR
				lfsr_rst_buf <= '0';
				lfsr_enable_buf <= '1'; -- increase the lfsr count

				--CNT
				rst_CNT_buf <= '1';
				ENABLE_CNT_BUF <= '1';

				--state
				nx_state <= processing;

				--MixColumns
				MixColumns_first_row_in_buf <= (OTHERS => '0');
				MixColumns_second_row_in_buf <= (OTHERS => '0');
				MixColumns_third_row_in_buf <= (OTHERS => '0');
				MixColumns_fourth_row_in_buf <= (OTHERS => '0');

		END CASE;

	END PROCESS;
	
END behavioral;