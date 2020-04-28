library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D_ETd_Sami_tb is
end D_ETd_Sami_tb;

architecture behavioral of D_ETd_Sami_tb is

	component D_ETd_Sami
	
		port(	D3		: in STD_LOGIC;
				CLK	: in STD_LOGIC;
				Q3		: out STD_LOGIC;
				nQ3	: out STD_LOGIC
				);
		 
	end component;
	
	signal D3_tb	: STD_LOGIC;
	signal CLK_tb	: STD_LOGIC;
	signal Q3_tb	: STD_LOGIC;
	signal nQ3_tb	: STD_LOGIC;
	
	constant CLK_period : time := 10 ns;

	begin
		UUT : D_ETd_Sami
			port map(	D3		=> D3_tb,
							CLK	=> CLK_tb,
							Q3		=> Q3_tb,
							nQ3	=> nQ3_tb
							);
							
		CLK_proc: process
		begin		
			CLK_tb	<= '0';
			wait for CLK_period/2;
		
			CLK_tb	<= '1';
			wait for CLK_period/2;
		end process;

		stim_proc: process
		begin
			wait for CLK_period/4;
			
			D3_tb 	<= '1';
			wait until(CLK_tb'EVENT AND CLK_tb = '0');
			
			wait for 1 ns;

			assert Q3_tb = '1' AND nQ3_tb = '0'
			report "errore0"
			severity failure;
			

			D3_tb 	<= '0';
			wait until(CLK_tb'EVENT AND CLK_tb = '0');
			
			wait for 1 ns;

			assert Q3_tb = '0' AND nQ3_tb = '1'
			report "errore1"
			severity failure;


			D3_tb 	<= '1';
			wait until(CLK_tb'EVENT AND CLK_tb = '0');
			
			wait for 0.5 ns;	-- Attesa inferiore ad 1 ns dopo il fronte di discesa di CLK
			
			assert Q3_tb = '1' AND nQ3_tb = '0'
			report "errore2"
			severity failure;

			D3_tb 	<= '0';
			wait until(CLK_tb'EVENT AND CLK_tb = '0');
			
			wait for 1 ns;
			
			assert Q3_tb = '0' AND nQ3_tb = '1'	-- Errore dovuto alla non idealit�
			report "errore2"
			severity failure;
			
			wait;
		end process;
end behavioral;