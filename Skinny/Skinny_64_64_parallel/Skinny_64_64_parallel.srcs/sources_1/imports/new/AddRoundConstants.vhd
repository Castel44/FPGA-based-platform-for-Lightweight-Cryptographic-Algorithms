LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY AddRoundConstants IS
	PORT (

		lfsr_in : IN std_logic_vector (5 DOWNTO 0);
		input : IN std_logic_vector (63 DOWNTO 0);

		output : OUT std_logic_vector (63 DOWNTO 0)
	);

END AddRoundConstants;

ARCHITECTURE Behavioral OF AddRoundConstants IS
	CONSTANT c2 : std_logic_vector(3 DOWNTO 0) := "0010";

BEGIN

	-- xoring mo 
	output <= (input(63 DOWNTO 60) XOR (lfsr_in(3) & lfsr_in(2) & lfsr_in(1) & lfsr_in(0))) &
		input(59 DOWNTO 48) & (input(47 DOWNTO 44) XOR ('0' & '0' & lfsr_in(5) & lfsr_in(4))) &
		input(43 DOWNTO 32) & (input(31 DOWNTO 28) XOR c2) & input(27 DOWNTO 0);

END Behavioral;