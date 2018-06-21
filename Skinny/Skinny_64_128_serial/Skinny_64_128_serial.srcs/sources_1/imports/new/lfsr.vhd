 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- NB after reset the output is 00, the constant for first round is 01 so after reset before it could be used one should wait till the next clock rising edge

entity lfsr is
    port( clk,ce: in std_logic;
        reset:in std_logic; 
        lfsr_out: out std_logic_vector (5 downto 0):= (others => '0')
         );
       
         
end lfsr;


architecture Behavioral of lfsr is

begin
process(clk,reset,ce) 
    
variable lfsr_internal : std_logic_vector (5 downto 0) := (others=> '0' ) ; 
variable feedback: std_logic := '0'; 
        
begin 
 if (rising_edge(clk)) then  
    if (reset='1') then 
        lfsr_internal := "000001";

          
     elsif ce = '1' then 
        feedback := lfsr_internal(5) xor lfsr_internal(4) xor '1';                            
        lfsr_internal(5) := lfsr_internal(4);                            
        lfsr_internal(4) := lfsr_internal(3);                            
        lfsr_internal(3) := lfsr_internal(2);                            
        lfsr_internal(2) := lfsr_internal(1);                             
        lfsr_internal(1) := lfsr_internal(0);                             
        lfsr_internal(0) :=  feedback;                                                                              
      else   
      lfsr_internal := lfsr_internal; 
      end if; 
    end if;                   
          
lfsr_out <= lfsr_internal; 

end process;     

end Behavioral;
