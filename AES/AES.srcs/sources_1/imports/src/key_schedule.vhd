library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity key_schedule is
Port ( 
    clk,key_schedule_ce,rcon_rst:std_logic;  
    input: in std_logic_vector(127 downto 0); 
    output : out std_logic_vector(127 downto 0)
);
end key_schedule;


architecture Behavioral of key_schedule is

component sbox 
port ( 
    input: in std_logic_vector(7 downto 0); 
    output: out std_logic_vector(7 downto 0)
); 
end component; 


signal fourth_col_in: std_logic_vector(31 downto 0);
signal RCON:std_logic_vector(7 downto 0):= x"01"; 
signal fourth_col_out: std_logic_vector(31 downto 0);


begin

    fourth_col_in <=  input(71 downto 64) & input(39 downto 32) & input(7 downto 0) & input(103 downto 96) ;
    
    apply_sbox: for i in 0 to 3 generate   
    begin     
        inst_sub_column: sbox 
        port map (   
        input => fourth_col_in(((i+1)*8)-1 downto i*8) ,
        output => fourth_col_out(((i+1)*8)-1 downto i*8)   
        );   
    end generate ;    
        
    RCON_GEN: process(clk,rcon_rst,key_schedule_ce,rcon)         
    begin         
        if rising_edge(clk) then         
            if rcon_rst = '1' then         
                rcon <= x"01";        
            elsif key_schedule_ce = '1' then         
            if rcon(7) = '1' then         
                rcon <= ((rcon(6 downto 0) & "0") xor x"1B");        
            else         
                rcon <= ((rcon(6 downto 0) & "0"));        
            end if;         
            else 
                rcon <= rcon;        
            end if ; 
        end if;           
    end process; 
    
    
    output <= ( fourth_col_out(31 downto 24) xor RCON xor input(127 downto 120) )   
            & ( fourth_col_out(31 downto 24) xor RCON xor input(127 downto 120)  xor input(119 downto 112) )  
            & ( fourth_col_out(31 downto 24) xor RCON xor input(127 downto 120)  xor input(119 downto 112) xor input(111 downto 104) )    
            & ( fourth_col_out(31 downto 24) xor RCON xor input(127 downto 120)  xor input(119 downto 112) xor input(111 downto 104) xor input(103 downto 96) )
            
            & ( fourth_col_out(23 downto 16) xor x"00" xor input(95 downto 88) ) 
            & ( fourth_col_out(23 downto 16) xor x"00" xor input(95 downto 88) xor input(87 downto 80)  )   
            & ( fourth_col_out(23 downto 16) xor x"00" xor input(95 downto 88) xor input(87 downto 80) xor input(79 downto 72)  )     
            & ( fourth_col_out(23 downto 16) xor x"00" xor input(95 downto 88) xor input(87 downto 80) xor input(79 downto 72)  xor input(71 downto 64)  ) 
            
            & ( fourth_col_out(15 downto 8) xor x"00" xor input(63 downto 56) )   
            & ( fourth_col_out(15 downto 8) xor x"00" xor input(55 downto 48) xor input(63 downto 56)  )       
            & ( fourth_col_out(15 downto 8) xor x"00" xor input(63 downto 56) xor input(55 downto 48) xor input(47 downto 40)  )      
            & ( fourth_col_out(15 downto 8) xor x"00" xor input(63 downto 56) xor input(55 downto 48) xor input(47 downto 40) xor input(39 downto 32) ) 
            
            & ( fourth_col_out(7 downto 0) xor x"00" xor  input(31 downto 24) )   
            & ( fourth_col_out(7 downto 0) xor x"00" xor  input(31 downto 24) xor input(23 downto 16) )         
            & ( fourth_col_out(7 downto 0) xor x"00" xor  input(31 downto 24) xor input(23 downto 16) xor input(15 downto 8) )      
            & ( fourth_col_out(7 downto 0) xor x"00" xor  input(31 downto 24) xor input(23 downto 16) xor input(15 downto 8) xor input(7 downto 0) ) ;

end Behavioral;  
