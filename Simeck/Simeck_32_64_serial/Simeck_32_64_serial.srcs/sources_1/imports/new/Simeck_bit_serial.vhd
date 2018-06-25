


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Simeck_32_64_serial is


  Port ( 
  
        clk,data_ready:in std_logic;
         key_in: in std_logic_vector(0 downto 0); 
         plaintext_in: in std_logic_vector(0 downto 0);
         busy: out std_logic;
        start: in std_logic; 
        ciphertext_out: out std_logic_vector(0 downto 0):= (others => '0')

  ); 
  
end Simeck_32_64_serial;

architecture Behavioral of Simeck_32_64_serial is



--SUBCOMPONENTS 

component MUX 
  
 generic( datapath: integer :=1 );
         
 port  (         
          
          l_in,r_in: in std_logic_vector(datapath-1 downto 0); 
          sel: in std_logic ;  
          mux_out: out std_logic_vector(datapath-1 downto 0)
 ); 
 
 end component; 
 
 
 
 
component normal_shift_reg 
  
  generic( width: integer ; -- shift_reg width 
           length: integer  -- shift_reg length 
          );
           
   port (          
             clk: in std_logic;
             D : in std_logic_vector(width-1 downto 0 ); 
             Q : out std_logic_vector(width-1 downto 0);
             
             CE : in std_logic           
  );
  
  end component;  
  
  

component tapped_shift_reg 
 
generic( width: integer ; -- shift_reg width 
          length: integer  -- shift_reg length 
          
         );
          
  port (          
            clk: in std_logic;
            D : in std_logic_vector(width-1 downto 0 ); 
            Q : out std_logic_vector(width-1 downto 0); 
            CE : in std_logic;           
            bn1_out: out std_logic_vector(width-1 downto 0 ); 
            bn5_out: out std_logic_vector(width-1 downto 0 ) 
            
 );
 
 end component; 
 
 
component Rnd_function             -- also used for key schedule function which is the same 
  generic ( datapath: integer
          
           ); 
           
   port (         
           
          a0_in,MUX1_in,b0_in,MUX5_in,Ki_in: in std_logic_vector(datapath-1 downto 0); 
           rnd_out: out std_logic_vector(datapath-1 downto 0)
           
          
   ); 
  
end component;  



component lfsr        
 
 generic( length: integer; -- different characteristic polynomials for different plaintext/key length 
          width:integer --lfsr in/out/internal datapath 
          
         );
 
 port (
 
       lfsr_out: out std_logic_vector(width-1 downto 0); 
       clk : in std_logic; 
        ce: in std_logic;
       rst:in std_logic; 
       lfsr_parallel_out :out std_logic_vector(length*width downto 0)
       
 ); 
   
end component;  


component CNT
 
   generic( size:integer 
          
          ); 
          
   port (       
          cnt_out: out std_logic_vector(size-1 downto 0); 
          rst: in std_logic; 
          clk: in std_logic;  
          ce: in std_logic
    ); 
    
 end component;  
 
 
component rnd_constants_MUX  


   port (              
                         element_cnt_in: in std_logic_vector(3 downto 0); 
                         lfsr_in: in std_logic_vector(0 downto 0);
                         Const_out: out std_logic_vector(0 downto 0 )
                          
          ); 
          
          
 end component;          



 component end_encrypt_shift_reg
   
    Port ( 
           ce,clk,rst: in std_logic; 
             
           end_encrypt: out std_logic
    
     );
     
  end component; 
   

-- Internal signals declaration:



-- CIPHER FSM SIGNALS
----------------------------

type state is (LOADING,IDLE,PROCESSING,END_ENCRYPT); 
signal nx_state : state ; -- cipher possible states
signal current_state : state := idle ; 


------------------------------------------
-- ROUND FUNCTION and INTERNAL STATE: 
 ------------------------------------
 
 -- IS INPUT MUX 
 signal IS_INPUT_MUX_OUT: std_logic_vector(0 downto 0); 
 signal sel_IN: std_logic; 
 signal MUX_IN_out: std_logic_vector(0 downto 0); 
 
 
 --GLOBAL IS REGS SIGNALS 
 signal IS_ce: std_logic; 
 
 
 --IS LEFT REG 
 signal IS_left_reg_in: std_logic_vector(0 downto 0);
 signal IS_left_reg_out: std_logic_vector(0 downto 0);
 signal IS_left_reg_bn1_out: std_logic_vector(0 downto 0);
 signal IS_left_reg_bn5_out: std_logic_vector(0 downto 0);

--IS RIGHT REG 
signal IS_right_reg_in: std_logic_vector(0 downto 0);
signal IS_right_reg_out: std_logic_vector(0 downto 0);
signal IS_right_reg_an1_out: std_logic_vector(0 downto 0);
signal IS_right_reg_an5_out: std_logic_vector(0 downto 0);

-- MUX5 and MUX1 
signal MUX1_l_in: std_logic_vector(0 downto 0); 
signal MUX1_r_in: std_logic_vector(0 downto 0); 
signal MUX1_out: std_logic_vector(0 downto 0); 

signal sel_1:std_logic; -- also used for key schedule same control signals
signal sel_5:std_logic; 

signal MUX5_l_in: std_logic_vector(0 downto 0); 
signal MUX5_r_in: std_logic_vector(0 downto 0); 
signal MUX5_out: std_logic_vector(0 downto 0);

--RND FUNCTION 
signal rnd_function_out: std_logic_vector(0 downto 0); 


--------------------------------------------------------
-- KEY SCHEDULE and KEY_REG 
------------------------------------------------------

--KEY_REG_INPUT MUX
signal KEY_INPUT_MUX_OUT: std_logic_vector(0 downto 0); 

--KEY REG GLOBAL ENABLE 
signal KEY_REG_CE: std_logic; 

--LEFT KEY REG 
signal LEFT_KEY_REG_IN: std_logic_vector(0 downto 0);
signal LEFT_KEY_REG_OUT: std_logic_vector(0 downto 0);


--B KEY REG 
signal B_KEY_REG_IN: std_logic_vector(0 downto 0);
signal B_KEY_REG_OUT: std_logic_vector(0 downto 0);
signal KEY_REG_bn1_out: std_logic_vector(0 downto 0);
signal KEY_REG_bn5_out: std_logic_vector(0 downto 0);

--A KEY REG 
signal A_KEY_REG_OUT: std_logic_vector(0 downto 0); --a0 working key 
signal KEY_REG_an1_out: std_logic_vector(0 downto 0);
signal KEY_REG_an5_out: std_logic_vector(0 downto 0);

-- KEY SCHEDULE MUXES 
signal MUX2_out:std_logic_vector(0 downto 0);
signal MUX3_out: std_logic_vector(0 downto 0);

--KEY SCHEDULE 
signal  key_schedule_out:std_logic_vector(0 downto 0);

--RND CONST
signal rnd_const_out:std_logic_vector(0 downto 0);



---- ENDING FSR
signal end_encrypt_ce,end_encrypt_out,end_encrypt_change,end_encrypt_rst: std_logic; 



--SERIAL CNT 
signal serial_cnt_rst,element_cnt_ce: std_logic;
signal serial_cnt_out: std_logic_vector(3 downto 0); 
signal serial_ce:std_logic; 

--LFSR 
signal lfsr_ce:std_logic; 
signal lfsr_out: std_logic_vector(0 downto 0); 
signal lfsr_rst:std_logic; 
signal lfsr_change: std_logic; 
signal lfsr_parallel_out: std_logic_vector(4 downto 0);

begin

-- Component Instantiation

-- IS, Plaintext_input MUX , RND Function 

INST_IS_INPUT_MUX: MUX 
         
         generic map ( datapath => 1 ) 
         
         port map ( 
                      l_in => Plaintext_in,
                      r_in => RNd_function_out,
                      sel => SEL_IN,
                      mux_out => IS_INPUT_MUX_OUT
 
         ); 
         
            
INST_IS_LEFT_REG: tapped_shift_reg              

 generic map ( width => 1, 
              length => 16 -- 2n total plaintext size 
            ) 
              
   port map ( 

        CLK=>clk,
        D=>IS_INPUT_MUX_OUT, -- input of left portion is dictated by the input mux 
        CE=> IS_ce, 
        Q=> IS_left_reg_out, --b0 out 
        bn1_out =>  IS_left_reg_bn1_out,
        bn5_out =>IS_left_reg_bn5_out
); 

         
         
         
         
INST_IS_RIGHT_REG: tapped_shift_reg  

 generic map (  width => 1, 
                length => 16   -- n is 16              
              )
          
          
      port map ( 
                  clk=>clk,
                  D=>IS_left_reg_out,  -- the two shift registers are contiguous
                  CE=> IS_ce, 
                  Q=> IS_RIGHT_reg_out, --a0
                  bn1_out =>  IS_right_reg_an1_out, -- these should be connected to muxes  1 and 5
                  bn5_out =>IS_right_reg_an5_out
               ); 


--MUXES for RND function 

INST_MUX1: MUX 
   
   generic map ( datapath => 1
   
   ) 
   
   port map ( l_in=>IS_left_reg_bn1_out, 
              r_in=>  IS_right_reg_an1_out, 
              sel=>sel_1, 
              mux_out=> mux1_out
            ); 
            
            
INST_MUX5: MUX 
               
         generic map (datapath => 1
               
          ) 
               
       port map ( l_in=>IS_left_reg_bn5_out, 
                  r_in=> IS_right_reg_an5_out, 
                  sel=>sel_5, 
                  mux_out=> MUX5_out
                  
                 );       



INST_RND_FUNCTION: rnd_function

  generic map ( datapath => 1 )
           
        port map( 
                  MUX1_in => MUX1_out,
                  MUX5_in => MUX5_out, 
                  rnd_out=> rnd_function_out,  -- feedback in the IS shift reg 
                  ki_in => A_KEY_REG_OUT, -- working key input 
                  a0_in => IS_RIGHT_reg_out, 
                  b0_in => IS_LEFT_reg_out
    
        ); 
        
        
----------------------------------------------------------------------------------------------------        
--KEY SCHEDULE AND KEY REGS 

INST_KEY_REG_INPUT_MUX: MUX 

    generic map ( datapath => 1) 
    
    port map ( 
              
              l_in=>key_in, 
              r_in=> key_schedule_out, 
              sel=>SEL_IN, -- same sel signal as is inoput mux 
              
              mux_out=>KEY_INPUT_MUX_OUT
        
              ); 
              
    
INST_LEFT_KEY_REG: normal_shift_reg 
                              
                              generic map ( width => 1, 
                                            length => 32 
                                            
                                            ) 
                                            
                              port map ( 
                                         clk=>clk,
                                         D=>KEY_INPUT_MUX_OUT, 
                                         CE=>KEY_REG_CE, 
                                         Q=> LEFT_KEY_REG_OUT
                                         
                              ); 
    
INST_B_KEY_REG: tapped_shift_reg -- B PORTION OF SHIFT REG 
                                              
                                generic map ( width => 1, 
                                               length => 16 -- 2n total plaintext size 
                                              ) 
                                                            
                               port map ( 
                                              clk=>clk,
                                              D=>LEFT_KEY_REG_OUT, -- b0
                                              CE=>KEY_REG_CE, 
                                              Q=> B_KEY_REG_OUT,
                                              bn1_out =>  KEY_REG_bn1_out,
                                              bn5_out =>KEY_REG_bn5_out
                                            ); 
                                              
                                              
INST_A_KEY_REG: tapped_shift_reg 
                                                            
                        generic map ( width => 1, 
                                      length => 16 -- 2n total plaintext size 
                                      ) 
                                                                          
                         port map ( 
                                    clk=>clk,
                                    D=>B_KEY_REG_OUT, 
                                    CE=>KEY_REG_CE, 
                                    Q=> A_KEY_REG_OUT, --a0 
                                    bn1_out =>  KEY_REG_an1_out,
                                    bn5_out =>KEY_REG_an5_out
                                    
                                  ); 
                                  
                                  
INST_MUX2: MUX  -- MUX1 for the key schedule                                
        
        generic map ( datapath => 1) 
        
        port map ( 
                   l_in=>KEY_REG_bn1_out, 
                   r_in=> KEY_REG_an1_out, 
                   sel=>sel_1, 
                   mux_out=> MUX2_out
   
        ); 
           
           
INST_MUX3: MUX -- MUX5 for the key schedule
           
                            
                    generic map (datapath => 1) 
                                   
                    port map ( l_in=> KEY_REG_bn5_out, 
                               r_in=> KEY_REG_an5_out, 
                               sel=>sel_5, 
                               mux_out=> MUX3_out
                                      
                              );                                  
                
                
INST_KEY_SCHEDULE_FUNCTION: Rnd_function        
                                                      
                       generic map ( datapath => 1)
                                                              
              
                                                              
                      port map(  
                                MUX1_in => MUX2_out,
                                MUX5_in => MUX3_out, 
                                rnd_out=>key_schedule_out, 
                                ki_in => rnd_const_out, 
                                a0_in => A_KEY_REG_OUT,
                                b0_in => B_KEY_REG_OUT
                                                                                                 
                          );                                                        
                          
                          
                          
INST_RND_CONSTANTS_GEN: rnd_constants_MUX                           

              port map ( 
              
                          element_cnt_in=> serial_cnt_out,
                          lfsr_in => lfsr_out, 
                          Const_out=>rnd_const_out
     
                      ); 
                          
                      
                          
 -- SERIAL CNT and LFSR                          
                          
INST_SERIAL_CNT: cnt                      
                                                   
            generic map (size => 4 )
                                                 
                    port map ( 
                                  cnt_out => serial_cnt_out, 
                                  rst =>serial_cnt_rst, 
                                  clk => clk,
                                  ce => serial_ce
                        ); 
                        
                        
                        
INST_END_ENCRYPT_SHIFT_REG: end_encrypt_shift_reg                                       
                                                                                                       
                                       port map ( 
                                                           ce => end_encrypt_ce, 
                                                           rst => lfsr_rst, 
                                                           clk => clk, 
                                                                                                      
                                                           end_encrypt => end_encrypt_out 
                                         );  
                        
                        
                                                                                  
INST_SHORT_LFSR: lfsr 
                                
       generic map ( 
                       length=>4, 
                        width=>1       )
                                           
             port map (       
                                     
                       lfsr_out => lfsr_out, 
                       clk=> lfsr_change,
                       ce=> lfsr_ce,
                       rst => lfsr_rst,
                       lfsr_parallel_out => lfsr_parallel_out
                                     
                       );                                                                                 
                                                                            
                                                                            
 -- CIPHER FSM 
                       STATE_MACHINE_MAIN: process(clk,data_ready) 
                       
                       begin 
                        IF rising_edge(CLK) then        
                            IF (data_ready = '1') then             
                       
                               current_state <= LOADING; -- continua a caricare           
                               
                             ELSE 
                             
                               current_state <= nx_state;
                                        
                                
                           end if;          
                        end if;  
                        
                       end process;             
                       
                       
                       
                      STATE_MACHINE_BODY : PROCESS (current_state, start, lfsr_parallel_out, serial_cnt_out, end_encrypt_out, IS_RIGHT_reg_out)
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
                                               --arbitrary
                                               sel_1 <= '1';
                                               sel_5 <= '1';
                       
                                               -- state transition
                       
                                               IF lfsr_parallel_out = b"11100" THEN -- plaintext has been loaded keep loading the key
                       
                                                   nx_state <= loading;
                                                   IS_CE <= '0';
                                                   KEY_REG_CE <= '1';
                       
                                               ELSIF lfsr_parallel_out = b"11000" THEN -- key has been loaded
                       
                                                   IS_CE <= '0';
                                                   KEY_REG_CE <= '1';
                                                   nx_state <= loading;
                       
                                               ELSIF lfsr_parallel_out = b"10001" THEN -- key has been loaded go to idle
                       
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
                       
                                               --ending sfr
                                                                                             end_encrypt_ce <= '0';
                                                                                             end_encrypt_rst <= '0';
                       
                                               --INPUT MUX
                                               SEL_IN <= '0'; --loading
                       
                                               --MUX driving for rnd function
                                               --arbitrary
                                               sel_1 <= '1';
                                               sel_5 <= '1';
                                             

                                                   Ciphertext_out <= (OTHERS => '0');
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
                                               --ending_cnt_ce <= '1';
                                               end_encrypt_rst <= '0';
                       
                                               --INPUT MUX
                                               SEL_IN <= '1';
                       
                                               --MUX driving for rnd function
                                               IF serial_cnt_out = b"0000" THEN
                                                   sel_1 <= '0';
                                               ELSE
                                                   sel_1 <= '1';
                                               END IF;
                       
                                               IF serial_cnt_out <= b"0100" THEN
                                                   sel_5 <= '0';
                                               ELSE
                                                   sel_5 <= '1';
                                               END IF;
                                               KEY_REG_CE <= '1';
                                               --state transition
                       
                                               IF lfsr_parallel_out = b"11110" THEN -- continue processing
                                               
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
                                                   END IF ; 
                                                    
                                                    
                        
                                                ELSE
                                                    IS_CE <= '1';
                                                    end_encrypt_ce <= '0';
                                                    nx_state <= processing;
                        
                                                END IF;
                                                
                                                
                                                
                                              when end_encrypt =>   
                                              
                                               -- set outputs
                                                                                            BUSY <= '0';
                                                                     
                                                                    
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
                                                                                            --arbitrary
                                                                                            sel_1 <= '1';
                                                                                            sel_5 <= '1';
                                                                                            --ciphertext out if done 
                                                                                           
                                                                     
                                                                                                IS_CE <= '1';
                                                                                                Ciphertext_out <= IS_RIGHT_reg_out;
                                                                                            
                                                                    
                                                                     
                                                                    
                                                                                            KEY_REG_CE <= '0';
                                                                                            --state transition
                                                                    
                                                                                         
                                                                                                nx_state <= end_encrypt;
                                                                    
                                              
                                                
                               
                       
                                        
                                        END CASE;
                       
                                    END PROCESS;
                           
                             
                             
LFSR_CHANGE_constant: process(clk,serial_cnt_out) 
                       
                       begin 
                          
                       if rising_edge(clk) then   
                          if serial_cnt_out = b"1111" then 
                                
                                lfsr_change <= '1'; 
                               
                                
                                else 
                                
                                lfsr_change <= '0'; 
                                
                             
                             end if; 
                         end if;    
                       
                       end process;                                                                            
                                                                            
                                                                            
                                                            
end Behavioral;

