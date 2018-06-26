library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity Testing_IP is
  Generic ( Datapath : integer range 0 to 32 := 16);
  Port (   
      start: in std_logic; 
      clk: in std_logic;   
      rst: in std_logic;     
      led_out: out std_logic    
  );
end Testing_IP;


architecture Behavioral of Testing_IP is


component Simeck_32_64_parallel is
 Port ( 
        clk,data_ready,start: in std_logic;        
        key_in: in std_logic_vector(Datapath - 1 downto 0);        
        plaintext_in: in std_logic_vector(Datapath - 1 downto 0);       
        busy: out std_logic:= '0';          
        ciphertext_out: out std_logic_vector(Datapath - 1 downto 0):= (others => '0')       
       );      
       
end component;


component cnt
 generic( size:integer:= 2   ); 
  Port ( 
        ce,clk,rst: in std_logic;            
        cnt_out: out std_logic_vector(size-1 downto 0)   
   );
   
 end component; 


-- internal signal 
signal key_tst: std_logic_vector(Datapath*4 - 1 downto 0) := X"1918111009080100"; 
signal plaintext_tst: std_logic_vector(Datapath*4 - 1 downto 0) := (X"00000000" & X"65656877" );
signal ciphertext_out_W: std_logic_vector(Datapath - 1 downto 0) ;
signal correct_ciphertext: std_logic_vector(Datapath*2 - 1 downto 0):= X"770d2c76";

signal plaintext_reg: std_logic_vector(Datapath - 1 downto 0):= (others => '0');
signal key_reg: std_logic_vector(Datapath - 1 downto 0):= (others => '0');

signal busy_W, data_ready_W, start_W: std_logic; 

signal cnt_ce_W: std_logic; 
signal cnt_rst_W: std_logic; 
signal cnt_out_W: std_logic_vector(1 downto 0); 

type state is (START_ENC, LOADING, ENDING, IDLE, ENC, WAITING, SUCCESS ); 
signal nx_state : state;
signal current_state : state := IDLE; 


begin

Simon_DUT: Simeck_32_64_parallel 
    port map ( 
      clk => clk,
      plaintext_in => plaintext_reg, 
      key_in => key_reg,
      start => start_W, 
      data_ready => data_ready_W, 
      ciphertext_out => ciphertext_out_W, 
      busy => busy_W  
    ); 


INST_CNT: cnt 
    generic map ( size => 2) 
    port map ( 
        clk=> clk, 
        ce=> cnt_ce_W, 
        rst=> cnt_rst_W, 
        cnt_out => cnt_out_W 
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
            

STATE_MACHINE_BODY : process(current_state,start, cnt_out_W, ciphertext_out_W, busy_W, key_tst, plaintext_tst, correct_ciphertext)
begin  
    case current_state is     
    
    when idle  =>     
        -- CIPHER inputs
        data_ready_W <= '0'; 
        start_W <= '0'; 
        plaintext_reg <= (others => '0');
        key_reg <= (others => '0');
        
        -- CNT 
        cnt_ce_W <= '0';
        cnt_rst_W <= '0'; 
        
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
        plaintext_reg <= (others => '0');
        key_reg <= (others => '0');  
              
        -- CNT 
        cnt_ce_W <= '0';
        cnt_rst_W <= '1'; 
        
        -- output ports 
        led_out <= '0'; 
        
        -- transition         
        nx_state <= waiting;    
                
    when waiting =>     
        -- CNT 
        cnt_ce_W <= '1';
        cnt_rst_W <= '0'; 
    
        -- CIPHER inputs
        data_ready_W <= '0'; 
        start_W <= '0'; 
        plaintext_reg <= plaintext_tst(Datapath-1 +Datapath*(to_integer(unsigned(cnt_out_W))) downto Datapath*(to_integer(unsigned(cnt_out_W))));
        key_reg <= key_tst(Datapath-1+Datapath*(to_integer(unsigned(cnt_out_W))) downto Datapath*(to_integer(unsigned(cnt_out_W))));          
                
        -- output ports 
        led_out <= '0'; 
                
        -- transition  
        if cnt_out_W = b"11" then        
            nx_state <= start_enc;          
        else                 
            nx_state <= waiting;          
        end if;                     
        
    when start_enc =>     
        -- CIPHER inputs
        data_ready_W <= '0'; 
        start_W <= '1'; 
        plaintext_reg <= (others => '0');
        key_reg <= (others => '0');
        
        -- CNT 
        cnt_ce_W <= '1';
        cnt_rst_W <= '0'; -- reset cnt 
        
        -- output ports 
        led_out <= '0'; 
           
        -- transition  
        if cnt_out_W = b"10" then        
            nx_state <= enc;          
        else                 
            nx_state <= start_enc;          
        end if;  
        
    when enc =>      
        -- CIPHER inputs
        data_ready_W <= '0'; 
        start_W <= '0'; 
        plaintext_reg <= (others => '0');
        key_reg <= (others => '0');
        
        -- CNT 
        cnt_ce_W <= '0';
        cnt_rst_W <= '0'; 
        
        -- output ports 
        led_out <= '0'; 
        
        -- transition 
        if (busy_W='0') and (ciphertext_out_W = correct_ciphertext(Datapath - 1 downto 0)) then 
            nx_state <= ending;          
        else           
            nx_state <= enc;           
        end if; 
        
    when ending =>     
        -- CIPHER inputs
        data_ready_W <= '0'; 
        start_W <= '0'; 
        plaintext_reg <= (others => '0');
        key_reg <= (others => '0');
        
        -- CNT 
        cnt_ce_W <= '0';
        cnt_rst_W <= '0'; -- reset cnt 
        
        -- output ports     
        led_out<= '0';     
        
        -- transition    
        if ciphertext_out_W = correct_ciphertext(Datapath*2 - 1 downto Datapath) then
            nx_state <= success;     
        else    
            nx_state <= ending;                      
        end if;             
    
    when success =>     
        -- CIPHER inputs
        data_ready_W <= '0'; 
        start_W <= '0'; 
        plaintext_reg <= (others => '0');
        key_reg <= (others => '0');
        
        -- CNT 
        cnt_ce_W <= '0';
        cnt_rst_W <= '1'; -- reset cnt 
        
        -- output ports         
        led_out<= '1'; 
         
        -- transition            
        nx_state <= success;                  
      
    end case;           

end process;         


 

end Behavioral;