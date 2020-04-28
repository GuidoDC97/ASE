library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RCA_4bit is 
	generic(	n : POSITIVE := 4;
			);
	port(	A		: in STD_LOGIC_VECTOR (n-1 downto 0);
			B		: in STD_LOGIC_VECTOR (n-1 downto 0); 
			S		: out STD_LOGIC_VECTOR (n-1 downto 0);
			cin		: in STD_LOGIC;
			cout	: out STD_LOGIC
	    );
end RCA_4bit;

architecture structural of RCA_4bit is

component full_adder
	port(	x		: in STD_LOGIC;
			y 		: in STD_LOGIC;
			c_in	: in STD_LOGIC;
			z		: out STD_LOGIC;
			c_out	: out STD_LOGIC
	    );
end component;
for all : full_adder use entity work.dataflow

signal c : STD_LOGIC_VECTOR (n-2 downto 0);

begin
full_adder_all: for i in 0 to n-1 generate
	l: if i = 0 generate
		least full_adder port map(	x		=> A(i), 
									y 		=> B(i),
									c_in	=> cin,
									c_out	=> c(i),
									z		=> S(i)
								);
		end generate
		
	m: if i > 0 i < n-1 generate
		least full_adder port map(	x		=> A(i),
									y		=> B(i),
									c_in	=> c(i-1),
									c_out	=> c(i),
									z		=> S(i)
								);
		end generate
	
	r: if i = n-1 generate
		least full_adder port map(	x		=> A(i), 
									y		=> B(i),
									c_in	=> c(i-1),
									c_out	=> cout,
									z		=> S(i)
								);
		end generate
end structural;