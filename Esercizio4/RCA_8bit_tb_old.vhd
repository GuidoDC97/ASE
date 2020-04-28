library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RCA_8bit_tb is
end RCA_8bit_tb;

architecture behavioral of RCA_8bit_tb is

	component RCA_8bit
		port(	A1		: in STD_LOGIC_VECTOR (7 downto 0);
				B1		: in STD_LOGIC_VECTOR (7 downto 0); 
				cin1	: in STD_LOGIC;				
				S1		: out STD_LOGIC_VECTOR (7 downto 0);
				cout1	: out STD_LOGIC
			);
	end component;
	
	signal A_tb : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
	signal B_tb : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
	signal S_tb : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
	signal cin_tb : STD_LOGIC :='0';
	signal cout_tb : STD_LOGIC :='0';
	
	begin
	UUT : RCA_8bit
		port map(	A1 => A_tb,
						B1 => B_tb,
						cin1 => cin_tb,					
						S1 => S_tb,
						cout1 => cout_tb
				);

	stim_proc: process
	begin
	
	-- A_tb = a7 a6 a5 a4 a3 a2 a1 a0
	-- B_tb = b7 b6 b5 b4 b3 b2 b1 b0
	-- S_tb = s7 s6 s5 s4 s3 s2 s1 s0
	-- cin_tb
	-- cout_tb
		
	A_tb 	<= "00000000";
	B_tb	<= "00000000";
	cin_tb	<= '0'; 
	wait for 10 ns; 
		
	assert S_tb = "00000000" AND cout_tb = '0'
	report "errore0"
	severity failure;
	
	
	A_tb 	<= "00000000";
	B_tb	<= "10001000";
	cin_tb	<= '0'; 
	wait for 10 ns; 
		
	assert S_tb = "10001000" AND cout_tb = '0'
	report "errore1"
	severity failure;
	
	
	A_tb 	<= "00100001";
	B_tb	<= "10001000";
	cin_tb	<= '1'; 
	wait for 10 ns; 
		
	assert S_tb = "10101010" AND cout_tb = '0'
	report "errore2"
	severity failure;
	
	
	A_tb 	<= "10000001";
	B_tb	<= "10000010";
	cin_tb	<= '1'; 
	wait for 10 ns; 
		
	assert S_tb = "00000100" AND cout_tb = '1'
	report "errore3"
	severity failure;
	
	wait;
	
	end process;
end;