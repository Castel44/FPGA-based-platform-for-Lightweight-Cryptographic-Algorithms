LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY lfsr IS
	PORT (
		clk, ce : IN std_logic;
		reset : IN std_logic;
		lfsr_out : OUT std_logic_vector (5 DOWNTO 0) := (OTHERS => '0')
	);
END lfsr;


ARCHITECTURE Behavioral OF lfsr IS

BEGIN
	PROCESS (clk, reset, ce)

		VARIABLE lfsr_internal : std_logic_vector (5 DOWNTO 0) := (OTHERS => '0');
		VARIABLE feedback : std_logic := '0';

	BEGIN
		IF (rising_edge(clk)) THEN

			IF (reset = '1') THEN
				lfsr_internal := "000001";

			ELSIF ce = '1' THEN

				feedback := lfsr_internal(5) XOR lfsr_internal(4) XOR '1';
				lfsr_internal(5) := lfsr_internal(4);
				lfsr_internal(4) := lfsr_internal(3);
				lfsr_internal(3) := lfsr_internal(2);
				lfsr_internal(2) := lfsr_internal(1);
				lfsr_internal(1) := lfsr_internal(0);
				lfsr_internal(0) := feedback;

			ELSE
				lfsr_internal := lfsr_internal;
			END IF;
		END IF;

		lfsr_out <= lfsr_internal;

	END PROCESS;

END Behavioral;