 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity LFSR_TK2 is
  port(    
    lfsr_tk2_in: in std_logic_vector(3 downto 0);
      lfsr_tk2_out: out std_logic_vector (3 downto 0)
       );
end LFSR_TK2;

architecture Behavioral of LFSR_TK2 is

begin
process(lfsr_tk2_in) 
  
variable lfsr_internal : std_logic_vector (3 downto 0) := (others=>'0' ) ; 
variable feedback: std_logic := '0'; 
      
begin 

 lfsr_internal:= lfsr_tk2_in;
   
      feedback := lfsr_internal(3) xor lfsr_internal(2);                                                          
      lfsr_internal(3) := lfsr_internal(2);                            
      lfsr_internal(2) := lfsr_internal(1);                             
      lfsr_internal(1) := lfsr_internal(0);                             
      lfsr_internal(0) :=  feedback;                                                                                        
        
lfsr_tk2_out <= lfsr_internal; 

end process;     

end Behavioral;