library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MAC_cell is
    Port ( x : in  STD_LOGIC;
           s_in : in  STD_LOGIC;
           y : in  STD_LOGIC;
           c_in : in  STD_LOGIC;
           c_out : out  STD_LOGIC;
           s_out : out  STD_LOGIC);
end MAC_cell;

architecture Behavioral of MAC_cell is

	COMPONENT full_adder
		PORT(
			x : IN std_logic;
			y : IN std_logic;
			c_in : IN std_logic;          
			z : OUT std_logic;
			c_out : OUT std_logic
			);
	END COMPONENT;

	signal temp_y : std_logic;

begin

	temp_y <= x and y;
	
full_adder_0: full_adder PORT MAP(
		x => s_in,
		y => temp_y,
		c_in => c_in,
		z => s_out,
		c_out => c_out
	);

end Behavioral;