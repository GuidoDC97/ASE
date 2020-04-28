library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Definizione dell'interfaccia del modulo mux_8_1.

entity mux_8_1 is 
	
	port(	X3 : in STD_LOGIC_VECTOR(7 downto 0);
			S3 : in STD_LOGIC_VECTOR(2 downto 0);
			Y3 : out STD_LOGIC
			);
		
end mux_8_1;

-- Definizione architettura del modulo mux_8_1 con una descrizione strutturale.

architecture structural of mux_8_1 is

	signal U : STD_LOGIC_VECTOR(3 downto 0);
	constant N : POSITIVE := 4;

	component mux_2_1
	
		port(	X1	: in STD_LOGIC_VECTOR(1 downto 0);
				S1 : in STD_LOGIC;
				Y1	: out STD_LOGIC
				);
			
	end component;
	
	component mux_4_1
	
		port(	X2 : in STD_LOGIC_VECTOR(3 downto 0);
				S2 : in STD_LOGIC_VECTOR(1 downto 0);
				Y2 : out STD_LOGIC
				);
			
	end component;
	
	begin 
		mux_all: for i in 0 to N-1 generate
			mux_i: mux_2_1 port map(	X1	=> X3((X3'LENGTH-1)-2*i downto (X3'LENGTH-2)-2*i), 
												S1	=> S3(0),
												Y1	=> U(N-1-i)
												);
		end generate;
					
		mux4: mux_4_1 
			Port map(	X2 => U,
							S2 => S3(2 downto 1),
							Y2 => Y3
							);
					
end structural;
					
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
	
		
