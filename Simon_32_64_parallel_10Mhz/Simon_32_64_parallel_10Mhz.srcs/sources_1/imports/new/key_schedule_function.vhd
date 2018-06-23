
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity key_schedule_FUNCTION_parallel is
  generic ( datapath: integer
         
          ); 
          
  port (         
          
         left_in,right_in,ki_in: in std_logic_vector(Datapath -1 downto 0); 
          rnd_out: out std_logic_vector(Datapath -1 downto 0);
          z_in: std_logic_vector(0 downto 0)
      
         
  ); 
end key_schedule_FUNCTION_parallel;

architecture Behavioral of key_schedule_FUNCTION_parallel is

constant c: std_logic_vector(15 downto 0):= X"FFFC" ; 

begin

process(left_in,right_in,z_in,ki_in) 

variable x: std_logic_vector(15 downto 0); 
variable y: std_logic_vector(15 downto 0); 
variable z: std_logic_vector(15 downto 0); 

begin 
   x:= ( ( left_in( 2 downto 0) & left_in(15 downto 3) ) xor right_in );
   x:=  (x(0) & x(15 downto 1)) xor ( x xor ki_in ) ; 
   x:= x xor ( c(15 downto 1) & (c(0) xor z_in(0)) ); 
   
   rnd_out<= x; 
   
 end process;   
   

--X = ( ( left_in( 3 downto 0) & left_in(15 downto 4) ) xor right_in )
--Y = 

  
--rnd_out <= (left_in and (left_in(10 downto 0) & left_in(15 downto 11)))  xor  right_in xor (left_in(14 downto 0)& left_in(15))  xor (c(15 downto 1) & (c(0) xor z_in(0)))  ;

end Behavioral;