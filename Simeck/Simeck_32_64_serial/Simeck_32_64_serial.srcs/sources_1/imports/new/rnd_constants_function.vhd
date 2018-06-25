

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity rnd_constants_MUX is
                   
         port (              
                         element_cnt_in: in std_logic_vector(3 downto 0); 
                         lfsr_in: in std_logic_vector(0 downto 0);
                         Const_out: out std_logic_vector(0 downto 0 )
                          
          ); 

end  rnd_constants_MUX;
 

architecture Behavioral of rnd_constants_MUX is


begin 
   		
			
with element_cnt_in select Const_out <=	  lfsr_in xor b"0" when b"0000", 	
                                          b"0" when b"0001",
                                          b"1" when others; 



end Behavioral;

