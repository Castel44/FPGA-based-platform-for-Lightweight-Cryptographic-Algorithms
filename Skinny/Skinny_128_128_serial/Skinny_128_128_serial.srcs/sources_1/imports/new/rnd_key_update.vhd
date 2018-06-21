

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity rnd_key_update is

  Port ( TWEAKEY_permutation_IN : IN std_logic_vector(63 downto 0);
         TWEAKEY_permutation_OUT : OUT std_logic_vector(63 downto 0):= (others => '0');  
         enable_permutation : IN std_logic     );       
  


end rnd_key_update;

architecture Behavioral of rnd_key_update is

signal tweakey_perm_out_internal: std_logic_vector(63 downto 0); 

begin





PERMUTATION : PROCESS(enable_permutation,TWEAKEY_permutation_IN)


begin



if enable_permutation = '1' then
    tweakey_perm_out_internal <=  TWEAKEY_permutation_IN(55 downto 48)   &     --9
                    TWEAKEY_permutation_IN(7 downto 0)     &     --15
                    TWEAKEY_permutation_IN(63 downto 56)   &     -- 8
                    TWEAKEY_permutation_IN(23 downto 16)    &     --13
                    TWEAKEY_permutation_IN(47 downto 40)   &     --10
                    TWEAKEY_permutation_IN(15 downto 8)     &     --14
                    TWEAKEY_permutation_IN(31 downto 24)   &     --12
                    TWEAKEY_permutation_IN(39 downto 32);        --11
                   
  else                   
  
    tweakey_perm_out_internal <=  TWEAKEY_permutation_IN;          
     
end if;



end process;

TWEAKEY_permutation_OUT <= tweakey_perm_out_internal;

end Behavioral;
