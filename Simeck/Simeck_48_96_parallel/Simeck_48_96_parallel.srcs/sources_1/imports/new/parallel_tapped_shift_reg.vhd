LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY parallel_tapped_shift_reg IS
	GENERIC (
		width : INTEGER := 24; -- shift_reg width 
		length : INTEGER := 2 -- shift_reg length 
	);

	PORT (
		clk : IN std_logic;
		D : IN std_logic_vector(width - 1 DOWNTO 0);
		right_out : OUT std_logic_vector(width - 1 DOWNTO 0);
		CE : IN std_logic;
		left_out : OUT std_logic_vector(width - 1 DOWNTO 0)
	);
END parallel_tapped_shift_reg;

ARCHITECTURE Behavioral OF parallel_tapped_shift_reg IS

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

	right_out <= temp_reg((width * length - 1) DOWNTO ((width * length) - width));
	left_out <= temp_reg(((width * length) - width) - 1 DOWNTO 0);

END behavioral;