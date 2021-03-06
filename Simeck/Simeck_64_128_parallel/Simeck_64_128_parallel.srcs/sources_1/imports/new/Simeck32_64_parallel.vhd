library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

--64 128 smallest
entity Simeck_64_128_parallel is
 Generic ( Datapath : integer range 0 to 32:= 32;
           Round_limit : integer range 0 to 44:= 44);
 Port ( 
    clk,data_ready,start: in std_logic; 
    key_in: in std_logic_vector(Datapath - 1 downto 0);  -- met� caricata
    plaintext_in: in std_logic_vector(Datapath - 1 downto 0);
    busy: out std_logic:= '0';   
    ciphertext_out: out std_logic_vector(Datapath - 1 downto 0):= (others => '0')
    );      
end Simeck_64_128_parallel;

architecture Behavioral of Simeck_64_128_parallel is

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
generic( width: integer:= 32 ; -- shift_reg width 
        length: integer:= 2  -- shift_reg length 
        );          
port (          
        clk: in std_logic;
        D : in std_logic_vector(width-1 downto 0 ); 
        Q : out std_logic_vector(width-1 downto 0);
        CE : in std_logic           
        );
end component; 
 
 
component parallel_tapped_shift_reg   
generic( width: integer:= 32 ; -- shift_reg width 
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
generic ( datapath: integer:= 32         
        );            
port (                    
        left_in,right_in,Ki_in: in std_logic_vector(Datapath - 1 downto 0); 
        rnd_out: out std_logic_vector(Datapath - 1 downto 0)                     
        );   
end component;  


component Key_schedule_function_parallel 
generic ( datapath: integer:= 32         
        );            
port (                    
        left_in,right_in: in std_logic_vector(Datapath - 1 downto 0); 
        z_in: std_logic_vector( 0 downto 0); 
        rnd_out: out std_logic_vector(Datapath - 1 downto 0)                     
        );   
end component;  


component lfsr         
port (
       lfsr_out: out std_logic_vector(0 downto 0); 
       clk : in std_logic; 
        ce: in std_logic;
       rst:in std_logic; 
       lfsr_parallel_out :out std_logic_vector(5 downto 0)
 );    
 end component;  
 
 
-- component CNT  
--    generic( size:integer            
--           );            
--    port (       
--           cnt_out: out std_logic_vector(size-1 downto 0); 
--           rst: in std_logic; 
--           clk: in std_logic ; 
--           EN: in std_logic
--     );      
--  end component; 
 
  
 
 --INTERNAL SIGNALS DECLARATION  
 
 -- CIPHER FSM SIGNALS
 ---------------------------- 
type state is (LOADING,IDLE,PROCESSING,END_ENCRYPT); 
signal nx_state : state ; -- cipher possible states
signal current_state : state := idle ; 
 ------------------------------------------ 

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

-- KEY REG 
signal KEY_REG_CE: std_logic;
signal LEFT_KEY_REG_OUT: std_logic_vector(Datapath -1 downto 0);
signal KEY_REG_b_out: std_logic_vector(Datapath -1 downto 0);
signal KEY_REG_a_out: std_logic_vector(Datapath -1 downto 0);


--LFSR 
signal lfsr_ce:std_logic; 
signal lfsr_out: std_logic_vector(0 downto 0); 
signal lfsr_rst:std_logic; 
signal lfsr_parallel_out: std_logic_vector(5 downto 0);

----CNT counts occurrences of 1e constant from lfsr 
--signal cnt_out: std_logic_vector(5 downto 0):= (others => '0'); 
--signal cnt_rst, cnt_inc: std_logic; 


begin

-- input MUX 
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
             Ki_in => KEY_REG_a_out, 
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
 
                         
INST_LEFT_KEY_REG: normal_shift_reg                          
generic map ( width => Datapath, 
              length => 2
            )                                                                               
port map ( 
             clk=>clk,
             D=>KEY_MUX_OUT, 
             CE=>KEY_REG_CE, 
             Q=> LEFT_KEY_REG_OUT                  
          );         
 
 
INST_RIGHT_KEY_REG: parallel_tapped_shift_reg    
generic map (    width => Datapath, 
                length => 2
             )            
port map ( 
            CLK=>clk,
            D=>LEFT_KEY_REG_OUT, -- input of left portion is dictated by the input mux 
            CE=> KEY_REG_CE, 
            right_out  => KEY_REG_a_out, 
            left_out => KEY_REG_b_out 
             );      
              
                          
INST_KEY_SCHEDULE_FUNCTION: key_schedule_function_parallel                               
generic map ( datapath => Datapath
            )                           
port map (                           
            left_in => KEY_REG_b_out ,  
            right_in =>KEY_REG_a_out , 
            z_in => lfsr_out, 
            rnd_out => key_schedule_out                          
            );                        
                 
                          
INST_SHORT_LFSR: lfsr                                                                              
port map (                                              
            lfsr_out => lfsr_out, 
            clk => clk,                          
            ce => lfsr_ce,
            rst => lfsr_rst,
            lfsr_parallel_out => lfsr_parallel_out                                                                              
            ); 
                                       
                                       
--INST_ENCRYPTION_ENDED_CNT: CNT                                        
--generic map (   size => 6  
--              )     
--port map ( 
--           cnt_out => cnt_out ,     
--           rst => cnt_rst,                 
--           clk => clk,
--           en =>  cnt_inc           
--           );                                    


 
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
  
 
 STATE_MACHINE_BODY : PROCESS(current_state,start,lfsr_parallel_out,IS_right_reg_out) --cnt_out 
 begin  
    case current_state is     
       when loading  =>        
       -- set outputs 
        BUSY <= '1' ; 
        Ciphertext_out <= (others => '0');        
        --lfsr 
        lfsr_rst <= '0';          
        lfsr_ce <= '1';               
--       --cnt 
--       cnt_rst <= '0'; 
--       cnt_inc <= '1';                        
        --INPUT MUX 
        SEL_IN <= '0'; --loading                                     
       -- state transition         
        if lfsr_parallel_out = b"111100" then-- plaintext has been loaded keep loading the key         
            nx_state <= loading ; 
            IS_CE <= '0'; 
            KEY_REG_CE <= '1';         
        elsif lfsr_parallel_out = b"111000" then -- key has been loaded         
            IS_CE <= '0'; 
            KEY_REG_CE <= '1'; 
            nx_state <= loading;          
        elsif lfsr_parallel_out = b"110000" then -- key has been loaded                
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
         --lfsr 
         lfsr_rst <= '1'; 
         lfsr_ce <= '0';                          
--          --cnt 
--          cnt_rst <= '1'; 
--          cnt_inc <= '0';                                  
         --INPUT MUX 
         SEL_IN <= '0'; --loading                             
         KEY_REG_CE <= '0'; 
         Ciphertext_out <= (others => '0')  ;
         IS_CE <= '0'; 
                       
         --outputting ciphertext                   
--         if cnt_out = b"011111" then 
--            Ciphertext_out <= IS_right_reg_out  ;
--            IS_CE <= '1';  
--            cnt_rst <= '1';         
--          else           
--            Ciphertext_out <= (others => '0')  ;
--            IS_CE <= '0'; 
--            cnt_rst <= '0';          
--          end if;                     
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
--            --cnt     
--            cnt_inc <= '1'; 
--            cnt_rst <= '0';                                                           
            --INPUT MUX 
            SEL_IN <= '1';                   
            --MUX driving for rnd function                                                              
             IS_CE <= '1';   
            KEY_REG_CE <= '1';    
            
            if lfsr_parallel_out = b"101101" then
            nx_state <= end_encrypt;
            
            else
            nx_state <= processing;  
                               
            --state transition              
--            if lfsr_parallel_out = b"11111"  then -- continue processing               
--                cnt_inc <= '1';                  
--                if cnt_out = b"10" then               
--                    nx_state <= idle;              
--                else                       
--                    nx_state <= processing;                  
--                end if;                       
--            else               
--                cnt_inc <= '0';              
--                nx_state <= processing;                   
            end if;   
            
        when end_encrypt =>
        Ciphertext_out <= IS_right_reg_out  ;
        IS_CE <= '1';-- set outputs 
         --INPUT MUX 
        SEL_IN <= '0'; --loading                             
        KEY_REG_CE <= '0';     
        BUSY <= '0' ;     
        lfsr_rst <= '0'; 
        lfsr_ce <= '1';    
--        cnt_rst <= '0'; 
--        cnt_inc <= '1';  
        if lfsr_parallel_out = b"110111" then               
         nx_state <= idle;   
         else
         nx_state <= end_encrypt;
        end if;
          
        
       end case; 
       
end process;        
 
 end behavioral; 
 
 
 
        