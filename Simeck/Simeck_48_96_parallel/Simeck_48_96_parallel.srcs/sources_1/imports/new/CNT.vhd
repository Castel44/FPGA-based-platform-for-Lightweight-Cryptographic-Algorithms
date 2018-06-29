LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY CNT IS

	GENERIC (
		size : INTEGER := 5
	);

	PORT (
		cnt_out : OUT std_logic_vector(size - 1 DOWNTO 0);
		ce, rst, clk : IN std_logic
	);

END CNT;

ARCHITECTURE Behavioral OF CNT IS

	SIGNAL cnt_internal_value : std_logic_vector (size - 1 DOWNTO 0) := (OTHERS => '0');
	
BEGIN

	PROCESS (clk, rst, cnt_internal_value, ce)
	BEGIN

		IF rst = '1' THEN
			cnt_internal_value <= (OTHERS => '0');

		ELSIF rising_edge(clk) THEN
			IF ce = '1' THEN
				cnt_internal_value <= cnt_internal_value + '1';
			ELSE
				cnt_internal_value <= cnt_internal_value;
			END IF;
		END IF;

	END PROCESS;

	CNT_OUT <= cnt_internal_value;

END Behavioral;