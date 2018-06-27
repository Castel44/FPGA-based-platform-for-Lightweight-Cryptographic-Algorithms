-- CIPHER TOP ENTITY
-- Cipher: Simoon
-- Key length: 128 bit
-- Plaintext length: 128 bit
-- Datapath: 64 bit
-- Cipher specs from here : "https://eprint.iacr.org/2013/404.pdf"
------------------------------------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Simon_128_128_parallel IS

	GENERIC (Datapath : INTEGER := 64);

	PORT (
		clk, data_ready, start : IN std_logic;
		key_in : IN std_logic_vector(Datapath - 1 DOWNTO 0); 
		plaintext_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
		busy : OUT std_logic := '0';
		ciphertext_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0) := (OTHERS => '0')
	);

END Simon_128_128_parallel;

ARCHITECTURE Behavioral OF Simon_128_128_parallel IS

------------------------------------------------------------------------------------------------------------
----Sub Components Definitions

    -- Multiplexer to correctly route signals 
	COMPONENT MUX
		GENERIC (datapath : INTEGER := 64);
		PORT (
			l_in, r_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
			sel : IN std_logic;
			mux_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)
		);
	END COMPONENT;

    -- Standard Register
	COMPONENT reg
		GENERIC (width : INTEGER := 64);
		PORT (
			D : IN std_logic_vector(width - 1 DOWNTO 0);
			clk, ce : IN std_logic;
			Q : OUT std_logic_vector(width - 1 DOWNTO 0)
		);
	END COMPONENT;

    -- Standard Shift Register
	COMPONENT normal_shift_reg
		GENERIC (
			width : INTEGER := 64; -- shift_reg width 
			length : INTEGER := 2 -- shift_reg length 
		);
		PORT (
			clk : IN std_logic;
			D : IN std_logic_vector(width - 1 DOWNTO 0);
			Q : OUT std_logic_vector(width - 1 DOWNTO 0);
			CE : IN std_logic
		);
	END COMPONENT;

    -- Shift Register with right and left 64 bits output (length is 2)
    -- It will be used for the internal state 
	COMPONENT parallel_tapped_shift_reg
		GENERIC (
			width : INTEGER := 64; -- shift_reg width 
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
	
	-- Simon Round function
	
	-- left in is the leftmost portion of the internal state (first 64 bits)
	-- rigth_ in the rightmost (last 64 bits)
	COMPONENT Rnd_function_parallel
		GENERIC (
			datapath : INTEGER := 64
		);
		PORT (
			left_in, right_in, Ki_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
			rnd_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0)
		);
	END COMPONENT;

    -- Simon key schedule function;
	-- It takes the ki_in which is the round key, and the other portion of the key register before ki_in 
	--(right_in below) and also left_in with its instead the leftmost portion of the key register 
	-- and it implements the key schedule which consist in simply some RORs and XORs
	COMPONENT Key_schedule_function_parallel
		GENERIC (
			datapath : INTEGER := 64
		);
		PORT (
			left_in, right_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
			z_in : std_logic_vector(0 DOWNTO 0);
			rnd_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0)
		);
	END COMPONENT;

    -- The linear feedback shift register is used to generate round-unique constants 
    -- but also to determine whether the cipher has done its job.     
	-- His generator polynome is: X5 + X4 + X2 + X + 1 
	COMPONENT lfsr
		PORT (
			lfsr_out : OUT std_logic_vector(0 DOWNTO 0);
			clk : IN std_logic;
			ce : IN std_logic;
			rst : IN std_logic;
			lfsr_parallel_out : OUT std_logic_vector(4 DOWNTO 0)
		);
	END COMPONENT;

    -- Two bit counter, needed to ensure the correct ciphertext
	COMPONENT cnt
		GENERIC (size : INTEGER := 2);
		PORT (
			ce, clk, rst : IN std_logic;
			cnt_out : OUT std_logic_vector(1 DOWNTO 0)
		);

	END COMPONENT;

------------------------------------------------------------------------------------------------------------	
	--INTERNAL SIGNALS DECLARATION  

	-- CIPHER FSM SIGNALS
	TYPE state IS (LOADING, IDLE, PROCESSING, end_encrypt);
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

	--KEY REG(s) 
	SIGNAL KEY_REG_CE : std_logic;

	SIGNAL KEY_REG_left_reg_out : std_logic_vector(Datapath - 1 DOWNTO 0);
	SIGNAL KEY_REG_right_reg_out : std_logic_vector(Datapath - 1 DOWNTO 0);

	--LFSR 
	SIGNAL lfsr_ce : std_logic;
	SIGNAL lfsr_out : std_logic_vector(0 DOWNTO 0);
	SIGNAL lfsr_rst : std_logic;
	SIGNAL lfsr_parallel_out : std_logic_vector(4 DOWNTO 0);

    -- CNT
	SIGNAL cnt_ce, cnt_rst : std_logic;
	SIGNAL cnt_out : std_logic_vector(1 DOWNTO 0);

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
	
	-- Internal state shift register
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
	
	-- Round function of Simon, directly connected to the shift register	
	INST_RND_FUNCTION : Rnd_function_parallel
	GENERIC MAP(
		datapath => Datapath
	)
	PORT MAP(
		left_in => IS_left_reg_out,
		right_in => IS_right_reg_out,
		Ki_in => KEY_REG_right_reg_out, --controllare
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

    -- Key shift register
	INST_KEY_SHIFT_REG : parallel_tapped_shift_reg
	GENERIC MAP(
		width => Datapath,
		length => 2
	)
	PORT MAP(
		CLK => clk,
		D => KEY_MUX_OUT, -- input of left portion is dictated by the input mux 
		CE => KEY_REG_ce,
		left_out => KEY_REG_left_reg_out,
		right_out => KEY_REG_right_reg_out
	);

	-- Simon key schedule           
	INST_KEY_SCHEDULE_FUNCTION : key_schedule_function_parallel
	GENERIC MAP(
		datapath => Datapath
	)
	PORT MAP(
		left_in => KEY_REG_left_reg_out,
		right_in => KEY_REG_right_reg_out,
		z_in => lfsr_out,
		rnd_out => key_schedule_out
	);
	
	-- Two bit counter
	INST_bit2_CNT : cnt
	GENERIC MAP(size => 2)
	PORT MAP(
		ce => cnt_ce,
		rst => cnt_rst,
		clk => clk,
		cnt_out => cnt_out
	);
	
	-- Lsfr used to generate round-unique constants 
	-- lsfr_out is only the MSB (4th bit) of lfsr_parallel_out
	INST_LFSR : lfsr                                         
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
	
	
	STATE_MACHINE_BODY : PROCESS (current_state, start, lfsr_parallel_out, IS_right_reg_out, cnt_out)
	BEGIN
		CASE current_state IS
			WHEN loading =>
				-- set outputs 
				BUSY <= '1';
				Ciphertext_out <= (OTHERS => '0');
				
				--lfsr 
				lfsr_rst <= '0';
				lfsr_ce <= '1';

                --CNT
				cnt_ce <= '1';
				cnt_rst <= '0';
				
				--INPUT MUX 
				--loading value from Input pin
				SEL_IN <= '0'; --loading                                     
				
				-- state transition   
				IF cnt_out = b"10" THEN -- key and plaintext has been loaded                
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

                --CNT
				cnt_ce <= '0';
				cnt_rst <= '1';
				
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
                
                --CNT
				cnt_rst <= '0';
				
				--INPUT MUX 
				SEL_IN <= '1';
				
				--MUX driving for rnd function                                                              
				KEY_REG_CE <= '1';
				
				--state transition     
				-- Since lfsr period is short, his value b"11001" shows up 2 times in an encrypt cycle. A flag is needed when this occurs.  				                       
				IF lfsr_parallel_out = b"11001" THEN
					IF cnt_out = b"10" THEN			-- only if this condition is met the cipher has finished
						IS_CE <= '0';	
						nx_state <= end_encrypt;
					ELSE
						IS_CE <= '1';
						nx_state <= processing;
					END IF;
					-- let the counter increase
					cnt_ce <= '1';

				ELSE
					IS_CE <= '1';
					-- dont let the counter increase
					cnt_ce <= '0';
					nx_state <= processing;
				END IF;


			WHEN end_encrypt =>
                --CNT
				cnt_ce <= '0';
				cnt_rst <= '1';

				--set output 
				BUSY <= '0';
				Ciphertext_out <= IS_right_reg_out;
				
				--INPUT MUX 
				SEL_IN <= '0'; --loading
				IS_CE <= '1';
				KEY_REG_CE <= '0';
				
				--lfsr
				lfsr_rst <= '1';
				lfsr_ce <= '0';
				
				--state transition               		
				nx_state <= end_encrypt;


		END CASE;

	END PROCESS;
END behavioral;