LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY MixColumns IS
	PORT (
		MixColumns_first_row_in : IN std_logic_vector(3 DOWNTO 0);
		MixColumns_second_row_in : IN std_logic_vector(3 DOWNTO 0);
		MixColumns_third_row_in : IN std_logic_vector(3 DOWNTO 0);
		MixColumns_fourth_row_in : IN std_logic_vector(3 DOWNTO 0);
		MixColumns_first_row_out : OUT std_logic_vector(3 DOWNTO 0);
		MixColumns_second_row_out : OUT std_logic_vector(3 DOWNTO 0);
		MixColumns_third_row_out : OUT std_logic_vector(3 DOWNTO 0);
		MixColumns_fourth_row_out : OUT std_logic_vector(3 DOWNTO 0)

	);
END MixColumns;

ARCHITECTURE Behavioral OF MixColumns IS

BEGIN
	MixColumns_first_row_out <= MixColumns_first_row_in XOR MixColumns_third_row_in XOR MixColumns_fourth_row_in;
	MixColumns_second_row_out <= MixColumns_first_row_in;
	MixColumns_third_row_out <= MixColumns_second_row_in XOR MixColumns_third_row_in;
	MixColumns_fourth_row_out <= MixColumns_first_row_in XOR MixColumns_third_row_in;

END Behavioral;