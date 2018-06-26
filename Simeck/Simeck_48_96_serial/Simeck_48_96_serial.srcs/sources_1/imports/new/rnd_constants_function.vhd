library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity rnd_constants_MUX is

        generic( datapath:integer:=1;
                 cnt_size:integer:=4
                );
                   
         port (              
                         element_cnt_in: in std_logic_vector(cnt_size-1 downto 0); 
                         lfsr_in: in std_logic_vector(0 downto 0);
                         Const_out: out std_logic_vector(datapath-1 downto 0 )
                          
          ); 

end  rnd_constants_MUX;
 

architecture Behavioral of rnd_constants_MUX is


begin 
   		
datapath1: if datapath = 1 generate   		
			
with element_cnt_in select Const_out <=	  lfsr_in xor b"0" when std_logic_vector(to_unsigned(0,cnt_size)), 	
                                          b"0" when std_logic_vector(to_unsigned(1,cnt_size)),
                                          b"1" when others; 

end generate; 

datapath2: if datapath = 2 generate   		
			
with element_cnt_in select Const_out <=	 b"0" & lfsr_in xor b"0" when std_logic_vector(to_unsigned(0,cnt_size)), 	 --b"0000"
                                         b"11" when others; 
                                         
                                         
 end generate;                                         
 
datapath4: if datapath = 4 generate   		
                                                     
                  with element_cnt_in select Const_out <=  b"1"  & b"1" &  b"0" & lfsr_in xor b"0" when std_logic_vector(to_unsigned(0,cnt_size)),      --b"0000"
                                                           b"1111" when others; 
end generate; 

datapath8: if datapath = 8 generate   		
                                                     
                  with element_cnt_in select Const_out <=  b"111111" &  b"0" & lfsr_in xor b"0" when std_logic_vector(to_unsigned(0,cnt_size)),      --b"0000"
                                                           b"11111111" when others; 
end generate; 


datapath12: if datapath = 12 generate   		
                                                     
         with element_cnt_in select Const_out <=  b"1111111111" &  b"0" & lfsr_in xor b"0" when std_logic_vector(to_unsigned(0,cnt_size)),      --b"0000"
                                                  b"111111111111" when others; 
                                                           
end generate; 



end Behavioral;

