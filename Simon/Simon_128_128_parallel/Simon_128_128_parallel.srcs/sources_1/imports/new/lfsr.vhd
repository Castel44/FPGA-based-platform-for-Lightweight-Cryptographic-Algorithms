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
		VARIABLE t_sequence_feedback : std_logic;

		VARIABLE lfsr_internal : std_logic_vector(4 DOWNTO 0) := b"10000";
		VARIABLE t_sequence : std_logic_vector(1 DOWNTO 0) := b"01";

	BEGIN

		IF (rst = '1') THEN
			lfsr_internal := "10000";
			t_sequence := "01";

		ELSIF (rising_edge(clk)) THEN
			IF ce = '1' THEN

				--X5 + X4 + X2 + X + 1                

				lfsr_feedback := lfsr_internal(2) XOR lfsr_internal(4);
				lfsr_internal(3) := lfsr_internal(3) XOR lfsr_internal(4);

				lfsr_internal(4) := lfsr_internal(3);
				lfsr_internal(3) := lfsr_internal(2);
				lfsr_internal(2) := lfsr_internal(1);
				lfsr_internal(1) := lfsr_internal(0);
				lfsr_internal(0) := lfsr_feedback;

				t_sequence_feedback := t_sequence(1);
				t_sequence(1) := t_sequence(0);
				t_sequence(0) := t_sequence_feedback;

			ELSE

				lfsr_internal := lfsr_internal;
			END IF;
		END IF;

		lfsr_out <= lfsr_internal(4 DOWNTO 4) XOR t_sequence(1 DOWNTO 1);
		lfsr_parallel_out <= lfsr_internal;
	END PROCESS;

END Behavioral;