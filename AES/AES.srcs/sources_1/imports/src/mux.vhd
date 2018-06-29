LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY MUX IS
	GENERIC (datapath : INTEGER := 1);

	PORT (
		l_in, r_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
		sel : IN std_logic;
		mux_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)
	);
END MUX;
ARCHITECTURE Behavioral OF MUX IS

BEGIN

	WITH sel SELECT
		mux_out <= l_in(127 DOWNTO 120) & l_in(95 DOWNTO 88) & l_in(63 DOWNTO 56) & l_in(31 DOWNTO 24)
		& l_in(119 DOWNTO 112) & l_in(87 DOWNTO 80) & l_in(55 DOWNTO 48) & l_in(23 DOWNTO 16)
		& l_in(111 DOWNTO 104) & l_in(79 DOWNTO 72) & l_in(47 DOWNTO 40) & l_in(15 DOWNTO 8)
		& l_in(103 DOWNTO 96) & l_in(71 DOWNTO 64) & l_in(39 DOWNTO 32) & l_in(7 DOWNTO 0) WHEN '0',

		r_in WHEN '1',

		l_in(127 DOWNTO 120) & l_in(95 DOWNTO 88) & l_in(63 DOWNTO 56) & l_in(31 DOWNTO 24)
		& l_in(119 DOWNTO 112) & l_in(87 DOWNTO 80) & l_in(55 DOWNTO 48) & l_in(23 DOWNTO 16)
		& l_in(111 DOWNTO 104) & l_in(79 DOWNTO 72) & l_in(47 DOWNTO 40) & l_in(15 DOWNTO 8)
		& l_in(103 DOWNTO 96) & l_in(71 DOWNTO 64) & l_in(39 DOWNTO 32) & l_in(7 DOWNTO 0) WHEN OTHERS;

END Behavioral;