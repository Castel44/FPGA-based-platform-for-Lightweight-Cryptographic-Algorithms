library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Simeck_tb is
end;

architecture bench of Simeck_tb is

  -- constants 
  constant datapath: integer := 24;
  constant key_size: integer := 96; 
  constant plaintext_size: integer := 48; 
  constant  min_number_rnds:integer := 36;

  signal start,clk,data_ready: std_logic:='0';
  signal key_in: std_logic_vector(Datapath-1 downto 0):= (others => '0');
  signal plaintext_in: std_logic_vector(Datapath-1 downto 0):= (others => '0');
  signal busy: std_logic:='0';
  signal ciphertext_out: std_logic_vector(Datapath-1 downto 0):= (others => '0') ;

  constant clock_period: time := 10000 ns;
  signal stop_the_clock: boolean;
  
  constant plaintext_test_vector: std_logic_vector(plaintext_size-1 downto 0) := X"72696320646e";  --65656877
  constant key_test_vector: std_logic_vector(key_size-1 downto 0) := X"1a19181211100a0908020100"; --1918111009080100
  constant ciphertext_test_vector: std_logic_vector(plaintext_size-1 downto 0) := X"f3cf25e33b36";
  
  constant key_vector: std_logic_vector(key_size -1 downto 0):= X"0123456789abcdef01234567";
  
component Simeck_parallel
--   Generic ( Datapath : integer range 0 to 32 := 24;
--             Round_limit : integer range 0 to 44:= 36);
   Port ( 
      clk,data_ready,start: in std_logic; 
      key_in: in std_logic_vector(Datapath - 1 downto 0);  -- metà caricata
      plaintext_in: in std_logic_vector(Datapath - 1 downto 0);
      busy: out std_logic:= '0';   
      ciphertext_out: out std_logic_vector(Datapath - 1 downto 0):= (others => '0')
      );      
  end component;
begin

  -- Insert values for generic parameters !!
  uut: Simeck_parallel
--                Generic map(Datapath => 24,
--                             Round_limit => 36)
                 port map ( clk             => clk,
                            data_ready          => data_ready,
                            key_in          => key_in,
                            start => start,
                            plaintext_in    => plaintext_in,
                            busy            => busy,
                           
                            ciphertext_out  => ciphertext_out );

  stimulus: process
  begin


--FIRST ENCRYPT WITH TEST VECTOR
data_ready <= '1';     
plaintext_in <= plaintext_test_vector(23 downto 0); 
key_in <= key_test_vector(23 downto 0); 
wait for 2*clock_period;     
data_ready <= '0';     
plaintext_in <= plaintext_test_vector(47 downto 24); 
key_in <= key_test_vector(47  downto 24);     
wait for clock_period;       
key_in <= key_test_vector(71  downto 48);    
wait for clock_period;   
key_in <= key_test_vector(95  downto 72); 
wait for 2*clock_period; 
start <= '1'; 
wait for 2*clock_period; 
start <= '0'; 

while not (busy='0') loop
wait for clock_period;
end loop; 


wait for 2*clock_period;    
    
-- --SECOND ENCRYPT WITH ALL ONES FOR PLAINTEXT AND SAME KEY OF TEST VECTOR
--data_ready <= '1';        
--plaintext_in <= (others => '1'); 
--key_in <= key_test_vector(23 downto 0); 
--wait for 2*clock_period; -- !!!!!   
--data_ready <= '0';     
--key_in <= key_test_vector(47  downto 24);    
--wait for clock_period;
--key_in <= key_test_vector(71  downto 48);    
--wait for clock_period;   
--key_in <= key_test_vector(95  downto 72);                
--wait for 5*clock_period; 
--start <= '1'; 
--wait for 2*clock_period;  -- !!!!!
--start <= '0';

--while not (busy='0') loop
--wait for clock_period;
--end loop; 
    
    
--wait for 10*clock_period;     
    
----THIRD ENCRYPT WITH 0x0123456789abcdef AS KEY AND SAME PLAINTEXT
--data_ready <= '1';        
--key_in <= key_vector(23 downto 0); 
--wait for 2*clock_period; -- !!!!!   
--data_ready <= '0';     
--key_in <= key_vector(47  downto 24);    
--wait for clock_period;
--key_in <= key_vector(71  downto 48);    
--wait for clock_period;   
--key_in <= key_vector(95  downto 72);                
--wait for 5*clock_period; 
--start <= '1'; 
--wait for 2*clock_period;  -- !!!!!
--start <= '0';

--while not (busy='0') loop
--wait for clock_period;
--end loop; 
    
    
--wait for 10*clock_period;     

----FIRST ENCRYPT WITH TEST VECTOR
--data_ready <= '1';     
--plaintext_in <= plaintext_test_vector(23 downto 0); 
--key_in <= key_test_vector(23 downto 0); 
--wait for 2*clock_period;     
--data_ready <= '0';     
--plaintext_in <= plaintext_test_vector(47 downto 24); 
--key_in <= key_test_vector(47  downto 24);     
--wait for clock_period;       
--key_in <= key_test_vector(71  downto 48);    
--wait for clock_period;   
--key_in <= key_test_vector(95  downto 72); 
--wait for 5*clock_period; 
--start <= '1'; 
--wait for 2*clock_period; 
--start <= '0'; 

--while not (busy='0') loop
--wait for clock_period;
--end loop;   
    
        
        
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