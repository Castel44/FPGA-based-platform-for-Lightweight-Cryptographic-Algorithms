library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg is  
    generic( length:integer:= 16 ); 

port (        
     clk,ce,rst: std_logic; 
     D:in std_logic_vector(length-1 downto 0); 
     Q:out std_logic_vector(length-1 downto 0):= (others => '0')
);
end reg;


architecture Behavioral of reg is

begin

process(D,clk,ce) 
begin
    if rising_edge(clk) then 
        if rst = '1' then 
            Q <= (others => '0') ; 
        elsif ce = '1' then                 
            Q<= D; 
        end if;                           
    end if;     
end process; 

end Behavioral;
