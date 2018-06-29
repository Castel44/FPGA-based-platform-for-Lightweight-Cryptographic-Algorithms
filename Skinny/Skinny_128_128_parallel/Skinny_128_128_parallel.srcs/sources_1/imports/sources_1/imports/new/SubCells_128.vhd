LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_std.ALL;
USE IEEE.NUMERIC_BIT;

ENTITY SubCells_128 IS

	PORT (
		SubCells_IN : IN std_logic_vector (127 DOWNTO 0);
		SubCells_OUT : OUT std_logic_vector (127 DOWNTO 0)
	);

END SubCells_128;

ARCHITECTURE Behavioural OF SubCells_128 IS

	COMPONENT SBOX_8bit

		PORT (
			SBOX_byte_in : IN std_logic_vector(7 DOWNTO 0);
			SBOX_byte_out : OUT std_logic_vector(7 DOWNTO 0)

		);
	END COMPONENT;

BEGIN

	subcells_gen : FOR i IN 0 TO 15 GENERATE

	BEGIN

		subcells : SBOX_8bit PORT MAP(

			SBOX_byte_in => SubCells_IN(((i + 1) * 8) - 1 DOWNTO i * 8),
			SBOX_byte_out => SubCells_OUT(((i + 1) * 8) - 1 DOWNTO i * 8)

		);
	END GENERATE;

END Behavioural;