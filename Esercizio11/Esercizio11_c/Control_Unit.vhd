library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control_Unit is
		port(
			CLOCK			: in		STD_LOGIC;	
			RESET 		: in		STD_LOGIC;	
			SWITCH 		: in 		STD_LOGIC_VECTOR (7 downto 0);
			WR_EN			: in		STD_LOGIC;
			RD_EN			: in		STD_LOGIC;
			DBOUT			: in 		STD_LOGIC_VECTOR (7 downto 0);
			RDA			: in		STD_LOGIC;
			WR				: out		STD_LOGIC;			
			RD				: out		STD_LOGIC;
			LED			: out 	STD_LOGIC_VECTOR (7 downto 0);
			DBIN			: out 	STD_LOGIC_VECTOR (7 downto 0));
end Control_Unit;

architecture Behavioral of Control_Unit is

begin
	
		PROC : process(CLOCK, RESET)
		begin
			if(RESET = '1') then				-- Reset asincrono
					LED <= (others =>'0');
					WR <= '0';
					DBIN <= (others =>'0');
			elsif(rising_edge(CLOCK)) then -- Attivo sul fronte di salita
				WR <= '0';
				RD <= '1';				
				if(WR_EN = '1') then 
					DBIN <= SWITCH;
					WR <= '1';
				elsif(RD_EN = '1') then
					RD <= '0';
				elsif(RDA = '1') then
					RD <= '1';
					LED <= DBOUT;
				end if;
			end if;
	end process PROC;	

end Behavioral;