library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
	port(	x		: in STD_LOGIC;
			y 		: in STD_LOGIC;
			c_in	: in STD_LOGIC;
			z		: out STD_LOGIC;
			c_out	: out STD_LOGIC
	    );
end full_adder;

architecture dataflow of full_adder is
begin
	z <= x XOR y XOR c_in;
	c_out <= (x AND y) OR (c_in AND (x XOR y));
end dataflow;

