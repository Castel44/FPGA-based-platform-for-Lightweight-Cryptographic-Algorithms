LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY key_schedule IS
	PORT (
		clk, key_schedule_ce, rcon_rst : std_logic;
		input : IN std_logic_vector(127 DOWNTO 0);
		output : OUT std_logic_vector(127 DOWNTO 0)
	);
END key_schedule;
ARCHITECTURE Behavioral OF key_schedule IS

	COMPONENT sbox
		PORT (
			input : IN std_logic_vector(7 DOWNTO 0);
			output : OUT std_logic_vector(7 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL fourth_col_in : std_logic_vector(31 DOWNTO 0);
	SIGNAL RCON : std_logic_vector(7 DOWNTO 0) := x"01";
	SIGNAL fourth_col_out : std_logic_vector(31 DOWNTO 0);
BEGIN

	fourth_col_in <= input(71 DOWNTO 64) & input(39 DOWNTO 32) & input(7 DOWNTO 0) & input(103 DOWNTO 96);

	apply_sbox : FOR i IN 0 TO 3 GENERATE
	BEGIN
		inst_sub_column : sbox
		PORT MAP(
			input => fourth_col_in(((i + 1) * 8) - 1 DOWNTO i * 8),
			output => fourth_col_out(((i + 1) * 8) - 1 DOWNTO i * 8)
		);
	END GENERATE;

	RCON_GEN : PROCESS (clk, rcon_rst, key_schedule_ce, rcon) --RCON generation 
	BEGIN
	
	-- RCONs can be generated on the fly in each round
	-- this is more resource efficient than storing them on memory
	
		IF rising_edge(clk) THEN
			IF rcon_rst = '1' THEN
				rcon <= x"01";
			ELSIF key_schedule_ce = '1' THEN
				IF rcon(7) = '1' THEN
					rcon <= ((rcon(6 DOWNTO 0) & "0") XOR x"1B");
				ELSE
					rcon <= ((rcon(6 DOWNTO 0) & "0"));
				END IF;
			ELSE
				rcon <= rcon;
			END IF;
		END IF;
	END PROCESS;
	output <= (fourth_col_out(31 DOWNTO 24) XOR RCON XOR input(127 DOWNTO 120))
		& (fourth_col_out(31 DOWNTO 24) XOR RCON XOR input(127 DOWNTO 120) XOR input(119 DOWNTO 112))
		& (fourth_col_out(31 DOWNTO 24) XOR RCON XOR input(127 DOWNTO 120) XOR input(119 DOWNTO 112) XOR input(111 DOWNTO 104))
		& (fourth_col_out(31 DOWNTO 24) XOR RCON XOR input(127 DOWNTO 120) XOR input(119 DOWNTO 112) XOR input(111 DOWNTO 104) XOR input(103 DOWNTO 96))

		& (fourth_col_out(23 DOWNTO 16) XOR x"00" XOR input(95 DOWNTO 88))
		& (fourth_col_out(23 DOWNTO 16) XOR x"00" XOR input(95 DOWNTO 88) XOR input(87 DOWNTO 80))
		& (fourth_col_out(23 DOWNTO 16) XOR x"00" XOR input(95 DOWNTO 88) XOR input(87 DOWNTO 80) XOR input(79 DOWNTO 72))
		& (fourth_col_out(23 DOWNTO 16) XOR x"00" XOR input(95 DOWNTO 88) XOR input(87 DOWNTO 80) XOR input(79 DOWNTO 72) XOR input(71 DOWNTO 64))

		& (fourth_col_out(15 DOWNTO 8) XOR x"00" XOR input(63 DOWNTO 56))
		& (fourth_col_out(15 DOWNTO 8) XOR x"00" XOR input(55 DOWNTO 48) XOR input(63 DOWNTO 56))
		& (fourth_col_out(15 DOWNTO 8) XOR x"00" XOR input(63 DOWNTO 56) XOR input(55 DOWNTO 48) XOR input(47 DOWNTO 40))
		& (fourth_col_out(15 DOWNTO 8) XOR x"00" XOR input(63 DOWNTO 56) XOR input(55 DOWNTO 48) XOR input(47 DOWNTO 40) XOR input(39 DOWNTO 32))

		& (fourth_col_out(7 DOWNTO 0) XOR x"00" XOR input(31 DOWNTO 24))
		& (fourth_col_out(7 DOWNTO 0) XOR x"00" XOR input(31 DOWNTO 24) XOR input(23 DOWNTO 16))
		& (fourth_col_out(7 DOWNTO 0) XOR x"00" XOR input(31 DOWNTO 24) XOR input(23 DOWNTO 16) XOR input(15 DOWNTO 8))
		& (fourth_col_out(7 DOWNTO 0) XOR x"00" XOR input(31 DOWNTO 24) XOR input(23 DOWNTO 16) XOR input(15 DOWNTO 8) XOR input(7 DOWNTO 0));

END Behavioral;