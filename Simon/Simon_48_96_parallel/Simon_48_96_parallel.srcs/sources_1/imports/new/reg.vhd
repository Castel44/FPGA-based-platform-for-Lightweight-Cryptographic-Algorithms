LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY reg IS

	GENERIC (width : INTEGER := 16);

	PORT (

		clk, ce : std_logic;
		D : IN std_logic_vector(width - 1 DOWNTO 0);
		Q : OUT std_logic_vector(width - 1 DOWNTO 0)
	);
END reg;

ARCHITECTURE Behavioral OF reg IS

BEGIN

	PROCESS (D, clk, ce)

	BEGIN

		IF ce = '1' THEN
			IF rising_edge(clk) THEN

				Q <= D;
			END IF;
		END IF;

	END PROCESS;

END Behavioral;