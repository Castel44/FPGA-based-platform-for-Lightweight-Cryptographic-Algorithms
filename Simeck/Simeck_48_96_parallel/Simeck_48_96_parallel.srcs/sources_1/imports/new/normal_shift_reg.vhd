LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY normal_shift_reg IS

	GENERIC (
		width : INTEGER := 24;
		length : INTEGER := 2
	);

	PORT (
		D : IN STD_LOGIC_VECTOR(width - 1 DOWNTO 0);
		CE, CLK : IN STD_LOGIC;

		Q : OUT STD_LOGIC_VECTOR(width - 1 DOWNTO 0) := (OTHERS => '0')
	);
END normal_shift_reg;

ARCHITECTURE behavioral OF normal_shift_reg IS

	SIGNAL temp_reg : std_logic_vector((width * length) - 1 DOWNTO 0) := (OTHERS => '0');

BEGIN
	PROCESS (CLK, ce, D)
	BEGIN

		IF rising_edge(CLK) THEN
			IF (CE = '1') THEN
				temp_reg <= temp_reg((width * length) - width - 1 DOWNTO 0) & D;
			ELSE
				temp_reg <= temp_reg;
			END IF;
		END IF;
	END PROCESS;

	Q <= temp_reg(47 DOWNTO 24);

END behavioral;