LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY tapped_shift_reg IS

	GENERIC (
		width : INTEGER := 1;
		length : INTEGER := 16
	);

	PORT (
		clk : IN std_logic;
		D : IN std_logic_vector(width - 1 DOWNTO 0);
		Q : OUT std_logic_vector(width - 1 DOWNTO 0);
		CE : IN std_logic;
		bn1_out : OUT std_logic_vector(width - 1 DOWNTO 0);
		bn5_out : OUT std_logic_vector(width - 1 DOWNTO 0)

	);
END tapped_shift_reg;

ARCHITECTURE Behavioral OF tapped_shift_reg IS

	SIGNAL temp_reg : std_logic_vector((width * length) - 1 DOWNTO 0) := (OTHERS => '0');
BEGIN
	PROCESS (CLK, ce, D)
	BEGIN

		IF rising_edge(CLK) THEN
			IF (CE = '1') THEN
				temp_reg <= D & temp_reg((width * length) - 1 DOWNTO width);
			ELSE
				temp_reg <= temp_reg;
			END IF;
		END IF;
	END PROCESS;

	Q <= temp_reg((width * length) - (width * length) + width - 1 DOWNTO 0);
	bn5_out <= temp_reg((width * length - 4 * width) - 1 DOWNTO ((width * length) - 5 * width));
	bn1_out <= temp_reg(width * length - 1 DOWNTO width * length - width);

END behavioral;