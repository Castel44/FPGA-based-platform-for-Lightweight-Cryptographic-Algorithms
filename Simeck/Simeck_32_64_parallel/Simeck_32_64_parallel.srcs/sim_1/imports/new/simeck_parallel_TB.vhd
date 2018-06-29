library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Simeck_tb is
end;

architecture bench of Simeck_tb is
  
  -- constants 
  constant datapath: integer := 16;
  constant key_size: integer := 64; 
  constant plaintext_size: integer := 32;   
  constant number_rnds:integer := 32;

  signal start,clk,data_ready: std_logic:='0';
  signal key_in: std_logic_vector(Datapath-1 downto 0):= (others => '0');
  signal plaintext_in: std_logic_vector(Datapath-1 downto 0):= (others => '0');
  signal busy: std_logic:= '0';
  signal ciphertext_out: std_logic_vector(Datapath-1 downto 0):= (others => '0') ;

  constant clock_period: time := 10000 ns;
  signal stop_the_clock: boolean;
  
  constant plaintext_test_vector: std_logic_vector(plaintext_size-1 downto 0) := X"65656877";  
  constant key_test_vector: std_logic_vector(key_size-1 downto 0) := X"1918111009080100"; 
  constant ciphertext_test_vector: std_logic_vector(plaintext_size-1 downto 0) := X"770d2c76";
  
  constant key_vector : std_logic_vector(key_size-1 downto 0) := X"0123456789abcdef"; 
  
  
 component Simeck_parallel
    
--   Generic ( Datapath : integer range 0 to 23 := 16;
--             Round_limit : integer range 0 to 36:= 32);
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
--                Generic map(Datapath => 16,
--                             Round_limit => 32)
                 port map ( clk             => clk,
                            data_ready          => data_ready,
                            key_in          => key_in,
                            start => start,
                            plaintext_in    => plaintext_in,
                            busy            => busy,
                           
                            ciphertext_out  => ciphertext_out );
                            
--START AND DATA READY SIGNAL MUST BE 2 CLK PERIOD LONG PULSE SIGNAL
  stimulus: process
  begin

data_ready <= '0' ; 
start <= '0';    
wait for 5*clock_period; 

--FIRST ENCRYPT WITH TEST VECTOR
data_ready <= '1';        
plaintext_in <= plaintext_test_vector(15 downto 0); 
key_in <= key_test_vector(15 downto 0); 
wait for 2*clock_period; -- !!!!!

data_ready <= '0';     
plaintext_in <= plaintext_test_vector(31 downto 16); 
key_in <= key_test_vector(31  downto 16);     
wait for clock_period;

key_in <= key_test_vector(47  downto 32);    
wait for clock_period;   
key_in <= key_test_vector(63  downto 48);   
               
wait for 5*clock_period; 
start <= '1'; 
wait for 2*clock_period;  -- !!!!!
start <= '0';

while not (busy='0') loop
wait for clock_period;
end loop; 


wait for 10*clock_period;

--SECOND ENCRYPT WITH ALL ONES FOR PLAINTEXT AND SAME KEY OF TEST VECTOR
data_ready <= '1';        
plaintext_in <= (others => '1'); 
key_in <= key_test_vector(15 downto 0); 
wait for 2*clock_period; -- !!!!!   
data_ready <= '0';     
key_in <= key_test_vector(31  downto 16);    
wait for clock_period;
key_in <= key_test_vector(47  downto 32);    
wait for clock_period;   
key_in <= key_test_vector(63  downto 48);                
wait for 5*clock_period; 
start <= '1'; 
wait for 2*clock_period;  -- !!!!!
start <= '0';

while not (busy='0') loop
wait for clock_period;
end loop; 
    
    
wait for 10*clock_period;   

--THIRD ENCRYPT WITH 0x0123456789abcdef AS KEY AND SAME PLAINTEXT
data_ready <= '1';        
key_in <= key_vector(15 downto 0); 
wait for 2*clock_period; -- !!!!!   
data_ready <= '0';     
key_in <= key_vector(31  downto 16);    
wait for clock_period;
key_in <= key_vector(47  downto 32);    
wait for clock_period;   
key_in <= key_vector(63  downto 48);                
wait for 5*clock_period; 
start <= '1'; 
wait for 2*clock_period;  -- !!!!!
start <= '0';

while not (busy='0') loop
wait for clock_period;
end loop; 
    
    
wait for 10*clock_period;     

--FOURTH ENCRYPT WITH TEST VECTORS
data_ready <= '1';        
plaintext_in <= plaintext_test_vector(15 downto 0); 
key_in <= key_test_vector(15 downto 0); 
wait for 2*clock_period; -- !!!!!
data_ready <= '0';     
plaintext_in <= plaintext_test_vector(31 downto 16); 
key_in <= key_test_vector(31  downto 16);     
wait for clock_period;
key_in <= key_test_vector(47  downto 32);    
wait for clock_period;   
key_in <= key_test_vector(63  downto 48);              
wait for 5*clock_period; 
start <= '1'; 
wait for 2*clock_period;  -- !!!!!
start <= '0';

while not (busy='0') loop
wait for clock_period;
end loop; 
        
        
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