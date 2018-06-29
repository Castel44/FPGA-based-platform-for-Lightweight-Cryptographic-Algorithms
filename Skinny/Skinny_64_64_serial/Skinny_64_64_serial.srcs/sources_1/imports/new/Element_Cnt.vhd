LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY SKINNY_CNT IS
	PORT (
		clk : IN std_logic;
		reset : IN std_logic;
		enable_element_counter_in : IN std_logic;

		ELEMENT_CNT_OUT : OUT std_logic_vector (4 DOWNTO 0) := (OTHERS => '0')
	);

END SKINNY_Cnt;
ARCHITECTURE Behavioral OF SKINNY_CNT IS

	SIGNAL cnt_internal_value : std_logic_vector (4 DOWNTO 0) := (OTHERS => '0');

BEGIN

	PROCESS (clk, reset, enable_element_counter_in, cnt_internal_value)
	BEGIN
		IF rising_edge(clk) THEN

			IF reset = '1' THEN
				cnt_internal_value <= (OTHERS => '0');

			ELSIF enable_element_counter_in = '1' THEN
				cnt_internal_value <= cnt_internal_value + '1';

			ELSE
				cnt_internal_value <= cnt_internal_value;
			END IF;

		END IF;
	END PROCESS;

	ELEMENT_CNT_OUT <= cnt_internal_value;

END Behavioral;