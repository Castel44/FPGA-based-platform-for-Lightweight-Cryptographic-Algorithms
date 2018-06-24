library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- mixes internal state columns 
-- can be espressed as xors and permutation of the internal state rows

entity MixColumns is
PORT(   MixCol_In : IN std_logic_vector(127 downto 0);      
        MixCol_Out : OUT std_logic_vector(127 downto 0):=(others => '0') 
        );        
end MixColumns;

architecture Behavioral of MixColumns is
begin

MIX_COLUMN : PROCESS(MixCol_in)
--Declaration of Variables, for easy readability
variable temp1: std_logic_vector(31 downto 0):= (others => '0');
variable temp2: std_logic_vector(31 downto 0):= (others => '0');
variable temp3: std_logic_vector(31 downto 0):= (others => '0');
variable temp4: std_logic_vector(31 downto 0):= (others => '0');

variable first_row: std_logic_vector(31 downto 0):= (others => '0');
variable second_row: std_logic_vector(31 downto 0):= (others => '0');
variable third_row: std_logic_vector(31 downto 0):= (others => '0');
variable fourth_row: std_logic_vector(31 downto 0):= (others => '0');

begin

fourth_row  := MixCol_in(31 downto 0);
third_row   := MixCol_in(63 downto 32);
second_row  := MixCol_in(95 downto 64);
first_row   := MixCol_in(127 downto 96);


    temp1 := first_row;  -- second row 
    temp2 := second_row xor third_row; --third row
    temp3 := first_row xor third_row xor fourth_row; --first row 
    temp4 := first_row xor third_row; --fourth row                 


MixCol_out <=  temp3 & temp1 & temp2 & temp4 ;  


end process;
    
end Behavioral;