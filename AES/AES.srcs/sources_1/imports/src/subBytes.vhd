library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity subBytes is
    Port (  
        input: in std_logic_vector(127 downto 0); 
        output: out std_logic_vector(127 downto 0)
    );    
end subBytes;


architecture behav of subBytes is

component sbox 
port ( 
    input: in std_logic_vector(7 downto 0); 
    output: out std_logic_vector(7 downto 0)
); 
end component; 

begin

subbytes_gen: for i in 0 to 15 generate 
begin 
    inst_subbytes: sbox port map (   
        input => input(((i+1)*8)-1 downto i*8) ,
        output => output(((i+1)*8)-1 downto i*8)   
        );   
        
end generate ;

end behav;

