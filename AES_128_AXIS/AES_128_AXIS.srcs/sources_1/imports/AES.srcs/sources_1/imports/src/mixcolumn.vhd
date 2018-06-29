LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY mixColumn IS
	PORT (
		In_DI : IN std_logic_vector(31 DOWNTO 0);
		Out_DO : OUT std_logic_vector(31 DOWNTO 0));
END ENTITY mixColumn;
ARCHITECTURE Behavioral OF mixColumn IS

	SIGNAL Byte0_D, Byte0Doubled_D, Byte0Tripled_D : std_logic_vector(7 DOWNTO 0);
	SIGNAL Byte1_D, Byte1Doubled_D, Byte1Tripled_D : std_logic_vector(7 DOWNTO 0);
	SIGNAL Byte2_D, Byte2Doubled_D, Byte2Tripled_D : std_logic_vector(7 DOWNTO 0);
	SIGNAL Byte3_D, Byte3Doubled_D, Byte3Tripled_D : std_logic_vector(7 DOWNTO 0);

BEGIN -- architecture Behavioral

	-- First Byte
	Byte0_D <= In_DI(31 DOWNTO 24);
	Byte0Doubled_D <= ((In_DI(30 DOWNTO 24) & "0") XOR x"1B") WHEN In_DI(31) = '1'
		ELSE (In_DI(30 DOWNTO 24) & '0');
	Byte0Tripled_D <= Byte0Doubled_D XOR Byte0_D;

	-- Second Byte
	Byte1_D <= In_DI(23 DOWNTO 16);
	Byte1Doubled_D <= ((In_DI(22 DOWNTO 16) & '0') XOR x"1B") WHEN In_DI(23) = '1'
		ELSE (In_DI(22 DOWNTO 16) & '0');
	Byte1Tripled_D <= Byte1Doubled_D XOR Byte1_D;

	-- Third Byte
	Byte2_D <= In_DI(15 DOWNTO 8);
	Byte2Doubled_D <= ((In_DI(14 DOWNTO 8) & '0') XOR x"1B") WHEN In_DI(15) = '1'
		ELSE (In_DI(14 DOWNTO 8) & '0');
	Byte2Tripled_D <= Byte2Doubled_D XOR Byte2_D;

	-- Fourth Byte
	Byte3_D <= In_DI(7 DOWNTO 0);
	Byte3Doubled_D <= ((In_DI(6 DOWNTO 0) & '0') XOR x"1B") WHEN In_DI(7) = '1'
		ELSE (In_DI(6 DOWNTO 0) & '0');
	Byte3Tripled_D <= Byte3Doubled_D XOR Byte3_D;

	-- Output Assignment
	Out_DO(31 DOWNTO 24) <= Byte0Doubled_D XOR Byte1Tripled_D XOR Byte2_D XOR Byte3_D;
	Out_DO(23 DOWNTO 16) <= Byte0_D XOR Byte1Doubled_D XOR Byte2Tripled_D XOR Byte3_D;
	Out_DO(15 DOWNTO 8) <= Byte0_D XOR Byte1_D XOR Byte2Doubled_D XOR Byte3Tripled_D;
	Out_DO(7 DOWNTO 0) <= Byte0Tripled_D XOR Byte1_D XOR Byte2_D XOR Byte3Doubled_D;

END ARCHITECTURE Behavioral;