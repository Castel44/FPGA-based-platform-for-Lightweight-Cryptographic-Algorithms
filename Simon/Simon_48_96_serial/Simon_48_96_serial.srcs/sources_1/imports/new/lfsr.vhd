LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY lfsr IS

	PORT (
		lfsr_out : OUT std_logic_vector(0 DOWNTO 0);
		lfsr_parallel_out : OUT std_logic_vector(4 DOWNTO 0);
		ce : IN std_logic;
		clk, rst : std_logic
	);

END lfsr;

ARCHITECTURE Behavioral OF lfsr IS

BEGIN
	PROCESS (clk, rst, ce)
		VARIABLE lfsr_feedback : std_logic;
		VARIABLE lfsr_internal : std_logic_vector(4 DOWNTO 0) := b"10000";
	BEGIN

		IF (rst = '1') THEN
			lfsr_internal := "10000";
		ELSIF (rising_edge(clk)) THEN
			IF ce = '1' THEN

				lfsr_feedback := lfsr_internal(2) XOR lfsr_internal(4);
				lfsr_internal(1) := lfsr_internal(1) XOR lfsr_internal(0);

				lfsr_internal(4) := lfsr_internal(3);
				lfsr_internal(3) := lfsr_internal(2);
				lfsr_internal(2) := lfsr_internal(1);
				lfsr_internal(1) := lfsr_internal(0);
				lfsr_internal(0) := lfsr_feedback;

			ELSE

				lfsr_internal := lfsr_internal;
			END IF;
		END IF;

		lfsr_out <= lfsr_internal(4 DOWNTO 4);
		lfsr_parallel_out <= lfsr_internal;
	END PROCESS;

END Behavioral;