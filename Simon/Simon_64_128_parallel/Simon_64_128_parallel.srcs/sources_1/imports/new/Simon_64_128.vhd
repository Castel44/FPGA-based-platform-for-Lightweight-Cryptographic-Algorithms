-- CIPHER TOP ENTITY
-- Cipher: Simoon
-- Key length: 128 bit
-- Plaintext length: 64 bit
-- Datapath: 32 bit
-- Cipher specs from here : "https://eprint.iacr.org/2013/404.pdf"
------------------------------------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Simon_64_128_parallel IS

	GENERIC (Datapath : INTEGER RANGE 0 TO 32 := 32);

	PORT (
		clk, data_ready, start : IN std_logic;
		key_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
		plaintext_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
		busy : OUT std_logic := '0';
		ciphertext_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0) := (OTHERS => '0')
	);

END Simon_64_128_parallel;

ARCHITECTURE Behavioral OF Simon_64_128_parallel IS

------------------------------------------------------------------------------------------------------------
----Sub Components Definitions

    -- Multiplexer to correct route signals 
	COMPONENT MUX
		GENERIC (datapath : INTEGER := 32);
		PORT (
			l_in, r_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
			sel : IN std_logic;
			mux_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)
		);
	END COMPONENT;

    -- Register, 32 bit
	COMPONENT reg
		GENERIC (width : INTEGER := 32);
		PORT (
			D : IN std_logic_vector(width - 1 DOWNTO 0);
			clk, ce : IN std_logic;
			Q : OUT std_logic_vector(width - 1 DOWNTO 0)

		);
	END COMPONENT;

    -- Shift Register, 32 bit
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

    -- Shift Register 24 bit, with double output
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
	
	-- Simon Round function
	COMPONENT Rnd_function_parallel
		GENERIC (
			datapath : INTEGER := 16
		);
		PORT (
			left_in, right_in, Ki_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
			rnd_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0)
		);
	END COMPONENT;

    -- Simon key schedule function
	COMPONENT Key_schedule_function_parallel
		GENERIC (
			datapath : INTEGER := 16
		);
		PORT (
			left_in, right_in, ki_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
			z_in : std_logic_vector(0 DOWNTO 0);
			rnd_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0)
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

    -- Shift register with 0 and 1 as output, needed to ensure the correct ciphertext
	COMPONENT end_encrypt_shift_reg
		PORT (
			ce, clk, rst : IN std_logic;
			end_encrypt : OUT std_logic
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
	
	SIGNAL end_encrypt_ce, end_encrypt_out : std_logic;

	--KEY INPUT MUX
	SIGNAL KEY_MUX_OUT : std_logic_vector(Datapath - 1 DOWNTO 0);
	SIGNAL key_schedule_out : std_logic_vector(Datapath - 1 DOWNTO 0);

	--KEY REG(s) 
	SIGNAL KEY_REG_CE : std_logic;

	SIGNAL ki3_KEY_REG_OUT : std_logic_vector(Datapath - 1 DOWNTO 0);

	SIGNAL ki2_KEY_REG_OUT : std_logic_vector(Datapath - 1 DOWNTO 0);

	SIGNAL ki0_KEY_REG_OUT : std_logic_vector(Datapath - 1 DOWNTO 0);

	--LFSR 
	SIGNAL lfsr_ce : std_logic;
	SIGNAL lfsr_out : std_logic_vector(0 DOWNTO 0);
	SIGNAL lfsr_rst : std_logic;
	SIGNAL lfsr_parallel_out : std_logic_vector(4 DOWNTO 0);

	

BEGIN

    -- SubComponents Instantiation
    -- Internal State mux, loads the shift reg correclty to last operation of cipher or new plaintext
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
	
	-- Shift register of  the internal state
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
		Ki_in => ki0_KEY_REG_OUT, 
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

    -- Ki3 register
	INST_Ki3 : reg
	GENERIC MAP(width => Datapath)

	PORT MAP(
		clk => clk,
		D => KEY_MUX_OUT,
		CE => KEY_REG_CE,
		Q => ki3_KEY_REG_OUT
	);

    -- Ki1 and ki2 shift register
	INST_Ki2_Ki1 : normal_shift_reg
	GENERIC MAP(
		width => Datapath,
		length => 2
	)
	PORT MAP(
		clk => clk,
		D => ki3_KEY_REG_OUT,
		CE => KEY_REG_CE,
		Q => ki2_KEY_REG_OUT
	);

    -- Ki0 register
	INST_Ki0 : reg
	GENERIC MAP(width => Datapath)
	PORT MAP(
		clk => clk,
		D => ki2_KEY_REG_OUT,
		CE => KEY_REG_CE,
		Q => ki0_KEY_REG_OUT
	);
	
	-- Simon key schedule
	INST_KEY_SCHEDULE_FUNCTION : key_schedule_function_parallel
	GENERIC MAP(
		datapath => Datapath
	)
	PORT MAP(
		left_in => ki3_KEY_REG_OUT,
		ki_in => ki0_KEY_REG_OUT,
		right_in => ki2_KEY_REG_OUT,
		z_in => lfsr_out,
		rnd_out => key_schedule_out
	);
	
	INST_END_ENCRYPT_SHIFT_REG : end_encrypt_shift_reg
	PORT MAP(
		ce => end_encrypt_ce,
		rst => lfsr_rst,
		clk => clk,

		end_encrypt => end_encrypt_out

	);
	INST_LFSR : lfsr -- includes T sequence shift register                                             
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
				
				-- End encrypt reg enable
				end_encrypt_ce <= '0';
				
				--INPUT MUX 
				--loading value from Input pin
				SEL_IN <= '0'; --loading  
				                                   
				-- state transition   
				-- lfsr output values used to count up clk cycles         
				IF lfsr_parallel_out = b"00110" THEN-- plaintext has been loaded keep loading the key         
					nx_state <= loading;
					IS_CE <= '0';
					KEY_REG_CE <= '1';
				ELSIF lfsr_parallel_out = b"01101" THEN -- key loading
					IS_CE <= '0';
					KEY_REG_CE <= '1';
					nx_state <= loading;
				ELSIF lfsr_parallel_out = b"11111" THEN -- key has been loaded                
					IS_CE <= '0';
					KEY_REG_CE <= '0';
					nx_state <= idle;
				ELSE    --keep loading key and plaintext
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
				
				-- End encrypt reg enable
				end_encrypt_ce <= '0';
				
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
				-- lfsr period is short, so his value b"10001" shows 2 times in an encrypt cycle. A flag is needed when this occurs.                      
				IF lfsr_parallel_out = b"10001" THEN

					IF end_encrypt_out = '1' THEN  -- encrypt is done!!
						nx_state <= end_encrypt;
					ELSE
						nx_state <= processing;
					END IF;

					end_encrypt_ce <= '1';

				ELSE
					end_encrypt_ce <= '0';
					nx_state <= processing;
				END IF;
				
			WHEN end_encrypt =>
			     -- End encrypt reg enable
				end_encrypt_ce <= '0';
				
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

				--state transition, after 2 clk cycles    
				IF lfsr_parallel_out = b"01011" THEN
					nx_state <= idle;
				ELSE
					nx_state <= end_encrypt;
				END IF;

		END CASE;

	END PROCESS;
END behavioral;