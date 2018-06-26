LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY rnd_key_permutation IS

	PORT (
		TWEAKEY_permutation_IN : IN std_logic_vector(31 DOWNTO 0);
		TWEAKEY_permutation_OUT : OUT std_logic_vector(31 DOWNTO 0) := (OTHERS => '0');
		enable_permutation : IN std_logic);
END rnd_key_permutation;

ARCHITECTURE Behavioral OF rnd_key_permutation IS

	SIGNAL tweakey_perm_out_internal : std_logic_vector(31 DOWNTO 0);

BEGIN

	PERMUTATION : PROCESS (enable_permutation, TWEAKEY_permutation_IN)
	BEGIN

		IF enable_permutation = '1' THEN
			tweakey_perm_out_internal <= TWEAKEY_permutation_IN(27 DOWNTO 24) & --9
				TWEAKEY_permutation_IN(3 DOWNTO 0) & --15
				TWEAKEY_permutation_IN(31 DOWNTO 28) & -- 8
				TWEAKEY_permutation_IN(11 DOWNTO 8) & --13
				TWEAKEY_permutation_IN(23 DOWNTO 20) & --10
				TWEAKEY_permutation_IN(7 DOWNTO 4) & --14
				TWEAKEY_permutation_IN(15 DOWNTO 12) & --12
				TWEAKEY_permutation_IN(19 DOWNTO 16); --11

		ELSE

			tweakey_perm_out_internal <= TWEAKEY_permutation_IN;

		END IF;

	END PROCESS;

	TWEAKEY_permutation_OUT <= tweakey_perm_out_internal;

END Behavioral;