library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity TK2_schedule is
  Port ( TK2_schedule_IN : IN std_logic_vector(63 downto 0);
         TK2_schedule_OUT : OUT std_logic_vector(63 downto 0)  
            );         
end TK2_schedule;

architecture Behavioral of TK2_schedule is

component LFSR_TK2 
   port(    
     lfsr_tk2_in: in std_logic_vector(3 downto 0);
     lfsr_tk2_out: out std_logic_vector (3 downto 0)
        );
end component;

signal TK2_internal : std_logic_vector(63 downto 32);

begin

LFSR_UPDATE_9: LFSR_TK2 port map ( 
     lfsr_tk2_in => TK2_schedule_IN(27 downto 24) ,
     lfsr_tk2_out => TK2_internal(63 downto 60) 
     ); 

LFSR_UPDATE_15: LFSR_TK2 port map ( 
     lfsr_tk2_in => TK2_schedule_IN(3 downto 0) ,
     lfsr_tk2_out => TK2_internal(59 downto 56) 
     ); 

LFSR_UPDATE_8: LFSR_TK2 port map ( 
     lfsr_tk2_in => TK2_schedule_IN(31 downto 28) ,
     lfsr_tk2_out => TK2_internal(55 downto 52) 
     ); 
     
LFSR_UPDATE_13: LFSR_TK2 port map ( 
      lfsr_tk2_in => TK2_schedule_IN(11 downto 8) ,
      lfsr_tk2_out => TK2_internal(51 downto 48) 
      );      

LFSR_UPDATE_10: LFSR_TK2 port map ( 
     lfsr_tk2_in => TK2_schedule_IN(23 downto 20) ,
     lfsr_tk2_out => TK2_internal(47 downto 44) 
     ); 
     
LFSR_UPDATE_14: LFSR_TK2 port map ( 
      lfsr_tk2_in => TK2_schedule_IN(7 downto 4) ,
      lfsr_tk2_out => TK2_internal(43 downto 40) 
      ); 

LFSR_UPDATE_12: LFSR_TK2 port map ( 
     lfsr_tk2_in => TK2_schedule_IN(15 downto 12) ,
     lfsr_tk2_out => TK2_internal(39 downto 36) 
     ); 

LFSR_UPDATE_11: LFSR_TK2 port map ( 
     lfsr_tk2_in => TK2_schedule_IN(19 downto 16) ,
     lfsr_tk2_out => TK2_internal(35 downto 32) 
     ); 

     
TK2_schedule_OUT <= TK2_internal & TK2_schedule_IN(63 downto 32);     



end Behavioral;
