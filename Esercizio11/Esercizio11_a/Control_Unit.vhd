library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Interfaccia
entity CONTROL_UNIT is
	generic( N	: integer := 4);
	port(	CLOCK			: in		STD_LOGIC;	-- Clock board
			RESET 		: in		STD_LOGIC;	-- Reset
			LOAD			: in		STD_LOGIC;	-- Segnale di caricamento
			IN_VALUE_TX	: in  	std_logic_vector (7 downto 0);	-- Valore di ingresso trasmissione
			IN_VALUE_RX	: in  	std_logic_vector (7 downto 0);	-- Valore di ingresso ricezione			
			TBE			: in		STD_LOGIC;	-- Buffer di trasmissione vuoto
			RDA			: in		STD_LOGIC;	--	Dato disponibile
			VALUE_TX		: out  	std_logic_vector (7 downto 0);	-- Valore di uscita trasmissione
			VALUE_RX		: out  	std_logic_vector (7 downto 0);	-- Valore di uscita ricezinoe
			WR 			: out		STD_LOGIC;	-- Abilita trasmissione
			RD 			: out		STD_LOGIC);	-- Reset della UART

			
end CONTROL_UNIT;

-- Architettura
architecture behavioral of CONTROL_UNIT is

	signal VALUE_TX_TEMP	: std_logic_vector (7 downto 0);
	signal VALUE_RX_TEMP	: std_logic_vector (7 downto 0);
		
	begin		
		INPUT_PROC : process (CLOCK, RESET)
		begin
			if(RESET = '1') then	-- Reset asincrono
				VALUE_TX_TEMP <= (others => '0');	
				VALUE_RX_TEMP <= (others => '0');
			elsif(rising_edge(CLOCK)) then -- Attivo sul fronte di salita
				WR <= '0';
				if(LOAD = '1') then 
					VALUE_TX_TEMP <= IN_VALUE_TX;
					WR <= '1';
				elsif(TBE = '1') then 
					RD <= '0';
				elsif(RDA = '1') then
					RD <= '1';
					VALUE_RX_TEMP <= IN_VALUE_RX;					
				end if;
			end if;
		end process INPUT_PROC;
		
		VALUE_TX <= VALUE_TX_TEMP;
		VALUE_RX <= VALUE_RX_TEMP;	
	
end behavioral;