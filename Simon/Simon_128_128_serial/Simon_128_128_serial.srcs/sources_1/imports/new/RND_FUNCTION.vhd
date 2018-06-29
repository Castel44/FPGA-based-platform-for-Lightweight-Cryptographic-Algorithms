LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY RND_FUNCTION IS

	GENERIC (datapath : INTEGER);

	PORT (
		is0_in, MUX1_in, MUX2_in, MUX8_in, ki_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
		rnd_function_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)

	);

END RND_FUNCTION;

ARCHITECTURE Behavioral OF RND_FUNCTION IS

BEGIN
	rnd_function_out <= (MUX1_in AND MUX8_in) XOR (MUX2_in XOR (ki_in XOR is0_in));
	
END Behavioral;