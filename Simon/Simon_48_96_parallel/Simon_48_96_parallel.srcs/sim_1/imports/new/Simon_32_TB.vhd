library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Simon_tb is
end;

architecture bench of Simon_tb is

  component Simon_48_96_parallel
         --Generic ( Datapath : integer  := 24);
         Port ( 
        clk,data_ready,start: in std_logic; 
        key_in: in std_logic_vector(23 downto 0);
        plaintext_in: in std_logic_vector(23 downto 0);
        busy: out std_logic:= '0';   
        ciphertext_out: out std_logic_vector(23 downto 0)
        );      
  end component;
 
  constant datapath: integer := 24;
  constant key_size: integer := 96; 
  constant plaintext_size: integer := 48;   
  constant number_rnds:integer := 36;

  signal clk,data_ready,start: std_logic:='0';
  signal key_in: std_logic_vector(Datapath - 1 downto 0):= (others => '0');
  signal plaintext_in: std_logic_vector(Datapath - 1 downto 0):= (others => '0');
  signal busy: std_logic:= '0';
  signal ciphertext_out: std_logic_vector(Datapath - 1 downto 0):= (others => '0') ;
  
   constant plaintext_test_vector: std_logic_vector(plaintext_size-1 downto 0) := X"72696320646e"  ;  
   constant key_test_vector: std_logic_vector(key_size-1 downto 0) := X"1a19181211100a0908020100"; 
   constant ciphertext_test_vector: std_logic_vector(plaintext_size-1 downto 0) := X"6e06a5acf156";
   
  -- constant key_vector : std_logic_vector(key_size-1 downto 0) := X"0123456789abcdef";
  

  constant clock_period: time := 10000 ns;
  signal stop_the_clock: boolean;

begin

  -- Insert values for generic parameters !!
  uut: Simon_48_96_parallel --generic map ( Datapath       =>  datapath)
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
    plaintext_in <= plaintext_test_vector(23 downto 0); 
    key_in <= key_test_vector(23 downto 0); 
    wait for 2*clock_period; -- !!!!!
    
    data_ready <= '0';     
    plaintext_in <= plaintext_test_vector(47 downto 24); 
    key_in <= key_test_vector(47  downto 24);     
    wait for clock_period;
    
    key_in <= key_test_vector(71  downto 48);    
    wait for clock_period;   
    key_in <= key_test_vector(95  downto 72);   
                   
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
