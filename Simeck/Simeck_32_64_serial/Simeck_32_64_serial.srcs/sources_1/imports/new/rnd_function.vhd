LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY rnd_function IS

	GENERIC (datapath : INTEGER := 1);

	PORT (

		a0_in, MUX1_in, b0_in, MUX5_in, Ki_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
		rnd_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)
	);

END rnd_function;

ARCHITECTURE Behavioral OF rnd_function IS

BEGIN
	rnd_out <= ((MUX5_in AND b0_in) XOR a0_in) XOR MUX1_in XOR Ki_in;
	
END Behavioral;