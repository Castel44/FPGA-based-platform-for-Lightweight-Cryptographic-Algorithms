LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_std.ALL;
USE IEEE.NUMERIC_BIT;

ENTITY SubCells_64 IS

	PORT (
		SubCells_IN : IN std_logic_vector (63 DOWNTO 0);
		SubCells_OUT : OUT std_logic_vector (63 DOWNTO 0)
	);

END SubCells_64;

ARCHITECTURE Behavioural OF SubCells_64 IS

	COMPONENT Subcells_nibble

		PORT (
			SubCells_in : IN std_logic_vector(3 DOWNTO 0);
			SubCells_out : OUT std_logic_vector(3 DOWNTO 0)

		);
	END COMPONENT;

BEGIN

	subcells_gen : FOR i IN 0 TO 15 GENERATE

	BEGIN

		subcells : subcells_nibble PORT MAP(

			subcells_in => SubCells_IN(((i + 1) * 4) - 1 DOWNTO i * 4),
			subcells_out => SubCells_OUT(((i + 1) * 4) - 1 DOWNTO i * 4)

		);

	END GENERATE;

END Behavioural;