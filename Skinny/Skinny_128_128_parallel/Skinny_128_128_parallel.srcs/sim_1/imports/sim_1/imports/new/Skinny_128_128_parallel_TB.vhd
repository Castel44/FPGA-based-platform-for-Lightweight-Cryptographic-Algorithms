
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity SKINNY_128_TB is
end;

architecture bench of SKINNY_128_TB is

  component SKINNY_128_128_parallel
    Port ( 
          CLK : in STD_LOGIC;
                PLAINTEXT_IN : in  STD_LOGIC_VECTOR (127 downto 0);
                TWEAKEY_IN : in  STD_LOGIC_VECTOR (127 downto 0);
                START,DATA_READY : in  STD_LOGIC;
                BUSY : out  STD_LOGIC:='0';
                CIPHERTEXT_OUT : out  STD_LOGIC_VECTOR (127 downto 0):=(others => '0')
          ); 
  end component;

  signal CLK: STD_LOGIC;
  signal PLAINTEXT_IN: STD_LOGIC_VECTOR (127 downto 0):=(others => '0');
  signal TWEAKEY_IN: STD_LOGIC_VECTOR (127 downto 0):=(others => '0');
  signal START,DATA_READY: STD_LOGIC:= '0';
  signal BUSY: STD_LOGIC:= '0';
  signal CIPHERTEXT_OUT: STD_LOGIC_VECTOR (127 downto 0):=(others => '0') ;

  constant clock_period: time := 10000 ns;
  signal stop_the_clock: boolean;
  
  
   constant plaintext_test_vector: std_logic_vector(127 downto 0) := X"f20adb0eb08b648a3b2eeed1f0adda14";
   constant tweakey_test_vector: std_logic_vector(127 downto 0) := X"4f55cfb0520cac52fd92c15f37073e93";
   constant correct_ciphertext: std_logic_vector(127 downto 0) := X"22ff30d498ea62d7e45b476e33675b74";

begin

  uut: SKINNY_128_128_parallel port map ( CLK            => CLK,
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
  
  --SECOND ENCRYPT WITH ALL ONES FOR PLAINTEXT AND SAME KEY OF TEST VECTOR  
  wait for 10*clock_period;
  data_ready <= '1';      
  plaintext_in <= (others => '1'); 
  tweakey_in <= tweakey_test_vector; 
  wait for 2*clock_period;
  data_ready <= '0'; 
  wait for 5*clock_period;
  start <= '1'; 
  wait for clock_period;
  start <= '0'; 
  while not (busy='0') loop
  wait for clock_period;
  end loop; 
  
  wait for 10*clock_period;
  
  --THIRD ENCRYPT WITH 0x0123456789abcdef AS KEY AND SAME PLAINTEXT  
  wait for 10*clock_period;
  data_ready <= '1';      
  plaintext_in <= (others => '1'); 
  tweakey_in <= X"0123456789abcdef0123456789abcdef";
  wait for 2*clock_period;
  data_ready <= '0'; 
  wait for 5*clock_period;
  start <= '1'; 
  wait for clock_period;
  start <= '0'; 
  while not (busy='0') loop
  wait for clock_period;
  end loop; 
  
  wait for 10*clock_period;
  
  --FOURTH ENCRYPT WITH TEST VECTOR  
  wait for 10*clock_period;
  data_ready <= '1';      
  plaintext_in <= plaintext_test_vector; 
  tweakey_in <= tweakey_test_vector; 
  wait for 2*clock_period;
  data_ready <= '0'; 
  wait for 5*clock_period;
  start <= '1'; 
  wait for clock_period;
  start <= '0'; 
  while not (busy='0') loop
  wait for clock_period;
  end loop; 
  
  wait for 10*clock_period; 
--    -- Put test bench stimulus code here

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
  