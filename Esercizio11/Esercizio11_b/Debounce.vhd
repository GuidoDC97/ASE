
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Debounce is
	port(
		CLOCK				: in		STD_LOGIC;	-- Clock
		RESET 			: in		STD_LOGIC;	-- Reset
		BTN_LOAD			: in		STD_LOGIC;	-- Segnale di caricamento byte nel trasmettitore
		LOAD				: OUT		STD_LOGIC);	-- Segnale di caricamento byte nel trasmettitore
end Debounce;

architecture Behavioral of Debounce is

begin

	DEB : process(CLOCK, RESET)
		begin
		if(RESET = '1')then
			LOAD <= '0';
		elsif(rising_edge(CLOCK)) then
			if(BTN_LOAD = '1') then
				LOAD <= '1';
			else
				LOAD <= '0';
			end if;
		end if;
	end process DEB;

end Behavioral;