
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity key_schedule_FUNCTION_parallel is
  generic ( datapath: integer:= 24
         
          ); 
          
  port (         
          
         left_in,right_in: in std_logic_vector(Datapath -1 downto 0); 
          rnd_out: out std_logic_vector(Datapath -1 downto 0);
          z_in: std_logic_vector(0 downto 0)
      
         
  ); 
end key_schedule_FUNCTION_parallel;

architecture Behavioral of key_schedule_FUNCTION_parallel is

constant c: std_logic_vector(Datapath -1 downto 0):= X"FFFFFC" ; 

begin


--shifting: process(left_in,right_in,z_in) 

--variable left_in_shift5: std_logic_vector(15 downto 0); 
--variable left_in_shift1: std_logic_vector(15 downto 0); 

--variable round_const:std_logic_vector(15 downto 0);

--begin


-- --for i in 0 to 15 loop 
-- round_const(0) := c(0) xor z_in(0); --c(i) xor
-- round_const(15 downto 1) := c(15 downto 1); 
-- --end loop; 
 
--left_in_shift1(15 downto 0) := left_in(14 downto 0)& left_in(15)  ; --left_in(14 downto 0) & left_in(15); 
--left_in_shift5(15 downto 0) := left_in(10 downto 0) & left_in(15 downto 11) ;

--rnd_out <= (left_in and left_in_shift5)  xor  right_in xor left_in_shift1  xor  round_const ;
--end process; 

  
rnd_out <= (left_in and (left_in(18 downto 0) & left_in(23 downto 19)))  xor  right_in xor (left_in(22 downto 0)& left_in(23))  xor (c(23 downto 1) & (c(0) xor z_in(0)))  ;

end Behavioral;