library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity MUX is
  generic( datapath: integer :=1   
         );
         
 port  (  l_in,r_in: in std_logic_vector(datapath-1 downto 0); 
          sel: in std_logic ;  
          mux_out: out std_logic_vector(datapath-1 downto 0)
 ); 
end MUX;

architecture Behavioral of MUX is

begin


with sel select mux_out <= l_in when '0',  r_in when '1', l_in when others ; 


end Behavioral;

