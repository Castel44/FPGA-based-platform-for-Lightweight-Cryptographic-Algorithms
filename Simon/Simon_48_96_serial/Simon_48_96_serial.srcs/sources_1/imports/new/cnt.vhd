LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY CNT24 IS

	PORT (
		cnt_out : OUT std_logic_vector(4 DOWNTO 0);
		ce, rst, clk : IN std_logic
	);

END CNT24;

ARCHITECTURE Behavioral OF CNT24 IS
	SIGNAL cnt_internal_value : std_logic_vector (4 DOWNTO 0) := (OTHERS => '0');
BEGIN
	PROCESS (clk, rst, cnt_internal_value, ce)
	BEGIN

		IF rst = '1' THEN
			cnt_internal_value <= (OTHERS => '0');


		ELSIF rising_edge(clk) THEN
			IF ce = '1' THEN

				IF cnt_internal_value = b"10111" THEN --23 then 
					cnt_internal_value <= (OTHERS => '0');
				ELSE
					cnt_internal_value <= cnt_internal_value + '1';
				END IF;
			ELSE
				cnt_internal_value <= cnt_internal_value;
			END IF;
		END IF;

	END PROCESS;

	CNT_OUT <= cnt_internal_value;

END Behavioral;