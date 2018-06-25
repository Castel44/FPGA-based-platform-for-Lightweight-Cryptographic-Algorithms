library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Simon_tb is
end;

architecture bench of Simon_tb is

  component Simon_128_128_parallel
--         Generic ( Datapath : integer  := 64);
         Port ( 
        clk,data_ready,start: in std_logic; 
        key_in: in std_logic_vector(63 downto 0);
        plaintext_in: in std_logic_vector(63 downto 0);
        busy: out std_logic:= '0';   
        ciphertext_out: out std_logic_vector(63 downto 0):= (others => '0')
        );      
  end component;
 
  constant datapath: integer := 64;
  constant key_size: integer := 128; 
  constant plaintext_size: integer := 128;   
  constant number_rnds:integer := 42;

  signal clk,data_ready,start: std_logic;
  signal key_in: std_logic_vector(Datapath - 1 downto 0);
  signal plaintext_in: std_logic_vector(Datapath - 1 downto 0);
  signal busy: std_logic:= '0';
  signal ciphertext_out: std_logic_vector(Datapath - 1 downto 0):= (others => '0') ;
  
   constant plaintext_test_vector: std_logic_vector(plaintext_size-1 downto 0) := X"63736564207372656c6c657661727420"  ;  
   constant key_test_vector: std_logic_vector(key_size-1 downto 0) := X"0f0e0d0c0b0a09080706050403020100"; 
   constant ciphertext_test_vector: std_logic_vector(plaintext_size-1 downto 0) := X"49681b1e1e54fe3f65aa832af84e0bbc";
   
 --constant key_vector: std_logic_vector(key_size -1 downto 0):= X"0123456789abcdef0123456789abcdef";
  

  constant clock_period: time := 10 us;
  signal stop_the_clock: boolean;

begin

  -- Insert values for generic parameters !!
  uut: Simon_128_128_parallel --generic map ( Datapath       =>  datapath)
                               port map ( clk            => clk,
                                          data_ready     => data_ready,
                                          start          => start,
                                          key_in         => key_in,
                                          plaintext_in   => plaintext_in,
                                          busy           => busy,
                                          ciphertext_out => ciphertext_out );

  stimulus: process
  begin
    
    --FIRST ENCRYPT WITH TEST VECTOR
    data_ready <= '1';        
    wait for clock_period; 
    plaintext_in <= plaintext_test_vector(63 downto 0); 
    key_in <= key_test_vector(63 downto 0); 
    wait for clock_period; -- !!!!!
    
    data_ready <= '0';     
    plaintext_in <= plaintext_test_vector(127 downto 64); 
    key_in <= key_test_vector(127  downto 64);     
    wait for 2*clock_period;
 
    start <= '1'; 
    wait for 2*clock_period;  -- !!!!!
    start <= '0';
    
    while not (busy='0') loop
    wait for clock_period;
    end loop; 
    
    
    wait for 2*clock_period;

--    --SECOND ENCRYPT WITH ALL ONES FOR PLAINTEXT AND SAME KEY OF TEST VECTOR
--data_ready <= '1';        
--plaintext_in <= (others => '1'); 
--key_in <= key_test_vector(31 downto 0); 
--wait for 2*clock_period; -- !!!!!   
--data_ready <= '0';     
--key_in <= key_test_vector(63  downto 32);    
--wait for clock_period;
--key_in <= key_test_vector(95  downto 64);    
--wait for clock_period;   
--key_in <= key_test_vector(127  downto 96);                
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
--key_in <= key_vector(31 downto 0); 
--wait for 2*clock_period; -- !!!!!   
--data_ready <= '0';     
--key_in <= key_vector(63  downto 32);    
--wait for clock_period;
--key_in <= key_vector(95  downto 64);    
--wait for clock_period;   
--key_in <= key_vector(127  downto 96);                
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
--plaintext_in <= plaintext_test_vector(31 downto 0); 
--key_in <= key_test_vector(31 downto 0); 
--wait for 2*clock_period;     
--data_ready <= '0';     
--plaintext_in <= plaintext_test_vector(63 downto 32); 
--key_in <= key_test_vector(63 downto 32);     
--wait for clock_period;       
--key_in <= key_test_vector(95  downto 64);    
--wait for clock_period;   
--key_in <= key_test_vector(127  downto 96);           
--wait for 5*clock_period; 
--start <= '1'; 
--wait for 5*clock_period; 
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
