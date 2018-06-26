LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY reg IS

	PORT (
		clk, ce : std_logic;
		D : IN std_logic_vector(127 DOWNTO 0);
		Q : OUT std_logic_vector(127 DOWNTO 0)
	);
END reg;

ARCHITECTURE Behavioral OF reg IS

BEGIN

	PROCESS (D, clk, ce)

	BEGIN
		IF rising_edge(clk) THEN
			IF ce = '1' THEN
				Q <= D;
			END IF;
		END IF;
	END PROCESS;

END Behavioral;