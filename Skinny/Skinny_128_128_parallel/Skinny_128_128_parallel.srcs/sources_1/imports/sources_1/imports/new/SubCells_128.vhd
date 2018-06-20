library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_std.all;
use IEEE.NUMERIC_BIT ;

entity SubCells_128 is         

Port (  SubCells_IN: in std_logic_vector (127 downto 0);         
        SubCells_OUT: out std_logic_vector (127 downto 0)
        ); 

end SubCells_128;

architecture Behavioural of SubCells_128 is 

component SBOX_8bit 

port( 
    SBOX_byte_in: in std_logic_vector(7 downto 0); 
    SBOX_byte_out: out std_logic_vector(7 downto 0)
    
 ); 
end component; 

begin 

subcells_gen: for i in 0 to 15 generate 
 
 begin 
 
 subcells: SBOX_8bit port map ( 
 
 SBOX_byte_in => SubCells_IN(((i+1)*8)-1 downto i*8) ,
 SBOX_byte_out => SubCells_OUT(((i+1)*8)-1 downto i*8) 
 
 ); 


end generate ;
	
end Behavioural; 

