library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_std.all;
use IEEE.NUMERIC_BIT ;

entity SubCells is         

Port (  SubCells_IN: in std_logic_vector (3 downto 0);         
        SubCells_OUT: out std_logic_vector (3 downto 0)); 

end SubCells;

architecture Behavioural of SubCells is 

begin 

process (SubCells_IN) 

variable x: std_logic_vector (3 downto 0) := (others => '0') ;  


begin 

x := SubCells_IN; 

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
