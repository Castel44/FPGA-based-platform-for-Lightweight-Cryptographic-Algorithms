LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY reg IS
	GENERIC (length : INTEGER := 16);

	PORT (
		clk, ce, rst : std_logic;
		D : IN std_logic_vector(length - 1 DOWNTO 0);
		Q : OUT std_logic_vector(length - 1 DOWNTO 0) := (OTHERS => '0')
	);
END reg;
ARCHITECTURE Behavioral OF reg IS

BEGIN

	PROCESS (D, clk, ce)
	BEGIN
		IF rising_edge(clk) THEN
			IF rst = '1' THEN
				Q <= (OTHERS => '0');
			ELSIF ce = '1' THEN
				Q <= D;
			END IF;
		END IF;
	END PROCESS;

END Behavioral;