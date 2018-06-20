library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MixColumns is
Port (   
    input:in std_logic_vector(127 downto 0); 
    output: out  std_logic_vector(127 downto 0)  
);
end MixColumns;

architecture Behavioral of MixColumns is

component mixcolumn 
port ( 
    In_DI  : in std_logic_vector(31 downto 0);   
    Out_DO : out std_logic_vector(31 downto 0)
    ); 
end component; 


signal first_col_in: std_logic_vector(31 downto 0);
signal second_col_in : std_logic_vector(31 downto 0);
signal third_col_in : std_logic_vector(31 downto 0);
signal fourth_col_in: std_logic_vector(31 downto 0);

signal first_col_out: std_logic_vector(31 downto 0);
signal second_col_out : std_logic_vector(31 downto 0);
signal third_col_out : std_logic_vector(31 downto 0);
signal fourth_col_out: std_logic_vector(31 downto 0);


begin

first_col_in <= input(127 downto 120) & input(95 downto 88) & input(63 downto 56) & input(31 downto 24) ; 
second_col_in <= input(119 downto 112) & input(87 downto 80) & input(55 downto 48) & input(23 downto 16);
third_col_in <=  input(111 downto 104) & input(79 downto 72) & input(47 downto 40) & input(15 downto 8);
fourth_col_in <= input(103 downto 96) & input(71 downto 64) & input(39 downto 32) & input(7 downto 0);
  
  
inst_firstcolumn: mixcolumn  
port map (  
    in_DI => first_col_in,
    Out_DO =>  first_col_out
);

inst_secondcolumn: mixcolumn     
port map (  
    in_DI => second_col_in,
    Out_DO =>second_col_out  
);  
        
inst_thirdcolumn: mixcolumn         
port map (  
    in_DI => third_col_in,
    Out_DO =>third_col_out  
);  

inst_fourthcolumn: mixcolumn         
port map (  
    in_DI => fourth_col_in,
    Out_DO =>fourth_col_out  
);  


output <=   first_col_out(31 downto 24) & second_col_out(31 downto 24) & third_col_out(31 downto 24) & fourth_col_out(31 downto 24) 
          & first_col_out(23 downto 16) & second_col_out(23 downto 16) & third_col_out(23 downto 16) & fourth_col_out(23 downto 16)
          & first_col_out(15 downto 8) & second_col_out(15 downto 8) & third_col_out(15 downto 8) & fourth_col_out(15 downto 8)
          & first_col_out(7 downto 0) & second_col_out(7 downto 0) & third_col_out(7 downto 0) & fourth_col_out(7 downto 0);


end Behavioral;
