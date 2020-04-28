library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity anodes_manager is
	GENERIC( enable_digit : std_logic_vector(3 downto 0) := "0001"
				);
    Port ( anodes : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end anodes_manager;

architecture Behavioral of anodes_manager is
	begin

		anodes <= not enable_digit;
		
end Behavioral;

