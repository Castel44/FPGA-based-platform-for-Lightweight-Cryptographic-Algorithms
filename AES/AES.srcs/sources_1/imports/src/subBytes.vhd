LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY subBytes IS
	PORT (
		input : IN std_logic_vector(127 DOWNTO 0);
		output : OUT std_logic_vector(127 DOWNTO 0)
	);
END subBytes;
ARCHITECTURE behav OF subBytes IS

	COMPONENT sbox
		PORT (
			input : IN std_logic_vector(7 DOWNTO 0);
			output : OUT std_logic_vector(7 DOWNTO 0)
		);
	END COMPONENT;

BEGIN

	subbytes_gen : FOR i IN 0 TO 15 GENERATE
	BEGIN
		inst_subbytes : sbox PORT MAP(
			input => input(((i + 1) * 8) - 1 DOWNTO i * 8),
			output => output(((i + 1) * 8) - 1 DOWNTO i * 8)
		);

	END GENERATE;

END behav;