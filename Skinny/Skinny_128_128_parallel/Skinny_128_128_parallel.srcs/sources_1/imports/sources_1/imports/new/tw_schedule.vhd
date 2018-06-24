library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- it is simply a fixed permutation on the key register

entity tw_schedule is
  Port ( TWEAKEY_schedule_IN : IN std_logic_vector(127 downto 0);
         TWEAKEY_schedule_OUT : OUT std_logic_vector(127 downto 0)  
        );         
end tw_schedule;

architecture Behavioral of tw_schedule is

begin
                                                                      -- 8 bits word: 
TWEAKEY_schedule_OUT <=     Tweakey_schedule_IN(55 downto 48)   &     --9
                            Tweakey_schedule_IN(7 downto 0)     &     --15
                            Tweakey_schedule_IN(63 downto 56)   &     -- 8
                            Tweakey_schedule_IN(23 downto 16)    &     --13
                            Tweakey_schedule_IN(47 downto 40)   &     --10
                            Tweakey_schedule_IN(15 downto 8)     &     --14
                            Tweakey_schedule_IN(31 downto 24)   &     --12
                            Tweakey_schedule_IN(39 downto 32)   &     --11
                            Tweakey_schedule_IN(127 downto 120)   &     --0
                            Tweakey_schedule_IN(119 downto 112)   &     --1
                            Tweakey_schedule_IN(111 downto 104)   &     --2
                            Tweakey_schedule_IN(103 downto 96)   &     --3
                            Tweakey_schedule_IN(95 downto 88)   &     --4
                            Tweakey_schedule_IN(87 downto 80)   &     --5
                            Tweakey_schedule_IN(79 downto 72)   &     --6
                            Tweakey_schedule_IN(71 downto 64);        --7


end Behavioral;
