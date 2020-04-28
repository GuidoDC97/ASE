library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_MS_non_ideale is

	port(	D3		: in STD_LOGIC;
			CLK	: in STD_LOGIC;
			Q3		: out STD_LOGIC;
			nQ3	: out STD_LOGIC
			);
		 
end D_MS_non_ideale;

architecture structural of D_MS_non_ideale is

	component D_latch
	
		port(	D2		: in STD_LOGIC;
				E2		: in STD_LOGIC;
				Q2		: out STD_LOGIC;
				nQ2	: out STD_LOGIC
				);
			 
	end component;

	signal nCLK 	: STD_LOGIC;
	signal TEMP		: STD_LOGIC;
	signal nTEMP	: STD_LOGIC;

	begin
		nCLK <= NOT CLK;

		D_master : D_latch
			port map(	D2		=> D3,
							E2 	=> CLK,
							Q2		=> TEMP,
							nQ2	=> nTEMP
							);
				
		D_slave : D_latch
			port map(	D2		=> TEMP,
							E2		=> nCLK,
							Q2		=> Q3,
							nQ2	=> nQ3
							);	
				
end structural;