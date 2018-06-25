library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MixColumns is
PORT(   MixColumns_first_row_in: in std_logic_vector(7 downto 0);
        MixColumns_second_row_in: in std_logic_vector(7 downto 0);
        MixColumns_third_row_in: in std_logic_vector(7 downto 0);
        MixColumns_fourth_row_in: in std_logic_vector(7 downto 0);
        
        
        MixColumns_first_row_out: out std_logic_vector(7 downto 0);
        MixColumns_second_row_out: out std_logic_vector(7 downto 0);
        MixColumns_third_row_out: out std_logic_vector(7 downto 0);
        MixColumns_fourth_row_out: out std_logic_vector(7 downto 0)
        
        );
        

end MixColumns;

architecture Behavioral of MixColumns is



begin

-- page 7 of skinny specification 
-- first row becomes second row 
-- the new third row is made up by the xor of the second and the third et-cetera
-- here because the cipher is serial we are operating on each word in each row instead on the full rows

MixColumns_first_row_out <= MixColumns_first_row_in xor MixColumns_third_row_in xor MixColumns_fourth_row_in;
MixColumns_second_row_out <= MixColumns_first_row_in;
MixColumns_third_row_out <= MixColumns_second_row_in xor MixColumns_third_row_in;
MixColumns_fourth_row_out <= MixColumns_first_row_in xor MixColumns_third_row_in;
    
end Behavioral;
