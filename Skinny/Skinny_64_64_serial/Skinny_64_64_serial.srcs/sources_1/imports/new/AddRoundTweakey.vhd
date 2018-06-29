library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity AddRoundTweakey is
     PORT (      		
             
       perform_AddRoundTweakey: in std_logic_vector (4 downto 0);            
       AddRoundTweakey_TWEAKEY_IN : IN std_logic_vector(3 downto 0);     
       AddRoundTweakey_IS_IN : IN std_logic_vector(3 downto 0);                                  
       AddRoundTweakey_IS_OUT : OUT std_logic_vector(3 downto 0):= (others => '0')    
       );      
       
end AddRoundTweakey;

architecture Behavioral of AddRoundTweakey is

begin
    
ELEMENTWISE_XORING : PROCESS (perform_AddRoundTweakey,AddRoundTweakey_IS_IN,AddRoundTweakey_TWEAKEY_IN)
begin
if perform_AddRoundTweakey <= 7 then

    AddRoundTweakey_IS_OUT <= AddRoundTweakey_IS_IN XOR AddRoundTweakey_TWEAKEY_IN;
else
    AddRoundTweakey_IS_OUT <= AddRoundTweakey_IS_IN;
end if;

end process;

end Behavioral;
