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
  generic ( datapath: integer := 16
         
          ); 
          
  port (         
          
         left_in,right_in,Ki_in: in std_logic_vector(Datapath -1 downto 0); 
          rnd_out: out std_logic_vector(Datapath -1 downto 0)
          
         
  ); 
end RND_FUNCTION_parallel;

architecture Behavioral of RND_FUNCTION_parallel is



begin



  rnd_out <= ( (left_in(30 downto 0) & left_in(31)) and (left_in(23 downto 0) & left_in(31 downto 24)))  xor  right_in xor (left_in(29 downto 0) & left_in(31 downto 30))  xor  Ki_in ;


end Behavioral;
