library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity lfsr is
 
 Port (   
       lfsr_out: out std_logic_vector(0 downto 0)  := (Others => '0'); 
       lfsr_parallel_out: out std_logic_vector(4 downto 0):= (Others => '0'); 
       ce : in std_logic; 
       clk,rst: std_logic       
 ); 
 
end lfsr;

architecture Behavioral of lfsr is


      
begin 


process(clk,rst,ce) 
    
variable lfsr_internal: std_logic_vector(4 downto 0) := (others=> '1' ) ; 
variable feedback: std_logic := '1' ; 


        
begin 
 if (rising_edge(clk)) then 
    if (rst='1') then 
        lfsr_internal := "11111";

          
       elsif ce = '1' then  
       
--           feedback := lfsr_internal(4);
--           lfsr_internal(0) := feedback;   
--           lfsr_internal(1) := lfsr_internal(0) xor feedback;
--           lfsr_internal(2) := lfsr_internal(1); 
--           lfsr_internal(3) := lfsr_internal(2) xor feedback;
--           lfsr_internal(4) := lfsr_internal(3) xor feedback;       
--       else
                                
        feedback:= lfsr_internal(4) xor lfsr_internal(2);                  
        lfsr_internal(4) := lfsr_internal(3);                            
        lfsr_internal(3) := lfsr_internal(2);                            
        lfsr_internal(2) := lfsr_internal(1);                            
        lfsr_internal(1) := lfsr_internal(0);                             
        lfsr_internal(0) := feedback;              
       else                                                                             
                             
       lfsr_internal := lfsr_internal;                            
     end if;      
    end if;                   
          
lfsr_out <= lfsr_internal(4 downto 4); 
lfsr_parallel_out <= lfsr_internal; 
end process;     
end Behavioral;

