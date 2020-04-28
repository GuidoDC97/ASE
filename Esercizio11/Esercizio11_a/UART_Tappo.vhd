library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_Tappo is
	port(	CLOCK			: in  	std_logic;	-- Clock 
			RESET			: in  	std_logic;	-- Reset
			LOAD 			: in		std_logic;	-- Segnale di caricamento
			IN_VALUE		: in  	std_logic_vector (7 downto 0);	-- Valore di ingresso	
			OUT_VALUE	: out  	std_logic_vector (7 downto 0));	-- Valore di uscita	
end UART_Tappo;

architecture structural of UART_Tappo is

	component UARTcomponent
		port(	RXD : IN std_logic;
				CLK : IN std_logic;
				DBIN : IN std_logic_vector(7 downto 0);
				RD : IN std_logic;
				WR : IN std_logic;
				RST : IN std_logic;    
				RDA : INOUT std_logic;      
				TXD : OUT std_logic;
				DBOUT : OUT std_logic_vector(7 downto 0);
				TBE : OUT std_logic;
				PE : OUT std_logic;
				FE : OUT std_logic;
				OE : OUT std_logic);
	end component;
	
	component CONTROL_UNIT
		port(	CLOCK			: in		STD_LOGIC;	-- Clock
				RESET 		: in		STD_LOGIC;	-- Reset
				LOAD			: in		STD_LOGIC;	-- Segnale di caricamento
				IN_VALUE_TX	: in  	std_logic_vector (7 downto 0);	-- Valore di ingresso trasmissione
				IN_VALUE_RX	: in  	std_logic_vector (7 downto 0);	-- Valore di ingresso ricezione			
				TBE			: in		STD_LOGIC;	-- Buffer di trasmissione vuoto
				RDA			: in		STD_LOGIC;	--	Dato disponibile
				VALUE_TX		: out  	std_logic_vector (7 downto 0);	-- Valore di uscita trasmissione
				VALUE_RX		: out  	std_logic_vector (7 downto 0);	-- Valore di uscita ricezinoe
				WR 			: out		STD_LOGIC;	-- Abilita trasmissione
				RD 			: out		STD_LOGIC);
	end component;
	
	COMPONENT Debouncer
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		BTN_LOAD : IN std_logic;          
		LOAD : OUT std_logic
		);
	END COMPONENT;

	component CLOCK_FILTER
		port(	CLOCK_IN : IN std_logic;
				RESET : IN std_logic;          
				CLOCK_OUT : OUT std_logic);
	end component;

	signal CLOCK_FX	: std_logic;
	signal VALUE_TX_TEMP	: std_logic_vector(7 downto 0);
	signal VALUE_RX_TEMP	: std_logic_vector(7 downto 0);	
	signal TBE_TEMP	: std_logic;
	signal WR_TEMP	: std_logic;
	signal RD_TEMP	: std_logic;
	signal TEMP	: std_logic;
	signal RDA_TEMP	: std_logic;
	signal LOAD_TEMP	: std_logic;

	begin
	
		Inst_UARTcomponent: UARTcomponent PORT MAP(
			TXD => TEMP,
			RXD => TEMP,
			CLK => CLOCK,	-- Clock board
			DBIN => VALUE_TX_TEMP,	-- Uscita control unit
			DBOUT => VALUE_RX_TEMP,
			RDA => RDA_TEMP,
			TBE => TBE_TEMP,
			RD => RD_TEMP,	-- Uscita control unit
			WR => WR_TEMP,	-- Uscita control unit
			RST => RESET 
		);
		
		Inst_CONTROL_UNIT: CONTROL_UNIT PORT MAP(
			CLOCK => CLOCK,
			RESET => RESET,
			LOAD => LOAD_TEMP,
			IN_VALUE_TX => IN_VALUE,	-- Switch
			IN_VALUE_RX => VALUE_RX_TEMP,	-- Uscita UART
			TBE => TBE_TEMP,	-- Uscita UART
			RDA => RDA_TEMP,	-- Uscita UART
			VALUE_TX => VALUE_TX_TEMP,
			VALUE_RX => OUT_VALUE,	-- Led
			WR => WR_TEMP,
			RD => RD_TEMP
		);
		
		Inst_Debouncer: Debouncer PORT MAP(
			CLOCK => CLOCK_FX,
			RESET => RESET,
			BTN_LOAD => LOAD,
			LOAD => LOAD_TEMP
		);
	
		Inst_CLOCK_FILTER: CLOCK_FILTER PORT MAP(
			CLOCK_IN => CLOCK,
			RESET => RESET,
			CLOCK_OUT => CLOCK_FX
		);

end structural;

