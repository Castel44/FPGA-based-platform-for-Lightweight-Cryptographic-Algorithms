library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity SKINNY_CNT is       
        port( clk:in std_logic ;          
             reset:in std_logic;            
             enable_element_counter_in : in std_logic;            
            
             ELEMENT_CNT_OUT:out std_logic_vector ( 4 downto 0) := (others => '0')
             );     
             
  
             
end SKINNY_Cnt;


architecture Behavioral of SKINNY_CNT is

signal cnt_internal_value: std_logic_vector ( 4 downto 0):= (others => '0') ;

begin

process(clk,reset,enable_element_counter_in,cnt_internal_value) 
begin
 if rising_edge(clk)  then 
      
   if reset= '1' then 
           cnt_internal_value <= (others => '0') ;     
   
        elsif enable_element_counter_in = '1' then 
            cnt_internal_value <= cnt_internal_value + '1' ;  
           
    else 
        cnt_internal_value <= cnt_internal_value; 
    end if;
    
end if;
         

end  process;

ELEMENT_CNT_OUT <= cnt_internal_value ;

end Behavioral;