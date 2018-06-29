LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY AddRoundTweakey IS
	PORT (

		AddRoundTweakey_IN : IN std_logic_vector(63 DOWNTO 0); --IS

		TweaKey_IN : IN std_logic_vector(31 DOWNTO 0); -- only first and second row of tweakey array 
		AddRoundTweakey_OUT : OUT std_logic_vector(63 DOWNTO 0)
	);

END AddRoundTweakey;

ARCHITECTURE Behavioral OF AddRoundTweakey IS

BEGIN

	AddRoundTweakey_OUT <= (AddRoundTweakey_IN(63 DOWNTO 32) XOR tweakey_in) & AddRoundTweakey_IN(31 DOWNTO 0);

END Behavioral;