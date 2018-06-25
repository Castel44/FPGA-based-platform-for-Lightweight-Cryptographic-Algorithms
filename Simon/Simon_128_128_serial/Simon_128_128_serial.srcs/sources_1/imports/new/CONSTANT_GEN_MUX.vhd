

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity constant_gen_mux is

generic (datapath: integer); 
                   
         port (              
                         element_cnt_in: in std_logic_vector(5 downto 0); 
                         lfsr_in: in std_logic_vector(datapath-1 downto 0);
                         Const_out: out std_logic_vector(datapath-1 downto 0 )
                          
          ); 

end  constant_gen_mux;
 

architecture Behavioral of constant_gen_mux is


begin 
   		
			
with element_cnt_in select Const_out <=	  lfsr_in xor b"0" when b"000000", 	
                                          b"0" when b"000001",
                                          b"1" when others; 



end Behavioral;

