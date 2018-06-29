LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY KEY_SCHEDULE_FUNC IS

	GENERIC (datapath : INTEGER);

	PORT (

		const_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
		KEYMUX3_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
		KEYMUX4_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
		KEYMUX1_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
		Ki_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
		ki1_in : IN std_logic_vector(datapath - 1 DOWNTO 0);
		key_schedule_out : OUT std_logic_vector(datapath - 1 DOWNTO 0)

	);
END KEY_SCHEDULE_FUNC;

ARCHITECTURE Behavioral OF KEY_SCHEDULE_FUNC IS

BEGIN

	key_schedule_out <= const_in XOR ((KEYMUX4_in XOR KEYMUX1_in) XOR ((KEYMUX3_in XOR ki1_in) XOR Ki_in));
END Behavioral;