LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY skinny_shift_reg_64 IS

	--  4 bit datapath (64 bit IS)

	PORT (
		serial_in_first_row : IN std_logic_vector (3 DOWNTO 0);
		serial_in_second_row : IN std_logic_vector (3 DOWNTO 0);
		serial_in_third_row : IN std_logic_vector (3 DOWNTO 0);
		serial_in_fourth_row : IN std_logic_vector (3 DOWNTO 0);

		clock : IN std_logic;

		enable_1, enable_2, enable_3, enable_4 : IN std_logic; -- enable shifting for individual rows 

		serial_output_first_row : OUT std_logic_vector (3 DOWNTO 0) := (OTHERS => '0');
		serial_output_second_row : OUT std_logic_vector (3 DOWNTO 0) := (OTHERS => '0');
		serial_output_third_row : OUT std_logic_vector (3 DOWNTO 0) := (OTHERS => '0');
		serial_output_fourth_row : OUT std_logic_vector (3 DOWNTO 0) := (OTHERS => '0')

	);

END skinny_shift_reg_64;

ARCHITECTURE behavioral OF skinny_shift_reg_64 IS

	COMPONENT IS_shift_reg PORT (

		serial_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- serial input 4 bit 
		CLK : IN STD_LOGIC;
		CE : IN STD_LOGIC; --enable shifting 
		serial_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) --serial output 4 bit 
		);

	END COMPONENT;
BEGIN

	INST_FIRST_ROW_SHIFT_REG : IS_shift_reg PORT MAP(

		clk => clock,
		CE => enable_1,
		serial_in => serial_in_first_row,
		serial_out => serial_output_first_row
	);

	INST_SECOND_ROW_SHIFT_REG : IS_shift_reg PORT MAP(

		clk => clock,
		CE => enable_2,
		serial_in => serial_in_second_row,
		serial_out => serial_output_second_row

	);

	INST_THIRD_ROW_SHIFT_REG : IS_shift_reg PORT MAP(

		clk => clock,
		CE => enable_3,
		serial_in => serial_in_third_row,
		serial_out => serial_output_third_row

	);
	INST_FOURTH_ROW_SHIFT_REG : IS_shift_reg PORT MAP(

		clk => clock,
		CE => enable_4,
		serial_in => serial_in_fourth_row,
		serial_out => serial_output_fourth_row

	);
	
END behavioral;