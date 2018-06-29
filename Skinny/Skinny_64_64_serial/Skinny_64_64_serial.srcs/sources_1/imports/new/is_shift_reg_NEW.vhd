LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY IS_shift_reg IS

	PORT (

		serial_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- serial input 4 bit 
		CLK : IN STD_LOGIC;
		CE : IN STD_LOGIC; --enable shifting 
		serial_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) --serial output 4 bit 

	);

END IS_shift_reg;


ARCHITECTURE behavioral OF IS_shift_reg IS

	SIGNAL temp_reg : std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');

BEGIN
	PROCESS (CLK, CE)
	BEGIN

		IF rising_edge(CLK) THEN
			IF (CE = '1') THEN
				temp_reg <= temp_reg(11 DOWNTO 0) & serial_in;
			ELSE
				temp_reg <= temp_reg;                 
			END IF;
		END IF;
	END PROCESS;

	serial_out <= temp_reg(15 DOWNTO 12);

END behavioral;