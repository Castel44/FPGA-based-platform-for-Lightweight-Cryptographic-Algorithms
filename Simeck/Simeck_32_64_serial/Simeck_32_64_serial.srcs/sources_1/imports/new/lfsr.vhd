LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY lfsr IS

	GENERIC (
		length : INTEGER := 5;
		width : INTEGER := 1
	);

	PORT (
		lfsr_out : OUT std_logic_vector(width - 1 DOWNTO 0);
		lfsr_parallel_out : OUT std_logic_vector(width * length DOWNTO 0);
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

		IF (rst = '1') THEN
			lfsr_internal := "11111";

		ELSIF (rising_edge(clk)) THEN
			IF ce = '1' THEN
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

		lfsr_out <= lfsr_internal(4 DOWNTO 4); -- last bit 
		lfsr_parallel_out <= lfsr_internal; -- parallel output will be used to count rounds 
	END PROCESS;

END Behavioral;