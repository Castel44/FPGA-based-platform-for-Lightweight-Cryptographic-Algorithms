

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity end_encrypt_shift_reg is

  Port ( 
          ce,clk,rst: in std_logic; 
          
          end_encrypt: out std_logic:= '0'
 
  );
  
end end_encrypt_shift_reg;

architecture Behavioral of end_encrypt_shift_reg is



begin

process(clk,ce,rst) 

variable feedback: std_logic; 
variable reg_internal: std_logic_vector(1 downto 0):= "01"; 

begin 
 if rising_edge(clk)  then          
     if (rst='1') then 
       reg_internal := "01";

         
      elsif ce = '1' then  
      
         feedback := reg_internal(1) ; 
         reg_internal(1) := reg_internal(0); 
         reg_internal(0) := feedback; 
         
    end if; 
    
    end if; 
    
end_encrypt <= reg_internal(1) ; 

end process; 

end Behavioral;
