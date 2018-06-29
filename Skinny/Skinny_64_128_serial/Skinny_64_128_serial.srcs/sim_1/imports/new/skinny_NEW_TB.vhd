library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Skinny_64_128_tb is
end;

architecture bench of Skinny_64_128_tb is

  component Skinny_64_128
      Port (   	CLK : in STD_LOGIC;    
  				PLAINTEXT_IN : in  STD_LOGIC_VECTOR (3 downto 0);
  				TWEAKEY_IN : in  STD_LOGIC_VECTOR (3 downto 0);
  				data_ready,start: in std_logic; 
  				BUSY : out  STD_LOGIC:='0';
   				CIPHERTEXT_OUT : out  STD_LOGIC_VECTOR (3 downto 0):= (others => '0' )				 				
   				); 
  end component;

  signal CLK: STD_LOGIC;
  signal PLAINTEXT_IN: STD_LOGIC_VECTOR (3 downto 0):= (others => '0' );
  signal TWEAKEY_IN: STD_LOGIC_VECTOR (3 downto 0):= (others => '0' );
  signal data_ready,start: std_logic:='0';
  signal BUSY: STD_LOGIC:='0';
  signal CIPHERTEXT_OUT: STD_LOGIC_VECTOR (3 downto 0):= (others => '0' ) ;
  
  constant clock_period: time := 10000 ns;
  signal stop_the_clock: boolean;
  
  constant plaintext_test_vector: std_logic_vector(63 downto 0) := X"cf16cfe8fd0f98aa";
  constant tweakey_test_vector: std_logic_vector(127 downto 0) := X"9eb93640d088da6376a39d1c8bea71e1";
  constant correct_output: std_logic_vector(63 downto 0) := X"6ceda1f43de92b9e";

constant key_vector: std_logic_vector(127 downto 0):= X"0123456789abcdef0123456789abcdef";
begin

  uut: Skinny_64_128 port map ( CLK            => CLK,
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
plaintext_in <= plaintext_test_vector(63-4*i downto 60-4*i); 
Tweakey_in <= tweakey_test_vector(127-4*i downto 124-4*i); 
end loop;   
for i in 0 to 15 loop 
wait for clock_period;     
Tweakey_in <= tweakey_test_vector(63-4*i downto 60-4*i);  
end loop;   
wait for clock_period; 
start <= '1' ; 
wait for clock_period;
start <= '0' ; 
while not (busy='0') loop
wait for clock_period;
end loop; 

wait for 20*clock_period;

--SECOND ENCRYPT WITH ALL ONES FOR PLAINTEXT AND SAME KEY OF TEST VECTOR  
data_ready <= '1';  
plaintext_in <= (others => '1');
for i in 0 to 15 loop 
wait for clock_period; 
data_ready <= '0';    
Tweakey_in <= tweakey_test_vector(127-4*i downto 124-4*i); 
end loop;   
for i in 0 to 15 loop 
wait for clock_period;     
Tweakey_in <= tweakey_test_vector(63-4*i downto 60-4*i);  
end loop;   
wait for 5*clock_period; 
start <= '1' ; 
wait for clock_period;
start <= '0' ; 
while not (busy='0') loop
wait for clock_period;
end loop; 

wait for 20*clock_period;

--THIRD ENCRYPT WITH 0x0123456789abcdef AS KEY AND SAME PLAINTEXT  
data_ready <= '1';  
plaintext_in <= (others => '1');
for i in 0 to 15 loop 
wait for clock_period; 
data_ready <= '0';    
Tweakey_in <= key_vector(127-4*i downto 124-4*i); 
end loop;   
for i in 0 to 15 loop 
wait for clock_period;     
Tweakey_in <= key_vector(63-4*i downto 60-4*i);  
end loop;   
wait for 5*clock_period; 
start <= '1' ; 
wait for clock_period;
start <= '0' ; 
while not (busy='0') loop
wait for clock_period;
end loop; 

wait for 20*clock_period;  

--FOURTH ENCRYPT WITH TEST VECTOR    
wait for 10*clock_period;  
data_ready <= '1';  
for i in 0 to 15 loop 
wait for clock_period; 
data_ready <= '0'; 
plaintext_in <= plaintext_test_vector(63-4*i downto 60-4*i); 
Tweakey_in <= tweakey_test_vector(127-4*i downto 124-4*i); 
end loop;   
for i in 0 to 15 loop 
wait for clock_period;     
Tweakey_in <= tweakey_test_vector(63-4*i downto 60-4*i);  
end loop;   
wait for 5*clock_period; 
start <= '1' ; 
wait for clock_period;
start <= '0' ; 
while not (busy='0') loop
wait for clock_period;
end loop; 

wait for 20*clock_period;   

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