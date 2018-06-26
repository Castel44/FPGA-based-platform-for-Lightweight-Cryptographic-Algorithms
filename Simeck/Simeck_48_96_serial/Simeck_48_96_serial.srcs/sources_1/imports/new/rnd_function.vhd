library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity rnd_function is
  
  generic ( datapath:integer := 1 ); 

   Port ( 
   
         a0_in,MUX1_in,b0_in,MUX5_in,Ki_in: in std_logic_vector(datapath-1 downto 0); 
         rnd_out: out std_logic_vector(datapath-1 downto 0) 
   );
   
end rnd_function;

architecture Behavioral of rnd_function is



begin
 
 
 rnd_out <= ((MUX5_in and b0_in) xor a0_in) xor  MUX1_in xor  Ki_in ; 


end Behavioral;
