LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY RND_FUNCTION_parallel IS
	GENERIC (
		datapath : INTEGER := 16

	);

	PORT (

		left_in, right_in, Ki_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
		rnd_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0)
	);
END RND_FUNCTION_parallel;

ARCHITECTURE Behavioral OF RND_FUNCTION_parallel IS

BEGIN

	rnd_out <= ((left_in(62 DOWNTO 0) & left_in(63)) AND (left_in(55 DOWNTO 0) & left_in(63 DOWNTO 56))) XOR right_in XOR (left_in(61 DOWNTO 0) & left_in(63 DOWNTO 62)) XOR Ki_in;
END Behavioral;