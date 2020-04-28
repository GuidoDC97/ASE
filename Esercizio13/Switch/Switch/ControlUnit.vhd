library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnit is
	port(
		i0 : in std_logic;
		i1 : in std_logic;
		i2 : in std_logic;
		i3 : in std_logic;
		sel : out std_logic_vector(1 downto 0);
		a : out std_logic
	);
end ControlUnit;

architecture dataflow of ControlUnit is

begin
	s(0) <= (i1 and not(i0)) or (not(i0)and not(i2));
	s(1) <= (not(i1) and not(i0));
	a    <= i1 or i2 or i3 or i0;
end dataflow;