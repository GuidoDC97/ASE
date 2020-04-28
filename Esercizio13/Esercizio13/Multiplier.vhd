library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.STD_LOGIC_ARITH.all;

entity Multiplier is
	generic( N : integer := 8);
	port(	OP1	: in	STD_LOGIC_VECTOR(N-1 downto 0);
			OP2	: in	STD_LOGIC_VECTOR(N-1 downto 0);
			RIS	: out	STD_LOGIC_VECTOR(2*N-1 downto 0));
end Multiplier;

architecture dataflow of Multiplier is
	
	signal RIS_TEMP : STD_LOGIC_VECTOR(2*N-1 downto 0);
	
	begin			 
		RIS_TEMP <= signed(OP1) * signed(OP2);
		RIS <= RIS_TEMP;

end architecture;