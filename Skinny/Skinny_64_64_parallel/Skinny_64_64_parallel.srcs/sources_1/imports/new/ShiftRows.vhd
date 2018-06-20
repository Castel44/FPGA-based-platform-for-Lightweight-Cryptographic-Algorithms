library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ShiftRows is
    Port ( ShiftRows_In : in  STD_LOGIC_VECTOR (63 downto 0);
           ShiftRows_Out : out  STD_LOGIC_VECTOR (63 downto 0) 
                    
           );
end ShiftRows;

architecture Behavioral of ShiftRows is
begin

            ShiftRows_Out <= ShiftRows_In (63 downto 60) &  --m0
                             ShiftRows_In (59 downto 56) &  --m1
                             ShiftRows_In (55 downto 52) &  --m2
                             ShiftRows_In (51 downto 48) &  --m3
                             
                             ShiftRows_In (35 downto 32) &  --m7
                             ShiftRows_In (47 downto 44) &  --m4
                             ShiftRows_In (43 downto 40) &  --m5
                             ShiftRows_In (39 downto 36) &  --m6
                             
                             ShiftRows_In (23 downto 20) &  --m10
                             ShiftRows_In (19 downto 16) &  --m11
                             ShiftRows_In (31 downto 28) &  --m8
                             ShiftRows_In (27 downto 24) &  --m9
                             
                             ShiftRows_In (11 downto 8) &  --m13
                             ShiftRows_In (7 downto 4) &   --m14
                             ShiftRows_In (3 downto 0) &    --m15   
                             ShiftRows_In (15 downto 12) ;    --m12
                             


end Behavioral;

