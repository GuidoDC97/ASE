library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DeMux_1_2 is
	port(
		sel	: in std_logic;
		i  	: in std_logic_vector(1 downto 0);
		u0 	: out std_logic_vector(1 downto 0);
		u1 	: out std_logic_vector(1 downto 0)
	);
end DeMux_1_2;

architecture dataflow of DeMux_1_2 is

begin
	u0 <= i when sel = '0' else 
			"00";
	u1 <= i when sel = '1' else 
			"00";
end dataflow;