-- CIPHER TOP ENTITY
-- Cipher: Simeck
-- Key length: 64 bit
-- Plaintext length: 32 bit
-- Datapath: 16 bit
-- Cipher specs from here : "https://eprint.iacr.org/2015/612.pdf"
------------------------------------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY Simeck_32_64_parallel IS

	GENERIC (Datapath : INTEGER RANGE 0 TO 32 := 16);
	PORT (
		clk, data_ready, start : IN std_logic;
		key_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
		plaintext_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
		busy : OUT std_logic := '0';
		ciphertext_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0) := (OTHERS => '0')
	);
END Simeck_32_64_parallel;

ARCHITECTURE Behavioral OF Simeck_32_64_parallel IS
------------------------------------------------------------------------------------------------------------
	----Sub Components Definitions

	-- Multiplexer to correctly route signals 
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
			width : INTEGER := 16; -- shift_reg width 
			length : INTEGER := 2 -- shift_reg length 
		);
		PORT (
			clk : IN std_logic;
			D : IN std_logic_vector(width - 1 DOWNTO 0);
			Q : OUT std_logic_vector(width - 1 DOWNTO 0);
			CE : IN std_logic
		);
	END COMPONENT;
	
    -- Shift Register with right and left 16 bits output (length is 2)
    -- it will be used for the internal state 
	COMPONENT parallel_tapped_shift_reg
		GENERIC (
			width : INTEGER := 16; -- shift_reg width 
			length : INTEGER := 2 -- shift_reg length            
		);
		PORT (
			clk : IN std_logic;
			D : IN std_logic_vector(width - 1 DOWNTO 0);
			right_out : OUT std_logic_vector(width - 1 DOWNTO 0);
			CE : IN std_logic;
			left_out : OUT std_logic_vector(width - 1 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Simeck Round function

	-- left in is the leftmost portion of the internal state (first 16 bits)
	-- rigth_ in the rightmost (last 16 bits)	
	COMPONENT Rnd_function_parallel
		GENERIC (
			datapath : INTEGER := 16
		);
		PORT (
			left_in, right_in, Ki_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
			rnd_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0)
		);
	END COMPONENT;
	
	-- Simeck key schedule function
	-- right_in and left_in are the right and left part of the key register.
	-- z_in comes from the lfsr.
	COMPONENT Key_schedule_function_parallel
		GENERIC (
			datapath : INTEGER := 16
		);
		PORT (
			left_in, right_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
			z_in : std_logic_vector(0 DOWNTO 0);
			rnd_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0)
		);		
	END COMPONENT;

    -- The linear feedback shift register is used to generate round-unique constants 
    -- but also to determine whether the cipher has done its job.  
	-- his primitive polynomial is X5 + X2 + 1
	COMPONENT lfsr
		PORT (
			lfsr_out : OUT std_logic_vector(0 DOWNTO 0);
			clk : IN std_logic;
			ce : IN std_logic;
			rst : IN std_logic;
			lfsr_parallel_out : OUT std_logic_vector(4 DOWNTO 0)
		);
	END COMPONENT;
	
------------------------------------------------------------------------------------------------------------	
    --INTERNAL SIGNALS DECLARATION  

    -- CIPHER FSM SIGNALS
	TYPE state IS (LOADING, IDLE, PROCESSING, END_ENCRYPT);
	SIGNAL nx_state : state;
	SIGNAL current_state : state := idle;
	
    -- MUX SELECTOR
	SIGNAL sel_IN : std_logic;

	-- IS, IS MUX, REGISTERS AND RND FUNCTION  
	SIGNAL rnd_function_out : std_logic_vector(Datapath - 1 DOWNTO 0);
	SIGNAL MUX_IN_out : std_logic_vector(Datapath - 1 DOWNTO 0);
	SIGNAL IS_CE : std_logic;
	SIGNAL IS_left_reg_out : std_logic_vector(Datapath - 1 DOWNTO 0);
	SIGNAL IS_right_reg_out : std_logic_vector(Datapath - 1 DOWNTO 0);

	--KEY INPUT MUX
	SIGNAL KEY_MUX_OUT : std_logic_vector(Datapath - 1 DOWNTO 0);
	SIGNAL key_schedule_out : std_logic_vector(Datapath - 1 DOWNTO 0);

	-- KEY REG 
	SIGNAL KEY_REG_CE : std_logic;
	SIGNAL LEFT_KEY_REG_OUT : std_logic_vector(Datapath - 1 DOWNTO 0);
	SIGNAL KEY_REG_b_out : std_logic_vector(Datapath - 1 DOWNTO 0);
	SIGNAL KEY_REG_a_out : std_logic_vector(Datapath - 1 DOWNTO 0);

	--LFSR 
	SIGNAL lfsr_ce : std_logic;
	SIGNAL lfsr_out : std_logic_vector(0 DOWNTO 0);
	SIGNAL lfsr_rst : std_logic;
	SIGNAL lfsr_parallel_out : std_logic_vector(4 DOWNTO 0);
	
BEGIN

    -- SubComponents Instantiation
    -- Internal State mux   
	INST_INMUX : MUX
	GENERIC MAP(
		datapath => Datapath
	)
	PORT MAP(
		l_in => Plaintext_in,
		r_in => rnd_function_out,
		sel => sel_IN,
		mux_out => MUX_IN_out
	);
	
	-- internal state shift register	
	INST_IS_REG : parallel_tapped_shift_reg
	GENERIC MAP(
		width => Datapath,
		length => 2
	)
	PORT MAP(
		CLK => clk,
		D => MUX_in_out, -- input of left portion is dictated by the input mux 
		CE => IS_ce,
		left_out => IS_left_reg_out,
		right_out => IS_right_reg_out
	);
	
	-- Round function of Simeck, directly connected to the shift register	
	INST_RND_FUNCTION : Rnd_function_parallel
	GENERIC MAP(
		datapath => Datapath
	)
	PORT MAP(
		left_in => IS_left_reg_out,
		right_in => IS_right_reg_out,
		Ki_in => KEY_REG_a_out,
		rnd_out => rnd_function_out
	);

    -- Key Mux	
	INST_KEY_MUX_IN : MUX
	GENERIC MAP(datapath => Datapath)
	PORT MAP(
		l_in => key_in,
		r_in => key_schedule_out,
		sel => SEL_IN,
		mux_out => KEY_MUX_OUT
	);
	
	-- The KEY REGISTER is divided into 2 32 bit register, with lenght 2 each. 
	-- So the Key is segmented into 4 parts.
	
	-- Left key portion shift register
	INST_LEFT_KEY_REG : normal_shift_reg
	GENERIC MAP(
		width => Datapath,
		length => 2
	)
	PORT MAP(
		clk => clk,
		D => KEY_MUX_OUT,
		CE => KEY_REG_CE,
		Q => LEFT_KEY_REG_OUT
	);
	
	-- Right key portion shift register, with right and left 16 bits output
	INST_RIGHT_KEY_REG : parallel_tapped_shift_reg
	GENERIC MAP(
		width => Datapath,
		length => 2
	)
	PORT MAP(
		CLK => clk,
		D => LEFT_KEY_REG_OUT, -- input of left portion is dictated by the input mux 
		CE => KEY_REG_CE,
		right_out => KEY_REG_a_out,
		left_out => KEY_REG_b_out
	);
	
	-- Simeck key schedule
	-- right_in and left_in are the right and left part of the key_right register.
	-- z_in is the MSB from the lsfr value 		
	INST_KEY_SCHEDULE_FUNCTION : key_schedule_function_parallel
	GENERIC MAP(
		datapath => Datapath
	)
	PORT MAP(
		left_in => KEY_REG_b_out,
		right_in => KEY_REG_a_out,
		z_in => lfsr_out,
		rnd_out => key_schedule_out
	);
	
	-- Lsfr used to generate round-unique constants 
	-- lsfr_out is only the MSB (4th bit) of lfsr_parallel_out		
	INST_SHORT_LFSR : lfsr
	PORT MAP(
		lfsr_out => lfsr_out,
		clk => clk,
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
				current_state <= LOADING; -- keeploading                    
			ELSE
				current_state <= nx_state;
			END IF;
		END IF;
	END PROCESS;
	
	STATE_MACHINE_BODY : PROCESS (current_state, start, lfsr_parallel_out, IS_right_reg_out)
	BEGIN
		CASE current_state IS
			WHEN loading =>
				-- set outputs 
				BUSY <= '1';
				Ciphertext_out <= (OTHERS => '0');
				
				--lfsr 
				lfsr_rst <= '0';
				lfsr_ce <= '1';
				
				--INPUT MUX 
				--loading value from Input pin
				SEL_IN <= '0'; --loading     
				                                
				-- state transition    
                -- lfsr output values is used to determine when loading is done, 
                -- this to spare the need for another counter              
				IF lfsr_parallel_out = b"11100" THEN-- plaintext has been loaded keep loading the key         
					nx_state <= loading;
					IS_CE <= '0';
					KEY_REG_CE <= '1';
				ELSIF lfsr_parallel_out = b"11000" THEN -- key loading
					IS_CE <= '0';
					KEY_REG_CE <= '1';
					nx_state <= loading;
				ELSIF lfsr_parallel_out = b"10001" THEN -- key has been loaded                
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
				
				--lfsr 
				lfsr_rst <= '1';
				lfsr_ce <= '0';
				
				--INPUT MUX 
				SEL_IN <= '0'; --loading                             
				KEY_REG_CE <= '0'; --registers not enabled         
				IS_CE <= '0';
				
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
				
				--INPUT MUX 
				SEL_IN <= '1';
				
				--MUX driving for rnd function                                                              
				IS_CE <= '1';
				KEY_REG_CE <= '1';
				
				--state transition           
				-- lfsr used to count up rounds
				-- the AND condition is necessary as the "11111" is the default value for the lfsr 
				-- and it happens also at the start of the encryption operation when start is high
				-- again this spares the need for another counter                            
				IF lfsr_parallel_out = b"11111" AND start = '0' THEN
					nx_state <= end_encrypt;
				ELSE
					nx_state <= processing;
				END IF;

			WHEN end_encrypt =>
				--set output
				BUSY <= '0';
				Ciphertext_out <= IS_right_reg_out;
				
				--INPUT MUX 
				SEL_IN <= '0'; --loading
				IS_CE <= '1';
				KEY_REG_CE <= '0';
				
				--lfsr
				lfsr_rst <= '0';
				lfsr_ce <= '1';
				
				--state transition               
				IF lfsr_parallel_out = b"11100" THEN	-- count up to 2 clk cycles 
														 -- because two cycles are needed to output the ciphertext 
														 -- from internal state register
					nx_state <= idle;
				ELSE
					nx_state <= end_encrypt;
				END IF;

		END CASE;

	END PROCESS;

END behavioral;