library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MUX is
generic( datapath: integer :=1);     
   
port  (  
    l_in,r_in: in std_logic_vector(datapath-1 downto 0); 
    sel: in std_logic ;  
    mux_out: out std_logic_vector(datapath-1 downto 0)
); 
end MUX;


architecture Behavioral of MUX is

begin

with sel select 
    mux_out <= l_in(127 downto 120) & l_in(95 downto 88) & l_in(63 downto 56) & l_in(31 downto 24)  
            &  l_in(119 downto 112) & l_in(87 downto 80) & l_in(55 downto 48) & l_in(23 downto 16)
            &  l_in(111 downto 104) & l_in(79 downto 72) & l_in(47 downto 40) & l_in(15 downto 8)
            &  l_in(103 downto 96)  & l_in(71 downto 64) & l_in(39 downto 32) & l_in(7 downto 0) when '0',  
            
            r_in when '1', 
            
            l_in(127 downto 120) & l_in(95 downto 88) & l_in(63 downto 56) & l_in(31 downto 24)  
            &  l_in(119 downto 112) & l_in(87 downto 80) & l_in(55 downto 48) & l_in(23 downto 16)
            &  l_in(111 downto 104) & l_in(79 downto 72) & l_in(47 downto 40) & l_in(15 downto 8)
            &  l_in(103 downto 96)  & l_in(71 downto 64) & l_in(39 downto 32) & l_in(7 downto 0)  when others ; 

end Behavioral;

