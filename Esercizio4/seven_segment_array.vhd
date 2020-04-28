library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display_seven_segments is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           value : in  STD_LOGIC_VECTOR (7 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end display_seven_segments;

architecture Structural of display_seven_segments is

signal counter : std_logic;

COMPONENT counter_mod2
	PORT(
		clock : in  STD_LOGIC;
      reset : in  STD_LOGIC;
      counter : out  STD_LOGIC
		);
END COMPONENT;

COMPONENT cathodes_manager
	PORT(
		counter : IN std_logic;
		value : IN std_logic_vector(7 downto 0);         
		cathodes : OUT std_logic_vector(7 downto 0)
		);
END COMPONENT;

COMPONENT anodes_manager
	PORT(
		counter : IN STD_LOGIC;   
		anodes : OUT std_logic_vector(3 downto 0)
		);
END COMPONENT;

begin
counter_instance: counter_mod2 port map(
	clock => clock,
	reset => reset,
	counter => counter
);

cathodes_instance: cathodes_manager port map(
	counter => counter,
	value => value,
	cathodes => cathodes
);

anodes_instance: anodes_manager port map(
	counter => counter,
	anodes => anodes 
);

end Structural;