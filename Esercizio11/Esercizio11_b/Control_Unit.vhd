library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control_Unit is
		port(
			CLOCK			: in		STD_LOGIC;	-- Clock
			RESET 		: in		STD_LOGIC;	-- Reset
			LOAD			: in		STD_LOGIC;	-- Segnale di caricamento byte nel trasmettitore
			TBE			: in		STD_LOGIC;
			RD				: out		STD_LOGIC;
			RDA			: in		STD_LOGIC;
			SWITCH 		: in 		STD_LOGIC_VECTOR (7 downto 0);
			DBOUT			: in 		STD_LOGIC_VECTOR (7 downto 0);
			WR				: out		STD_LOGIC;			-- Segnale di caricamento byte nel trasmettitore
			LED			: out 	STD_LOGIC_VECTOR (7 downto 0);
			DBIN			: out 	STD_LOGIC_VECTOR (7 downto 0));
end Control_Unit;

architecture Behavioral of Control_Unit is

begin
	
	PROC : process(CLOCK, RESET)
		begin
			if(RESET = '1') then	-- Reset asincrono
					LED <= (others =>'0');
					WR <= '0';
					DBIN <= (others =>'0');
					RD <= '1';
			elsif(rising_edge(CLOCK)) then -- Attivo sul fronte di salita
				WR <= '0';
				if(LOAD = '1') then 
					DBIN <= SWITCH;
					WR <= '1';
				elsif(TBE = '1') then
					RD <= '0';
				elsif(RDA = '1') then
					LED <= DBOUT;
					RD <= '1';
				end if;
			end if;
	end process PROC;	

end Behavioral;

