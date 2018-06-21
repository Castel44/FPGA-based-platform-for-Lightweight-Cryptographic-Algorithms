library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY Skinny_128_128 IS

	PORT (
	
		CLK : IN STD_LOGIC; 
 
		PLAINTEXT_IN : IN STD_LOGIC_VECTOR (7 DOWNTO 0); -- plaintext and tweakey is loaded in parallel 
 
		TWEAKEY_IN : IN STD_LOGIC_VECTOR (7 DOWNTO 0); -- tweakey also is loaded in parallel 
 
		data_ready : IN std_logic; -- data ready usato per caricare key e plaintext
 
		start : IN std_logic;
 
		BUSY : OUT STD_LOGIC := '0'; -- done will be mapped to rnd counter overflow flag 
 
		CIPHERTEXT_OUT : OUT STD_LOGIC_VECTOR (7 DOWNTO 0) := (OTHERS => '0') 
 
		);
 
	END Skinny_128_128;
	ARCHITECTURE Behavioral OF Skinny_128_128 IS

		----Sub Components Definitions
		COMPONENT skinny_shift_reg_64
			PORT (

				serial_in_first_row : IN std_logic_vector (7 DOWNTO 0); 
				serial_in_second_row : IN std_logic_vector (7 DOWNTO 0); 
				serial_in_third_row : IN std_logic_vector (7 DOWNTO 0); 
				serial_in_fourth_row : IN std_logic_vector (7 DOWNTO 0); 
 
				clock : IN std_logic;
 
				enable_1, enable_2, enable_3, enable_4 : IN std_logic; --enable shifting for individual rows
 
				serial_output_first_row : OUT std_logic_vector (7 DOWNTO 0) := (OTHERS => '0');
				serial_output_second_row : OUT std_logic_vector (7 DOWNTO 0) := (OTHERS => '0');
				serial_output_third_row : OUT std_logic_vector (7 DOWNTO 0) := (OTHERS => '0');
				serial_output_fourth_row : OUT std_logic_vector (7 DOWNTO 0) := (OTHERS => '0') 

				);

			END COMPONENT;

			-- purtroppo shift reg diverso per la tweakey

			COMPONENT shift_reg
				PORT (

					parallel_in : IN std_logic_vector (63 DOWNTO 0); 
					serial_in : IN std_logic_vector(7 DOWNTO 0);
					clock, enable_in : IN std_logic;
					enable_parallel_loading : IN std_logic;
					serial_output : OUT std_logic_vector (7 DOWNTO 0) := (OTHERS => '0');
					parallel_output : OUT std_logic_vector (63 DOWNTO 0) := (OTHERS => '0') 

					);

				END COMPONENT;

				COMPONENT SubCells
					PORT (
 
						SubCells_IN : IN std_logic_vector(7 DOWNTO 0); 
						SubCells_OUT : OUT std_logic_vector(7 DOWNTO 0)  
					);
 
				END COMPONENT SubCells;

 
 
				COMPONENT AddConstant

					PORT (
						perform_AddConstant : IN std_logic_vector (4 DOWNTO 0); 
						lfsr_in : IN std_logic_vector(5 DOWNTO 0); -- mappato internamente al clock dell lfsr, deve variare tale ingresso ogni RND 
						AddConstant_IN : IN std_logic_vector (7 DOWNTO 0); 
						AddConstant_OUT : OUT std_logic_vector (7 DOWNTO 0)  
					); 
 
				END COMPONENT AddConstant;
 
 
 
				COMPONENT AddRoundTweakey
					PORT (
 
						perform_AddRoundTweakey : IN std_logic_vector (4 DOWNTO 0); -- enable signal must be used for signaling the element to be xored 
						AddRoundTweakey_TWEAKEY_IN : IN std_logic_vector(7 DOWNTO 0); 
						AddRoundTweakey_IS_IN : IN std_logic_vector(7 DOWNTO 0); -- qui da TWEAKEY shift reg out 
						AddRoundTweakey_IS_OUT : OUT std_logic_vector(7 DOWNTO 0) --deve rimetterli in IS shift reg serial in; si usa lo stesso contatore da 0 a 15 ELEMENT_COUNTER; IS SHIFT REGISTER alla fine può anche essere messo come subcomponent di questa entity 
					); 
				END COMPONENT AddRoundTweakey; 

				COMPONENT lfsr -- usato per contare anche i rounds
					PORT (
						clk,ce : IN std_logic;
						reset : IN std_logic;
						lfsr_out : OUT std_logic_vector (5 DOWNTO 0)
					);

				END COMPONENT lfsr;
				COMPONENT skinny_cnt
					PORT (

						clk : IN std_logic; 
						reset : IN std_logic; 
						enable_element_counter_in : IN std_logic; 
						ELEMENT_CNT_OUT : OUT std_logic_vector (4 DOWNTO 0)
					);

				END COMPONENT;
				COMPONENT rnd_key_update

					PORT (
						TWEAKEY_permutation_IN : IN std_logic_vector(63 DOWNTO 0);
						TWEAKEY_permutation_OUT : OUT std_logic_vector(63 DOWNTO 0) := (OTHERS => '0'); 
						enable_permutation : IN std_logic 

						);
 
					END COMPONENT rnd_key_update; 
					COMPONENT ShiftRows

						PORT (
 
							ShiftRows_In : IN std_logic_vector(7 DOWNTO 0); 
							ShiftRows_Out : OUT std_logic_vector(7 DOWNTO 0)  
						); 
					END COMPONENT ShiftRows; 
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

					-- STATE MACHINE SIGNAL DECLARATION

					TYPE state IS (LOADING, IDLE, PROCESSING, ShiftR, MixCol, RND_END);
					SIGNAL nx_state : state; -- cipher possible states
					SIGNAL current_state : state := idle;
					--attribute fsm_encoding : string;
					--attribute fsm_encoding of nx_state : signal is "auto";
					attribute fsm_safe_state : string;
					attribute fsm_safe_state of nx_state : signal is "default_state";
					-- internal signals for interconnections

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

					-- TW REGISTER SIGNALS
					SIGNAL TW_REG_enable_in_buf : std_logic;
					SIGNAL TW_REG_parallel_in_buf : std_logic_vector(63 DOWNTO 0);
					SIGNAL TW_REG_parallel_out_buf : std_logic_vector(63 DOWNTO 0);
					SIGNAL TW_REG_enable_parallel_loading_buf : std_logic;
					SIGNAL TW_REG_serial_in_buf : std_logic_vector(7 DOWNTO 0);
					SIGNAL TW_REG_serial_out_buf : std_logic_vector(7 DOWNTO 0);

					-- RND KEY UPFATE PERMUTATION
					SIGNAL enable_TW_permutation_buf : std_logic;
					SIGNAL TW_permutation_out_buf : std_logic_vector(127 DOWNTO 0);
					--SUBCELLS SIGNALS
					SIGNAL Subcells_in_buf : std_logic_vector(7 DOWNTO 0);
					SIGNAL Subcells_out_buf : std_logic_vector(7 DOWNTO 0);

					--AddRoundConstant
					SIGNAL AddConstant_OUT_BUF : std_logic_vector (7 DOWNTO 0);

					-- ADDROUNDTWEAKEY SIGNALS
					SIGNAL AddRoundTweakey_IS_OUT_BUF : std_logic_vector(7 DOWNTO 0);
					-- Mixcolumns
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
 
					--IS_serial_output_fourth_row_buf,IS_serial_output_third_row_buf,IS_serial_output_second_row_buf,plaintext_in,tweakey_in,MixColumns_first_row_out_buf,MixColumns_second_row_out_buf,IS_serial_output_first_row_buf,TW_REG_serial_out_buf,MixColumns_third_row_out_buf,MixColumns_fourth_row_out_buf,AddRoundTweakey_IS_OUT_BUF 
 
					STATE_MACHINE_BODY : PROCESS (start, current_state, cnt_out_buf, lfsr_out_buf, IS_serial_output_first_row_buf, IS_serial_output_fourth_row_buf, IS_serial_output_third_row_buf, IS_serial_output_second_row_buf, tweakey_in, plaintext_in, Mixcolumns_fourth_row_out_buf, Mixcolumns_first_row_out_buf, Mixcolumns_second_row_out_buf, Mixcolumns_third_row_out_buf, Tw_REG_serial_out_buf, AddRoundTweakey_IS_OUT_BUF) 

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
 
								ENABLE_CNT_BUF <= '1'; -- conta e scorre
								RST_CNT_BUF <= '0';
 

								IF (cnt_out_buf = b"01111") THEN
 
									nx_state <= idle;
 
								ELSE
 
									nx_state <= loading;
 
								END IF;
 
 
								--MixColumns
								MixColumns_first_row_in_buf <= (OTHERS => '-');
								MixColumns_second_row_in_buf <= (OTHERS => '-');
								MixColumns_third_row_in_buf <= (OTHERS => '-');
								MixColumns_fourth_row_in_buf <= (OTHERS => '-');
 
								--output signals
								CIPHERTEXT_OUT <= (OTHERS => '0');
 
								BUSY <= '1';
 
 
							WHEN idle => 
 
 
								IF (lfsr_out_buf = b"011010") THEN
 
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
 

 
								IS_serial_in_third_row_buf <= IS_serial_output_fourth_row_buf;
								IS_serial_in_second_row_buf <= IS_serial_output_third_row_buf;
								IS_serial_in_first_row_buf <= IS_serial_output_second_row_buf; 
 
								-- IS_serial_in_fourth_row_buf <= plaintext_in;
								IS_serial_in_fourth_row_buf <= MixColumns_fourth_row_out_buf;
 
								Subcells_in_buf <= (OTHERS => '-');
 
								---- stop shifting the TW reg 
 
								TW_REG_enable_in_buf <= '0';
								TW_REG_serial_in_buf <= TW_REG_serial_out_buf; --circular buffering 
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
 
								BUSY <= '0'; -- not busy
								
							WHEN processing => -- perform SubCells, AddRoundTweakey and AddConstants
                                  
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
                             
                                  IS_serial_in_third_row_buf <= IS_serial_output_fourth_row_buf;
                                  IS_serial_in_second_row_buf <= IS_serial_output_third_row_buf;
                                  IS_serial_in_first_row_buf <= IS_serial_output_second_row_buf; 
                             
                                 -- IS and subcells and addRoundTweakey
                                IS_serial_in_fourth_row_buf <= AddRoundTweakey_IS_out_buf; -- put result of addrndtweakey back onto IS
                                SubCells_in_buf <= IS_serial_output_first_row_buf; --output m0 to subcells
                             
                              --TW
                             TW_REG_enable_in_buf <= '1';
                             TW_REG_serial_in_buf <= TW_REG_serial_out_buf; --circular buffering
                            enable_TW_permutation_buf <= '0';
                             TW_REG_enable_parallel_loading_buf <= '0';
                             
                             --MixColumns
                          MixColumns_first_row_in_buf <= (OTHERS => '-'); 
                            MixColumns_second_row_in_buf <= (OTHERS => '-');
                            MixColumns_third_row_in_buf <= (OTHERS => '-');
                                            MixColumns_fourth_row_in_buf <= (OTHERS => '-');                            
                             
                     -- nx_state transition 
                     
                     if cnt_out_buf = b"01111" then 
                      nx_state <= SHIFTR;
                      
                      else
                      
                       nx_state <= processing;
                       end if;       
                       
            
    when SHIFTR => 
    
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
    IS_serial_in_first_row_buf <= (others => '-'); 

    --circular shifting on others rows row
    IS_serial_in_second_row_buf <= IS_serial_output_second_row_buf;
    IS_serial_in_third_row_buf <= IS_serial_output_third_row_buf;
    IS_serial_in_fourth_row_buf <= IS_serial_output_fourth_row_buf;
    
    --TW reg 
     TW_REG_enable_in_buf <= '1'; -- keep shfting 
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
    
    if cnt_out_buf = b"10001" THEN 
    
    IS_enable2_buf <= '1';
    IS_enable3_buf <= '1';              
    IS_enable4_buf <= '0'; -- fourth row has been shifted
        
    nx_state <= SHIFTR; 
    
    elsif cnt_out_buf = b"10010" then 
    
    IS_enable4_buf <= '0'; --fourth row has been shifted 
    IS_enable2_buf <= '1';
    IS_enable3_buf <= '0';
    
     nx_state <= MIXCOL; 
    
    
    else 
    
    IS_enable2_buf <= '1'; 
    IS_enable3_buf <= '1';     
    IS_enable4_buf <= '1';
								
    nx_state <= SHIFTR; 
								
    end if; 



when MIXCOL => -- perform MIXCOLUMNS


          -- outputs
                                  
          CIPHERTEXT_OUT <= (OTHERS => '0');
          BUSY <= '1';
                              
            --CNT
            ENABLE_CNT_BUF <= '1'; --counter is enabled
            rst_CNT_buf <= '0';
                                  
            --LFSR
            lfsr_enable_buf <= '0';
            lfsr_rst_buf <= '0';
             
             
 
			 --all rows mapped to mixcolumns
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
		 -- shifting 
		TW_REG_serial_in_buf <= TW_REG_serial_out_buf; --circular buffering
	    TW_REG_enable_in_buf <= '1';    
        enable_TW_permutation_buf <= '0';
        TW_REG_enable_parallel_loading_buf <= '0';  
 
             
       
        
        IF cnt_out_buf = b"10111" THEN
        
        
      IS_enable1_buf <= '0';
      IS_enable4_buf <= '0'; 
      IS_enable3_buf <= '0'; 
      IS_enable2_buf <= '0';
                
         IF  lfsr_out_buf = b"011010" THEN       
         nx_state <= IDLE; 
         ELSE 
        nx_state <= RND_END; 
        END IF; 
      
        
        ELSE -- keep performing MIXCOL
        
      IS_enable1_buf <= '1';
       IS_enable4_buf <= '1'; 
              IS_enable3_buf <= '1'; 
              IS_enable2_buf <= '1';
                
                nx_state <= MIXCOL; 
        
        END IF; 
        
        

WHEN RND_END => 

   CIPHERTEXT_OUT <= (OTHERS => '0');
 
	BUSY <= '1';

    --IS 
	IS_enable1_buf <= '0';
    IS_enable2_buf <= '0';
	IS_enable3_buf <= '0';
    IS_enable4_buf <= '0';
 
	IS_serial_in_third_row_buf <= (others => '-');
	IS_serial_in_second_row_buf <= (others => '-');
	IS_serial_in_first_row_buf <= (others => '-');
 
		-- IS and subcells and addRoundTweakey
		IS_serial_in_fourth_row_buf <=(others => '-');
	    SubCells_in_buf <= (others => '-'); 
 
			--TW -- perform permutation
			TW_REG_enable_in_buf <= '0'; -- not shifting
			enable_TW_permutation_buf <= '1';
		   TW_REG_enable_parallel_loading_buf <= '1';
		TW_REG_serial_in_buf <= TW_REG_serial_out_buf;
 
 
			--LFSR
	    	lfsr_rst_buf <= '0';
			lfsr_enable_buf <= '1'; -- increase the lfsr count
 
			--CNT
			rst_CNT_buf <= '1';
			ENABLE_CNT_BUF <= '1';
			-- enable is on top
 
		--state
		nx_state <= processing;
 
							--MixColumns
							MixColumns_first_row_in_buf <= (OTHERS => '-');
							MixColumns_second_row_in_buf <= (OTHERS => '-');
							MixColumns_third_row_in_buf <= (OTHERS => '-');
							MixColumns_fourth_row_in_buf <= (OTHERS => '-'); 




						END CASE;

					END PROCESS;
END behavioral;