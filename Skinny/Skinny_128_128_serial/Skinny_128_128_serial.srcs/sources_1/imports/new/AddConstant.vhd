library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use work.lfsr_skinny_64.vhd ;   NON CREDO CHE SERVA, LO METTO COME COMPONENT

entity AddConstant is
    Port (  --RST : IN std_logic; 
       perform_AddConstant: in std_logic_vector (4 downto 0) ;      --ELEMENT COUNTER    
       lfsr_in: in std_logic_vector(5 downto 0); 
       AddConstant_IN : IN std_logic_vector (7 downto 0);       
       AddConstant_OUT : OUT std_logic_vector (7 downto 0)     
       
       );    
       
end AddConstant;

architecture Behavioral of AddConstant is

-- internal signals 
constant c2: std_logic_vector(7 downto 0) := b"00000010" ; 

begin


with perform_AddConstant select 

AddConstant_OUT <=  AddConstant_IN xor '0' & '0' &'0' & '0' & lfsr_in (3 downto 0)                when b"00000",  -- m0 xored with c0
                    AddConstant_IN xor '0' & '0' &'0' & '0' & '0' & '0' & lfsr_in(5 downto 4)     when b"00100",  --m4 xored with c1
                    AddConstant_IN xor c2                                                           when b"01000",  --m8 xored with c2
                    AddConstant_IN                                                                  when others; 

end Behavioral;
