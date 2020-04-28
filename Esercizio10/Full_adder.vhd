library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULL_ADDER is
	port(	X		: in STD_LOGIC;
			Y 		: in STD_LOGIC;
			C_IN	: in STD_LOGIC;
			Z		: out STD_LOGIC;
			C_OUT	: out STD_LOGIC);
end FULL_ADDER;

architecture dataflow of FULL_ADDER is
begin
	Z		<= X XOR Y XOR C_IN;
	C_OUT	<= (X AND Y) OR (C_IN AND (X XOR Y));
end dataflow;

