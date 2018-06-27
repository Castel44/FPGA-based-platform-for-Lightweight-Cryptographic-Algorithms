LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY key_schedule_FUNCTION_parallel IS
	GENERIC (
		datapath : INTEGER := 24

	);

	PORT (
		left_in, right_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
		rnd_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0);
		z_in : std_logic_vector(0 DOWNTO 0)
	);
	
END key_schedule_FUNCTION_parallel;

ARCHITECTURE Behavioral OF key_schedule_FUNCTION_parallel IS

	CONSTANT c : std_logic_vector(Datapath - 1 DOWNTO 0) := X"FFFFFC";

BEGIN
	rnd_out <= (left_in AND (left_in(18 DOWNTO 0) & left_in(23 DOWNTO 19))) XOR right_in XOR (left_in(22 DOWNTO 0) & left_in(23)) XOR (c(23 DOWNTO 1) & (c(0) XOR z_in(0)));

END Behavioral;