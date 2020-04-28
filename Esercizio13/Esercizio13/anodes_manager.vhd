library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity anodes_manager is
    Port ( counter : in  STD_LOGIC_VECTOR (1 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end anodes_manager;

architecture Behavioral of anodes_manager is

signal anodes_switching : std_logic_vector(3 downto 0) := (others => '0');

begin
	anodes <= not anodes_switching OR not "1111";

	anodes_process: process(counter)
	begin
		--a seconda del valore di caunter le cifre si illuminano una alla volta da destra a sinistra
		case counter is
			when "00" =>
				anodes_switching <= x"1";
			when "01" =>
				anodes_switching <= x"2";
			when "10" =>
				anodes_switching <= x"4";
			when "11" =>
				anodes_switching <= x"8";
			when others =>
				anodes_switching <= (others => '0');
		end case;
	end process;

end Behavioral;

