LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Shiftrows IS
	PORT (
		input : IN std_logic_vector(127 DOWNTO 0);
		output : OUT std_logic_vector(127 DOWNTO 0)
	);
END Shiftrows;

ARCHITECTURE Behavioral OF Shiftrows IS

BEGIN

	output <= input(127 DOWNTO 96) & (input(87 DOWNTO 64) & input(95 DOWNTO 88)) & (input(47 DOWNTO 32) & input(63 DOWNTO 48)) & (input(7 DOWNTO 0) & input(31 DOWNTO 8));

END Behavioral;