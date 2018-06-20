 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity lfsr is
    port( clk: in std_logic;
        rst:in std_logic; 
        lfsr_out: out std_logic_vector (5 downto 0)
         );
end lfsr;

architecture Behavioral of lfsr is

begin
process(clk,rst) 
    
variable lfsr_internal : std_logic_vector (5 downto 0) := (others=>'0' ) ; 
variable feedback: std_logic := '0'; 
        
begin 
 if (rising_edge(clk)) then   
    if (rst='1') then 
        lfsr_internal := "000001";

    else   
        feedback := lfsr_internal(5) xor lfsr_internal(4) xor '1';                            
        lfsr_internal(5) := lfsr_internal(4);                            
        lfsr_internal(4) := lfsr_internal(3);                            
        lfsr_internal(3) := lfsr_internal(2);                            
        lfsr_internal(2) := lfsr_internal(1);                             
        lfsr_internal(1) := lfsr_internal(0);                             
        lfsr_internal(0) :=  feedback;                                                                              
    end if;   
end if;
          
lfsr_out <= lfsr_internal; 

end process;     

end Behavioral;

