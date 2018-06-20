library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Shiftrows is
Port ( 
    input: in std_logic_vector(127 downto 0); 
    output: out std_logic_vector(127 downto 0)
); 
end Shiftrows;

architecture Behavioral of Shiftrows is

begin

output <= input(127 downto 96) & ( input(87 downto 64) & input(95 downto 88) ) & ( input(47 downto 32) & input(63 downto 48) ) & ( input(7 downto 0) & input(31 downto 8) ) ;  

end Behavioral;
