library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RCA_4bit is 
	port(	A		: in STD_LOGIC_VECTOR (3 downto 0);
			B		: in STD_LOGIC_VECTOR (3 downto 0); 
			cin	: in STD_LOGIC;
			S		: out STD_LOGIC_VECTOR (3 downto 0);
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

constant n : POSITIVE := 4;
signal c : STD_LOGIC_VECTOR (n-2 downto 0);

begin
full_adder_all: for i in 0 to n-1 generate
	l: if i = 0 generate
		least: full_adder port map(	x		=> A(i), 
									y 		=> B(i),
									c_in	=> cin,
									z		=> S(i),
									c_out	=> c(i)
								);
	end generate;
		
	r: if i > 0 AND i < n-1 generate
		rest: full_adder port map(	x		=> A(i),
									y		=> B(i),
									c_in	=> c(i-1),
									z		=> S(i),								
									c_out	=> c(i)
								);
	end generate;
	
	m: if i = n-1 generate
		most: full_adder port map(	x		=> A(i), 
									y		=> B(i),
									c_in	=> c(i-1),
									z		=> S(i),
									c_out	=> cout
								);
	end generate;
end generate;
end structural;