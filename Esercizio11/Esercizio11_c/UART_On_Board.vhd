library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_On_Board is
			port(
				CLOCK				: in		STD_LOGIC;	
				BTN_RESET 		: in		STD_LOGIC;	
				BTN_WR			: in		STD_LOGIC;	
				BTN_RD			: in		STD_LOGIC;
				SWITCH 			: in 		STD_LOGIC_VECTOR (7 downto 0);
				RXD				: in 		STD_LOGIC;
				LED				: out 	STD_LOGIC_VECTOR (7 downto 0);
				TXD				: out 	STD_LOGIC);
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
		SWITCH : IN std_logic_vector(7 downto 0);
		WR_EN : IN std_logic;
		RD_EN : IN std_logic;
		DBOUT : IN std_logic_vector(7 downto 0);
		RDA : IN std_logic;          
		WR : OUT std_logic;
		RD : OUT std_logic;
		LED : OUT std_logic_vector(7 downto 0);
		DBIN : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	COMPONENT Debounce
		PORT(
			CLOCK : IN std_logic;
			RESET : IN std_logic;
			BTN_WR	: in		STD_LOGIC;	
			BTN_RD	: in		STD_LOGIC;      
			WR : OUT std_logic;
			RD : OUT std_logic
			);
	END COMPONENT;
	
	COMPONENT clock_filter
		PORT(
			clock_in : IN std_logic;
			reset : IN std_logic;          
			clock_out : OUT std_logic
			);
	END COMPONENT;
	
--	signal SERIAL_CONNECTION : std_logic;
	signal RDA_TEMP : std_logic;
--	signal TBE_TEMP :  std_logic;
	signal DBIN_TEMP : std_logic_vector(7 downto 0);
	signal DBOUT_TEMP : std_logic_vector(7 downto 0);
	signal WR_TEMP : std_logic; 
	signal RD_TEMP : std_logic;
--	signal LOAD_TEMP	: std_logic;
	signal CLOCK_FX	: std_logic;
	signal WR_EN_TEMP : std_logic; 
	signal RD_EN_TEMP : std_logic; 
--	signal GROUND : std_logic := '0'; 

begin

	UART: UARTcomponent PORT MAP(
		TXD => TXD,
		CLK => CLOCK,
		DBIN => DBIN_TEMP,
--		TBE => TBE_TEMP,
		WR => WR_TEMP,
		RST => BTN_RESET,
		RXD => RXD,
		RD => RD_TEMP,
		DBOUT => DBOUT_TEMP,
		RDA => RDA_TEMP
	);	
	
	Inst_Control_Unit: Control_Unit PORT MAP(
		CLOCK => CLOCK,
		RESET => BTN_RESET,
		SWITCH => SWITCH,
		WR_EN => WR_EN_TEMP,
		RD_EN => RD_EN_TEMP,
		DBOUT => DBOUT_TEMP,
		RDA => RDA_TEMP,
		WR => WR_TEMP,
		RD => RD_TEMP,
		LED => LED,
		DBIN => DBIN_TEMP
	);

	
	Inst_Debounce: Debounce PORT MAP(
		CLOCK => CLOCK_FX,
		RESET => BTN_RESET,
		BTN_WR => BTN_WR,
		BTN_RD => BTN_RD,		
		WR => WR_EN_TEMP,
		RD => RD_EN_TEMP
	);
	
	Inst_clock_filter: clock_filter PORT MAP(
		clock_in => CLOCK,
		reset => BTN_RESET,
		clock_out => CLOCK_FX
	);

end structural;