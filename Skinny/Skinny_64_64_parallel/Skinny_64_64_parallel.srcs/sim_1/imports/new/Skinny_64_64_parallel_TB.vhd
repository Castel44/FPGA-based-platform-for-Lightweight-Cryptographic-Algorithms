
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity SKINNY_64_tb is
end;

architecture bench of SKINNY_64_tb is

  component SKINNY_64_64_parallel
    Port ( 
          CLK : in STD_LOGIC;
                PLAINTEXT_IN : in  STD_LOGIC_VECTOR (63 downto 0);
                TWEAKEY_IN : in  STD_LOGIC_VECTOR (63 downto 0);
                START,DATA_READY : in  STD_LOGIC;
                BUSY : out  STD_LOGIC;
                CIPHERTEXT_OUT : out  STD_LOGIC_VECTOR (63 downto 0)
          ); 
  end component;

  signal CLK: STD_LOGIC;
  signal PLAINTEXT_IN: STD_LOGIC_VECTOR (63 downto 0):= (others => '0');
  signal TWEAKEY_IN: STD_LOGIC_VECTOR (63 downto 0):= (others => '0');
  signal START,DATA_READY: STD_LOGIC:= '0';
  signal BUSY: STD_LOGIC:= '0';
  signal CIPHERTEXT_OUT: STD_LOGIC_VECTOR (63 downto 0):= (others => '0') ;

  constant clock_period: time := 10000 ns;
  signal stop_the_clock: boolean;
  
  
   constant plaintext_test_vector: std_logic_vector(63 downto 0) := X"06034f957724d19d";
   constant tweakey_test_vector: std_logic_vector(63 downto 0) := X"f5269826fc681238";

begin

  uut: SKINNY_64_64_parallel port map ( CLK            => CLK,
                                        PLAINTEXT_IN   => PLAINTEXT_IN,
                                        TWEAKEY_IN         => TWEAKEY_IN,
                                        START          => START,
                                        DATA_READY     => DATA_READY,
                                        BUSY           => BUSY,
                                        CIPHERTEXT_OUT => CIPHERTEXT_OUT );

  stimulus: process
  begin

--FIRST ENCRYPT WITH TEST VECTORS   
data_ready <= '1';      
plaintext_in <= plaintext_test_vector; 
tweakey_in <= tweakey_test_vector; 
wait for clock_period;
data_ready <= '0'; 
wait for clock_period;
start <= '1'; 
wait for clock_period;
start <= '0'; 
while not (busy='0') loop
wait for clock_period;
end loop; 

wait for clock_period;

----SECOND ENCRYPT WITH ALL ONES FOR PLAINTEXT AND SAME KEY OF TEST VECTOR  
--wait for 10*clock_period;
--data_ready <= '1';      
--plaintext_in <= (others => '1'); 
--tweakey_in <= tweakey_test_vector; 
--wait for 2*clock_period;
--data_ready <= '0'; 
--wait for 5*clock_period;
--start <= '1'; 
--wait for clock_period;
--start <= '0'; 
--while not (busy='0') loop
--wait for clock_period;
--end loop; 

--wait for 10*clock_period;

----THIRD ENCRYPT WITH 0x0123456789abcdef AS KEY AND SAME PLAINTEXT  
--wait for 10*clock_period;
--data_ready <= '1';      
--plaintext_in <= (others => '1'); 
--tweakey_in <= X"0123456789abcdef";
--wait for 2*clock_period;
--data_ready <= '0'; 
--wait for 5*clock_period;
--start <= '1'; 
--wait for clock_period;
--start <= '0'; 
--while not (busy='0') loop
--wait for clock_period;
--end loop; 

--wait for 10*clock_period;

----FOURTH ENCRYPT WITH TEST VECTOR  
--wait for 10*clock_period;
--data_ready <= '1';      
--plaintext_in <= plaintext_test_vector; 
--tweakey_in <= tweakey_test_vector; 
--wait for 2*clock_period;
--data_ready <= '0'; 
--wait for 5*clock_period;
--start <= '1'; 
--wait for clock_period;
--start <= '0'; 
--while not (busy='0') loop
--wait for clock_period;
--end loop; 

--wait for 10*clock_period; 


    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      CLK <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;
  