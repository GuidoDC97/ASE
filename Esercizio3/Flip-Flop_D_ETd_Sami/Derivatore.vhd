library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Derivatore is

	generic(	delay : TIME := 1 ns);
	port(	C	: in STD_LOGIC;
			dC	: out STD_LOGIC
			);
			
end Derivatore;

architecture dataflow of Derivatore is

	signal B : STD_LOGIC;

	begin
		B	<= NOT C after delay;
		dC	<= NOT (C OR B);
		
end dataflow;