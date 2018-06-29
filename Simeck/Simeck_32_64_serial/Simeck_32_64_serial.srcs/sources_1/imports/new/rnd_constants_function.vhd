LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY rnd_constants_MUX IS

	PORT (
		element_cnt_in : IN std_logic_vector(3 DOWNTO 0);
		lfsr_in : IN std_logic_vector(0 DOWNTO 0);
		Const_out : OUT std_logic_vector(0 DOWNTO 0)

	);

END rnd_constants_MUX;
ARCHITECTURE Behavioral OF rnd_constants_MUX IS
BEGIN
	WITH element_cnt_in SELECT Const_out <= lfsr_in XOR b"0" WHEN b"0000",
														b"0" WHEN b"0001",
														b"1" WHEN OTHERS;

END Behavioral;