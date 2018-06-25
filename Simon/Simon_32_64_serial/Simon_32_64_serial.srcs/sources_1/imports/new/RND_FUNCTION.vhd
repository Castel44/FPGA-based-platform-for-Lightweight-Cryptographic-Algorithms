----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.09.2017 11:40:47
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RND_FUNCTION is

generic ( datapath : integer); 

 Port (
         is0_in,MUX1_in,MUX2_in,MUX8_in,ki_in: in std_logic_vector(datapath-1 downto 0); 
         rnd_function_out: out std_logic_vector(datapath-1 downto 0)
 
      ); 
 
end RND_FUNCTION;

architecture Behavioral of RND_FUNCTION is

begin


 rnd_function_out <=  (MUX1_in and MUX8_in) xor ( MUX2_in xor ( ki_in xor is0_in));


end Behavioral;
