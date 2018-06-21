library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SubCells is         

Port (  SubCells_IN: in std_logic_vector (7 downto 0);         
        SubCells_OUT: out std_logic_vector (7 downto 0)); 

end SubCells;

architecture Behavioural of SubCells is 

begin 

process (SubCells_IN) 

variable x: std_logic_vector (7 downto 0) := (others => '0') ;  


begin 

x := SubCells_IN; 

       x := x(7 downto 5) &  ( x(4) xor ( not ( x(7) or x(6) ) ) ) & x(3 downto 1) & ( x(0) xor ( not ( x(3) or x(2) ) ) ) ; 
    x := x(2) & x(1) & x(7) & x(6) & x(4) & x(0) & x(3) & x(5) ;  
    
	x := x(7 downto 5) &  ( x(4) xor ( not ( x(7) or x(6) ) ) ) & x(3 downto 1) & ( x(0) xor ( not ( x(3) or x(2) ) ) ) ; 
    x := x(2) & x(1) & x(7) & x(6) & x(4) & x(0) & x(3) & x(5) ;  
    
	x := x(7 downto 5) &  ( x(4) xor ( not ( x(7) or x(6) ) ) ) & x(3 downto 1) & ( x(0) xor ( not ( x(3) or x(2) ) ) ) ; 
    x := x(2) & x(1) & x(7) & x(6) & x(4) & x(0) & x(3) & x(5) ;  
    
	x := x(7 downto 5) &  ( x(4) xor ( not ( x(7) or x(6) ) ) ) & x(3 downto 1) & ( x(0) xor ( not ( x(3) or x(2) ) ) ) ; 
    x := x(7 downto 3) & x(1) & x(2) & x(0) ;  
        
SubCells_OUT <= x ;        

end process; 
	
	
end Behavioural; 


