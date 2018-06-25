library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity KEY_SHIFTREG is -- four words key size 

    generic( width: integer:=1; 
             length:integer:=64
        );   
          
 port (          
                   clk: in std_logic;
                   D : in std_logic_vector(width-1 downto 0 ); 
                   Q : out std_logic_vector(width-1 downto 0); 
                   CE : in std_logic;           
                 
                  KEY_REG_3n4_out:out std_logic_vector(width-1 downto 0);
                  KEY_REG_3n3_out:out std_logic_vector(width-1 downto 0);
                  KEY_REG_2n4_out:out std_logic_vector(width-1 downto 0);
                  KEY_REG_2n3_out:out std_logic_vector(width-1 downto 0);
                  
                  KEY_REG_n1_out: out std_logic_vector(width-1 downto 0);
                  KEY_REG_n_out:out std_logic_vector(width-1 downto 0);
                  
                  KEY_REG_1_out: out std_logic_vector(width-1 downto 0)
        );
   
   
end KEY_SHIFTREG;

architecture Behavioral of KEY_SHIFTREG is

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

-- KEY_REG_3n4_out <= temp_reg((width*length-((width*length)/4)+5*width)-1 downto ((width*length)-((width*length)/4)+4*width));
-- KEY_REG_3n3_out <= temp_reg((width*length-((width*length)/4)+4*width)-1 downto ((width*length)-((width*length)/4)+3*width));

-- KEY_REG_2n4_out <= temp_reg((width*length-((width*length)/3)+5*width)-1 downto ((width*length)-((width*length)/3)+4*width));
-- KEY_REG_2n3_out <= temp_reg((width*length-((width*length)/3)+4*width)-1 downto ((width*length)-((width*length)/3)+3*width));

-- KEY_REG_n1_out <= temp_reg((width*length-((width*length)/2)+2*width)-1 downto ((width*length)-((width*length)/2)+1*width));
-- KEY_REG_n_out <= temp_reg((width*length-((width*length)/2)+1*width)-1 downto ((width*length)-((width*length)/2)+0*width));
-- KEY_REG_1_out <= temp_reg((width*length-((width*length)/1)+2*width)-1 downto ((width*length)-((width*length)/1)+1*width));

 KEY_REG_3n4_out <= temp_reg(100 downto 100);
 KEY_REG_3n3_out <= temp_reg(99 downto 99);

 KEY_REG_2n4_out <= temp_reg(68 downto 68);
 KEY_REG_2n3_out <= temp_reg(67 downto 67);

 KEY_REG_n1_out <= temp_reg(33 downto 33);
 KEY_REG_n_out <= temp_reg(32 downto 32);
 KEY_REG_1_out <= temp_reg(1 downto 1);

end behavioral;