library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity loader_reg is 

generic( 
    width: integer:=4; 
    length:integer:=16
);   
      
port (
    D : IN STD_LOGIC_VECTOR((width*length)-1 DOWNTO 0); 
    CE,CLK : IN STD_LOGIC;     
    Q: OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0)      
);		
		
end loader_reg;


architecture behavioral of loader_reg is 

signal temp_reg: std_logic_vector((width*length)-1 downto 0) := (Others => '0');


begin 
   
process(CLK,ce,D)  
begin             
    if rising_edge(CLK) then	    
        if (CE = '1') then    
            temp_reg <=  D( & temp_reg((width*length)-1 downto width);
        else          
            temp_reg <= temp_reg;      
        end if; 
    end if;  
end process;
	
Q <= temp_reg(length-1 downto 0); 


end behavioral;
