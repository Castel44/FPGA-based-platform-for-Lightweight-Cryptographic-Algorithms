library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tw_schedule is

  Port ( TWEAKEY_schedule_IN : IN std_logic_vector(63 downto 0);
         TWEAKEY_schedule_OUT : OUT std_logic_vector(63 downto 0)  
            );       
  
end tw_schedule;

architecture Behavioral of tw_schedule is



begin


    TWEAKEY_schedule_OUT <=  Tweakey_schedule_IN(27 downto 24)   &     --9
                                Tweakey_schedule_IN(3 downto 0)     &     --15
                                Tweakey_schedule_IN(31 downto 28)   &     -- 8
                                Tweakey_schedule_IN(11 downto 8)    &     --13
                                Tweakey_schedule_IN(23 downto 20)   &     --10
                                Tweakey_schedule_IN(7 downto 4)     &     --14
                                Tweakey_schedule_IN(15 downto 12)   &     --12
                                Tweakey_schedule_IN(19 downto 16) &        --11
                                Tweakey_schedule_IN(63 downto 60)   &     --0
                                Tweakey_schedule_IN(59 downto 56)   &     --1
                                Tweakey_schedule_IN(55 downto 52)   &     --2
                                Tweakey_schedule_IN(51 downto 48)   &     --3
                                Tweakey_schedule_IN(47 downto 44)   &     --4
                                Tweakey_schedule_IN(43 downto 40)   &     --5
                                Tweakey_schedule_IN(39 downto 36)   &     --6
                                Tweakey_schedule_IN(35 downto 32);        --7




end Behavioral;
