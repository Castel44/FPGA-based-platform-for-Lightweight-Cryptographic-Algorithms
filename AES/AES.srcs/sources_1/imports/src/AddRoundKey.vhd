library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AddRoundKey is
Port ( 
    mixcol_in: in std_logic_vector(127 downto 0); 
    output: out std_logic_vector(127 downto 0); 
    wkey_in: in std_logic_vector(127 downto 0)   
);
end AddRoundKey;


architecture Behavioral of AddRoundKey is

begin

output <= mixcol_in xor wkey_in; 

end Behavioral;
