----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.09.2017 12:37:00
-- Design Name: 
-- Module Name: KEY_SCHEDULE_FUNC - Behavioral
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

entity KEY_SCHEDULE_FUNC is

generic ( datapath: integer ); 

port  ( 

 const_in: in std_logic_vector(datapath-1 downto 0);
 KEYMUX3_in: in std_logic_vector(datapath-1 downto 0);
 KEYMUX4_in : in std_logic_vector(datapath-1 downto 0);

 Ki_in : in std_logic_vector(datapath-1 downto 0);
 --ki1_in:in std_logic_vector(datapath-1 downto 0);
 key_schedule_out: out std_logic_vector(datapath-1 downto 0)

); 


end KEY_SCHEDULE_FUNC;

architecture Behavioral of KEY_SCHEDULE_FUNC is

begin

key_schedule_out <=  const_in xor (KEYMUX4_in  xor (KEYMUX3_in xor Ki_in));  


end Behavioral;
