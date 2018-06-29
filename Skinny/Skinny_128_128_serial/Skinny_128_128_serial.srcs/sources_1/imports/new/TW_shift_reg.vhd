LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Tweakey shift register
ENTITY shift_reg IS
	PORT (
		parallel_in : IN std_logic_vector (63 DOWNTO 0); -- parallel in and out used for key scheduling permutation
		serial_in : IN std_logic_vector(7 DOWNTO 0);
		clock, enable_in : IN std_logic;
		enable_parallel_loading : IN std_logic; -- this enables will be set high when permutation has to be performed
		serial_output : OUT std_logic_vector (7 DOWNTO 0) := (OTHERS => '0');
		parallel_output : OUT std_logic_vector (63 DOWNTO 0) := (OTHERS => '0')
	);
END shift_reg;

ARCHITECTURE behavioural OF shift_reg IS

	SIGNAL temp_reg : std_logic_vector(127 DOWNTO 0) := (OTHERS => '0');
	TYPE STATES IS (loading, shifting);
	SIGNAL state : states;
BEGIN

	PROCESS (enable_in, enable_parallel_loading)
	BEGIN
		IF (enable_parallel_loading = '1') THEN -- perform permutation and load from the parallel in                    
			state <= loading;
		ELSIF (enable_in = '1') THEN
			state <= shifting;
		ELSE
			state <= loading;
		END IF;

	END PROCESS;

	PROCESS (clock, state)
	BEGIN
		IF rising_edge(clock) THEN
			CASE state IS
				WHEN loading =>
					temp_reg(127 DOWNTO 64) <= parallel_in;
				WHEN shifting =>
					temp_reg <= temp_reg(119 DOWNTO 0) & serial_in;

			END CASE;
		END IF;
	END PROCESS;

	serial_output <= temp_reg(127 DOWNTO 120);
	parallel_output <= temp_reg(127 DOWNTO 64);
	
	
END behavioural;