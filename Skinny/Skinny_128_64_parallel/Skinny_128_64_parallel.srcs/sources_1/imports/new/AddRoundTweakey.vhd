library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity AddRoundTweakey is
    port (         
        AddRoundTweakey_IN : IN std_logic_vector(63 downto 0); --IS  
        TK1_in : IN std_logic_vector(31 downto 0); -- only first and second row of tweakey array 
        TK2_in : IN std_logic_vector(31 downto 0);
        AddRoundTweakey_OUT : OUT std_logic_vector(63 downto 0)        
        );

end AddRoundTweakey;

architecture Behavioral of AddRoundTweakey is

begin

AddRoundTweakey_OUT <=  (AddRoundTweakey_IN(63 downto 32) xor TK1_in xor TK2_in) & AddRoundTweakey_IN(31 downto 0);
        


end Behavioral;                          

