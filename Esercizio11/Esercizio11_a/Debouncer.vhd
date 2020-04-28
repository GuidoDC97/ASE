library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Debouncer is
	port(	CLOCK			: in		STD_LOGIC;
			RESET 		: in		STD_LOGIC;
			BTN_LOAD		: in		STD_LOGIC;	-- Segnale di caricamento
			LOAD 			: out		STD_LOGIC);	
end Debouncer;

architecture behavioral of Debouncer is

begin

	main: process(CLOCK, RESET)
	begin
		if RESET = '1' then
			LOAD <= '0';
		elsif rising_edge(clock) then		-- Attivo sul fronte di salita
			if BTN_LOAD = '1' then
				LOAD <= '1';
			else
				LOAD <= '0';
			end if;
		end if;
	end process main;

end behavioral;