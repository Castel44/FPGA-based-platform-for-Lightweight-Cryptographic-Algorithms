-- CIPHER TOP ENTITY
-- Cipher: Simeck
-- Key length: 96 bit
-- Plaintext length: 48 bit
-- Datapath: 24 bit
-- Cipher specs from here : "https://eprint.iacr.org/2015/612.pdf"
------------------------------------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY Simeck_48_96_parallel IS
	GENERIC (Datapath : INTEGER RANGE 0 TO 24 := 24);
	PORT (
		clk, data_ready, start : IN std_logic;
		key_in : IN std_logic_vector(Datapath - 1 DOWNTO 0); -- metà caricata
		plaintext_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
		busy : OUT std_logic := '0';
		ciphertext_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0) := (OTHERS => '0')
	);
END Simeck_48_96_parallel;

ARCHITECTURE Behavioral OF Simeck_48_96_parallel IS
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
			width : INTEGER := 24; -- shift_reg width 
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
			width : INTEGER := 24; -- shift_reg width 
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

	-- left in is the leftmost portion of the internal state (first 24 bits)
	-- rigth_ in the rightmost (last 24 bits)
	COMPONENT Rnd_function_parallel
		GENERIC (
			datapath : INTEGER := 24
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
			datapath : INTEGER := 24
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

    -- This is a two bit Johnson counter (shift register)
    -- used to determine wether the encryption operation is completed. 	
	COMPONENT end_encrypt_shift_reg
		PORT (
			ce, clk, rst : IN std_logic;
			end_encrypt : OUT std_logic
		);

	END COMPONENT;

------------------------------------------------------------------------------------------------------------	
    --INTERNAL SIGNALS DECLARATION  

    -- CIPHER FSM SIGNALS
	TYPE state IS (LOADING, IDLE, PROCESSING, END_ENCRYPT);
	SIGNAL nx_state : state; -- cipher possible states
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

	--END ENCRYPT REG
	SIGNAL end_encrypt_out, end_encrypt_ce : std_logic;

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
		D => MUX_in_out,
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
		D => LEFT_KEY_REG_OUT,
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
	
	-- end encrypt out will be used in the state machine to determine whether the cipher has done its work.	
	INST_END_ENCRYPT_SHIFT_REG : end_encrypt_shift_reg
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
	
	STATE_MACHINE_BODY : PROCESS (current_state, start, lfsr_parallel_out, IS_right_reg_out, end_encrypt_out)
	BEGIN
		CASE current_state IS
			WHEN loading =>
				-- set outputs 
				BUSY <= '1';
				Ciphertext_out <= (OTHERS => '0');

				--lfsr 
				lfsr_rst <= '0';
				lfsr_ce <= '1';

				--end encrypt 
				end_encrypt_ce <= '0';

				--INPUT MUX 
				SEL_IN <= '0'; --loading   
				                                 
				-- state transition    
                -- lfsr output values is used to determine when loading is done, 
                -- this to spare the need for another counter           
				IF lfsr_parallel_out = b"11100" THEN-- plaintext has been loaded, stop loading plaintext and keep loading the key         
					nx_state <= loading;
					IS_CE <= '0';
					KEY_REG_CE <= '1';
				ELSIF lfsr_parallel_out = b"11000" THEN-- keep loading the key
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

				--end encrypt 
				end_encrypt_ce <= '0';

				--INPUT MUX 
				SEL_IN <= '0'; --loading   
				       
                -- Registers enable    				                          
				KEY_REG_CE <= '0';
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

				--Registers enable				
				IS_CE <= '1';
				KEY_REG_CE <= '1';

				--state transition           				
				IF lfsr_parallel_out = b"10001" THEN	-- only if this condition is met the cipher has finished
													  -- this is because we are using the lfsr also for the loading phase
													  -- we used this johnson counter trick to spare logic
				
					IF end_encrypt_out = '1' THEN
						nx_state <= end_encrypt;
					ELSE
						nx_state <= processing;
					END IF;
														
                    -- let the johnson counter increase
					end_encrypt_ce <= '1';
				ELSE
					end_encrypt_ce <= '0';

					nx_state <= processing;
				END IF;
				
			WHEN end_encrypt =>
			    -- set outputs
				BUSY <= '0';				
				Ciphertext_out <= IS_right_reg_out;

				--INPUT MUX 
				SEL_IN <= '0';
				IS_CE <= '1';
				KEY_REG_CE <= '0';
				
				--lfsr
				lfsr_rst <= '1';
				lfsr_ce <= '0';
				
				-- end encrypt reg enable
				end_encrypt_ce <= '0';
				
				-- state transition                
				nx_state <= end_encrypt;
				
		END CASE;
	END PROCESS;
END behavioral;