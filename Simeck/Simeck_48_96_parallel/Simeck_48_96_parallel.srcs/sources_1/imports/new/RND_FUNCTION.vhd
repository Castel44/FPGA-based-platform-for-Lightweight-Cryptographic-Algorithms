----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.08.2017 22:01:56
-- Design Name: 
-- Module Name: RND_FUNCTION - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity RND_FUNCTION_parallel is
  generic ( datapath: integer
         
          ); 
          
  port (         
          
         left_in,right_in,Ki_in: in std_logic_vector(Datapath -1 downto 0); 
          rnd_out: out std_logic_vector(Datapath -1 downto 0)
          
         
  ); 
end RND_FUNCTION_parallel;

architecture Behavioral of RND_FUNCTION_parallel is



begin


--shifting: process(left_in,ki_in,right_in) 

----variable left_in_shift5: std_logic_vector(15 downto 0); 
--variable left_in_shift1: std_logic_vector(15 downto 0); 

--begin


--left_in_shift1(15 downto 0) := left_in(14 downto 0) & left_in(15);
--left_in_shift5(15 downto 0) := left_in(10 downto 0) & left_in(15 downto 11) ; --left_in(10 downto 0) & left_in(15 downto 11)

--rnd_out <= (left_in and left_in_shift5)  xor  right_in xor left_in_shift1  xor  Ki_in ;
--end process; 

  rnd_out <= (left_in and (left_in(18 downto 0) & left_in(23 downto 19)))  xor  right_in xor (left_in(22 downto 0) & left_in(23))  xor  Ki_in ;


end Behavioral;
