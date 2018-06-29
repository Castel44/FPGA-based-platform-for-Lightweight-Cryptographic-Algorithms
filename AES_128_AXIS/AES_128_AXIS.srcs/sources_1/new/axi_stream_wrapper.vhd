library ieee;
use ieee.std_logic_1164.all;
entity AES_AXIS_top is
 
	port (
		ACLK : in std_logic;
		ARESETN : in std_logic;
		S_AXIS_TREADY : out std_logic;
		S_AXIS_TDATA : in std_logic_vector(31 downto 0);
		S_AXIS_TLAST : in std_logic;
		S_AXIS_TVALID : in std_logic;
		M_AXIS_TVALID : out std_logic;
		M_AXIS_TDATA : out std_logic_vector(31 downto 0);
		M_AXIS_TLAST : out std_logic;
		M_AXIS_TREADY : in std_logic
	);
end AES_AXIS_top;

architecture behavioral of AES_AXIS_top is
	type state_type is (idle, read_plaintext, read_key, stabilize, processing, write_ciphertext);
	type axis_buf is array(integer range <>) of std_logic_vector(31 downto 0);
 

	constant n_transfers : natural := 4;
 
	signal state : state_type;
	signal counter : natural range 0 to n_transfers - 1;
 
	signal plaintext_w : std_logic_vector(127 downto 0);
	signal key_w : std_logic_vector(127 downto 0);
	signal data_ready_w : std_logic;
 
	signal busy_w : std_logic;
	signal ciphertext_w : std_logic_vector(127 downto 0);
 
	signal plaintext_buf : axis_buf(0 to n_transfers - 1);
	signal key_buf : axis_buf(0 to n_transfers - 1);
	signal ciphertext_buf : axis_buf(0 to n_transfers - 1);
 
 
 
	component AES_128_parallel is
		port (
			clk, data_ready : in std_logic;
			key_in : in std_logic_vector(127 downto 0);
			plaintext_in : in std_logic_vector(127 downto 0);
			busy : out std_logic := '0';
			ciphertext_out : out std_logic_vector(127 downto 0) := (others => '0')
			);
		end component;
	begin
		AES : AES_128_parallel
 
		port map(
			plaintext_in => plaintext_w, 
			key_in => key_w, 
			clk => ACLK, 
			data_ready => data_ready_w, 
 
			ciphertext_out => ciphertext_w, 
			busy => busy_w
		);
 
 
		plaintext_w <= plaintext_buf(3) & plaintext_buf(2) & plaintext_buf(1) & plaintext_buf(0);
 
 
		key_w <= key_buf(3) & key_buf(2) & key_buf(1) & key_buf(0);
 
		--ip_reset <= '0' when state = processing else '1'; --active low synchronous reset
 
		S_AXIS_TREADY <= '1' when (state = read_plaintext) else '0';
		M_AXIS_TVALID <= '1' when state = write_ciphertext else '0';
		M_AXIS_TLAST <= '1' when (state = write_ciphertext and counter = 3) else '0';

		state_machine : process (ACLK)
		begin
			if rising_edge(ACLK) then
				if ARESETN = '0' then
					state <= idle;
					counter <= 0;
				else
					case state is
						when idle => 
 

							ciphertext_buf(0) <= (others => '0');
							ciphertext_buf(1) <= (others => '0');
							ciphertext_buf(2) <= (others => '0');
							ciphertext_buf(3) <= (others => '0');
 
							M_AXIS_TDATA <= (others => '0');
 
							if S_AXIS_TVALID = '1' then
								state <= read_plaintext;
								counter <= 0;
							end if;
 
							data_ready_w <= '0';
 
						when read_plaintext => 
 
							data_ready_w <= '0';
 
 
							if S_AXIS_TVALID = '1' then
								plaintext_buf(counter) <= S_AXIS_TDATA;
 
 
								if counter = 3 then
									state <= read_key;
									counter <= 0;
								else
									counter <= counter + 1;
								end if;
							end if;
 
						when read_key => 
 
							data_ready_w <= '1';
 
							if S_AXIS_TVALID = '1' then
 
								key_buf(counter) <= S_AXIS_TDATA;
 
								if counter = 3 then
									state <= stabilize;
									counter <= 0;
								else
									counter <= counter + 1;
								end if;
							end if;
 

						when stabilize => 
 
							data_ready_w <= '0';
							state <= processing;
							counter <= 0;
							
 
						when processing => 
 
							data_ready_w <= '0';
 
 
							if busy_w = '0' then
								ciphertext_buf(0) <= ciphertext_w(31 downto 0);
								ciphertext_buf(1) <= ciphertext_w(63 downto 32);
								ciphertext_buf(2) <= ciphertext_w(95 downto 64);
								ciphertext_buf(3) <= ciphertext_w(127 downto 96);
								counter <= 0;
								state <= write_ciphertext;
 
							end if;

						when write_ciphertext => 
 
							data_ready_w <= '0';
 
							M_AXIS_TDATA <= ciphertext_buf(counter);
 
 
							if M_AXIS_TREADY = '1' then
								if counter = 3 then
									state <= idle;
									counter <= 0;
 
								else
									counter <= counter + 1;
								end if;
							end if;
 
 
					end case;
				end if;
			end if;
		end process;
end architecture;