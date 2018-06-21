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
        
 --attribute dont_touch : string;            
 --attribute dont_touch of MixColumns : entity is "true";
      
end MixColumns;

architecture Behavioral of MixColumns is

-- internal signal declaration

--signal temp1: std_logic_vector(15 downto 0);
--signal temp2: std_logic_vector(15 downto 0);
--signal temp3: std_logic_vector(15 downto 0);
--signal temp4: std_logic_vector(15 downto 0);

begin

--MIX_COLUMN : PROCESS(MixCol_in)


--begin

--       temp1 <= MixCol_in(63 downto 48);  
--       temp2 <= MixCol_in(47 downto 32) xor MixCol_in(31 downto 16);
--       temp3 <= MixCol_in(63 downto 48) xor MixCol_in(31 downto 16) xor MixCol_in(15 downto 0); 
--       temp4 <= MixCol_in(63 downto 48) xor MixCol_in(31 downto 16); 




--END PROCESS;

--MixCol_out <=  temp3 & temp1 & temp2 & temp4 ;  

MixColumns_first_row_out <= MixColumns_first_row_in xor MixColumns_third_row_in xor MixColumns_fourth_row_in;
MixColumns_second_row_out <= MixColumns_first_row_in;
MixColumns_third_row_out <= MixColumns_second_row_in xor MixColumns_third_row_in;
MixColumns_fourth_row_out <= MixColumns_first_row_in xor MixColumns_third_row_in;
    
end Behavioral;
