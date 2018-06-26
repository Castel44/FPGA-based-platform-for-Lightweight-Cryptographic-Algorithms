LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY MUX IS
	PORT (
		l_in, r_in : IN std_logic_vector(63 DOWNTO 0);
		sel : IN std_logic;
		mux_out : OUT std_logic_vector(63 DOWNTO 0)
	);
END MUX;

ARCHITECTURE Behavioral OF MUX IS

BEGIN
	WITH sel SELECT
	 mux_out <= l_in WHEN '0', 
	            r_in WHEN '1', l_in WHEN OTHERS;
	            
END Behavioral;