LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY KEY_SHIFTREG IS -- four words key size 
	GENERIC (
		width : INTEGER := 1;
		length : INTEGER := 64
	);

	PORT (
		clk : IN std_logic;
		D : IN std_logic_vector(width - 1 DOWNTO 0);
		Q : OUT std_logic_vector(width - 1 DOWNTO 0);
		CE : IN std_logic;

		KEY_REG_3n4_out : OUT std_logic_vector(width - 1 DOWNTO 0);
		KEY_REG_3n3_out : OUT std_logic_vector(width - 1 DOWNTO 0);
		KEY_REG_2n4_out : OUT std_logic_vector(width - 1 DOWNTO 0);
		KEY_REG_2n3_out : OUT std_logic_vector(width - 1 DOWNTO 0);

		KEY_REG_n1_out : OUT std_logic_vector(width - 1 DOWNTO 0);
		KEY_REG_n_out : OUT std_logic_vector(width - 1 DOWNTO 0);

		KEY_REG_1_out : OUT std_logic_vector(width - 1 DOWNTO 0)
	);
END KEY_SHIFTREG;

ARCHITECTURE Behavioral OF KEY_SHIFTREG IS

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

	KEY_REG_3n4_out <= temp_reg(100 DOWNTO 100);
	KEY_REG_3n3_out <= temp_reg(99 DOWNTO 99);

	KEY_REG_2n4_out <= temp_reg(68 DOWNTO 68);
	KEY_REG_2n3_out <= temp_reg(67 DOWNTO 67);

	KEY_REG_n1_out <= temp_reg(33 DOWNTO 33);
	KEY_REG_n_out <= temp_reg(32 DOWNTO 32);
	KEY_REG_1_out <= temp_reg(1 DOWNTO 1);

END behavioral;