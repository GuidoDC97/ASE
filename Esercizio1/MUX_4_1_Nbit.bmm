library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Definizione dell'interfaccia del modulo mux_4_1.

entity mux_4_1 is 
	
	port(	X2 : in STD_LOGIC_VECTOR(3 downto 0);
			S2 : in STD_LOGIC_VECTOR(1 downto 0);
			Y2 : out STD_LOGIC
			);
		
end mux_4_1;

-- Definizione architettura del modulo mux_4_1 con una descrizione strutturale.
architecture structural of mux_4_1 is

	signal U : STD_LOGIC_VECTOR(1 downto 0);
	
	component mux_2_1
	
		port(	X1	: in STD_LOGIC_VECTOR(1 downto 0);
				S1 : in STD_LOGIC;
				Y1	: out STD_LOGIC
				);
			
	end component;
	
	begin
		mux0: mux_2_1 
			Port map(	X1 => X2(3 downto 2),
							S1	=> S2(0),
							Y1 => U(1)
							);


		mux1: mux_2_1
			Port map(	X1	=> X2(1 downto 0),
							S1	=> S2(0),
							Y1 => U(0)
							);

		mux2: mux_2_1
			Port map(	X1	=> U,
							S1	=> S2(1),
							Y1 => Y2
							);
				
end structural;
				
				
				