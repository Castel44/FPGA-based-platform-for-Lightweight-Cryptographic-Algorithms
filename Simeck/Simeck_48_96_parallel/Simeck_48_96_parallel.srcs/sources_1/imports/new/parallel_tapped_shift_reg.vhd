library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity parallel_tapped_shift_reg is
  generic( width: integer:= 24 ; -- shift_reg width 
          length: integer:=2  -- shift_reg length 
          
         );
          
  port (          
            clk: in std_logic;
            D : in std_logic_vector(width-1 downto 0 ); 
            right_out : out std_logic_vector(width-1 downto 0); 
            CE : in std_logic;           
            left_out: out std_logic_vector(width-1 downto 0 )  
           
            
 ); 
end parallel_tapped_shift_reg;

architecture Behavioral of parallel_tapped_shift_reg is

signal temp_reg: std_logic_vector((width*length)-1 downto 0) := (Others => '0');

begin 
   

process(CLK,ce,D)  
begin 
            
    if rising_edge(CLK) then	    
        if (CE = '1') then 
                temp_reg <= temp_reg((width*length)-width-1 downto 0) & D;
         else        
           temp_reg <= temp_reg;   
           end if; 
   end if;  
end process;
			
right_out <= temp_reg((width*length-1) downto ((width*length)-width)); 
left_out <= temp_reg(((width*length)-width)-1 downto 0); 

end behavioral;


