library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Testing_IP is
    Port (     
        start: in std_logic; 
        clk: in std_logic;     
        rst: in std_logic;     
        led_out: out std_logic :='0'      
    );
end Testing_IP;

architecture Behavioral of Testing_IP is

component SKINNY_128_128_parallel is 
    Port ( 
        CLK : in STD_LOGIC;
        PLAINTEXT_IN : in  STD_LOGIC_VECTOR (127 downto 0);
        tweakey_in : in  STD_LOGIC_VECTOR (127 downto 0);
        START,DATA_READY : in  STD_LOGIC;
        BUSY : out  STD_LOGIC:= '0';
        CIPHERTEXT_OUT : out  STD_LOGIC_VECTOR (127 downto 0):= (others => '0')
        ); 
end component;


-- internal signal 
signal KEY_REG: std_logic_vector(127 downto 0) := X"4f55cfb0520cac52fd92c15f37073e93"; 
signal PLAINTEXT_REG: std_logic_vector(127 downto 0) := X"f20adb0eb08b648a3b2eeed1f0adda14";
signal ciphertext_out_W: std_logic_vector(127 downto 0) ;

signal busy_W, data_ready_W, start_W: std_logic; 


type state is (START_ENC, LOADING, IDLE, WAITING, ENC, SUCCESS ); 
signal nx_state : state;
signal current_state : state := IDLE; 


begin

SKINNY_128_DUT: SKINNY_128_128_parallel
port map ( 
    clk => clk,
    plaintext_in => PLAINTEXT_REG, 
    tweakey_in => KEY_REG,
    start => start_W, 
    data_ready => data_ready_W, 
    ciphertext_out => ciphertext_out_W, 
    busy => busy_W  
); 


STATE_MACHINE_MAIN: process(clk,rst)  
begin 
    IF rising_edge(CLK) then        
        IF (rst = '1') then              
            current_state <= idle;                    
        ELSE        
            current_state <= nx_state;                            
        end if;          
    end if;    
end process; 
            


STATE_MACHINE_BODY : process(current_state,start, ciphertext_out_W, busy_W)
begin  
    case current_state is     
    
    when idle  =>             
        -- CIPHER inputs
        data_ready_W <= '0'; 
        start_W <= '0'; 
        
        -- output ports 
        led_out <= '0'; 
        
        -- transition 
        if start='1' then 
            nx_state <= loading;          
        else           
            nx_state <= idle;           
        end if; 
    
    when loading =>     
        -- CIPHER inputs
        data_ready_W <= '1'; -- data_ready goes high 
        start_W <= '0'; 
                  
        -- output ports 
        led_out <= '0'; 
                  
        -- transition         
        nx_state <= waiting;    --only 1clk cycle in loading          
            
    when waiting =>     
        -- CIPHER inputs
        data_ready_W <= '0'; 
        start_W <= '0'; 
                                    
        -- output ports 
        led_out <= '0'; 
                                    
        -- transition         
        nx_state <= start_enc;
            
    when start_enc =>     
        -- CIPHER inputs
        data_ready_W <= '0'; 
        start_W <= '1'; 
        
        -- output ports 
        led_out <= '0';         
        
        -- transition
        nx_state <= enc;                         
        
    when enc =>      
        -- CIPHER inputs
        data_ready_W <= '0'; 
        start_W <= '0'; 
        
        -- output ports 
        led_out <= '0'; 
        
        -- transition 
        if (busy_W = '0') and (ciphertext_out_W = X"22ff30d498ea62d7e45b476e33675b74" ) then            
            nx_state <= success;         
        else       
            nx_state <= enc;           
        end if;                 
    
    when success =>      
        -- CIPHER inputs
        data_ready_W <= '0'; 
        start_W <= '0'; 
                           
        -- output ports         
        led_out<= '1';         
        
        -- transition                
        nx_state <= success;                          
                                        
    end case;           

end process;         
                  
                  



end Behavioral;
