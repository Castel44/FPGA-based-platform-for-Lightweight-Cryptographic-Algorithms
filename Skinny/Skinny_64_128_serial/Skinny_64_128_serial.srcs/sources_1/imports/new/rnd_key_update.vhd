

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity rnd_key_permutation is

  Port ( TWEAKEY_permutation_IN : IN std_logic_vector(31 downto 0);
         TWEAKEY_permutation_OUT : OUT std_logic_vector(31 downto 0):= (others => '0');  
         enable_permutation : IN std_logic     );       
  


end rnd_key_permutation;

architecture Behavioral of rnd_key_permutation is

signal tweakey_perm_out_internal: std_logic_vector(31 downto 0); 

begin





PERMUTATION : PROCESS(enable_permutation,TWEAKEY_permutation_IN)


begin



if enable_permutation = '1' then
    tweakey_perm_out_internal <=  TWEAKEY_permutation_IN(27 downto 24)   &     --9
                    TWEAKEY_permutation_IN(3 downto 0)     &     --15
                    TWEAKEY_permutation_IN(31 downto 28)   &     -- 8
                    TWEAKEY_permutation_IN(11 downto 8)    &     --13
                    TWEAKEY_permutation_IN(23 downto 20)   &     --10
                    TWEAKEY_permutation_IN(7 downto 4)     &     --14
                    TWEAKEY_permutation_IN(15 downto 12)   &     --12
                    TWEAKEY_permutation_IN(19 downto 16);        --11
                   
  else                   
  
    tweakey_perm_out_internal <=  TWEAKEY_permutation_IN;          
     
end if;



end process;

TWEAKEY_permutation_OUT <= tweakey_perm_out_internal;

end Behavioral;
