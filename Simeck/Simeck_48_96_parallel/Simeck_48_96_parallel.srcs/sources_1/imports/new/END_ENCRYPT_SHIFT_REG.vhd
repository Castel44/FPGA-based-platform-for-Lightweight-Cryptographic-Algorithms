LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY end_encrypt_shift_reg IS

	PORT (
		ce, clk, rst : IN std_logic;

		end_encrypt : OUT std_logic := '0'

	);

END end_encrypt_shift_reg;

ARCHITECTURE Behavioral OF end_encrypt_shift_reg IS

BEGIN

	PROCESS (clk, ce, rst)

		VARIABLE feedback : std_logic;
		VARIABLE reg_internal : std_logic_vector(1 DOWNTO 0) := "01";

	BEGIN
		IF rising_edge(clk) THEN
			IF (rst = '1') THEN
				reg_internal := "01";
			ELSIF ce = '1' THEN

				feedback := reg_internal(1);
				reg_internal(1) := reg_internal(0);
				reg_internal(0) := feedback;

			END IF;

		END IF;

		end_encrypt <= reg_internal(1);

	END PROCESS;

END Behavioral;