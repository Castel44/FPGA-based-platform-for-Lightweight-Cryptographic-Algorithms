library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity lfsr is
 
 Port (   
       lfsr_out: out std_logic_vector(0 downto 0); 
       lfsr_parallel_out: out std_logic_vector(4 downto 0); 
       ce : in std_logic; 
       clk,rst: std_logic       
 ); 
 
end lfsr;

architecture Behavioral of lfsr is


      
begin 


process(clk,rst,ce) 
    

variable lfsr_feedback: std_logic; 
variable t_sequence_feedback: std_logic; 

variable lfsr_internal: std_logic_vector(4 downto 0) := b"10000" ; 
variable t_sequence:std_logic_vector(1 downto 0) :=  b"01" ;       
        
begin 

    if (rst='1') then 
        lfsr_internal := "10000";
        t_sequence := "01" ; 

    elsif (rising_edge(clk)) then          
       if ce = '1' then  
       
--X5 + X4 + X2 + X + 1                

         lfsr_feedback:= lfsr_internal(2) xor lfsr_internal(4) ;
        lfsr_internal(3) := lfsr_internal(3) xor lfsr_internal(4); 
        
        lfsr_internal(4) := lfsr_internal(3); 
        lfsr_internal(3) := lfsr_internal(2);                    
        lfsr_internal(2) := lfsr_internal(1);                            
        lfsr_internal(1) := lfsr_internal(0);   
        lfsr_internal(0) := lfsr_feedback; 
        
        t_sequence_feedback := t_sequence(1); 
        t_sequence(1) :=  t_sequence(0);
        t_sequence(0) := t_sequence_feedback;
     
      else                                                                             
                             
      lfsr_internal := lfsr_internal;                            
     end if;      
    end if;                   
          
lfsr_out <= lfsr_internal(4 downto 4) xor t_sequence(1 downto 1) ; 
lfsr_parallel_out <= lfsr_internal; 
end process;     

end Behavioral;