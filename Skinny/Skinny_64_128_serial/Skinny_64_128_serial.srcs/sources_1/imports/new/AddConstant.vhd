LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY AddConstant IS
	PORT (--RST : IN std_logic; 
		perform_AddConstant : IN std_logic_vector (4 DOWNTO 0); --ELEMENT COUNTER    
		lfsr_in : IN std_logic_vector(5 DOWNTO 0);
		AddConstant_IN : IN std_logic_vector (3 DOWNTO 0);
		AddConstant_OUT : OUT std_logic_vector (3 DOWNTO 0)

	);

END AddConstant;

ARCHITECTURE Behavioral OF AddConstant IS

	-- internal signals 
	CONSTANT c2 : std_logic_vector(3 DOWNTO 0) := "0010";

BEGIN
	WITH perform_AddConstant SELECT

		AddConstant_OUT <= AddConstant_IN XOR lfsr_in (3 DOWNTO 0) WHEN b"00000", -- m0 xored with c0
		AddConstant_IN XOR '0' & '0' & lfsr_in(5 DOWNTO 4) WHEN b"00100", --m4 xored with c1
		AddConstant_IN XOR c2 WHEN b"01000", --m8 xored with c2
		AddConstant_IN WHEN OTHERS;

END Behavioral;