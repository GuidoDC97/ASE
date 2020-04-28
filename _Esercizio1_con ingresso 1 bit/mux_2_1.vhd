library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Definizione dell'interfaccia del modulo mux_2_1.

entity mux_2_1 is 
	
	port(	X1	: in STD_LOGIC_VECTOR(1 downto 0);
			S1	: in STD_LOGIC;
			Y1	: out STD_LOGIC
			);
		
end mux_2_1;

-- Definizione architettura del modulo mux_2_1 attraverso il livello d'astrazione dataflow.
architecture dataflow of mux_2_1 is
	
	begin
		Y1	<=	((X1(0) AND (NOT S1)) OR (X1(1) AND S1));

end dataflow;