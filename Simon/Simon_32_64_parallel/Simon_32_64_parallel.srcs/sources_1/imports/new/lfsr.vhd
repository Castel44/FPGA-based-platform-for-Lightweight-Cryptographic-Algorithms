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
    

variable feedback: std_logic:='0'; 

variable lfsr_internal: std_logic_vector(4 downto 0) := (others => '0') ; 
        
begin 

    if (rst='1') then 
        lfsr_internal := "10000";

    elsif (rising_edge(clk)) then          
       if ce = '1' then  
       
--X5 + X4 + X2 + X + 1                

        feedback:= lfsr_internal(2) xor lfsr_internal(4) ;
        lfsr_internal(3) := lfsr_internal(3) xor lfsr_internal(4); 
        
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