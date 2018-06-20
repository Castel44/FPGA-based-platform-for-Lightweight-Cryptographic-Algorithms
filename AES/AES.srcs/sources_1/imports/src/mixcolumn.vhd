library ieee;
use ieee.std_logic_1164.all;


entity mixColumn is  
  port (
    In_DI  : in std_logic_vector(31 downto 0);
    Out_DO : out std_logic_vector(31 downto 0));
end entity mixColumn;


architecture Behavioral of mixColumn is

signal Byte0_D, Byte0Doubled_D, Byte0Tripled_D : std_logic_vector(7 downto 0);
signal Byte1_D, Byte1Doubled_D, Byte1Tripled_D : std_logic_vector(7 downto 0);
signal Byte2_D, Byte2Doubled_D, Byte2Tripled_D : std_logic_vector(7 downto 0);
signal Byte3_D, Byte3Doubled_D, Byte3Tripled_D : std_logic_vector(7 downto 0);
  
begin  -- architecture Behavioral

  -- First Byte
  Byte0_D        <= In_DI(31 downto 24);
  Byte0Doubled_D <= ((In_DI(30 downto 24) & "0") xor x"1B") when In_DI(31) = '1'
                    else (In_DI(30 downto 24) & '0');
  Byte0Tripled_D <= Byte0Doubled_D xor Byte0_D;

  -- Second Byte
  Byte1_D        <= In_DI(23 downto 16);
  Byte1Doubled_D <= ((In_DI(22 downto 16) & '0') xor x"1B") when In_DI(23) = '1'
                    else (In_DI(22 downto 16) & '0');
  Byte1Tripled_D <= Byte1Doubled_D xor Byte1_D;

  -- Third Byte
  Byte2_D        <= In_DI(15 downto 8);
  Byte2Doubled_D <= ((In_DI(14 downto 8) & '0') xor x"1B") when In_DI(15) = '1'
                    else (In_DI(14 downto 8) & '0');
  Byte2Tripled_D <= Byte2Doubled_D xor Byte2_D;

  -- Fourth Byte
  Byte3_D        <= In_DI(7 downto 0);
  Byte3Doubled_D <= ((In_DI(6 downto 0) & '0') xor x"1B") when In_DI(7) = '1'
                    else (In_DI(6 downto 0) & '0');
  Byte3Tripled_D <= Byte3Doubled_D xor Byte3_D;

  -- Output Assignment
  Out_DO(31 downto 24) <= Byte0Doubled_D xor Byte1Tripled_D xor Byte2_D xor Byte3_D;
  Out_DO(23 downto 16) <= Byte0_D xor Byte1Doubled_D xor Byte2Tripled_D xor Byte3_D;
  Out_DO(15 downto 8) <= Byte0_D xor Byte1_D xor Byte2Doubled_D xor Byte3Tripled_D;
  Out_DO(7 downto 0) <= Byte0Tripled_D xor Byte1_D xor Byte2_D xor Byte3Doubled_D;

end architecture Behavioral;
