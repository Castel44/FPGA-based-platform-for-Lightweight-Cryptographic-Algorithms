
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Simon_128_128_bit_serial is
  
  Generic ( Datapath : integer := 1);


  Port ( 
       
        clk,data_ready,start: in std_logic; 
       key_in: in std_logic_vector(Datapath - 1 downto 0);  -- metà caricata
       plaintext_in: in std_logic_vector(Datapath - 1 downto 0);
       busy: out std_logic:= '0';   
       ciphertext_out: out std_logic_vector(Datapath - 1 downto 0):= (others => '0')
  
  
        ); 
        
end Simon_128_128_bit_serial;

architecture Behavioral of Simon_128_128_bit_serial is

--SUBCOMPONENTS

component MUX 
  
 generic( datapath: integer :=1 );
         
 port  (         
          
          l_in,r_in: in std_logic_vector(datapath-1 downto 0); 
          sel: in std_logic ;  
          mux_out: out std_logic_vector(datapath-1 downto 0)
 ); 
 
 end component; 
 
 
 
 component IS_shift_reg         
         
         generic ( width: integer; 
                       length: integer); 
                       
          port  (              
          
           clk: in std_logic; 
            D: in std_logic_vector(width-1 downto 0); 
            Q: out std_logic_vector(width-1 downto 0); 
            CE: std_logic;           
            
            IS_2n1_out:out std_logic_vector(width-1 downto 0);          
            IS_2n2_out:out std_logic_vector(width-1 downto 0);
            IS_2n8_out:out std_logic_vector(width-1 downto 0);
            
            IS_n1_out:out std_logic_vector(width-1 downto 0);        
            IS_n2_out:out std_logic_vector(width-1 downto 0); 
            IS_n8_out:out std_logic_vector(width-1 downto 0)
          
          ); 

 end component; 
 
 
component  key_shiftreg

generic  (  width, length: integer );

port ( 

      clk: in std_logic; 
            D: in std_logic_vector(width-1 downto 0); 
            Q: out std_logic_vector(width-1 downto 0); 
            CE: std_logic;           
            
          
           
          KEY_REG_n4_out:out std_logic_vector(width-1 downto 0);
          KEY_REG_n3_out:out std_logic_vector(width-1 downto 0);
          KEY_REG_4_out:out std_logic_vector(width-1 downto 0);
          KEY_REG_3_out:out std_logic_vector(width-1 downto 0)
         
         -- KEY_REG_n_out:out std_logic_vector(width-1 downto 0)

); 

 end component; 
 
component Rnd_function             
  generic ( datapath: integer
          
           ); 
           
   port (         
            
          is0_in,MUX1_in,MUX2_in,MUX8_in,ki_in: in std_logic_vector(datapath-1 downto 0); 
          rnd_function_out: out std_logic_vector(datapath-1 downto 0)
           
          
   ); 
  
end component;  


component KEY_SCHEDULE_FUNC 

generic ( datapath: integer ); 

port  ( 

 const_in: in std_logic_vector(datapath-1 downto 0);
 KEYMUX3_in: in std_logic_vector(datapath-1 downto 0);
 KEYMUX4_in : in std_logic_vector(datapath-1 downto 0);
 Ki_in : in std_logic_vector(datapath-1 downto 0);
 key_schedule_out: out std_logic_vector(datapath-1 downto 0)

); 

end component; 



component lfsr        
 
 
 
 port (
 
       lfsr_out: out std_logic_vector(0 downto 0); 
       clk : in std_logic; 
       ce: in std_logic;
       rst:in std_logic; 
       lfsr_parallel_out :out std_logic_vector(4 downto 0)
       
 ); 
   
end component;  

component CONSTANT_GEN_MUX

generic  ( datapath: integer ); 

port ( 

     element_cnt_in: in std_logic_vector(5 downto 0);
      lfsr_in: in  std_logic_vector(datapath-1 downto 0);
      Const_out: out std_logic_vector(datapath-1 downto 0)

); 

end component; 

component CNT
 
  generic ( size:integer);
          
   port (       
          cnt_out: out std_logic_vector(size-1 downto 0); 
          rst: in std_logic; 
          clk: in std_logic;  
          ce: in std_logic
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

type state is (LOADING,IDLE,PROCESSING,END_ENCRYPT); -- cipher possible states
signal nx_state : state ; 
signal current_state : state := idle ; --default state

------------------------------------------
-- ROUND FUNCTION and INTERNAL STATE: 
 ------------------------------------
 
 -- IS INPUT MUX 
 signal IS_INPUT_MUX_OUT: std_logic_vector(datapath-1 downto 0); 
 signal sel_IN: std_logic; 
 
 
 --GLOBAL IS REGS SIGNALS 
 signal IS_ce: std_logic; 
 
 
 --IS REG in out 
 --signal IS_in: std_logic_vector(datapath-1 downto 0);
 signal IS_out: std_logic_vector(datapath-1 downto 0);
 
 -- IS REG taps for rnd function
 signal IS_2n1_out: std_logic_vector(datapath-1 downto 0); 
 signal IS_2n2_out: std_logic_vector(datapath-1 downto 0); 
 signal IS_2n8_out: std_logic_vector(datapath-1 downto 0); 
 
 signal IS_n1_out: std_logic_vector(datapath-1 downto 0); 
 signal IS_n2_out: std_logic_vector(datapath-1 downto 0); 
 signal IS_n8_out: std_logic_vector(datapath-1 downto 0); 
 

-- RND FUNCTION MUXES: MUX8 MUX2 MUX1 

signal MUX1_sel: std_logic; 
signal MUX1_out: std_logic_vector(datapath-1 downto 0); 


signal MUX8_sel:std_logic; 
signal MUX8_out: std_logic_vector(datapath-1 downto 0);

signal MUX2_sel:std_logic; 
signal MUX2_out: std_logic_vector(datapath-1 downto 0);


--RND FUNCTION 
signal rnd_function_out: std_logic_vector(datapath-1 downto 0); 


--------------------------------------------------------
-- KEY SCHEDULE and KEY_REG 
------------------------------------------------------

--KEY_REG_INPUT MUX
signal KEY_INPUT_MUX_OUT: std_logic_vector(datapath-1 downto 0); 

--KEY REG GLOBAL ENABLE 
signal KEY_REG_CE: std_logic; 

-- KEY SHIFTREG 
--signal KEY_REG_IN: std_logic_vector(datapath-1 downto 0);
signal KEY_REG_OUT: std_logic_vector(datapath-1 downto 0);

-- KEY SHIFTREG TAPS 
signal KEY_REG_n4_out:std_logic_vector(datapath-1 downto 0);
signal KEY_REG_n3_out:std_logic_vector(datapath-1 downto 0);
signal KEY_REG_4_out:std_logic_vector(datapath-1 downto 0);
signal KEY_REG_3_out:std_logic_vector(datapath-1 downto 0);
--signal  KEY_REG_n1_out:std_logic_vector(datapath-1 downto 0);
--signal KEY_REG_1_out:std_logic_vector(datapath-1 downto 0);
--signal KEY_REG_n_out: std_logic_vector(datapath-1 downto 0);

-- KEY SCHEDULE MUXES 

signal KEYMUX3_sel:std_logic; 
signal KEYMUX3_out:std_logic_vector(datapath-1 downto 0);
signal KEYMUX4_sel:std_logic; 
signal KEYMUX4_out: std_logic_vector(datapath-1 downto 0);
--signal KEYMUX1_sel:std_logic; 
--signal KEYMUX1_out: std_logic_vector(datapath-1 downto 0); 

--KEY SCHEDULE 
signal  key_schedule_out:std_logic_vector(datapath-1 downto 0);

--RND CONST
signal rnd_const_out:std_logic_vector(datapath-1 downto 0);



---- ENDING 2BIT CNT 
signal end_cnt_ce,end_cnt_rst: std_logic; 
signal end_cnt_out: std_logic_vector(1 downto 0); 



--SERIAL CNT 
signal serial_cnt_rst,element_cnt_ce: std_logic;
signal serial_cnt_out: std_logic_vector(5 downto 0); 
signal serial_ce:std_logic; 

--LFSR 
signal lfsr_ce:std_logic; 
signal lfsr_out: std_logic_vector(datapath-1 downto 0); 
signal lfsr_rst:std_logic; 
signal lfsr_change: std_logic; 
signal lfsr_parallel_out: std_logic_vector(4 downto 0);


begin 


INST_IS_INPUT_MUX: MUX 
         
         generic map ( datapath => 1 ) 
         
         port map ( 
                      l_in => Plaintext_in,
                      r_in => RNd_function_out,
                      sel => SEL_IN,
                      mux_out => IS_INPUT_MUX_OUT
 
         ); 
         
         
         
INST_IS_SHIFTREG: IS_shift_reg         
        
        generic map ( width=>datapath, 
                      length=> 128)
                      
         port map (              
         
          clk=>clk,
           D=> IS_INPUT_MUX_OUT,
           Q=> IS_OUT,
           CE=> IS_CE,          
           
           IS_2n1_out=>IS_2n1_out,            
           IS_2n2_out=>IS_2n2_out,
           IS_2n8_out=>IS_2n8_out,
           
           IS_n1_out=> IS_n1_out,             
           IS_n2_out=> IS_n2_out,  
           IS_n8_out=> IS_n8_out 
         
         ); 
         
INST_rnd_func: RND_FUNCTION        
     
      generic map (datapath=> datapath) 
      
      port map ( 
       
       
      is0_in=> IS_out, 
      MUX1_in => MUX1_out, 
      MUX2_in => MUX2_out, 
      MUX8_in => MUX8_out, 
      ki_in =>  KEY_REG_OUT,
      rnd_function_out => rnd_function_out
      
      ); 


INST_MUX1: mux 
   
   generic map ( datapath => datapath ) 
   
   port map ( 
            
   l_in=> IS_2n1_out,
   r_in=> IS_n1_out,
   sel=> MUX1_sel,  
   mux_out => MUX1_out
   
   ); 
   
INST_MUX2: mux 
      
      generic map ( datapath => datapath ) 
      
      port map ( 
               
      l_in=> IS_2n2_out,
      r_in=> IS_n2_out,
      sel=> MUX2_sel,  
      mux_out => MUX2_out
      
      ); 
      
      
INST_MUX8: mux 
            
            generic map ( datapath => datapath ) 
            
            port map ( 
                     
            l_in=> IS_2n8_out,
            r_in=> IS_n8_out,
            sel=> MUX8_sel,  
            mux_out => MUX8_out
            
            );       
            
            
            
----------------------------------------------------------------------------------------------------        
--KEY SCHEDULE AND KEY REGS 
----------------------------------------------------------------------------------------------------            

INST_KEY_REG_IN_MUX: mux 
generic map ( datapath => datapath ) 


port map ( 

l_in => KEY_IN,  
r_in=> KEY_SCHEDULE_OUT, 
sel=> SEL_IN, 
mux_out=> KEY_INPUT_MUX_OUT

);



INST_KEY_REG: key_shiftreg

generic map (  width => datapath, length => 128)

port map ( 

      clk=>clk,
           D=> KEY_INPUT_MUX_OUT,
           Q=> KEY_REG_OUT, --ki
           CE=> KEY_REG_CE,
           
          KEY_REG_n4_out=> KEY_REG_n4_out,
          KEY_REG_n3_out=> KEY_REG_n3_out,
          KEY_REG_4_out=> KEY_REG_4_out,
          KEY_REG_3_out=>  KEY_REG_3_out
         -- KEY_REG_n_out=>KEY_REG_n_out
          

); 

            
INST_KEYMUX3: mux          

generic map ( datapath => datapath)

port map ( 

l_in => KEY_REG_n3_out,
r_in => KEY_REG_3_out,
sel => KEYMUX3_sel,
mux_out => KEYMUX3_out

); 


INST_KEYMUX4: mux          

generic map ( datapath => datapath)

port map ( 

l_in => KEY_REG_n4_out,
r_in => KEY_REG_4_out,
sel => KEYMUX4_sel ,
mux_out => KEYMUX4_out

); 

--INST_KEYMUX1: mux 

--generic map ( datapath => datapath)

--port map ( 

--l_in => KEY_REG_n1_out,
--r_in => KEY_REG_1_out,
--sel => KEYMUX1_sel ,
--mux_out => KEYMUX1_out

--); 

INST_KEYSCHEDULE: KEY_SCHEDULE_FUNC 

generic map ( datapath => datapath ) 

port map ( 

const_in => rnd_const_out, 
KEYMUX3_in => KEYMUX3_out, 
KEYMUX4_in => KEYMUX4_out, 
--KEYMUX1_in => KEYMUX1_out,
Ki_in => KEY_REG_OUT,
--ki1_in => KEY_REG_n_out,
KEY_SCHEDULE_OUT =>  KEY_SCHEDULE_OUT


); 


INST_CONSTANT_GEN: CONSTANT_GEN_MUX

generic map ( datapath => datapath )

port map ( 

     element_cnt_in=> serial_cnt_out,
      lfsr_in => lfsr_out, 
      Const_out=>rnd_const_out

); 


INST_SERIAL_CNT: cnt 
                  
                                                   
           generic map ( size => 6)
                                                 
                    port map ( 
                                  cnt_out => serial_cnt_out, 
                                  rst =>serial_cnt_rst, 
                                  clk => clk,
                                  ce => serial_ce
                        ); 


INST_lfsr: lfsr 


             port map (       
                                     
                       lfsr_out => lfsr_out, 
                       clk=> lfsr_change,
                       ce=> lfsr_ce,
                       rst => lfsr_rst,
                       lfsr_parallel_out => lfsr_parallel_out
                                     
                       );                  
                       
                       

INST_END_ENCRYPT_2Bit_CNT: cnt                                      
                                         generic map ( size => 2)                                                              
                               port map ( 
                                                           ce => end_cnt_ce, 
                                                           rst => end_cnt_rst, 
                                                           clk => clk, 
                                                          cnt_out => end_cnt_out 
                                     );  
            
            
            
--CIPHER FSM             
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
                      
                      
 STATE_MACHINE_BODY : PROCESS (current_state, start, lfsr_parallel_out, serial_cnt_out, end_cnt_out, IS_out)
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
                                                                    end_cnt_ce <= '0';
                                                                    end_cnt_rst <= '1';
                                                                    
                                                                    --INPUT MUX
                                                                    SEL_IN <= '0';
                                            
                                                                    --MUX driving for rnd function
                                                                    --arbitrary
                                                                    MUX1_sel <= '1';
                                                                    MUX8_sel <= '1'; 
                                                                    MUX2_sel <= '1';
                                                                     
                                                                    --key schedule MUxes --arbitrary  
                                                                     --KEYMUX1_sel <= '1';
                                                                     KEYMUX3_sel <= '1';
                                                                     KEYMUX4_sel <= '1';
                                            
                                                                    -- state transition
                                            
--                                                                    IF lfsr_parallel_out = b"10011" THEN -- plaintext has been loaded keep loading the key
                                            
--                                                                        nx_state <= loading;
--                                                                        IS_CE <= '0';
--                                                                        KEY_REG_CE <= '1';
                                            
--                                                                    ELSIF lfsr_parallel_out = b"10111" THEN -- key has been loaded
                                            
--                                                                        IS_CE <= '0';
--                                                                        KEY_REG_CE <= '1';
--                                                                        nx_state <= loading;
                                            
                                                                    IF lfsr_parallel_out = b"10011" THEN -- key has been loaded go to idle
                                            
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
                                                                     end_cnt_ce <= '0';
                                                                     end_cnt_rst <= '1';
                                            
                                                                    --INPUT MUX
                                                                    SEL_IN <= '0'; --loading
                                            
                                                                      --MUX driving for rnd function
                                                                                                                                      --arbitrary
                                                                                                                                      MUX1_sel <= '1';
                                                                                                                                      MUX8_sel <= '1'; 
                                                                                                                                      MUX2_sel <= '1';
                                                                                                                                       
                                                                                                                                      --key schedule MUxes --arbitrary  
                                                                                                                                       --KEYMUX1_sel <= '1';
                                                                                                                                       KEYMUX3_sel <= '1';
                                                                                                                                       KEYMUX4_sel <= '1';
                                                                  
                     
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
                                                                    end_cnt_rst <= '0';
                                            
                                                                    --INPUT MUX
                                                                    SEL_IN <= '1';
                                            
                                                                    --MUX driving for rnd function
                                                                    IF serial_cnt_out = b"000000" THEN
                                                                        MUX1_sel <= '0';
                                                                    ELSE
                                                                        MUX1_sel <= '1';
                                                                    END IF;
                                                                    
                                                                    IF serial_cnt_out <= b"000001" THEN
                                                                                       MUX2_sel <= '0';
                                                                                             ELSE
                                                                                 MUX2_sel <= '1';
                                                                                         END IF;
                                            
                                                                    IF serial_cnt_out <= b"000111" THEN
                                                                         MUX8_sel <= '0';
                                                                    ELSE
                                                                         MUX8_sel <= '1';
                                                                    END IF;
                                                                    
                                                                    --MUX selects for key schedule 
--                                                                    IF serial_cnt_out < b"111111" THEN 
--                                                                                    KEYMUX1_sel <= '0';
--                                                                                             ELSE
--                                                                                     KEYMUX1_sel <= '1';
--                                                                                 END IF;
                                                                                 
                                                                       IF serial_cnt_out < b"111101" THEN --61
                                                                                                  KEYMUX3_sel <= '0';
                                                                                                           ELSE
                                                                                                      KEYMUX3_sel <= '1';
                                                                                                        END IF;            
                                                                                                        
                                                                          IF serial_cnt_out < b"111100" THEN
                                                                                         KEYMUX4_sel <= '0';
                                                                                                       ELSE
                                                                                                    KEYMUX4_sel <= '1';
                                                                                                            END IF;                                    
                                                                    --IS_CE <= '1';
                                                                    KEY_REG_CE <= '1';
                                                                    --state transition
                                            
                                                                    IF lfsr_parallel_out = b"11001" THEN 
                                                                    
                                                                        IF end_cnt_out = b"10" THEN
                                                                         IS_CE <= '0';
                                                                         nx_state <= end_encrypt;
                                                                         ELSE
                                                                             nx_state <= processing;
                                                                             IS_CE <= '1';
                                                                         END IF;
                                                                         
                                                                         
                                                                    IF serial_cnt_out = b"111111" THEN
                                                                    
                                                                         end_cnt_ce <= '1';
                                                                         ELSE 
                                                                         end_cnt_ce <= '0';
                                                                        END IF ; 
                                                                         
                                                                         
                                             
                                                                     ELSE
                                                                        IS_CE <= '1';
                                                                         end_cnt_ce <= '0';
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
                                                                                                                end_cnt_ce <= '0';
                                                                                                                end_cnt_rst <= '1';
                                                                                         
                                                                                                                 --INPUT MUX
                                                                                                                 SEL_IN <= '0'; --loading
                                                                                         
                                                                                                                  --MUX driving for rnd function
                                                                                                                                                                                                                                                     --arbitrary
                                                                                                                                                                                                                                                     MUX1_sel <= '-';
                                                                                                                                                                                                                                                     MUX8_sel <= '-'; 
                                                                                                                                                                                                                                                     MUX2_sel <= '-';
                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                     --key schedule MUxes --arbitrary  
                                                                                                                                                                                                                                                     -- KEYMUX1_sel <= '-';
                                                                                                                                                                                                                                                      KEYMUX3_sel <= '-';
                                                                                                                                                                                                                                                      KEYMUX4_sel <= '-';
                                                                                                                
                                                                                          
                                                                                                                     IS_CE <= '1';
                                                                                                                     Ciphertext_out <= IS_out;
                                                                                                                 
                                                                                         
                                                                                          
                                                                                         
                                                                                                                 KEY_REG_CE <= '0';
                                                                                                                 --state transition
                                                                                         
                                                                                                              
                                                                                                                     nx_state <= end_encrypt;
                                                                                         
                                                                   
                                                                     
                                                    
                                            
                                                             
                                                             END CASE;
                                            
                                                         END PROCESS;
                                                
                                                  
                                                  
                     LFSR_CHANGE_constant: process(clk,serial_cnt_out) 
                                            
                                            begin 
                                               
                                            if rising_edge(clk) then   
                                               if serial_cnt_out = b"111111" then --64
                                                     
                                                     lfsr_change <= '1'; 
                                                    
                                                     
                                                     else 
                                                     
                                                     lfsr_change <= '0'; 
                                                     
                                                  
                                                  end if; 
                                              end if;    
                                            
                                            end process;
            

end Behavioral;






