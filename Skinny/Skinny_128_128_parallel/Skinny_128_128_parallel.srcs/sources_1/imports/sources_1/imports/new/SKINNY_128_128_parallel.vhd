library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--n=128;    s=8bit;     t=n;    z=1;

entity SKINNY_128_128_parallel is 
  Port ( 
        CLK : in STD_LOGIC;
        PLAINTEXT_IN : in  STD_LOGIC_VECTOR (127 downto 0);
        tweakey_in : in  STD_LOGIC_VECTOR (127 downto 0);
        START,DATA_READY : in  STD_LOGIC;
        BUSY : out  STD_LOGIC:= '0';
        CIPHERTEXT_OUT : out  STD_LOGIC_VECTOR (127 downto 0):= (others => '0')
        ); 
end SKINNY_128_128_parallel;

architecture Behavioral of SKINNY_128_128_parallel is

component mux 
    port (
        r_in,l_in: in std_logic_vector(127 downto 0); 
        sel: in std_logic; 
        mux_out: out std_logic_vector(127 downto 0) 
        ); 
end component; 	


component REG 
   port (    
        ce,clk: in std_logic; 
        D: in std_logic_vector(127 downto 0); 
        Q: out std_logic_vector(127 downto 0)   
        );    
end component; 


component SubCells_128 
 port ( 
        SUBCELLS_IN: in std_logic_vector(127 downto 0); 
        SUBCELLS_out: out std_logic_vector(127 downto 0) 
        ); 
end component;
 
 
component addRoundConstants
 port ( 
        lfsr_in :in std_logic_vector(5 downto 0); 
        input: in std_logic_vector( 127 downto 0); 
        output: out std_logic_vector(127 downto 0)
        ); 
 
end component; 
 
 
component AddRoundTweakey 
 port ( 
        tweakey_in: in std_logic_vector(63 downto 0); 
        AddRoundTweakey_in: in std_logic_vector(127 downto 0); 
        AddRoundTweakey_out: out std_logic_vector(127 downto 0)
        ); 
 end component; 

 
component ShiftRows 
port ( 
      SHiftRows_in: in std_logic_vector(127 downto 0); 
	  ShiftRows_out: out std_logic_vector(127 downto 0)
        ); 
end component; 


component MixColumns
port ( 
      MixCOL_in: in std_logic_vector(127 downto 0); 
	  MIXCOL_out: out std_logic_vector(127 downto 0)
        ); 
end component; 


component LFSR 
port ( clk:in std_logic; 
       rst:in std_logic; 
       lfsr_out: out std_logic_vector(5 downto 0)     
        );	   
end component;


component tw_schedule

port ( 
        TWEAKEY_SCHEDULE_IN: in std_logic_vector( 127 downto 0);
        TWEAKEY_SCHEDULE_OUT: out std_logic_vector( 127 downto 0)
        ); 
end component; 


-- STATE MACHINE SIGNAL DECLARATION
TYPE state IS (LOADING, IDLE, PROCESSING);
SIGNAL nx_state : state; -- cipher possible states
SIGNAL current_state : state := idle;
		

-- INTERNAL SIGNALS  
-- INPUT AND OUTPUT MUXES 
signal OUT_MUX_SEL: std_logic; 
signal IN_MUX_SEL: std_logic; 

--signal OUTPUT_MUX_OUT: std_logic_vector(127 downto 0); 

signal IS_REG_IN: std_logic_vector(127 downto 0); 
signal IS_REG_OUT: std_logic_vector(127 downto 0); 
signal TW_REG_IN: std_logic_vector(127 downto 0); 
signal TW_REG_OUT: std_logic_vector(127 downto 0); 

--signal key_schedule_out: std_logic_vector(127 downto 0); 
signal SUBCELLS_OUT: std_logic_vector(127 downto 0); 
signal AddRoundConstants_OUT: std_logic_vector(127 downto 0); 
signal ShiftRows_OUT: std_logic_vector(127 downto 0); 
signal mixcolumns_out: std_logic_vector(127 downto 0); 

signal lfsr_out: std_logic_vector(5 downto 0); 

signal TW_SCHEDULE_OUT: std_logic_vector(127 downto 0); 

signal AddRoundTWEAKEY_OUT: std_logic_vector(127 downto 0); 

signal lfsr_rst:std_logic;

signal regs_ce:std_logic; 


begin

INST_OUTPUT_MUX: mux
 port map ( 
          l_in => (others => '0'),
		  r_in => mixcolumns_out,
          sel => OUT_MUX_SEL,
          mux_out => CiPHERTEXT_OUT
);  
 
 
INST_IS_MUX_IN: mux 
   port map ( 
             l_in => mixcolumns_out, 
             r_in => plaintext_in, 			 
             sel => IN_MUX_SEL,
             mux_out=> IS_REG_IN
); 
   
  
INST_TW_REG_MUX_IN: mux 
   port map ( 
             l_in => tw_schedule_out,  
             r_in => tweakey_in, 			 
             sel => IN_MUX_SEL,
             mux_out=> TW_REG_IN
			 
);   
   
 
INST_IS_REG: reg 
   port map ( 
             ce=> regs_ce,
             clk=> clk, 
			 D=> IS_REG_IN, 
			 Q=> IS_REG_OUT
); 

INST_SUBCELLS: SubCells_128 
   port map ( 
               SubCells_IN => IS_REG_OUT,
			   SubCells_OUT => SUBCELLS_OUT
); 
   
INST_AddRoundConstants: AddRoundConstants 
   port map ( 
             lfsr_in => lfsr_out, 
			 input => SUBCELLS_OUT,
			 output=> AddRoundConstants_OUT
);    


INST_ADDROUNDTWEAKEY: AddRoundTweakey 
 port map ( 
           tweakey_in=> TW_REG_OUT(127 downto 64), -- only first two rows are xored
           AddRoundTweakey_in=> AddRoundConstants_OUT, 
           AddRoundTweakey_out=> AddRoundTWEAKEY_OUT 
 ); 


INST_ShiftRows: ShiftRows
    PORT MAP(
        ShiftRows_in => AddRoundTWEAKEY_OUT,
        ShiftRows_out => ShiftRows_OUT       
); 
   
   
    
INST_MixColumns: MixColumns 
    PORT MAP(	
        MIXCOL_in => ShiftRows_OUT,
        MIXCOL_out => MixColumns_OUT       
   ); 
   
   
INST_TW_REG: reg   
  port map ( 
             ce => regs_ce,
             clk=> clk, 
			 D => TW_REG_IN, 
			 Q => TW_REG_OUT
); 
 

INST_KEY_SCHEDULE: tw_schedule
 port map ( 
     	  --perform_permutation => perform_permutation,
		  TWEAKEY_SCHEDULE_in => TW_REG_OUT, 
		  TWEAKEY_SCHEDULE_out => TW_SCHEDULE_OUT
); 


INST_LFSR: lfsr 
 port map ( 
           clk=> clk,
           lfsr_out => lfsr_out, 
           rst =>lfsr_rst           
); 


--next state transition process
STATE_MACHINE_MAIN : PROCESS (clk, data_ready, nx_state)
BEGIN
    IF rising_edge(CLK) THEN 
        IF (data_ready = '1') THEN 
            current_state <= LOADING; -- continua a caricare 
        ELSE
            current_state <= nx_state;
        END IF; 
    END IF; 
END PROCESS; 


STATE_MACHINE_BODY : PROCESS(current_state,lfsr_out,start) 
begin 
    CASE current_state is 
            
    when loading =>      
        BUSY <= '1';
        -- input and output muxes; 
        IN_MUX_SEL <= '1'; 
        OUT_MUX_SEL <= '0';         
        regs_ce <= '1';         
        lfsr_rst <= '1';                 
        nx_state <= idle; --loading happens in 1 clk cycle
                    
    when idle =>                     
        BUSY <= '0'; 
        IN_MUX_SEL <= '0'; 
        OUT_MUX_SEL <= '0';        
        regs_ce <= '0';          
        lfsr_rst <= '1'; 
        if start ='1' then   
          nx_state <= processing; 
        else
          nx_state <= idle;
        end if;   
                                        
     when processing =>            
          IN_MUX_SEL <= '0';        
          regs_ce <= '1';         
          lfsr_rst <= '0';        
          if lfsr_out = b"011010" then 
               OUT_MUX_SEL <= '1'; 
               BUSY <= '0';
                nx_state <= idle; 
          else 
               OUT_MUX_SEL <= '0'; 
               BUSY <= '1';
               nx_state <= processing; 
          end if; 
       
       end case; 
   
   end process; 




end Behavioral;