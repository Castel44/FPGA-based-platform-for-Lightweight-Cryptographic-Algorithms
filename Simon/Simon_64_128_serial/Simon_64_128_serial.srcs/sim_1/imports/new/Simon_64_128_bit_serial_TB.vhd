LIBRARY IEEE;
USE IEEE.Std_logic_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY Simon_tb IS
END;

ARCHITECTURE bench OF Simon_tb IS

	COMPONENT Simon_64_128_bit_serial
 
--		generic(datapath: integer:=1);
		
 
		PORT (
			start, clk, data_ready : IN std_logic;
			key_in : IN std_logic_vector(0 DOWNTO 0);
			plaintext_in : IN std_logic_vector(0 DOWNTO 0);
			busy : OUT std_logic;
 
			ciphertext_out : OUT std_logic_vector(0 DOWNTO 0)
		);
	END COMPONENT;
 
 
	-- generic constants
	CONSTANT datapath : INTEGER := 1;
	CONSTANT key_size : INTEGER := 128;
	CONSTANT plaintext_size : INTEGER := 64;
	SIGNAL start, clk, i_mode : std_logic:='0';
	SIGNAL key_in : std_logic_vector(datapath - 1 DOWNTO 0):= (OTHERS => '0');
	SIGNAL plaintext_in : std_logic_vector(datapath - 1 DOWNTO 0):= (OTHERS => '0');
	SIGNAL busy : std_logic:='0';
	SIGNAL ciphertext_out : std_logic_vector(datapath - 1 DOWNTO 0) := (OTHERS => '0');

	CONSTANT clock_period : TIME := 10 us;
	SIGNAL stop_the_clock : BOOLEAN;
 
 
	CONSTANT plaintext_test_vector : std_logic_vector(plaintext_size - 1 DOWNTO 0) := X"656b696c20646e75"; 
	CONSTANT key_test_vector : std_logic_vector(key_size - 1 DOWNTO 0) := X"1b1a1918131211100b0a090803020100";
	CONSTANT ciphertext_test_vector : std_logic_vector(plaintext_size - 1 DOWNTO 0) := X"44c8fc20b9dfa07a"; 
 
 
BEGIN
	uut :  Simon_64_128_bit_serial
 
--	 generic map (datapath => datapath)
	
 
 
	PORT MAP(
		clk => clk, 
		data_ready => i_mode, 
		key_in => key_in, 
		start => start, 
		plaintext_in => plaintext_in, 
		busy => busy, 
 
		ciphertext_out => ciphertext_out 
	);

	stimulus : PROCESS
	BEGIN
		
		i_mode <= '1';
 
		WAIT FOR clock_period;
 
		FOR i IN plaintext_size - 1 DOWNTO 0 LOOP
 
 
			plaintext_in <= plaintext_test_vector(plaintext_size - 1 + datapath - 1 - i DOWNTO plaintext_size - 1 - i);
			key_in <= key_test_vector(plaintext_size - 1 + datapath - 1 - i DOWNTO plaintext_size - 1 - i);
			WAIT FOR clock_period;
 
		END LOOP;
		i_mode <= '0'; --loading
 
 
 
		FOR i IN key_size - 1 DOWNTO plaintext_size LOOP
			key_in <= key_test_vector(plaintext_size + key_size - 1 + datapath - 1 - i DOWNTO plaintext_size + key_size - 1 - i);
			WAIT FOR clock_period;
 
		END LOOP;
 
 
		WAIT FOR clock_period;
		start <= '1';
		WAIT FOR 2 * clock_period;
		start <= '0';
 
		WAIT FOR 50000 * clock_period;

 
 
 
 
 
		stop_the_clock <= true;
		WAIT;
	END PROCESS;

	clocking : PROCESS
	BEGIN
		WHILE NOT stop_the_clock LOOP
		CLK <= '0', '1' AFTER clock_period / 2;
		WAIT FOR clock_period;
	END LOOP;
	WAIT;
	END PROCESS;

END;