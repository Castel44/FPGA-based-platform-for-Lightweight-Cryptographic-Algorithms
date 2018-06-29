LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY key_schedule_FUNCTION_parallel IS
	GENERIC (
		datapath : INTEGER

	);

	PORT (

		left_in, right_in, ki_in : IN std_logic_vector(Datapath - 1 DOWNTO 0);
		rnd_out : OUT std_logic_vector(Datapath - 1 DOWNTO 0);
		z_in : std_logic_vector(0 DOWNTO 0)
	);
END key_schedule_FUNCTION_parallel;

ARCHITECTURE Behavioral OF key_schedule_FUNCTION_parallel IS

	CONSTANT c : std_logic_vector(23 DOWNTO 0) := X"FFFFFC";

BEGIN

	PROCESS (left_in, right_in, z_in, ki_in)

		VARIABLE x : std_logic_vector(23 DOWNTO 0);
	BEGIN
		x := ((left_in(2 DOWNTO 0) & left_in(23 DOWNTO 3)) XOR right_in);
		x := (x(0) & x(23 DOWNTO 1)) XOR (x XOR ki_in);
		x := x XOR (c(23 DOWNTO 1) & (c(0) XOR z_in(0)));

		rnd_out <= x;

	END PROCESS;
END Behavioral;