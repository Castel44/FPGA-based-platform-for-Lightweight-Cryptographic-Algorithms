library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;
use ieee.std_logic_textio.all;
entity AES128_axis_tb is
end AES128_axis_tb;

architecture behavior of AES128_axis_tb is

	-- UUT

	component AES_AXIS_top
 
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
	end component;
	--Inputs
	signal ACLK : std_logic := '0';
	signal ARESETN : std_logic := '0';
	signal S_AXIS_TDATA : std_logic_vector(31 downto 0) := (others => '0');
	signal S_AXIS_TLAST : std_logic := '0';
	signal S_AXIS_TVALID : std_logic := '0';
	signal M_AXIS_TREADY : std_logic := '0';

	--Outputs
	signal S_AXIS_TREADY : std_logic;
	signal M_AXIS_TVALID : std_logic;
	signal M_AXIS_TDATA : std_logic_vector(31 downto 0);
	signal M_AXIS_TLAST : std_logic;

	-- Clock period definitions
	constant clk_period : time := 10 ns;
 
	-- Other signals
	signal ciphertext : std_logic_vector(127 downto 0);

begin
	-- Instantiate the Unit Under Test (UUT)
	uut : AES_AXIS_TOP
	port map(
		ACLK => ACLK, 
		ARESETN => ARESETN, 
		S_AXIS_TREADY => S_AXIS_TREADY, 
		S_AXIS_TDATA => S_AXIS_TDATA, 
		S_AXIS_TLAST => S_AXIS_TLAST, 
		S_AXIS_TVALID => S_AXIS_TVALID, 
		M_AXIS_TVALID => M_AXIS_TVALID, 
		M_AXIS_TDATA => M_AXIS_TDATA, 
		M_AXIS_TLAST => M_AXIS_TLAST, 
		M_AXIS_TREADY => M_AXIS_TREADY
	);

	-- Clock process definitions
	clk_process : process
	begin
		ACLK <= '0';
		wait for clk_period/2;
		ACLK <= '1';
		wait for clk_period/2;
	end process;
	-- Stimulus process
	stim_proc : process
		variable ct : line;
	begin
		-- hold reset state for 100 ns.
		wait for 100 ns;

		-- write plaintext 54776F204F6E65204E696E652054776F 
		ARESETN <= '1';
		S_AXIS_TVALID <= '1';
		S_AXIS_TDATA <= x"2054776F";
		wait for clk_period;
		assert (S_AXIS_TREADY = '1') report "ERROR: axi slave IS NOT ready!" severity error;
		wait for clk_period;
 
		S_AXIS_TDATA <= x"4E696E65";
		wait for clk_period;
		S_AXIS_TDATA <= x"4F6E6520";
		wait for clk_period;
		S_AXIS_TDATA <= x"54776F20";
 
		-- write key 5468617473206D79204B756E67204675
		wait for clk_period;
		S_AXIS_TDATA <= x"67204675";
		wait for clk_period;
 
		S_AXIS_TDATA <= x"204B756E";
		wait for clk_period;
		S_AXIS_TDATA <= x"73206D79";
		wait for clk_period;
		S_AXIS_TDATA <= x"54686174";
 
		wait for clk_period;
		S_AXIS_TDATA <= (others => '0');
		S_AXIS_TVALID <= '0';
		wait for clk_period;
		assert (S_AXIS_TREADY = '0') report "ERROR: axi slave IS still ready AFTER reading data!" severity error;
 
		-- wait for processing
		wait for clk_period * 13;
		assert (M_AXIS_TVALID = '1') report "ERROR: axi master IS NOT ready IN TIME!" severity error;
 
		-- read ciphertext
		M_AXIS_TREADY <= '1';
		wait for clk_period;
		ciphertext(31 downto 0) <= M_AXIS_TDATA;
		wait for clk_period;
		ciphertext(63 downto 32) <= M_AXIS_TDATA;
		wait for clk_period; 
		ciphertext(95 downto 64) <= M_AXIS_TDATA;
		wait for clk_period; 
		ciphertext(127 downto 96) <= M_AXIS_TDATA;
		wait for clk_period;
		assert (M_AXIS_TVALID = '0') report "ERROR: axi master IS still valid AFTER writing ALL output!" severity error;
		M_AXIS_TREADY <= '0';
 
		-- print ciphertext
		hwrite(ct, ciphertext);
		report "Ciphertext IS " & ct.all & " (expected value: 29C3505F571420F6402299B31A02D73A)";
		deallocate(ct);

		wait;
end process;

end; 