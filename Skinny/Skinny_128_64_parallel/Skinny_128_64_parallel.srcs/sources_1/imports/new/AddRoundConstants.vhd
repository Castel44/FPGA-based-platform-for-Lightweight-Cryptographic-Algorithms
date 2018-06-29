library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AddRoundConstants is
    Port (       
       
       lfsr_in: in std_logic_vector (5 downto 0); 
       input : IN std_logic_vector (63 downto 0);       
            
       output : OUT std_logic_vector (63 downto 0)        
       );    
       
end AddRoundConstants;

architecture Behavioral of AddRoundConstants is




constant c2: std_logic_vector(3 downto 0) := "0010" ; 

begin

-- xoring mo 
output <= ( input(63 downto 60) xor ( lfsr_in(3) & lfsr_in(2) & lfsr_in(1) & lfsr_in(0) ) ) & 
          input(59 downto 48) & ( input(47 downto 44) xor ( '0' & '0' & lfsr_in(5) & lfsr_in(4)) ) &
          input(43 downto 32 ) & (input(31 downto 28) xor c2) & input(27 downto 0);  
          
end Behavioral;
