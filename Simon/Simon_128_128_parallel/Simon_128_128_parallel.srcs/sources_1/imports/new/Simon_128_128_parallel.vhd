library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Simon_128_128_parallel is
       
       Generic ( Datapath : integer := 64);
       
       Port ( 
      clk,data_ready,start: in std_logic; 
      key_in: in std_logic_vector(Datapath - 1 downto 0);  -- metà caricata
      plaintext_in: in std_logic_vector(Datapath - 1 downto 0);
      busy: out std_logic:= '0';   
      ciphertext_out: out std_logic_vector(Datapath - 1 downto 0):= (others => '0')
      );      

end Simon_128_128_parallel;

architecture Behavioral of Simon_128_128_parallel is

--SUBCOMPONENTS
component MUX   
generic( datapath: integer :=1 );         
port  (                   
        l_in,r_in: in std_logic_vector(datapath-1 downto 0); 
        sel: in std_logic ;  
        mux_out: out std_logic_vector(datapath-1 downto 0)
        ); 
end component; 

component reg 

generic (width: integer:= 16); 

port ( D: in std_logic_vector(width-1 downto 0); 
       clk,ce: in std_logic; 
       Q: out std_logic_vector(width-1 downto 0)
       
       ); 
end component;        



component normal_shift_reg  

generic( width: integer := 16 ; -- shift_reg width 
        length: integer:= 2  -- shift_reg length 
        );          
        
port (          
        clk: in std_logic;
        D : in std_logic_vector(width-1 downto 0 ); 
        Q : out std_logic_vector(width-1 downto 0);
        CE : in std_logic           
        );
end component;

component c_shift_ram_0 
  PORT (
    D : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    CLK : IN STD_LOGIC;
    CE : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
end component;   
  


component parallel_tapped_shift_reg   
generic( width: integer:= 16 ; -- shift_reg width 
         length: integer:= 2  -- shift_reg length            
          );           
port (          
        clk: in std_logic;
        D : in std_logic_vector(width-1 downto 0 ); 
        right_out : out std_logic_vector(width-1 downto 0); 
        CE : in std_logic;           
        left_out: out std_logic_vector(width-1 downto 0 )                         
        );  
end component; 


component Rnd_function_parallel 
generic ( datapath: integer:= 16         
        );            
port (                    
        left_in,right_in,Ki_in: in std_logic_vector(Datapath - 1 downto 0); 
        rnd_out: out std_logic_vector(Datapath - 1 downto 0)                     
        );   
end component;



component Key_schedule_function_parallel 
generic ( datapath: integer:= 16          
        );            
port (                    
        left_in,right_in: in std_logic_vector(Datapath - 1 downto 0); 
        z_in: std_logic_vector(0 downto 0); 
        rnd_out: out std_logic_vector(Datapath - 1 downto 0)                     
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
 
component cnt

 generic( size:integer:= 5   );
 
  Port ( 
           ce,clk,rst: in std_logic; 
           
           cnt_out: out std_logic_vector(1 downto 0) 
  
   );
   
 end component;  

--INTERNAL SIGNALS DECLARATION  
 
 -- CIPHER FSM SIGNALS
 ---------------------------- 
type state is (LOADING,IDLE,PROCESSING,end_encrypt); 
signal nx_state : state ; -- cipher possible states
signal current_state : state := idle ; 

signal sel_IN: std_logic; 

-- IS, IS MUX, REGISTERS AND RND FUNCTION  
signal rnd_function_out: std_logic_vector(Datapath -1 downto 0); 
signal MUX_IN_out: std_logic_vector(Datapath -1 downto 0);
signal IS_CE: std_logic; 
signal IS_left_reg_out: std_logic_vector(Datapath -1 downto 0); 
signal IS_right_reg_out: std_logic_vector(Datapath -1 downto 0);

-- KEY SCHEDULE, KEY REG 

--KEY INPUT MUX
signal KEY_MUX_OUT: std_logic_vector(Datapath -1 downto 0);
signal key_schedule_out:  std_logic_vector(Datapath -1 downto 0);

--KEY REG(s) 
signal KEY_REG_CE: std_logic;

signal KEY_REG_left_reg_out: std_logic_vector(Datapath -1 downto 0); 
signal KEY_REG_right_reg_out: std_logic_vector(Datapath -1 downto 0);

--signal ki3_KEY_REG_OUT: std_logic_vector(Datapath -1 downto 0);

--signal ki2_KEY_REG_OUT: std_logic_vector(Datapath -1 downto 0);

--signal ki0_KEY_REG_OUT: std_logic_vector(Datapath -1 downto 0);



--LFSR 
signal lfsr_ce:std_logic; 
signal lfsr_out: std_logic_vector(0 downto 0); 
signal lfsr_rst:std_logic; 
signal lfsr_parallel_out: std_logic_vector(4 downto 0);

signal cnt_ce,cnt_rst:std_logic;  
signal cnt_out: std_logic_vector(1 downto 0); 

begin

--input mux 

INST_INMUX: MUX 
generic map (   datapath => Datapath
            ) 
port map (  l_in => Plaintext_in, 
            r_in => rnd_function_out, 
            sel => sel_IN, 
            mux_out => MUX_IN_out
            ); 
            
          
INST_IS_REG: parallel_tapped_shift_reg 
            generic map(    width => Datapath,
                            length => 2
                            )         
            port map (          
                        CLK => clk,
                        D => MUX_in_out, -- input of left portion is dictated by the input mux 
                        CE => IS_ce, 
                        left_out => IS_left_reg_out, 
                        right_out => IS_right_reg_out                 
                        ); 




INST_RND_FUNCTION: Rnd_function_parallel       
 generic map ( datapath => Datapath 
            ) 
 port map (  
             left_in => IS_left_reg_out,  
             right_in =>IS_right_reg_out , 
             Ki_in => KEY_REG_right_reg_out,         --controllare
             rnd_out => rnd_function_out 
             ); 
             
             
-----------------------------------------------------------------------------------------------------------------
 -- KEY REG AND KEY SCHEDULE
 -----------------------------------------------------------------------------------------------------------------                 
 -- LEFT PORTION OF THE KEY REG, no taps 
              
INST_KEY_MUX_IN: MUX      
    generic map ( datapath => Datapath)      
     port map ( 
                  l_in => key_in, 
                  r_in => key_schedule_out, 
                  sel => SEL_IN, 
                  mux_out => KEY_MUX_OUT     
             );            
             
             
             
INST_KEY_SHIFT_REG: parallel_tapped_shift_reg     
                                                        
 generic map(    width => Datapath,
                            length => 2
                            )         
            port map (          
                        CLK => clk,
                        D => KEY_MUX_OUT , -- input of left portion is dictated by the input mux 
                        CE => KEY_REG_ce, 
                        left_out => KEY_REG_left_reg_out, 
                        right_out => KEY_REG_right_reg_out                 
                        );     
 
 
 
--INST_Ki1_and_Ki2: c_shift_ram_0  
   
--   port map ( 
--      D =>ki3_KEY_REG_OUT, 
--      CLK => clk,
--      CE => KEY_REG_CE,
--      Q => ki2_KEY_REG_OUT 
-- ); 

--INST_Ki2_Ki1: normal_shift_reg      
--           generic map ( width => Datapath, 
--                        length => 2
--                      )                                                                               
--          port map ( 
--                       clk=>clk,
--                       D=>ki3_KEY_REG_OUT, 
--                       CE=>KEY_REG_CE, 
--                       Q=> ki2_KEY_REG_OUT                  
--                    );   
                    
--INST_Ki1: normal_shift_reg      
--                               generic map ( width => Datapath, 
--                                            length => 1
--                                          )                                                                               
--                              port map ( 
--                                           clk=>clk,
--                                           D=>ki2_KEY_REG_OUT, 
--                                           CE=>KEY_REG_CE, 
--                                           Q=> ki1_KEY_REG_OUT                  
--                                        );   
                                        
                                        
--INST_Ki0: reg      
--                         generic map ( width => Datapath) 
                                        
                                                                                                                                         
--             port map ( 
--                           clk=>clk,
--                            D=>ki2_KEY_REG_OUT, 
--                            CE=>KEY_REG_CE, 
--                            Q=> ki0_KEY_REG_OUT                  
                            
--                     );                                           
                     
                     
INST_KEY_SCHEDULE_FUNCTION: key_schedule_function_parallel                               
                     generic map ( datapath => Datapath
                                 )                           
                     port map (                           
                                 left_in => KEY_REG_left_reg_out ,  
                                 --ki_in => ki0_KEY_REG_OUT,
                                 right_in => KEY_REG_right_reg_out , 
                                 z_in => lfsr_out, 
                                 rnd_out => key_schedule_out                          
                                 );                        
                                 
                              
INST_bit2_CNT: cnt                                       
                generic map ( size => 2)                           
                                           
              port map ( 
                                     ce => cnt_ce, 
                                     rst => cnt_rst, 
                                     clk => clk, 
                                     cnt_out => cnt_out 
                                           
            );                             
                             
                                 
INST_LFSR: lfsr              -- includes T sequence shift register                                             

port map (                                              
            lfsr_out => lfsr_out, 
            clk => clk,                          
            ce => lfsr_ce,
            rst => lfsr_rst,
            lfsr_parallel_out => lfsr_parallel_out                                                                              
            ); 
                                                           
                                                           
 -- CIPHER FSM 
STATE_MACHINE_MAIN: process(clk,data_ready)  
            begin 
             IF rising_edge(CLK) then        
                 IF (data_ready = '1') then              
                    current_state <= LOADING; -- keeploading                    
                  ELSE        
                    current_state <= nx_state;                            
                end if;          
             end if;    
            end process;  
             
            
            STATE_MACHINE_BODY : PROCESS(current_state,start,lfsr_parallel_out,IS_right_reg_out,cnt_out) --cnt_out 
            begin  
               case current_state is     
                  when loading  =>        
                  -- set outputs 
                   BUSY <= '1' ; 
                   Ciphertext_out <= (others => '0');        
                   --lfsr 
                   lfsr_rst <= '0';          
                   lfsr_ce <= '1';                   
                   
                   cnt_ce <= '1'; 
                   cnt_rst <= '0'; 
                   --INPUT MUX 
                   --loading value from Input pin
                   SEL_IN <= '0'; --loading                                     
                           
                -- WITH LFSR           
                
--                   if lfsr_parallel_out = b"10011" then -- key has been loaded                
--                       IS_CE <= '0'; 
--                       KEY_REG_CE <= '0'; 
--                       nx_state <= idle;                         
--                   else          
--                       nx_state <= loading ; 
--                       IS_CE <= '1'; 
--                       KEY_REG_CE <= '1';                      
--                   end if ; 

--WITH CNT 
                   if cnt_out = b"10" then -- key has been loaded                
                       IS_CE <= '0'; 
                       KEY_REG_CE <= '0'; 
                       nx_state <= idle;                         
                   else          
                       nx_state <= loading ; 
                       IS_CE <= '1'; 
                       KEY_REG_CE <= '1';                      
                   end if ; 
                       
                   when idle =>         
                   -- set outputs 
                   BUSY <= '0' ;
                   
                 
                   Ciphertext_out <= (others => '0')  ;                      
                    IS_CE <= '0'; 
                   
                    --lfsr 
                    lfsr_rst <= '1'; 
                    lfsr_ce <= '0';                                                        
                    
                    cnt_ce <= '0'; 
                    cnt_rst <= '1'; 
                    --INPUT MUX 
                    SEL_IN <= '0'; --loading                             
                    KEY_REG_CE <= '0'; --registers not enabled         
                                     
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
                       
                       cnt_rst <= '0'; 
                       --INPUT MUX 
                       SEL_IN <= '1';                   
                       --MUX driving for rnd function                                                              
                      -- IS_CE <= '1';   
                       KEY_REG_CE <= '1';
                       --state transition                            
                       if lfsr_parallel_out = b"11001"   then                           
                       
                      if cnt_out = b"10" then                        
                      
                      IS_CE <= '0';
                                                  nx_state <= end_encrypt;          
                                              else
                                              IS_CE <= '1';
                                                  nx_state <= processing;                                                            
                                              end if;   
                                              
                                             cnt_ce <= '1'; 
                                              
                                             else 
                                              IS_CE <= '1';
                                             cnt_ce <= '0'; 
                                               nx_state <= processing; 
                                             end if;   
                       
                       

                       
                   when end_encrypt =>
                   
                    cnt_ce <= '0'; 
                    cnt_rst <= '1'; 
                   
                   --set output 
                   BUSY <= '0' ;   
                   Ciphertext_out <=  IS_right_reg_out  ;
                    --INPUT MUX 
                   SEL_IN <= '0'; --loading
                   IS_CE <= '1';                                      
                   KEY_REG_CE <= '0';     
                   --lfsr
                   lfsr_rst <= '1'; 
                   lfsr_ce <= '0'; 
                   --state transition               
                  -- if lfsr_parallel_out = b"01011" then               
                  --  nx_state <= idle;   
                    --else
                    nx_state <= end_encrypt;
                  -- end if;
                             
              end case; 
                  
           end process;        
           
           
 end behavioral;         