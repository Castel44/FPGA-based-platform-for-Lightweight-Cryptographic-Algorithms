library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Testing_IP_TB is

end Testing_IP_TB;


architecture Behavioral of Testing_IP_TB is

component Testing_IP is
  Port (   
    start: in std_logic; 
    clk: in std_logic; 
    
    rst: in std_logic; 
    
    led_out: out std_logic    
     );
 
end component; 


signal clk: std_logic := '0';
signal start,rst : std_logic := '0';
signal led_out: std_logic := '0'; 

constant clock_period: time := 8 ns;
signal stop_the_clock: boolean;


begin

uut: Testing_IP 

port map ( 
 clk =>clk, 
 start => start, 
 rst => rst, 
 led_out => led_out
); 


clocking: process
  begin
    while not stop_the_clock loop
      CLK <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;
  
  
stimulus: process
begin
    wait for clock_period;   
    rst <= '1';   
    wait for clock_period;
    rst <= '0';
    wait for 10*clock_period;
    
    start <= '1'; 
    wait for clock_period;
    start <= '0'; 
    while (led_out = '0') loop
    wait for clock_period;
    end loop;
    
    rst <= '1';   
    wait for clock_period;
    rst <= '0';
    wait for 10*clock_period;
    
    start <= '1'; 
    wait for clock_period;
    start <= '0'; 
    while (led_out = '0') loop
    wait for clock_period;
    end loop;
    
    wait for 100*clock_period;
    
    stop_the_clock <= true;
    wait;

end process;

end Behavioral;