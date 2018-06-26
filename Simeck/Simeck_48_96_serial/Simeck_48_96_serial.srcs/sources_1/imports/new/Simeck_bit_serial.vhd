library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use work.Simeck_constants.all;


entity Simeck_48_96_serial is


  generic ( datapath: integer := 1; 
            plaintext_size: integer := 48;
            key_size:integer:=96
       ); 


  Port ( 
  
        clk,data_ready:in std_logic;
         key_in: in std_logic_vector(0 downto 0); 
         plaintext_in: in std_logic_vector(0 downto 0);
         busy: out std_logic;
        start: in std_logic; 
        ciphertext_out: out std_logic_vector(0 downto 0):= (others => '0')

  ); 
  
end Simeck_48_96_serial;




architecture Behavioral of Simeck_48_96_serial is



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
       lfsr_parallel_out :out std_logic_vector(length*width-1 downto 0)
       
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
           
           generic( datapath:integer;
                     cnt_size:integer );
            

   port (              
                         element_cnt_in: in std_logic_vector(cnt_size-1 downto 0); 
                         lfsr_in: in std_logic_vector(0 downto 0);
                         Const_out: out std_logic_vector(0 downto 0 )
                          
          ); 
          
          
 end component;          


component CNT_48 

  port ( 
      cnt_out: out std_logic_vector(4 downto 0); 
      ce,rst,clk: in std_logic 
    ); 
    
    
 end component;    

-- Internal signals declaration:



-- CIPHER FSM SIGNALS
----------------------------

type state is (LOADING,IDLE,PROCESSING); 
signal nx_state : state ; -- cipher possible states
signal current_state : state := idle ; 


------------------------------------------
-- ROUND FUNCTION and INTERNAL STATE: 
 ------------------------------------
 
 -- IS INPUT MUX 
 signal IS_INPUT_MUX_OUT: std_logic_vector(datapath-1 downto 0); 
 signal sel_IN: std_logic; 
 signal MUX_IN_out: std_logic_vector(datapath-1 downto 0); 
 
 
 --GLOBAL IS REGS SIGNALS 
 signal IS_ce: std_logic; 
 
 
 --IS LEFT REG 
 signal IS_left_reg_in: std_logic_vector(datapath-1 downto 0);
 signal IS_left_reg_out: std_logic_vector(datapath-1 downto 0);
 signal IS_left_reg_bn1_out: std_logic_vector(datapath-1 downto 0);
 signal IS_left_reg_bn5_out: std_logic_vector(datapath-1 downto 0);

--IS RIGHT REG 
signal IS_right_reg_in: std_logic_vector(0 downto 0);
signal IS_right_reg_out: std_logic_vector(0 downto 0);
signal IS_right_reg_an1_out: std_logic_vector(0 downto 0);
signal IS_right_reg_an5_out: std_logic_vector(0 downto 0);

-- MUX5 and MUX1 
signal MUX1_l_in: std_logic_vector(datapath-1 downto 0); 
signal MUX1_r_in: std_logic_vector(datapath-1 downto 0); 
signal MUX1_out: std_logic_vector(datapath-1 downto 0); 

signal sel_1:std_logic; -- also used for key schedule same control signals
signal sel_5:std_logic; 

signal MUX5_l_in: std_logic_vector(datapath-1 downto 0); 
signal MUX5_r_in: std_logic_vector(datapath-1 downto 0); 
signal MUX5_out: std_logic_vector(datapath-1 downto 0);

--RND FUNCTION 
signal rnd_function_out: std_logic_vector(datapath-1 downto 0); 


--------------------------------------------------------
-- KEY SCHEDULE and KEY_REG 
------------------------------------------------------

--KEY_REG_INPUT MUX
signal KEY_INPUT_MUX_OUT: std_logic_vector(datapath-1 downto 0); 

--KEY REG GLOBAL ENABLE 
signal KEY_REG_CE: std_logic; 

--LEFT KEY REG 
signal LEFT_KEY_REG_IN: std_logic_vector(datapath-1 downto 0);
signal LEFT_KEY_REG_OUT: std_logic_vector(datapath-1 downto 0);


--B KEY REG 
signal B_KEY_REG_IN: std_logic_vector(datapath-1 downto 0);
signal B_KEY_REG_OUT: std_logic_vector(datapath-1 downto 0);
signal KEY_REG_bn1_out: std_logic_vector(datapath-1 downto 0);
signal KEY_REG_bn5_out: std_logic_vector(datapath-1 downto 0);

--A KEY REG 
signal A_KEY_REG_OUT: std_logic_vector(datapath-1 downto 0); --a0 working key 
signal KEY_REG_an1_out: std_logic_vector(datapath-1 downto 0);
signal KEY_REG_an5_out: std_logic_vector(datapath-1 downto 0);

-- KEY SCHEDULE MUXES 
signal MUX2_out:std_logic_vector(datapath-1 downto 0);
signal MUX3_out: std_logic_vector(datapath-1 downto 0);

--KEY SCHEDULE 
signal  key_schedule_out:std_logic_vector(datapath-1 downto 0);

--RND CONST
signal rnd_const_out:std_logic_vector(datapath-1 downto 0);



---- CNT and LFSR 

-- ending cnt 
signal ending_cnt_rst,ending_cnt_ce: std_logic;
signal ending_cnt_out: std_logic_vector(1 downto 0); -- something here 
signal ending_ce:std_logic; 
signal ending_cnt_inc:std_logic; 

--SERIAL CNT 
signal serial_cnt_rst,element_cnt_ce: std_logic;
signal serial_cnt_out: std_logic_vector(4 downto 0); 
signal serial_ce:std_logic; 

--LFSR 
signal lfsr_ce:std_logic; 
signal lfsr_out: std_logic_vector(datapath-1 downto 0); 
signal lfsr_rst:std_logic; 
signal lfsr_change: std_logic; 
signal lfsr_parallel_out: std_logic_vector(4 downto 0);

begin

-- Component Instantiation

-- IS, Plaintext_input MUX , RND Function 

INST_IS_INPUT_MUX: MUX 
         
         generic map ( datapath => datapath ) 
         
         port map ( 
                      l_in => Plaintext_in,
                      r_in => RNd_function_out,
                      sel => SEL_IN,
                      mux_out => IS_INPUT_MUX_OUT
 
         ); 
         
            
INST_IS_LEFT_REG: tapped_shift_reg              

 generic map ( width => datapath, 
              length => (plaintext_size/(2*datapath)) -- 2n total plaintext size 
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

 generic map (  width => datapath, 
                length => (plaintext_size/(2*datapath))   -- n is 16              
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
   
   generic map ( datapath => datapath
   
   ) 
   
   port map ( l_in=>IS_left_reg_bn1_out, 
              r_in=>  IS_right_reg_an1_out, 
              sel=>sel_1, 
              mux_out=> mux1_out
            ); 
            
            
INST_MUX5: MUX 
               
         generic map (datapath => datapath
               
          ) 
               
       port map ( l_in=>IS_left_reg_bn5_out, 
                  r_in=> IS_right_reg_an5_out, 
                  sel=>sel_5, 
                  mux_out=> MUX5_out
                  
                 );       



INST_RND_FUNCTION: rnd_function

  generic map ( datapath => datapath )
           
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

    generic map ( datapath => datapath) 
    
    port map ( 
              
              l_in=>key_in, 
              r_in=> key_schedule_out, 
              sel=>SEL_IN, -- same sel signal as is inoput mux 
              
              mux_out=>KEY_INPUT_MUX_OUT
        
              ); 
              
    
INST_LEFT_KEY_REG: normal_shift_reg 
                              
                              generic map ( width => datapath, 
                                            length => key_size/(2*datapath) 
                                            
                                            ) 
                                            
                              port map ( 
                                         clk=>clk,
                                         D=>KEY_INPUT_MUX_OUT, 
                                         CE=>KEY_REG_CE, 
                                         Q=> LEFT_KEY_REG_OUT
                                         
                              ); 
    
INST_B_KEY_REG: tapped_shift_reg -- B PORTION OF SHIFT REG 
                                              
                                generic map ( width => datapath, 
                                               length => key_size/(4*datapath) -- 2n total plaintext size 
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
                                      length => key_size/(4*datapath) -- 2n total plaintext size 
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
        
        generic map ( datapath => datapath) 
        
        port map ( 
                   l_in=>KEY_REG_bn1_out, 
                   r_in=> KEY_REG_an1_out, 
                   sel=>sel_1, 
                   mux_out=> MUX2_out
   
        ); 
           
           
INST_MUX3: MUX -- MUX5 for the key schedule
           
                            
                    generic map (datapath => datapath) 
                                   
                    port map ( l_in=> KEY_REG_bn5_out, 
                               r_in=> KEY_REG_an5_out, 
                               sel=>sel_5, 
                               mux_out=> MUX3_out
                                      
                              );                                  
                
                
INST_KEY_SCHEDULE_FUNCTION: Rnd_function        
                                                      
                       generic map ( datapath => datapath)
                                                              
              
                                                              
                      port map(  
                                MUX1_in => MUX2_out,
                                MUX5_in => MUX3_out, 
                                rnd_out=>key_schedule_out, 
                                ki_in => rnd_const_out, 
                                a0_in => A_KEY_REG_OUT,
                                b0_in => B_KEY_REG_OUT
                                                                                                 
                          );                                                        
                          
                          
                          
INST_RND_CONSTANTS_GEN: rnd_constants_MUX                           

            generic map (datapath => datapath, cnt_size=> 5)

              port map ( 
              
                          element_cnt_in=> serial_cnt_out,
                          lfsr_in => lfsr_out, 
                          Const_out=>rnd_const_out
     
                      ); 
                          
                      
                          
 -- SERIAL CNT and LFSR                          
                          
INST_SERIAL_CNT: cnt_48                      
                                                   
            --generic map (size => serial_cnt_size(datapath,plaintext_size) )
                                                 
                    port map ( 
                                  cnt_out => serial_cnt_out, 
                                  rst =>serial_cnt_rst, 
                                  clk => clk,
                                  ce => serial_ce
                        ); 
                        
                        
                        
INST_ENCR_DONE_CNT: CNT                         

          generic map ( size => 2 ) 
              
              port map ( 
              
                        cnt_out => ending_cnt_out, 
                        rst => ending_cnt_rst, 
                        clk => clk,
                        ce => ending_cnt_ce
                        
                       );  
                        
                                          
                                                                                  
INST_LFSR: lfsr 
                                
       generic map ( 
                        length=>5, 
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
                       
                       
STATE_MACHINE_BODY: PROCESS(current_state,start,lfsr_parallel_out,serial_cnt_out,ending_cnt_out,IS_RIGHT_reg_out)
                     
                     
                     begin 
                       
                          case current_state is 
                          
                             when loading  => 
                             
                             -- set outputs 
                              BUSY <= '1' ; 
                              Ciphertext_out <= (others => '0');
                              
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
                               --arbitrary 
                               sel_1 <= '1'; 
                               sel_5 <= '1'; 
                                           
                              -- state transition 
                              
                              if lfsr_parallel_out = b"11100" then -- 3d plaintext has been loaded keep loading the key 
                              
                              nx_state <= loading ; 
                              IS_CE <= '0'; 
                              KEY_REG_CE <= '1'; 
                              
                              elsif lfsr_parallel_out = b"11000"  then -- 
                                                            
                                                       IS_CE <= '0'; 
                                                       KEY_REG_CE <= '1'; 
                                                       nx_state <= loading;  
                              
                              elsif lfsr_parallel_out = b"10001" then -- key has been loaded 
                              
                              IS_CE <= '0'; 
                              KEY_REG_CE <= '0'; 
                              nx_state <= idle;  
                              
                              else -- keep loading both 
                              
                              nx_state <= loading ; 
                              IS_CE <= '1'; 
                              KEY_REG_CE <= '1'; 
                              
                              end if ; 
                              
                          
                              when idle => 
                              
                              -- set outputs 
                              BUSY <= '0' ; 
                              
                                    
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
                               --arbitrary 
                               sel_1 <= '1'; 
                               sel_5 <= '1'; 
                                
                                
                                --outputting ciphertext
                                
                                if ending_cnt_out = b"01" then -- output mux 
                                 
                                IS_CE <= '1'; 
                                Ciphertext_out <= IS_RIGHT_reg_out;
                                else 
                                Ciphertext_out <= (others => '0');
                                IS_CE <= '0'; 
                                end if; 
                                
                                KEY_REG_CE <= '0'; 
                                
                                
                                --state transition
                                
                                if start='1' then 
                                nx_state <= processing;
                                
                                else 
                                
                                nx_state <= idle; 
                                
                                end if;
                                
                                
                                 
                              
                           when processing =>
                             
                               -- set outputs 
                                  BUSY <= '1' ; 
                                  Ciphertext_out <= (others => '0');
                                        
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
                                  if serial_cnt_out= b"00000" then
                                  sel_1 <= '0'; 
                                  else 
                                  sel_1 <=   '1';  
                                  end if; 
                                           
                                  if serial_cnt_out <= b"00100" then
                                  sel_5 <= '0'; 
                                  else 
                                  sel_5 <=   '1';  
                                  end if; 
                                           
                                    
                                     
                                    
                                    KEY_REG_CE <= '1'; 
                                    
                                    
                                    --state transition
                                    
                                    if lfsr_parallel_out = b"00011" then -- continue processing 
                                    
                                                                   
                                     if ending_cnt_out = b"01" then 
                                     IS_CE <= '0';
                                     nx_state <= idle;
                                     else 
                                     nx_state <= processing; 
                                     IS_CE <= '1';
                                     end if; 
                                     
                                     IF serial_cnt_out = b"10111"  THEN
                                                                                   
                                                                ending_cnt_ce <= '1';  
                                                                  ELSE 
                                                                ending_cnt_ce <= '0';  
                                                                END IF ;  
                                     
                                    
                                     
                                    else 
                                    IS_CE <= '1'; 
                                    ending_cnt_ce <= '0'; 
                                    nx_state <= processing; 
                                    
                                    end if;
                             
                             
                             end case; 
                             
                             end process; 
                             
                           
                             
                             
LFSR_CHANGE_constant: process(clk,serial_cnt_out) 
                       
                       begin 
                          
                       if rising_edge(clk) then   
                          if serial_cnt_out = b"10111"  then   
                                
                                lfsr_change <= '1'; 
                               
                                
                                else 
                                
                                lfsr_change <= '0'; 
                                
                             
                             end if; 
                          end if;    
                       
                       end process;                                                                            
                                                                                                                                                        
                                                            
end Behavioral;
