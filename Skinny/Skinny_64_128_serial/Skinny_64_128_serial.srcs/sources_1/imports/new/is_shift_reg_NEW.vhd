library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity IS_shift_reg is 

port (
 
     serial_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- serial input 4 bit 
     CLK : IN STD_LOGIC;
     CE: IN STD_LOGIC; --enable shifting 
     serial_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) --serial output 4 bit 
	 
		);		
		
end IS_shift_reg;


architecture behavioral of IS_shift_reg is 

signal temp_reg: std_logic_vector(15 downto 0) := (Others => '0');
TYPE STATES is (idle, shifting);
signal state: states; 


begin 
   

process(CLK,CE)  
begin 
            
    if rising_edge(CLK) then	    
        if (CE = '1') then 
                temp_reg <= temp_reg(11 downto 0) & serial_in;
                
              else  
               
               temp_reg <= temp_reg; 
                --state <= shifting;	
                		
                --parallel_output <= temp_reg;                    
               -- serial_output <= temp_reg(63 downto 60);                   
        
    end if;
   end if;  
end process;
			
serial_out <= temp_reg(15 downto 12); 

--enable_out <= enable_in; --propagate the enable

end behavioral;

