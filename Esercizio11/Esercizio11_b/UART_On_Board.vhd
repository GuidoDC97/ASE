library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_On_Board is
			port(
				CLOCK				: in		STD_LOGIC;	-- Clock
				BTN_RESET 		: in		STD_LOGIC;	-- Reset
				BTN_LOAD			: in		STD_LOGIC;	-- Segnale di caricamento byte nel trasmettitore
				SWITCH 			: in 		STD_LOGIC_VECTOR (7 downto 0);
				LED				: out 	STD_LOGIC_VECTOR (7 downto 0));
end UART_On_Board;
 
architecture structural of UART_On_Board is

	COMPONENT UARTcomponent
		PORT(
			RXD : IN std_logic;
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
			OE : OUT std_logic
		);
	END COMPONENT;

	COMPONENT Control_Unit
		PORT(
			CLOCK : IN std_logic;
			RESET : IN std_logic;
			LOAD : IN std_logic;
			TBE : IN std_logic;
			RD	: OUT	std_logic;
			SWITCH : IN std_logic_vector(7 downto 0);
			DBOUT : IN std_logic_vector(7 downto 0);    
			RDA : IN std_logic;      
			WR : OUT std_logic;
			LED : OUT std_logic_vector(7 downto 0);
			DBIN : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	COMPONENT Debounce
		PORT(
			CLOCK : IN std_logic;
			RESET : IN std_logic;
			BTN_LOAD : IN std_logic;          
			LOAD : OUT std_logic
			);
	END COMPONENT;
	
	COMPONENT clock_filter
		PORT(
			clock_in : IN std_logic;
			reset : IN std_logic;          
			clock_out : OUT std_logic
			);
	END COMPONENT;
	
	signal SERIAL_CONNECTION : std_logic;
	signal RDA_TEMP : std_logic;
	signal TBE_TEMP :  std_logic;
	signal DBIN_TEMP : std_logic_vector(7 downto 0);
	signal DBOUT_TEMP : std_logic_vector(7 downto 0);
	signal WR_TEMP : std_logic; 
	signal RD_TEMP : std_logic;
	signal gnd_val :std_logic := '0';
	signal high_vol :std_logic := '1';
	signal LOAD_TEMP	: std_logic;
	signal CLOCK_FX	: std_logic;
	
begin

	TX: UARTcomponent PORT MAP(
		TXD => SERIAL_CONNECTION,
		CLK => CLOCK,
		DBIN => DBIN_TEMP,
		TBE => TBE_TEMP,
		WR => WR_TEMP,
		RST => BTN_RESET,
		RXD => gnd_val,
		RD => high_vol
	);
	
	RX: UARTcomponent PORT MAP(
		RXD => SERIAL_CONNECTION,
		CLK => CLOCK,
		RD => RD_TEMP,
		DBOUT => DBOUT_TEMP,
		RDA => RDA_TEMP,
		RST => BTN_RESET,
		WR => gnd_val,
		DBIN => "00000000"
	);
	
	Inst_Control_Unit: Control_Unit PORT MAP(
		CLOCK => CLOCK,
		RESET => BTN_RESET,
		LOAD => LOAD_TEMP,
		TBE => TBE_TEMP,
		RD	=> RD_TEMP,
		RDA => RDA_TEMP,
		SWITCH => SWITCH,
		DBOUT => DBOUT_TEMP, 
		WR => WR_TEMP,
		LED => LED,
		DBIN => DBIN_TEMP
	);
	
	Inst_Debounce: Debounce PORT MAP(
		CLOCK => CLOCK_FX,
		RESET => BTN_RESET,
		BTN_LOAD => BTN_LOAD,
		LOAD => LOAD_TEMP
	);
	
	Inst_clock_filter: clock_filter PORT MAP(
		clock_in => CLOCK,
		reset => BTN_RESET,
		clock_out => CLOCK_FX
	);

end structural;