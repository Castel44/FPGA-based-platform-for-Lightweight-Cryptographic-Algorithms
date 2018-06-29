LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY MixColumns IS
	PORT (
		MixCol_In : IN std_logic_vector(63 DOWNTO 0);
		MixCol_Out : OUT std_logic_vector(63 DOWNTO 0) := (OTHERS => '0')
	);

END MixColumns;

ARCHITECTURE Behavioral OF MixColumns IS
BEGIN

	MIX_COLUMN : PROCESS (MixCol_in)
	
		--Declaration of Variables, for easy readability
		VARIABLE temp1 : std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');
		VARIABLE temp2 : std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');
		VARIABLE temp3 : std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');
		VARIABLE temp4 : std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');

		VARIABLE first_row : std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');
		VARIABLE second_row : std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');
		VARIABLE third_row : std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');
		VARIABLE fourth_row : std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');

	BEGIN

		fourth_row := MixCol_in(15 DOWNTO 0);
		third_row := MixCol_in(31 DOWNTO 16);
		second_row := MixCol_in(47 DOWNTO 32);
		first_row := MixCol_in(63 DOWNTO 48);
		
		temp1 := first_row;               -- second row 
		temp2 := second_row XOR third_row;    --third row
		temp3 := first_row XOR third_row XOR fourth_row; --first row 
		temp4 := first_row XOR third_row; --fourth row            --fourth row

		MixCol_out <= temp3 & temp1 & temp2 & temp4;

	END PROCESS;

END Behavioral;