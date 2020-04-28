library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RCA_8bit is 
	port(	A1		: in STD_LOGIC_VECTOR (7 downto 0);
			B1		: in STD_LOGIC_VECTOR (7 downto 0); 
			cin1	: in STD_LOGIC;
			S1		: out STD_LOGIC_VECTOR (7 downto 0);
			cout1	: out STD_LOGIC
	    );
end RCA_8bit;

architecture structural of RCA_8bit is 

component RCA_4bit
	port(	A		: in STD_LOGIC_VECTOR (3 downto 0);
			B 		: in STD_LOGIC_VECTOR (3 downto 0);
			cin		: in STD_LOGIC;
			S		: out STD_LOGIC_VECTOR (3 downto 0);
			cout	: out STD_LOGIC
	    );
end component;

signal c1 : STD_LOGIC;

begin
RCA_4bit_0 : RCA_4bit
	port map(	A	=> A1(3 downto 0),
				B		=> B1(3 downto 0),
				cin 	=> cin1,
				S		=> S1(3 downto 0),
				cout	=> c1
			);

RCA_4bit_1 : RCA_4bit
	port map(	A	=> A1(7 downto 4),
				B		=> B1(7 downto 4),
				cin 	=> c1,
				S		=> S1(7 downto 4),
				cout	=> cout1
			);
end structural;