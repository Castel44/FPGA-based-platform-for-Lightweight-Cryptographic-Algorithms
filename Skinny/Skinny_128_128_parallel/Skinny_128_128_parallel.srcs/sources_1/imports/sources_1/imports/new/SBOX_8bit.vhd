library IEEE;
use IEEE.Std_logic_1164.all;
   


entity SBOX_8bit is         

port (      
      SBOX_byte_in :in STD_LOGIC_VECTOR (7 downto 0) ;
      SBOX_byte_out :out STD_LOGIC_VECTOR (7 downto 0) 
	  );
	  
end SBOX_8bit;

architecture Behavioural of SBOX_8bit is 
begin

process(SBOX_byte_in)

variable x: std_logic_vector (7 downto 0);  -- initillize and declare variable

begin

x := SBOX_byte_in;
                      
	
	x := x(7 downto 5) &  ( x(4) xor ( not ( x(7) or x(6) ) ) ) & x(3 downto 1) & ( x(0) xor ( not ( x(3) or x(2) ) ) ) ; 
    x := x(2) & x(1) & x(7) & x(6) & x(4) & x(0) & x(3) & x(5) ;  
    
	x := x(7 downto 5) &  ( x(4) xor ( not ( x(7) or x(6) ) ) ) & x(3 downto 1) & ( x(0) xor ( not ( x(3) or x(2) ) ) ) ; 
    x := x(2) & x(1) & x(7) & x(6) & x(4) & x(0) & x(3) & x(5) ;  
    
	x := x(7 downto 5) &  ( x(4) xor ( not ( x(7) or x(6) ) ) ) & x(3 downto 1) & ( x(0) xor ( not ( x(3) or x(2) ) ) ) ; 
    x := x(2) & x(1) & x(7) & x(6) & x(4) & x(0) & x(3) & x(5) ;  
    
	x := x(7 downto 5) &  ( x(4) xor ( not ( x(7) or x(6) ) ) ) & x(3 downto 1) & ( x(0) xor ( not ( x(3) or x(2) ) ) ) ; 
    x := x(7 downto 3) & x(1) & x(2) & x(0) ;  
		
SBOX_byte_out <= x;
	
end process;


end Behavioural; 


