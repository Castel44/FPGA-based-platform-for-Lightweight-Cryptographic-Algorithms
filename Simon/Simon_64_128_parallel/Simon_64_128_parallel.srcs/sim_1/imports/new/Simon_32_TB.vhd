library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Simon_tb is
end;

architecture bench of Simon_tb is

  component Simon_64_128_parallel
        -- Generic ( Datapath : integer  := 32);
         Port ( 
        clk,data_ready,start: in std_logic; 
        key_in: in std_logic_vector(31 downto 0);
        plaintext_in: in std_logic_vector(31 downto 0);
        busy: out std_logic:= '0';   
        ciphertext_out: out std_logic_vector(31 downto 0):= (others => '0')
        );      
  end component;
 
  constant datapath: integer := 32;
  constant key_size: integer := 128; 
  constant plaintext_size: integer := 64;   
  constant number_rnds:integer := 42;

  signal clk,data_ready,start: std_logic:='0';
  signal key_in: std_logic_vector(Datapath - 1 downto 0):= (others => '0');
  signal plaintext_in: std_logic_vector(Datapath - 1 downto 0):= (others => '0');
  signal busy: std_logic:= '0';
  signal ciphertext_out: std_logic_vector(Datapath - 1 downto 0):= (others => '0') ;
  
   constant plaintext_test_vector: std_logic_vector(plaintext_size-1 downto 0) := X"656b696c20646e75"  ;  
   constant key_test_vector: std_logic_vector(key_size-1 downto 0) := X"1b1a1918131211100b0a090803020100"; 
   constant ciphertext_test_vector: std_logic_vector(plaintext_size-1 downto 0) := X"44c8fc20b9dfa07a";
   
  -- constant key_vector : std_logic_vector(key_size-1 downto 0) := X"0123456789abcdef";
  

  constant clock_period: time := 10000 ns;
  signal stop_the_clock: boolean;

begin

  -- Insert values for generic parameters !!
  uut: Simon_64_128_parallel --generic map ( Datapath       =>  datapath)
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
    plaintext_in <= plaintext_test_vector(31 downto 0); 
    key_in <= key_test_vector(31 downto 0); 
    wait for 2*clock_period; -- !!!!!
    
    data_ready <= '0';     
    plaintext_in <= plaintext_test_vector(63 downto 32); 
    key_in <= key_test_vector(63  downto 32);     
    wait for clock_period;
    
    key_in <= key_test_vector(95  downto 64);    
    wait for clock_period;   
    key_in <= key_test_vector(127  downto 96);   
                   
    wait for 2*clock_period; 
    start <= '1'; 
    wait for 2*clock_period;  -- !!!!!
    start <= '0';
    
    while not (busy='0') loop
    wait for clock_period;
    end loop; 
    
    
    wait for 2*clock_period;

    -- Put test bench stimulus code here

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
