LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY MixColumns IS
	PORT (
		input : IN std_logic_vector(127 DOWNTO 0);
		output : OUT std_logic_vector(127 DOWNTO 0)
	);
END MixColumns;

ARCHITECTURE Behavioral OF MixColumns IS

	COMPONENT mixcolumn
		PORT (
			In_DI : IN std_logic_vector(31 DOWNTO 0);
			Out_DO : OUT std_logic_vector(31 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL first_col_in : std_logic_vector(31 DOWNTO 0);
	SIGNAL second_col_in : std_logic_vector(31 DOWNTO 0);
	SIGNAL third_col_in : std_logic_vector(31 DOWNTO 0);
	SIGNAL fourth_col_in : std_logic_vector(31 DOWNTO 0);

	SIGNAL first_col_out : std_logic_vector(31 DOWNTO 0);
	SIGNAL second_col_out : std_logic_vector(31 DOWNTO 0);
	SIGNAL third_col_out : std_logic_vector(31 DOWNTO 0);
	SIGNAL fourth_col_out : std_logic_vector(31 DOWNTO 0);
BEGIN

	first_col_in <= input(127 DOWNTO 120) & input(95 DOWNTO 88) & input(63 DOWNTO 56) & input(31 DOWNTO 24);
	second_col_in <= input(119 DOWNTO 112) & input(87 DOWNTO 80) & input(55 DOWNTO 48) & input(23 DOWNTO 16);
	third_col_in <= input(111 DOWNTO 104) & input(79 DOWNTO 72) & input(47 DOWNTO 40) & input(15 DOWNTO 8);
	fourth_col_in <= input(103 DOWNTO 96) & input(71 DOWNTO 64) & input(39 DOWNTO 32) & input(7 DOWNTO 0);
	inst_firstcolumn : mixcolumn
	PORT MAP(
		in_DI => first_col_in,
		Out_DO => first_col_out
	);

	inst_secondcolumn : mixcolumn
	PORT MAP(
		in_DI => second_col_in,
		Out_DO => second_col_out
	);

	inst_thirdcolumn : mixcolumn
	PORT MAP(
		in_DI => third_col_in,
		Out_DO => third_col_out
	);

	inst_fourthcolumn : mixcolumn
	PORT MAP(
		in_DI => fourth_col_in,
		Out_DO => fourth_col_out
	);
	output <= first_col_out(31 DOWNTO 24) & second_col_out(31 DOWNTO 24) & third_col_out(31 DOWNTO 24) & fourth_col_out(31 DOWNTO 24)
		& first_col_out(23 DOWNTO 16) & second_col_out(23 DOWNTO 16) & third_col_out(23 DOWNTO 16) & fourth_col_out(23 DOWNTO 16)
		& first_col_out(15 DOWNTO 8) & second_col_out(15 DOWNTO 8) & third_col_out(15 DOWNTO 8) & fourth_col_out(15 DOWNTO 8)
		& first_col_out(7 DOWNTO 0) & second_col_out(7 DOWNTO 0) & third_col_out(7 DOWNTO 0) & fourth_col_out(7 DOWNTO 0);
		
END Behavioral;