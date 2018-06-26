LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_std.ALL;
USE IEEE.NUMERIC_BIT;

ENTITY SubCells IS

	PORT (
		SubCells_IN : IN std_logic_vector (3 DOWNTO 0);
		SubCells_OUT : OUT std_logic_vector (3 DOWNTO 0));

END SubCells;

ARCHITECTURE Behavioural OF SubCells IS

BEGIN

	PROCESS (SubCells_IN)

		VARIABLE x : std_logic_vector (3 DOWNTO 0) := (OTHERS => '0');
	BEGIN

		x := SubCells_IN;

		x(0) := x(0) XOR (NOT(x(3) OR x(2)));
		x := x(2 DOWNTO 0) & x(3);
		x(0) := x(0) XOR (NOT(x(3) OR x(2)));
		x := x(2 DOWNTO 0) & x(3);
		x(0) := x(0) XOR (NOT(x(3) OR x(2)));
		x := x(2 DOWNTO 0) & x(3);
		x(0) := x(0) XOR (NOT(x(3) OR x(2)));

		SubCells_OUT <= x;

	END PROCESS;
END Behavioural;