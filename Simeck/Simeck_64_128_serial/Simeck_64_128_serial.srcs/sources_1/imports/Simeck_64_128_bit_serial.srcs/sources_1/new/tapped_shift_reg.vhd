

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tapped_shift_reg is

    generic( width: integer:=1; 
             length:integer:=16
        );   
          
 port (          
                   clk: in std_logic;
                   D : in std_logic_vector(width-1 downto 0 ); 
                   Q : out std_logic_vector(width-1 downto 0); 
                   CE : in std_logic;           
                   bn1_out: out std_logic_vector(width-1 downto 0 ); 
                   bn5_out: out std_logic_vector(width-1 downto 0 ) 
                   
        );
   
   
end tapped_shift_reg;

architecture Behavioral of tapped_shift_reg is

signal temp_reg: std_logic_vector((width*length)-1 downto 0) := (Others => '0');




begin 
   

process(CLK,ce,D)  
begin 
            
    if rising_edge(CLK) then	    
        if (CE = '1') then 
                temp_reg <= D & temp_reg((width*length)-1 downto width)  ;
         else        
           temp_reg <= temp_reg;   
           end if; 
   end if;  
end process;
			
Q <= temp_reg(width-1 downto 0); 
bn5_out <= temp_reg((width*length-4*width)-1 downto ((width*length)-5*width));
bn1_out <= temp_reg(width*length-1 downto width*length-width);

end behavioral;
