library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ShiftRows is
    Port ( ShiftRows_In : in  STD_LOGIC_VECTOR (127 downto 0);
           ShiftRows_Out : out  STD_LOGIC_VECTOR (127 downto 0) 
                    
           );
end ShiftRows;

architecture Behavioral of ShiftRows is
begin

            ShiftRows_Out <= ShiftRows_In (127 downto 120) &  --m0
                             ShiftRows_In (119 downto 112) &  --m1
                             ShiftRows_In (111 downto 104) &  --m2
                             ShiftRows_In (103 downto 96) &  --m3
                             
                             ShiftRows_In (71 downto 64) &  --m7
                             ShiftRows_In (95 downto 88) &  --m4
                             ShiftRows_In (87 downto 80) &  --m5
                             ShiftRows_In (79 downto 72) &  --m6
                             
                             ShiftRows_In (47 downto 40) &  --m10
                             ShiftRows_In (39 downto 32) &  --m11
                             ShiftRows_In (63 downto 56) &  --m8
                             ShiftRows_In (55 downto 48) &  --m9
                             
                             ShiftRows_In (23 downto 16) &  --m13
                             ShiftRows_In (15 downto 8) &   --m14
                             ShiftRows_In (7 downto 0) &    --m15   
                             ShiftRows_In (31 downto 24) ;    --m12
                             


end Behavioral;

