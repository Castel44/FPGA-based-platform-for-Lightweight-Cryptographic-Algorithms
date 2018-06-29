LIBRARY IEEE;
USE IEEE.Std_logic_1164.ALL;

ENTITY SBOX_8bit IS

	PORT (
		SBOX_byte_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		SBOX_byte_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);

END SBOX_8bit;

ARCHITECTURE Behavioural OF SBOX_8bit IS
BEGIN

	PROCESS (SBOX_byte_in)

		VARIABLE x : std_logic_vector (7 DOWNTO 0); -- initillize and declare variable

	BEGIN

		x := SBOX_byte_in;
		x := x(7 DOWNTO 5) & (x(4) XOR (NOT (x(7) OR x(6)))) & x(3 DOWNTO 1) & (x(0) XOR (NOT (x(3) OR x(2))));
		x := x(2) & x(1) & x(7) & x(6) & x(4) & x(0) & x(3) & x(5);

		x := x(7 DOWNTO 5) & (x(4) XOR (NOT (x(7) OR x(6)))) & x(3 DOWNTO 1) & (x(0) XOR (NOT (x(3) OR x(2))));
		x := x(2) & x(1) & x(7) & x(6) & x(4) & x(0) & x(3) & x(5);

		x := x(7 DOWNTO 5) & (x(4) XOR (NOT (x(7) OR x(6)))) & x(3 DOWNTO 1) & (x(0) XOR (NOT (x(3) OR x(2))));
		x := x(2) & x(1) & x(7) & x(6) & x(4) & x(0) & x(3) & x(5);

		x := x(7 DOWNTO 5) & (x(4) XOR (NOT (x(7) OR x(6)))) & x(3 DOWNTO 1) & (x(0) XOR (NOT (x(3) OR x(2))));
		x := x(7 DOWNTO 3) & x(1) & x(2) & x(0);

		SBOX_byte_out <= x;

	END PROCESS;
END Behavioural;