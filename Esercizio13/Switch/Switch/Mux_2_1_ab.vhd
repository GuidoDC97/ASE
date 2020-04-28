library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_2_1_ab is
	port(
		a0 	: in std_logic_vector(1 downto 0);
		a1 	: in std_logic_vector(1 downto 0);
		sel	: in std_logic;
		en 	: in std_logic;
		u  	: out std_logic_vector(1 downto 0)
	);
end Mux_2_1_ab;

architecture dataflow of Mux_2_1_ab is

begin
	u <= a0 when sel = '0' and en = '1' else 
			a1 when sel = '1' and en = '1' else
			"00";
end dataflow;