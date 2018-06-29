LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY shift_reg IS

	--  4 bit datapath (64 bit IS)

	PORT (
		parallel_in : IN std_logic_vector (31 DOWNTO 0); -- only first two rows
		serial_in : IN std_logic_vector(3 DOWNTO 0);
		clock, enable_in : IN std_logic;
		enable_parallel_loading : IN std_logic;
		serial_output : OUT std_logic_vector (3 DOWNTO 0) := (OTHERS => '0');
		parallel_output : OUT std_logic_vector (31 DOWNTO 0) := (OTHERS => '0')
	);
END shift_reg;

ARCHITECTURE behavioural OF shift_reg IS

	SIGNAL temp_reg : std_logic_vector(63 DOWNTO 0) := (OTHERS => '0');
	TYPE STATES IS (loading, shifting);
	SIGNAL state : states;
BEGIN

	PROCESS (enable_in, enable_parallel_loading)
	BEGIN
		IF (enable_parallel_loading = '1') THEN
			state <= loading;
		ELSIF (enable_in = '1') THEN
			state <= shifting;
		ELSE
			state <= loading;
		END IF;
	END PROCESS;

	PROCESS (clock, state)
	BEGIN
		--enable_out <= '0';  

		IF rising_edge(clock) THEN
			CASE state IS
				WHEN loading =>
					temp_reg(63 DOWNTO 32) <= parallel_in;
				WHEN shifting =>
					temp_reg <= temp_reg(59 DOWNTO 0) & serial_in;               
			END CASE;
		END IF;
	END PROCESS;

	serial_output <= temp_reg(63 DOWNTO 60);
	parallel_output <= temp_reg(63 DOWNTO 32);

END behavioural;