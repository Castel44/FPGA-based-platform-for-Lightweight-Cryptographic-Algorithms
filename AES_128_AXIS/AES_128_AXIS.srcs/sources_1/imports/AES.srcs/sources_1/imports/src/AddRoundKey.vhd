LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY AddRoundKey IS
	PORT (
		mixcol_in : IN std_logic_vector(127 DOWNTO 0);
		output : OUT std_logic_vector(127 DOWNTO 0);
		wkey_in : IN std_logic_vector(127 DOWNTO 0)
	);
END AddRoundKey;
ARCHITECTURE Behavioral OF AddRoundKey IS

BEGIN

	output <= mixcol_in XOR wkey_in;

END Behavioral;