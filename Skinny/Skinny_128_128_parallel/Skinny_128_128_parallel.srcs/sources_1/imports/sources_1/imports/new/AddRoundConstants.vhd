library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AddRoundConstants is
    Port (              
       lfsr_in: in std_logic_vector (5 downto 0); 
       input : IN std_logic_vector (127 downto 0);                   
       output : OUT std_logic_vector (127 downto 0)        
       );    
       
end AddRoundConstants;

architecture Behavioral of AddRoundConstants is

constant c2: std_logic_vector(7 downto 0) := b"00000010" ; 

begin

-- xoring input with lfsr round constant
output <= ( input(127 downto 120) xor ( '0' & '0' & '0' & '0' & lfsr_in(3) & lfsr_in(2) & lfsr_in(1) & lfsr_in(0) ) ) & 
          input(119 downto 96) & ( input(95 downto 88) xor ( '0' & '0' & '0' & '0' & '0' & '0' & lfsr_in(5) & lfsr_in(4)) ) &
          input(87 downto 64 ) & (input(63 downto 56) xor c2) & input(55 downto 0);  
          
end Behavioral;
