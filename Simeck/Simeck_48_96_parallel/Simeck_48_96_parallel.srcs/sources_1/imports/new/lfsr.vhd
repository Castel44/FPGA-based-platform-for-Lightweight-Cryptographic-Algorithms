LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY lfsr IS
	PORT (
		lfsr_out : OUT std_logic_vector(0 DOWNTO 0) := (OTHERS => '0');
		lfsr_parallel_out : OUT std_logic_vector(4 DOWNTO 0);
		ce : IN std_logic;
		clk, rst : std_logic
	);

END lfsr;

ARCHITECTURE Behavioral OF lfsr IS

BEGIN
	PROCESS (clk, rst, ce)

		VARIABLE lfsr_internal : std_logic_vector(4 DOWNTO 0) := (OTHERS => '1');
		VARIABLE feedback : std_logic := '1';

	BEGIN
		IF (rising_edge(clk)) THEN
			IF (rst = '1') THEN
				lfsr_internal := "11111";
			ELSIF ce = '1' THEN

				feedback := lfsr_internal(4) XOR lfsr_internal(2);
				lfsr_internal(4) := lfsr_internal(3);
				lfsr_internal(3) := lfsr_internal(2);
				lfsr_internal(2) := lfsr_internal(1);
				lfsr_internal(1) := lfsr_internal(0);
				lfsr_internal(0) := feedback;
			ELSE

				lfsr_internal := lfsr_internal;
			END IF;
		END IF;

		lfsr_out <= lfsr_internal(4 DOWNTO 4);
		lfsr_parallel_out <= lfsr_internal;

	END PROCESS;
	
END Behavioral;