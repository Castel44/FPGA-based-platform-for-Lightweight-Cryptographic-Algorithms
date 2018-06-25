library IEEE;

 

use IEEE.STD_LOGIC_1164.ALL;

entity skinny_shift_reg_64 is

 
    
	port(serial_in_first_row: in std_logic_vector (7 downto 0);  	     
	     serial_in_second_row: in std_logic_vector (7 downto 0);  
	     serial_in_third_row: in std_logic_vector (7 downto 0);  
	     serial_in_fourth_row: in std_logic_vector (7 downto 0);  
	     
		 clock : in std_logic;
		 
		 enable_1,enable_2,enable_3,enable_4: in std_logic; -- enable shifting for individual rows 
		        
		 serial_output_first_row: out std_logic_vector (7 downto 0):= (Others => '0')	; 
		 serial_output_second_row: out std_logic_vector (7 downto 0):= (Others => '0')	;
		 serial_output_third_row: out std_logic_vector (7 downto 0):= (Others => '0')	;
		 serial_output_fourth_row: out std_logic_vector (7 downto 0):= (Others => '0')	
		 
		);		
		
end skinny_shift_reg_64;

architecture behavioral of skinny_shift_reg_64 is

component IS_shift_reg port ( 
            
   serial_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- serial input 4 bit 
   CLK : IN STD_LOGIC;
   CE : IN STD_LOGIC; --enable shifting 
   serial_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) --serial output 4 bit 


); 

end component; 




begin 

INST_FIRST_ROW_SHIFT_REG: IS_shift_reg port map (

               clk => clock, 
               CE => enable_1, 
               serial_in => serial_in_first_row,
               serial_out => serial_output_first_row
); 

INST_SECOND_ROW_SHIFT_REG: IS_shift_reg port map (

               clk => clock, 
               CE => enable_2, 
               serial_in => serial_in_second_row,
               serial_out => serial_output_second_row

); 

INST_THIRD_ROW_SHIFT_REG: IS_shift_reg port map (

               clk => clock, 
               CE => enable_3, 
               serial_in => serial_in_third_row,
               serial_out => serial_output_third_row

); 


INST_FOURTH_ROW_SHIFT_REG: IS_shift_reg port map (

               clk => clock, 
               CE => enable_4, 
               serial_in => serial_in_fourth_row,
               serial_out => serial_output_fourth_row

); 








end behavioral;




