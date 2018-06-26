LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY rnd_key_update IS

	PORT (
		TWEAKEY_permutation_IN : IN std_logic_vector(63 DOWNTO 0);
		TWEAKEY_permutation_OUT : OUT std_logic_vector(63 DOWNTO 0) := (OTHERS => '0');
		enable_permutation : IN std_logic);

END rnd_key_update;

ARCHITECTURE Behavioral OF rnd_key_update IS

	SIGNAL tweakey_perm_out_internal : std_logic_vector(63 DOWNTO 0);

BEGIN

	PERMUTATION : PROCESS (enable_permutation, TWEAKEY_permutation_IN)
		-- the permutation is unfortunately made over the entire key reg 
		-- this is inefficient in software and fpgas but very efficient in hardware ASIC implementations 
		-- with scan flip flops

	BEGIN
		-- tweakey cell:
		IF enable_permutation = '1' THEN
			tweakey_perm_out_internal <= TWEAKEY_permutation_IN(55 DOWNTO 48) & --9
				TWEAKEY_permutation_IN(7 DOWNTO 0) & --15
				TWEAKEY_permutation_IN(63 DOWNTO 56) & -- 8
				TWEAKEY_permutation_IN(23 DOWNTO 16) & --13
				TWEAKEY_permutation_IN(47 DOWNTO 40) & --10
				TWEAKEY_permutation_IN(15 DOWNTO 8) & --14
				TWEAKEY_permutation_IN(31 DOWNTO 24) & --12
				TWEAKEY_permutation_IN(39 DOWNTO 32); --11

		ELSE
			tweakey_perm_out_internal <= TWEAKEY_permutation_IN;
		END IF;

	END PROCESS;

	TWEAKEY_permutation_OUT <= tweakey_perm_out_internal;

END Behavioral;