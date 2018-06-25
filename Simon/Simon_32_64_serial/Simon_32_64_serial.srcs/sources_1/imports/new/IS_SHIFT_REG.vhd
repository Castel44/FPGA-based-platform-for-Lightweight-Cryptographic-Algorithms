

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity IS_SHIFT_REG is

    generic( width: integer:=1; 
             length:integer:=32
        );   
          
 port (          
                   clk: in std_logic;
                   D : in std_logic_vector(width-1 downto 0 ); 
                   Q : out std_logic_vector(width-1 downto 0); 
                   CE : in std_logic;           
                 
                   IS_2n1_out:out std_logic_vector(width-1 downto 0);          
                   IS_2n2_out:out std_logic_vector(width-1 downto 0);
                   IS_2n8_out:out std_logic_vector(width-1 downto 0);
                               
                 IS_n1_out:out std_logic_vector(width-1 downto 0);        
                 IS_n2_out:out std_logic_vector(width-1 downto 0); 
                 IS_n8_out:out std_logic_vector(width-1 downto 0)
        );
   
   
end IS_SHIFT_REG;

architecture Behavioral of IS_SHIFT_REG is

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
			
Q <= temp_reg((width*length)-(width*length)+width-1 downto 0); 

--IS_2n1_out <= temp_reg(width*length-1 downto width*length-width);

--IS_2n2_out <= temp_reg((width*length-1*width)-1 downto ((width*length)-2*width));

--IS_2n8_out <= temp_reg((width*length-7*width)-1 downto ((width*length)-8*width));

--IS_n1_out <= temp_reg((((width*length)/2))-1 downto (((width*length)/2)-width));

--IS_n2_out <= temp_reg((((width*length)/2)-1*width)-1 downto (((width*length)/2)-2*width));

--IS_n8_out <= temp_reg((((width*length)/2)-7*width)-1 downto (((width*length)/2)-8*width));



IS_2n1_out <= temp_reg(31 downto 31);

IS_2n2_out <= temp_reg(30 downto 30);

IS_2n8_out <= temp_reg(24 downto 24);

IS_n1_out <= temp_reg(15 downto 15);

IS_n2_out <= temp_reg(14 downto 14);

IS_n8_out <= temp_reg(8 downto 8);


end behavioral;
