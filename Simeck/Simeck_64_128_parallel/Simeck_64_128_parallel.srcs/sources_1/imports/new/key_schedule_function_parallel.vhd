LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY key_schedule_function_parallel IS
	GENERIC (
		datapath : INTEGER

	);

	PORT (

		left_in, right_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
		rnd_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0);
		z_in : std_logic_vector(0 DOWNTO 0)
	);
END key_schedule_function_parallel;

ARCHITECTURE Behavioral OF key_schedule_FUNCTION_parallel IS

	CONSTANT c : std_logic_vector(31 DOWNTO 0) := X"FFFFFFFC";

BEGIN

	rnd_out <= (left_in AND (left_in(26 DOWNTO 0) & left_in(31 DOWNTO 27))) XOR right_in XOR (left_in(30 DOWNTO 0) & left_in(31)) XOR (c(31 DOWNTO 1) & (c(0) XOR z_in(0)));

END Behavioral;