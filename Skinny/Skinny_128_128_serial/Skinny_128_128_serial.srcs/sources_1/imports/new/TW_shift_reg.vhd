library IEEE;


use IEEE.STD_LOGIC_1164.ALL;

entity shift_reg is
 
    
	port(parallel_in: in std_logic_vector (63 downto 0);  -- parallel in and out used for key scheduling permutation
	     serial_in :in std_logic_vector(7 downto 0); 
		 clock,enable_in : in std_logic;
		 enable_parallel_loading : in std_logic ; -- this enables will be set high when permutation has to be performed
         serial_output: out std_logic_vector (7 downto 0):= (Others => '0') ; 
		 parallel_output: out std_logic_vector (63 downto 0):= (Others => '0')	 
		);		
end shift_reg;

architecture behavioural of shift_reg is

signal temp_reg: std_logic_vector(127 downto 0) := (Others => '0');
TYPE STATES is (loading, shifting);
signal state: states; 


begin 
   
process(enable_in,enable_parallel_loading)	
begin	

    if(enable_parallel_loading = '1') then -- perform permutation and load from the parallel in                    
        state <= loading;                        
    elsif(enable_in ='1')    then
         state <= shifting;        
    else
        state <= loading;                                   
    end if;

end process;

process(clock, state)  
begin 
  
       
        
               
    if rising_edge(clock) then	    
        case state is 
            when loading =>						                
                 temp_reg(127 downto 64) <= parallel_in;
                 
                
            when shifting => 
                temp_reg <= temp_reg(119 downto 0) & serial_in;
                                 
        end case;
    end if;
end process;
			
serial_output <= temp_reg(127 downto 120); 
parallel_output <= temp_reg(127 downto 64) ; 	


end behavioural;