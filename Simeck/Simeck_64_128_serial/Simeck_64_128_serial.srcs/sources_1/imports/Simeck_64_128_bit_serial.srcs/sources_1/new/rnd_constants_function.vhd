LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY rnd_constants_MUX IS

	GENERIC (
		datapath : INTEGER := 1;
		cnt_size : INTEGER := 4
	);

	PORT (
		element_cnt_in : IN std_logic_vector(cnt_size - 1 DOWNTO 0);
		lfsr_in : IN std_logic_vector(0 DOWNTO 0);
		Const_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)

	);

END rnd_constants_MUX;
ARCHITECTURE Behavioral OF rnd_constants_MUX IS
BEGIN

	datapath1 : IF datapath = 1 GENERATE

		WITH element_cnt_in SELECT Const_out <= lfsr_in XOR b"0" WHEN std_logic_vector(to_unsigned(0, cnt_size)),
			b"0" WHEN std_logic_vector(to_unsigned(1, cnt_size)),
			b"1" WHEN OTHERS;

	END GENERATE;

	datapath2 : IF datapath = 2 GENERATE

		WITH element_cnt_in SELECT Const_out <= b"0" & lfsr_in XOR b"0" WHEN std_logic_vector(to_unsigned(0, cnt_size)), --b"0000"
			b"11" WHEN OTHERS;
	END GENERATE;

	datapath4 : IF datapath = 4 GENERATE

		WITH element_cnt_in SELECT Const_out <= b"1" & b"1" & b"0" & lfsr_in XOR b"0" WHEN std_logic_vector(to_unsigned(0, cnt_size)), --b"0000"
			b"1111" WHEN OTHERS;
	END GENERATE;

	datapath8 : IF datapath = 8 GENERATE

		WITH element_cnt_in SELECT Const_out <= b"111111" & b"0" & lfsr_in XOR b"0" WHEN std_logic_vector(to_unsigned(0, cnt_size)), --b"0000"
			b"11111111" WHEN OTHERS;
	END GENERATE;
	datapath12 : IF datapath = 12 GENERATE

		WITH element_cnt_in SELECT Const_out <= b"1111111111" & b"0" & lfsr_in XOR b"0" WHEN std_logic_vector(to_unsigned(0, cnt_size)), --b"0000"
			b"111111111111" WHEN OTHERS;

	END GENERATE;

END Behavioral;