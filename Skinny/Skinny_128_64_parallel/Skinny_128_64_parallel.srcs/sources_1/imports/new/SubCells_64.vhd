library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_std.all;
use IEEE.NUMERIC_BIT ;

entity SubCells_64 is         

Port (  SubCells_IN: in std_logic_vector (63 downto 0);         
        SubCells_OUT: out std_logic_vector (63 downto 0)
        ); 

end SubCells_64;

architecture Behavioural of SubCells_64 is 

component Subcells_nibble 

port( 
    SubCells_in: in std_logic_vector(3 downto 0); 
    SubCells_out: out std_logic_vector(3 downto 0)
    
 ); 
end component; 

begin 

subcells_gen: for i in 0 to 15 generate 
 
 begin 
 
 subcells: subcells_nibble port map ( 
 
 subcells_in => SubCells_IN(((i+1)*4)-1 downto i*4) ,
 subcells_out => SubCells_OUT(((i+1)*4)-1 downto i*4) 
 
 ); 



end generate ;
	
end Behavioural; 

