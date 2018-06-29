library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Simeck_tb is
end;

architecture bench of Simeck_tb is

  component Simeck_bit_serial
  
   Port ( start,clk,i_mode:in std_logic;
          key_in: in std_logic_vector(0 downto 0); 
          plaintext_in: in std_logic_vector(0 downto 0);
          busy: out std_logic;
          
          ciphertext_out: out std_logic_vector(0 downto 0)
         ); 
  end component;
  
  -- constants 
  constant datapath: integer := 1;
  constant key_size: integer := 64; 
  constant plaintext_size: integer := 32; 
  constant rnd_cnt_bits: integer := 5; 
  constant  min_number_rnds:integer := 32;

  signal start,clk,i_mode: std_logic:='0';
  signal key_in: std_logic_vector(datapath-1 downto 0):= (others => '0');
  signal plaintext_in: std_logic_vector(datapath-1 downto 0):= (others => '0');
  signal busy: std_logic:='0';
  signal ciphertext_out: std_logic_vector(datapath-1 downto 0):= (others => '0') ;

  constant clock_period: time := 10000 ns;
  signal stop_the_clock: boolean;
  
 
      CONSTANT plaintext_test_vector : std_logic_vector(plaintext_size - 1 DOWNTO 0) := X"65656877"; 
      CONSTANT key_test_vector : std_logic_vector(key_size - 1 DOWNTO 0) := X"1918111009080100";
      CONSTANT ciphertext_test_vector : std_logic_vector(plaintext_size - 1 DOWNTO 0) := X"770d2c76";
      
      CONSTANT key_vector : std_logic_vector(key_size - 1 DOWNTO 0) := X"0123456789ABCDEF";
      
--      CONSTANT plaintext_test_vector : std_logic_vector(plaintext_size - 1 DOWNTO 0) := (others => '0'); 
--      CONSTANT key_test_vector : std_logic_vector(key_size - 1 DOWNTO 0) := (others => '0');

begin

  -- Insert values for generic parameters !!
  uut: Simeck_bit_serial 
                 port map ( clk             => clk,
                            i_mode          => i_mode,
                            key_in          => key_in,
                            start => start,
                            plaintext_in    => plaintext_in,
                            busy            => busy,
                           
                            ciphertext_out  => ciphertext_out );

  stimulus: process
  begin

--FIRST ENCRYPT WITH TEST VECTOR
i_mode <= '1';        
WAIT FOR clock_period;  -------------------------------------------------serve senno sballa

for i in 31 downto 0 loop 
plaintext_in <= plaintext_test_vector(31-i downto 31-i); 
key_in <= key_test_vector(31-i downto 31-i); 
wait for clock_period;
i_mode <= '0'; 
end loop;  

for i in 63 downto 32 loop 
key_in <= key_test_vector(95-i downto 95-i); 
wait for clock_period;      
end loop;  
              
wait for clock_period; 
start <= '1'; 
wait for 2*clock_period;  -- !!!!!
start <= '0';

while not (busy='0') loop
wait for clock_period;
end loop; 

 wait for 32*clock_period;

----SECOOND ENCRYPT WITH ALL ONES FOR PLAINTEXT AND SAME KEY AS TEST VECTOR
--i_mode <= '1';        
--WAIT FOR clock_period;  -------------------------------------------------serve senno sballa
--plaintext_in <= (OTHERS => '1');
 
--for i in 31 downto 0 loop 
--key_in <= key_test_vector(31-i downto 31-i); 
--wait for clock_period;
--i_mode <= '0'; 
--end loop; 

--for i in 63 downto 32 loop 
--key_in <= key_test_vector(95-i downto 95-i); 
--wait for clock_period;      
--end loop;  
              
--wait for clock_period; 
--start <= '1'; 
--wait for 2*clock_period;  -- !!!!!
--start <= '0';

--while not (busy='0') loop
--wait for clock_period;
--end loop; 

-- wait for 40*clock_period;

----THIRD ENCRYPT WITH ALL ONES FOR PLAINTEXT AND X"0123456789ABCDEF" AS KEY    
-- i_mode <= '1';        
--WAIT FOR clock_period;  -------------------------------------------------serve senno sballa
--plaintext_in <= (OTHERS => '1');

--for i in 31 downto 0 loop 
--key_in <= key_vector(31-i downto 31-i); 
--wait for clock_period;
--i_mode <= '0'; 
--end loop; 

--for i in 63 downto 32 loop 
--key_in <= key_vector(95-i downto 95-i); 
--wait for clock_period;      
--end loop;  
              
--wait for clock_period; 
--start <= '1'; 
--wait for 2*clock_period;  -- !!!!!
--start <= '0';

--while not (busy='0') loop
--wait for clock_period;
--end loop; 

-- wait for 40*clock_period;    
 
-- --FOURTH ENCRYPT WITH TEST VECTOR
-- i_mode <= '1';        
-- WAIT FOR clock_period;  -------------------------------------------------serve senno sballa
 
-- for i in 31 downto 0 loop 
-- plaintext_in <= plaintext_test_vector(31-i downto 31-i); 
-- key_in <= key_test_vector(31-i downto 31-i); 
-- wait for clock_period;
-- i_mode <= '0'; 
-- end loop;  
 
-- for i in 63 downto 32 loop 
-- key_in <= key_test_vector(95-i downto 95-i); 
-- wait for clock_period;      
-- end loop;  
               
-- wait for clock_period; 
-- start <= '1'; 
-- wait for 2*clock_period;  -- !!!!!
-- start <= '0';
 
-- while not (busy='0') loop
-- wait for clock_period;
-- end loop; 
 
--  wait for 40*clock_period;   
        
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