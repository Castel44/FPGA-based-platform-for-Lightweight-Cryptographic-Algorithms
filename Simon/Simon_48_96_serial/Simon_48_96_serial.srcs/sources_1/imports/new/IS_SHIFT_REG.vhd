LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY IS_SHIFT_REG IS

	GENERIC (
		width : INTEGER := 1;
		length : INTEGER := 32
	);

	PORT (
		clk : IN std_logic;
		D : IN std_logic_vector(width - 1 DOWNTO 0);
		Q : OUT std_logic_vector(width - 1 DOWNTO 0);
		CE : IN std_logic;

		IS_2n1_out : OUT std_logic_vector(width - 1 DOWNTO 0);
		IS_2n2_out : OUT std_logic_vector(width - 1 DOWNTO 0);
		IS_2n8_out : OUT std_logic_vector(width - 1 DOWNTO 0);

		IS_n1_out : OUT std_logic_vector(width - 1 DOWNTO 0);
		IS_n2_out : OUT std_logic_vector(width - 1 DOWNTO 0);
		IS_n8_out : OUT std_logic_vector(width - 1 DOWNTO 0)
	);
END IS_SHIFT_REG;

ARCHITECTURE Behavioral OF IS_SHIFT_REG IS

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

	--IS_2n1_out <= temp_reg(width*length-1 downto width*length-width);

	--IS_2n2_out <= temp_reg((width*length-1*width)-1 downto ((width*length)-2*width));

	--IS_2n8_out <= temp_reg((width*length-7*width)-1 downto ((width*length)-8*width));

	--IS_n1_out <= temp_reg((((width*length)/2))-1 downto (((width*length)/2)-width));

	--IS_n2_out <= temp_reg((((width*length)/2)-1*width)-1 downto (((width*length)/2)-2*width));

	--IS_n8_out <= temp_reg((((width*length)/2)-7*width)-1 downto (((width*length)/2)-8*width));

	IS_2n1_out <= temp_reg(47 DOWNTO 47);

	IS_2n2_out <= temp_reg(46 DOWNTO 46);

	IS_2n8_out <= temp_reg(40 DOWNTO 40);

	IS_n1_out <= temp_reg(23 DOWNTO 23);

	IS_n2_out <= temp_reg(22 DOWNTO 22);

	IS_n8_out <= temp_reg(16 DOWNTO 16);
END behavioral;