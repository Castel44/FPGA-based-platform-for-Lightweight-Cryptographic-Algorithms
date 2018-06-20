library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SubCells_nibble is         

Port (  SubCells_IN: in std_logic_vector (3 downto 0);         
        SubCells_OUT: out std_logic_vector (3 downto 0)); 

end SubCells_nibble;

architecture Behavioural of SubCells_nibble is 



begin 


process (SubCells_IN) 

variable x: std_logic_vector (3 downto 0) := (others => '0') ;  


begin 


 x:= SubCells_IN; 

        x(0) := x(0) XOR (NOT(x(3) OR x(2))); 
        x := x(2 downto 0) & x(3);
        x(0) := x(0) XOR (NOT(x(3) OR x(2))); 
        x := x(2 downto 0) & x(3);
        x(0) := x(0) XOR (NOT(x(3) OR x(2))); 
        x := x(2 downto 0) & x(3);
        x(0) := x(0) XOR (NOT(x(3) OR x(2))); 
        
     
        SubCells_OUT <= x ;        

end process; 
	
	
end Behavioural; 


