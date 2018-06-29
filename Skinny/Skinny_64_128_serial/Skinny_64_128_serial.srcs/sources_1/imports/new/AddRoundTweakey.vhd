LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY AddRoundTweakey IS
	PORT (

		perform_AddRoundTweakey : IN std_logic_vector (4 DOWNTO 0);
		AddRoundTweakey_TK1_IN : IN std_logic_vector(3 DOWNTO 0);
		AddRoundTweakey_TK2_IN : IN std_logic_vector(3 DOWNTO 0);
		AddRoundTweakey_IS_IN : IN std_logic_vector(3 DOWNTO 0);
		AddRoundTweakey_IS_OUT : OUT std_logic_vector(3 DOWNTO 0) := (OTHERS => '0')
	);

END AddRoundTweakey;

ARCHITECTURE Behavioral OF AddRoundTweakey IS

BEGIN

	ELEMENTWISE_XORING : PROCESS (perform_AddRoundTweakey, AddRoundTweakey_IS_IN, AddRoundTweakey_TK1_IN, AddRoundTweakey_TK2_IN)
	BEGIN
		IF perform_AddRoundTweakey <= 7 THEN

			AddRoundTweakey_IS_OUT <= AddRoundTweakey_IS_IN XOR AddRoundTweakey_TK1_IN XOR AddRoundTweakey_TK2_IN;
		ELSE
			AddRoundTweakey_IS_OUT <= AddRoundTweakey_IS_IN;
		END IF;

	END PROCESS;

END Behavioral;