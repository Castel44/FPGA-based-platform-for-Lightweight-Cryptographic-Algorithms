library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity CNT_48 is 

    
    
    port ( 
      cnt_out: out std_logic_vector(4 downto 0); 
      ce,rst,clk: in std_logic 
    ); 

end CNT_48;

architecture Behavioral of CNT_48 is


signal cnt_internal_value: std_logic_vector (4 downto 0):= (others => '0') ;


begin
process(clk,rst,cnt_internal_value,ce) 
begin
     
   if rst= '1' then 
          cnt_internal_value <= (others => '0') ;     
        
     
            
        
   elsif rising_edge(clk)  then 
          if ce = '1' then 
          
           if cnt_internal_value = b"10111" then--23 then 
              cnt_internal_value <= (others => '0') ; 
            else  
            cnt_internal_value <= cnt_internal_value + '1' ;  
            end if; 
           else 
           cnt_internal_value <= cnt_internal_value;
           end if; 
     end if;    

end  process;

CNT_OUT <= cnt_internal_value ;

end Behavioral;
