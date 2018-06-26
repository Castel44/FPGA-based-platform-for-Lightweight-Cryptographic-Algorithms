library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Simeck_tb is
end;

architecture bench of Simeck_tb is

  component Simeck_parallel
   Generic ( Datapath : integer range 0 to 32 ;
             Round_limit : integer range 0 to 44);
   Port ( 
      clk,data_ready,start: in std_logic; 
      key_in: in std_logic_vector(Datapath - 1 downto 0);  -- metà caricata
      plaintext_in: in std_logic_vector(Datapath - 1 downto 0);
      busy: out std_logic:= '0';   
      ciphertext_out: out std_logic_vector(Datapath - 1 downto 0):= (others => '0')
      );      
  end component;
  
  -- constants 
  constant datapath: integer := 32;
  constant key_size: integer := 128; 
  constant plaintext_size: integer := 64; 
  constant rnd_cnt_bits: integer := 6; 
  constant  min_number_rnds:integer := 44;

  signal start,clk,data_ready: std_logic;
  signal key_in: std_logic_vector(Datapath-1 downto 0);
  signal plaintext_in: std_logic_vector(Datapath-1 downto 0);
  signal busy: std_logic;
  signal ciphertext_out: std_logic_vector(Datapath-1 downto 0):= (others => '0') ;

  constant clock_period: time := 500 ns;
  signal stop_the_clock: boolean;
  
  constant plaintext_test_vector: std_logic_vector(plaintext_size-1 downto 0) := X"656b696c20646e75";  --65656877
  constant key_test_vector: std_logic_vector(key_size-1 downto 0) := X"1b1a1918131211100b0a090803020100"; --1918111009080100
  constant ciphertext_test_vector: std_logic_vector(plaintext_size-1 downto 0) := X"45ce69025f7ab7ed";

begin

  -- Insert values for generic parameters !!
  uut: Simeck_parallel
                Generic map(Datapath => 32,
                             Round_limit => 44)
                 port map ( clk             => clk,
                            data_ready          => data_ready,
                            key_in          => key_in,
                            start => start,
                            plaintext_in    => plaintext_in,
                            busy            => busy,
                           
                            ciphertext_out  => ciphertext_out );

  stimulus: process
  begin
  
    data_ready <= '0' ; 
    start <= '0'; 
    plaintext_in <= (others => '0'); 
    key_in <= (others => '0');
    
    wait for 5*clock_period; 
    
    
    start <= '0' ; 
    wait for clock_period/2;
    data_ready <= '1'; 
    
    
    wait for clock_period;
    
    plaintext_in <= plaintext_test_vector(31 downto 0); 
    key_in <= key_test_vector(31 downto 0); 
     wait for clock_period;
     
    data_ready <= '0'; 
    
    plaintext_in <= plaintext_test_vector(63 downto 32); 
    key_in <= key_test_vector(63 downto 32); 
    
    wait for clock_period;
    
   
    key_in <= key_test_vector(95  downto 64); 
   
     wait for clock_period;
   
    key_in <= key_test_vector(127  downto 96); 
       
       
    
    
     wait for 100*clock_period; 
     start <= '1'; 
    wait for 5*clock_period; 
    start <= '0'; 
    plaintext_in <= (others => '0'); 
     wait for 1000*clock_period; 

    
    
    
        
        
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