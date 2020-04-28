library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_latch is

	port(	D2		: in STD_LOGIC;
			E2		: in STD_LOGIC;
			Q2		: out STD_LOGIC;
			nQ2	: out STD_LOGIC
			);
			
end D_latch;

architecture structural of D_latch is

	component RS_latch

		port(	R		: in STD_LOGIC;
				S 		: in STD_LOGIC;
				E1		: in STD_LOGIC;
				Q1		: out STD_LOGIC;
				nQ1	: out STD_LOGIC
			 );
			 
	end component;

	signal nD2 : STD_LOGIC;

	begin
		nD2 <= NOT D2;

		RS_latch0 : RS_latch
			port map(	R		=> nD2,
							S		=> D2,
							E1		=> E2,
							Q1		=> Q2,
							nQ1	=> nQ2
							);

end structural;
