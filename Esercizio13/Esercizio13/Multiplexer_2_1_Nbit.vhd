library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Multiplexer_2_1_Nbit is
	generic( N : integer := 4);
	port(
		X0	: in STD_LOGIC_VECTOR(N-1 downto 0);
		X1	: in STD_LOGIC_VECTOR(N-1 downto 0);
		S	: in STD_LOGIC;
		Y	: out STD_LOGIC_VECTOR(N-1 downto 0)
	);

end Multiplexer_2_1_Nbit;

architecture dataflow of Multiplexer_2_1_Nbit is

	begin
		with S select
				Y <= 	X0	when '0',	
						X1 when '1',
						(others => '-') when others;

end dataflow;