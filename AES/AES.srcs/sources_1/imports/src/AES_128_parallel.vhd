library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AES_128_parallel is
    Port (  
        clk,data_ready,start: in std_logic; 
        key_in: in std_logic_vector(127 downto 0);  -- met� caricata
        plaintext_in: in std_logic_vector(127 downto 0);
        busy: out std_logic:= '0';   
        ciphertext_out: out std_logic_vector(127 downto 0):= (others => '0')    
    );             
end AES_128_parallel;


architecture Behavioral of AES_128_parallel is

--SUBCOMPONENTs 
component MUX   
    generic( datapath: integer :=1 );         
    port  (                   
            l_in,r_in: in std_logic_vector(datapath-1 downto 0); 
            sel: in std_logic ;  
            mux_out: out std_logic_vector(datapath-1 downto 0)
            ); 
end component; 


component reg 
    generic (length: integer:= 128); 
    port ( 
        clk,ce,rst:in std_logic; 
        D: in std_logic_vector(length-1 downto 0); 
        Q: out std_logic_vector(length-1 downto 0)
    ); 
end component;

component SubBytes 
    port ( 
        input: in std_logic_vector(127 downto 0); 
        output: out std_logic_vector(127 downto 0)
    );
end component; 


component ShiftRows 
    port ( 
        input: in std_logic_vector(127 downto 0); 
        output: out std_logic_vector(127 downto 0)
    );
end component; 


component MixColumns
    port ( 
        input: in std_logic_vector(127 downto 0); 
        output: out std_logic_vector(127 downto 0)
    );
end component; 


component AddRoundKey 
    port ( 
        mixcol_in: in std_logic_vector(127 downto 0); 
        output: out std_logic_vector(127 downto 0); 
        wkey_in: in std_logic_vector(127 downto 0) 
    ); 
end component; 


component key_schedule 
    port ( 
        clk,key_schedule_ce,rcon_rst:std_logic;  
        input: in std_logic_vector(127 downto 0); 
        output : out std_logic_vector(127 downto 0)
    );
end component; 


component cnt
    generic( size:integer:= 5   );
    port ( 
        ce,clk,rst: in std_logic;            
        cnt_out: out std_logic_vector(size-1 downto 0)   
    );   
 end component;  


--INTERNAL SIGNALS 
 -- CIPHER FSM SIGNALS
 ---------------------------- 
type state is (LOADING,IDLE,PROCESSING,END_ENCRYPT); 
signal nx_state : state ; -- cipher possible states
signal current_state : state := idle ; 

--IS REG
signal IS_CE,IS_RST:std_logic; 
signal IS_IN,IS_OUT:std_logic_vector(127 downto 0); 

-- IN MUX sel
signal SEL_IN:std_logic; 

--SUBBYTES  
signal subbytes_out: std_logic_vector(127 downto 0); 

--SHIFTROWS 
signal shiftrows_out: std_logic_vector(127 downto 0); 

--MIXCOLUMNS
signal mixcolumns_out: std_logic_vector(127 downto 0); 

--AddRoundKEY
signal addRoundKey_out: std_logic_vector(127 downto 0); 
signal addRoundKey_in: std_logic_vector(127 downto 0); 

--KEY REG and KEY update 
signal key_schedule_out: std_logic_vector(127 downto 0); 
signal KEY_REG_CE,KEY_REG_rst: std_logic ;
signal KEY_REG_IN, KEY_REG_OUT: std_logic_vector(127 downto 0); 

--CNT 
signal cnt_rst,cnt_ce: std_logic; 
signal cnt_out: std_logic_vector( 3 downto 0); 


begin 

-- COMPONENTS INSTANTIATION 
INST_IS_MUX_IN: mux 
generic map ( datapath => 128) 
port map ( 
    l_in => plaintext_in, 
    r_in => AddRoundKey_OUT, 
    sel => SEL_IN, 
    mux_out=> IS_IN
); 


INST_IS_REG: reg 
generic map ( length => 128 ) 
port map ( 
    clk=> clk, 
    ce=> IS_CE, 
    rst => IS_RST, 
    D=> IS_IN, 
    Q=> IS_OUT
); 


INST_SBOX_LAYER: SubBytes 
port map ( 
    input => IS_OUT,
    output => subbytes_out
) ; 


INST_SHIFTROWS: SHiftRows 
port map ( 
    input=> suBBytes_out, 
    output => shiftrows_out
);


INST_MixColumns: MixColumns 
port map ( 
    input=> shiftrows_out, 
    output => mixcolumns_out
);


INST_KEY_IN_MUX: mux 
generic map  ( datapath => 128) 
port map ( 
    l_in => key_in, 
    r_in => key_schedule_out, 
    sel => SEL_IN, 
    mux_out=> KEY_REG_IN
); 


INST_KEY_REG: reg 
port map ( 
    clk=> clk, 
    ce => KEY_REG_CE, 
    rst => KEY_REG_rst, 
    D=> KEY_REG_IN, 
    Q=> KEY_REG_OUT
); 


INST_KEY_SCHEDULE: key_schedule
port map ( 
    clk=> clk, 
    key_schedule_ce => cnt_ce,
    rcon_rst=>cnt_rst,
    input => KEY_REG_OUT, 
    output=> key_schedule_out
);


INST_AddRoundKey: AddRoundKey 
port map ( 
    mixcol_in=> AddRoundKey_in, 
    output => AddRoundKey_out, 
    wkey_in => KEY_REG_OUT
);


INST_CNT: cnt 
generic map ( size => 4) 
port map ( 
    clk=> clk, 
    ce=> cnt_ce, 
    rst=> cnt_rst, 
    cnt_out => cnt_out
); 


 -- CIPHER FSM 
STATE_MACHINE_MAIN: process(clk,data_ready)  
begin 
    IF rising_edge(CLK) then        
        IF (data_ready = '1') then              
            current_state <= LOADING;                   
        ELSE        
            current_state <= nx_state;                            
        end if;          
    end if;    
end process;  
             
            
STATE_MACHINE_BODY : process(current_state,start,shiftrows_out,cnt_out, IS_out)
begin  
    case current_state is     
        when loading  =>        
        -- set outputs 
        BUSY <= '1' ; 
        Ciphertext_out <= (others => '0');     
           
        IS_RST <= '0';               
        KEY_REG_RST <= '0';         
        cnt_ce <= '1'; 
        cnt_rst <= '0'; 
        
        --INPUT MUX 
        --loading value from Input pin
        SEL_IN <= '0'; --loading                                                
        
        --state transition  
        if cnt_out = b"0001" then           
            IS_CE <= '0'; 
            KEY_REG_CE <= '0'; 
            nx_state <= idle;                         
        else          
            nx_state <= loading ; 
            IS_CE <= '1'; 
            KEY_REG_CE <= '1';                      
        end if ; 

        when idle =>         
            -- set outputs 
            BUSY <= '0' ;                        
            Ciphertext_out <= (others => '0')  ;   
                               
            IS_CE <= '0';             
            IS_RST <= '0';               
            KEY_REG_RST <= '0';                                                                                           
            cnt_ce <= '0'; 
            cnt_rst <= '1'; 
            
            --INPUT MUX 
            SEL_IN <= '0'; --loading                             
            KEY_REG_CE <= '0';        
                         
            --state transition          
            if start='1' then 
                nx_state <= processing;          
            else           
                nx_state <= idle;           
            end if;                               

        when processing =>       
            -- set outputs 
            BUSY <= '1' ; 
            Ciphertext_out <= (others => '0');   
                        
            IS_RST <= '0';   
            IS_CE <= '1';             
            KEY_REG_RST <= '0';                                                                   
            cnt_ce <= '1'; 
            cnt_rst <= '0'; 
            
            --INPUT MUX 
            SEL_IN <= '1';                                
            KEY_REG_CE <= '1';
            
            --state transition                                                                         
            if cnt_out = b"1010" then  --10 rounds passed                  
                nx_state <= end_encrypt;          
            else           
                nx_state <= processing;                                                            
            end if;   
                                                            
        when end_encrypt =>                                    
            -- set outputs 
            BUSY <= '0' ; 
            -- perform last mix_columns                                 
            Ciphertext_out <= IS_OUT(127 downto 120) & IS_OUT(95 downto 88) & IS_OUT(63 downto 56) & IS_OUT(31 downto 24)  
            &  IS_OUT(119 downto 112) & IS_OUT(87 downto 80) & IS_OUT(55 downto 48) & IS_OUT(23 downto 16)
            &  IS_OUT(111 downto 104) & IS_OUT(79 downto 72) & IS_OUT(47 downto 40) & IS_OUT(15 downto 8)
            & IS_OUT(103 downto 96) & IS_OUT(71 downto 64) & IS_OUT(39 downto 32) & IS_OUT(7 downto 0) ;                      
               
            IS_CE <= '0';                   
            IS_RST <= '0';               
            KEY_REG_RST <= '0';                                                                      
            
            cnt_ce <= '0'; 
            cnt_rst <= '1'; 
            
            --INPUT MUX 
            SEL_IN <= '0';                            
            KEY_REG_CE <= '0'; 
             
             -- transition
            nx_state<= end_encrypt;               
            
        end case; 

end process;        

-- ASYNC OPERATION
with cnt_out select 
    AddRoundKey_in <= IS_OUT when b"0000", 
                      ShiftRows_out when  b"1010",
                      MixColumns_out when others;       


end Behavioral;
