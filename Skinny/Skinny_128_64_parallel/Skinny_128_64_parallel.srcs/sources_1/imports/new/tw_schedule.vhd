library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TK1_schedule is

  Port ( TK1_schedule_IN : IN std_logic_vector(63 downto 0);
         TK1_schedule_OUT : OUT std_logic_vector(63 downto 0)  
            );       
  


end TK1_schedule;

architecture Behavioral of TK1_schedule is


begin

TK1_schedule_OUT <=  TK1_schedule_IN(27 downto 24)   &     --9
                    TK1_schedule_IN(3 downto 0)     &     --15
                    TK1_schedule_IN(31 downto 28)   &     -- 8
                    TK1_schedule_IN(11 downto 8)    &     --13
                    TK1_schedule_IN(23 downto 20)   &     --10
                    TK1_schedule_IN(7 downto 4)     &     --14
                    TK1_schedule_IN(15 downto 12)   &     --12
                    TK1_schedule_IN(19 downto 16) &        --11
                    TK1_schedule_IN(63 downto 60)   &     --0
                    TK1_schedule_IN(59 downto 56)   &     --1
                    TK1_schedule_IN(55 downto 52)   &     --2
                    TK1_schedule_IN(51 downto 48)   &     --3
                    TK1_schedule_IN(47 downto 44)   &     --4
                    TK1_schedule_IN(43 downto 40)   &     --5
                    TK1_schedule_IN(39 downto 36)   &     --6
                    TK1_schedule_IN(35 downto 32);        --7


end Behavioral;
