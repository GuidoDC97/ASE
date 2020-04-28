library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity anodes_manager is
    Port ( counter : in  STD_LOGIC;
           anodes : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end anodes_manager;

architecture Behavioral of anodes_manager is

signal anodes_switching : std_logic_vector(3 downto 0) := (others => '0');

begin

anodes <= not anodes_switching or not "0011";

anodes_process: process(counter)
begin
	--a seconda del valore di counter le cifre si illuminano una alla volta da destra a sinistra
	case counter is
		when '0' =>
			anodes_switching <= x"1";
		when '1' =>
			anodes_switching <= x"2";
		when others =>
			anodes_switching <= (others => '0');
	end case;

end process;

end Behavioral;

