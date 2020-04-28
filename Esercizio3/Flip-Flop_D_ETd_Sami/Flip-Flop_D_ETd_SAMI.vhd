library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_ETd_Sami is

	port(	D3		: in STD_LOGIC;
			CLK	: in STD_LOGIC;
			Q3		: out STD_LOGIC;
			nQ3	: out STD_LOGIC
			);
		 
end D_ETd_Sami;

architecture structural of D_ETd_Sami is

	component D_latch

		port(	D2		: in STD_LOGIC;
				E2		: in STD_LOGIC;
				Q2		: out STD_LOGIC;
				nQ2	: out STD_LOGIC
				);
			 
	end component;

	component Derivatore
	
		port(	C	: in STD_LOGIC;
				dC	: out STD_LOGIC
				);
			 
	end component;

	signal TEMP : STD_LOGIC;

	begin
		D_latch0 : D_latch
			port map(	D2		=> D3,
							E2		=> TEMP,
							Q2		=> Q3,
							nQ2	=> nQ3
							);
					
		Derivatore0 : Derivatore
			port map(	C	=> CLK,
							dC	=> TEMP
							);		

end structural;