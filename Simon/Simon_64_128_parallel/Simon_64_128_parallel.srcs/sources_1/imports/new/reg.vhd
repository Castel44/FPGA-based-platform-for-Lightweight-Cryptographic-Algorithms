----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2017 15:02:38
-- Design Name: 
-- Module Name: reg - Behavioral
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

entity reg is  

generic( width:integer:= 16 ); 

port (

 clk,ce: std_logic; 
 D:in std_logic_vector(width-1 downto 0); 
 Q:out std_logic_vector(width-1 downto 0)


);
end reg;

architecture Behavioral of reg is

begin

process(D,clk,ce) 

begin

if ce = '1' then 
if rising_edge(clk) then 
                             
    Q<= D; 
   end if;                           
  end if;  
   
end process; 

end Behavioral;
