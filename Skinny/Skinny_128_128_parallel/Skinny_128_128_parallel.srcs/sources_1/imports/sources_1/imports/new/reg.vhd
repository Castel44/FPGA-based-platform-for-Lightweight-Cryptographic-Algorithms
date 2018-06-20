
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity reg is  

Port ( 
         clk,ce: std_logic; 
         D:in std_logic_vector(127 downto 0); 
         Q:out std_logic_vector(127 downto 0)
);
end reg;

architecture Behavioral of reg is

begin

process(D,clk,ce) 

begin
    if rising_edge(clk) then   
        if ce = '1' then                                
                Q <= D; 
        end if;                           
    end if;   
end process; 

end Behavioral;
