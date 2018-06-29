library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Skinny_tb is
end;

architecture bench of Skinny_tb is

  component Skinny_128_128
      Port (   	CLK : in STD_LOGIC;    
  				PLAINTEXT_IN : in  STD_LOGIC_VECTOR (7 downto 0);
  				TWEAKEY_IN : in  STD_LOGIC_VECTOR (7 downto 0);
  				data_ready,start: in std_logic; 
  				BUSY : out  STD_LOGIC:='0';
   				CIPHERTEXT_OUT : out  STD_LOGIC_VECTOR (7 downto 0):= (others => '0' )				 				
   				); 
  end component;

  signal CLK: STD_LOGIC;
  signal PLAINTEXT_IN: STD_LOGIC_VECTOR (7 downto 0):= (others => '0');
  signal TWEAKEY_IN: STD_LOGIC_VECTOR (7 downto 0):= (others => '0');
  signal data_ready,start: std_logic:= '0';
  signal BUSY: STD_LOGIC:='0';
  signal CIPHERTEXT_OUT: STD_LOGIC_VECTOR (7 downto 0):= (others => '0' ) ;
  
  constant clock_period: time := 10000 ns; 
  signal stop_the_clock: boolean;
  
  constant plaintext_test_vector: std_logic_vector(127 downto 0) := X"f20adb0eb08b648a3b2eeed1f0adda14";
  constant tweakey_test_vector: std_logic_vector(127 downto 0) := X"4f55cfb0520cac52fd92c15f37073e93";
  constant correct_ciphertext: std_logic_vector(127 downto 0) := X"22ff30d498ea62d7e45b476e33675b74";
  
  constant key_vector: std_logic_vector(127 downto 0):= X"0123456789abcdef0123456789abcdef";

begin

  uut: Skinny_128_128 port map ( CLK            => CLK,
                               START => START,
                               PLAINTEXT_IN   => PLAINTEXT_IN,
                               TWEAKEY_IN     => TWEAKEY_IN,
                               data_ready     => data_ready,
                               BUSY           => BUSY,
                               CIPHERTEXT_OUT => CIPHERTEXT_OUT );



 
 
  stimulus: process
  begin

--FIRST ENCRYPT WITH TEST VECTORS   
data_ready <= '1';   
for i in 0 to 15 loop 
wait for clock_period; 
data_ready <= '0'; 
plaintext_in <= plaintext_test_vector(127-8*i downto 120-8*i); 
Tweakey_in <= tweakey_test_vector(127-8*i downto 120-8*i); 
end loop; 
wait for clock_period; 
start <= '1' ; 
wait for clock_period;
start <= '0' ;    
while not (busy='0') loop
wait for clock_period;
end loop; 
     
wait for 20*clock_period;
     
----SECOND ENCRYPT ALL ONES PLAINTEXT SAME TWEAKEY
--data_ready <= '1'; 
--plaintext_in <= (others => '1');
--for i in 0 to 15 loop 
--wait for clock_period; 
--data_ready <= '0';       
--Tweakey_in <= tweakey_test_vector(127-8*i downto 120-8*i); 
--end loop; 
--wait for 5*clock_period; 
--start <= '1' ; 
--wait for clock_period;
--start <= '0' ;         
--while not (busy='0') loop
--wait for clock_period;
--end loop;     
      
--wait for 20*clock_period;

----THIRD ENCRYPT WITH 0x0123456789abcdef AS KEY AND SAME PLAINTEXT
--data_ready <= '1'; 
--plaintext_in <= (others => '1');
--for i in 0 to 15 loop 
--wait for clock_period; 
--data_ready <= '0';       
--Tweakey_in <= key_vector(127-8*i downto 120-8*i); 
--end loop; 
--wait for 5*clock_period; 
--start <= '1' ; 
--wait for clock_period;
--start <= '0' ;         
--while not (busy='0') loop
--wait for clock_period;
--end loop;  
         
--wait for 20*clock_period;

----FOURTH ENCRYPT WITH TEST VECTOR                          
--data_ready <= '1';             
--for i in 0 to 15 loop 
--wait for clock_period; 
--data_ready <= '0'; 
--plaintext_in <= plaintext_test_vector(127-8*i downto 120-8*i); 
--Tweakey_in <= tweakey_test_vector(127-8*i downto 120-8*i); 
--end loop; 
--wait for 5*clock_period; 
--start <= '1' ; 
--wait for clock_period;
--start <= '0' ; 
--while not (busy='0') loop
--wait for clock_period;
--end loop; 

--wait for 20*clock_period;

          
          
    
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