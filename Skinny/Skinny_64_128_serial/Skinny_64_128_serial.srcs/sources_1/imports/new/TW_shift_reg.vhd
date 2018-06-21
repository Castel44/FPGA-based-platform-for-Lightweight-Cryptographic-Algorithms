library IEEE;


use IEEE.STD_LOGIC_1164.ALL;

entity shift_reg is

  --  4 bit datapath (64 bit IS)
    
	port(parallel_in: in std_logic_vector (31 downto 0);  -- only first two rows
	     serial_in :in std_logic_vector(3 downto 0); 
		 clock,enable_in : in std_logic;
		 enable_parallel_loading : in std_logic ; 
         serial_output: out std_logic_vector (3 downto 0):= (Others => '0') ; 
		 parallel_output: out std_logic_vector (31 downto 0):= (Others => '0')	 
		);		
end shift_reg;

architecture behavioural of shift_reg is

signal temp_reg: std_logic_vector(63 downto 0) := (Others => '0');
TYPE STATES is (loading, shifting);
signal state: states; 


begin 
   
process(enable_in,enable_parallel_loading)	
begin	

    if(enable_parallel_loading = '1') then 	                   
        state <= loading;                        
    elsif(enable_in ='1')    then
         state <= shifting;        
    else
        state <= loading;                                   
    end if;
end process;

process(clock, state)  
begin 
  
       
        --enable_out <= '0';  
               
    if rising_edge(clock) then	    
        case state is 
            when loading =>						                
                 temp_reg(63 downto 32) <= parallel_in;
                --enable_out <= '0'; 
                
            when shifting => 
                temp_reg <= temp_reg(59 downto 0) & serial_in;
                --state <= shifting;	
                		
                --parallel_output <= temp_reg;                    
               -- serial_output <= temp_reg(63 downto 60);                   
        end case;
    end if;
end process;
			
serial_output <= temp_reg(63 downto 60); 
parallel_output <= temp_reg(63 downto 32) ; 	
--enable_out <= enable_in; --propagate the enable

end behavioural;