LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY constant_gen_mux IS

	GENERIC (datapath : INTEGER);

	PORT (
		element_cnt_in : IN std_logic_vector(4 DOWNTO 0);
		lfsr_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
		Const_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)

	);

END constant_gen_mux;
ARCHITECTURE Behavioral OF constant_gen_mux IS
BEGIN
	WITH element_cnt_in SELECT Const_out <= lfsr_in XOR b"0" WHEN b"00000",
                                                        b"0" WHEN b"00001",
                                                        b"1" WHEN OTHERS;

END Behavioral;