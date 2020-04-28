library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.STD_LOGIC_ARITH.all;

entity Adder is
	generic( N : integer := 8);
	port(	OP1	: in	STD_LOGIC_VECTOR(N-1 downto 0);
			OP2	: in	STD_LOGIC_VECTOR(N-1 downto 0);
			RIS	: out	STD_LOGIC_VECTOR(N-1 downto 0);
			ERR	: out	STD_LOGIC);
end Adder;

architecture dataflow of Adder is

	signal RIS_TEMP : STD_LOGIC_VECTOR(N-1 downto 0);

	begin
		RIS_TEMP <= signed(OP1) + signed(OP2);
		RIS <= RIS_TEMP;
		ERR <= '1' when ((OP1(N-1) = '0' and OP2(N-1) = '0' and RIS_TEMP(N-1) = '1') or
								(OP1(N-1) = '1' and OP2(N-1) = '1' and RIS_TEMP(N-1) = '0'))
					  else '0';

end dataflow;