library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NeuralNetwork_On_Board is
	GENERIC(	N : integer := 4);
	port(	CLOCK : in  STD_LOGIC;
			RESET : in STD_LOGIC;
			SWITCH : in  std_logic_vector(7 downto 0);
			BTN_LOAD	: in STD_LOGIC;
			BTN_START : in STD_LOGIC;
			LED : out STD_LOGIC;
			ANODES : out std_logic_vector(3 downto 0);
			CATHODES : out std_logic_vector(7 downto 0));
end NeuralNetwork_On_Board;


architecture structural of NeuralNetwork_On_Board is

	COMPONENT ControlUnit
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		START : IN std_logic;          
		EN_HI : OUT std_logic;
		EN_OUT : OUT std_logic;
		EN_ERR 	: OUT std_logic		
		);
	END COMPONENT;
	
--############################################################################
-- ISTANZIAZIONE CONTROL UNIT PER ARCHITETTURA PIPELINED.
-- COMMENTARE IN MANIERA MUTUAMENTE ESCLUSIVA LE DUE ISTANZIAZIONI.
--############################################################################
--	COMPONENT Control_Unit
--	PORT(
--		CLOCK : IN std_logic;
--		RESET : IN std_logic;
--		START : IN std_logic;          
--		EN_HI : OUT std_logic;
--		EN_OUT : OUT std_logic;
--		EN_ERR 	: OUT std_logic		
--		);
--	END COMPONENT;
	
	COMPONENT Datapath
	GENERIC(	N : integer);
	PORT(
		CLOCK : IN std_logic;
		EN_IN : IN std_logic;
		EN_HI : IN std_logic;
		EN_OUT : IN std_logic;
		EN_ERR 	: IN std_logic;		
		RESET : IN std_logic;
		X1 : IN std_logic_vector(3 downto 0);
		X2 : IN std_logic_vector(3 downto 0);          
		Y : OUT std_logic_vector(15 downto 0);
		ERR : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT Debouncer
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		X : IN std_logic_vector(7 downto 0);
		BTN_LOAD : IN std_logic;
		BTN_START : IN std_logic;          
		X1 : OUT std_logic_vector(3 downto 0);
		X2 : OUT std_logic_vector(3 downto 0);
		START : OUT std_logic;
		LOAD : OUT std_logic
		);
	END COMPONENT;

	COMPONENT Clock_Filter
	generic(	CLOCK_FREQUENCY_IN : integer; 
				CLOCK_FREQUENCY_OUT : integer);
	PORT(
		CLOCK_IN : IN std_logic;
		RESET : IN std_logic;          
		CLOCK_OUT : OUT std_logic
		);
	END COMPONENT;

	COMPONENT CLOCK_FILTER_DISPLAY
	generic(	CLOCK_FREQUENCY_IN : integer; 
				CLOCK_FREQUENCY_OUT : integer);
	PORT(
		CLOCK_IN : IN std_logic;
		RESET : IN std_logic;          
		CLOCK_OUT : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT display_seven_segments
	PORT(
		clock : IN std_logic;
		reset : IN std_logic;
		value : IN std_logic_vector(15 downto 0);          
		anodes : OUT std_logic_vector(3 downto 0);
		cathodes : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	signal CLOCK_FX : std_logic;
	signal CLOCK_FX_DISPLAY : std_logic;
	signal START_TEMP : std_logic;
	signal RESET_N : std_logic;
	signal EN_IN_TEMP : std_logic;
	signal EN_HI_TEMP : std_logic;
	signal EN_OUT_TEMP : std_logic;
	signal EN_ERR_TEMP : std_logic;
	signal X1_TEMP : std_logic_vector(N-1 downto 0);
	signal X2_TEMP : std_logic_vector(N-1 downto 0);
	signal Y_TEMP : std_logic_vector(4*N-1 downto 0);
	
	begin
	Inst_ControlUnit: ControlUnit PORT MAP(
		CLOCK => CLOCK_FX,
		RESET => RESET,
		START => START_TEMP,
		EN_HI => EN_HI_TEMP,
		EN_OUT => EN_OUT_TEMP,
		EN_ERR => EN_ERR_TEMP
	);
	
--############################################################################
-- ISTANZIAZIONE CONTROL UNIT PER ARCHITETTURA PIPELINED.
-- COMMENTARE IN MANIERA MUTUAMENTE ESCLUSIVA LE DUE ISTANZIAZIONI.
--############################################################################
--	Inst_Control_Unit: Control_Unit PORT MAP(
--		CLOCK => CLOCK_FX,
--		RESET => RESET,
--		START => START_TEMP,
--		EN_HI => EN_HI_TEMP,
--		EN_OUT => EN_OUT_TEMP,
--		EN_ERR => EN_ERR_TEMP
--	);
	
	Inst_Datapath: Datapath 
	GENERIC MAP(N => 4)
	PORT MAP(
		CLOCK => CLOCK_FX,
		EN_IN => EN_IN_TEMP,
		EN_HI => EN_HI_TEMP,
		EN_OUT => EN_OUT_TEMP,
		EN_ERR => EN_ERR_TEMP,
		RESET => RESET,
		X1 => X1_TEMP,
		X2 => X2_TEMP,
		Y => Y_TEMP,
		ERR => LED
	);
	
	Inst_Debouncer: Debouncer PORT MAP(
		CLOCK => CLOCK_FX,
		RESET => RESET,
		X => SWITCH,
		BTN_LOAD => BTN_LOAD,
		BTN_START => BTN_START,
		X1 => X1_TEMP,
		X2 => X2_TEMP,
		START => START_TEMP,
		LOAD => EN_IN_TEMP
	);
	
	Inst_Clock_Filter: Clock_Filter
	GENERIC MAP(
		CLOCK_FREQUENCY_IN => 50000000,
		CLOCK_FREQUENCY_OUT => 500
	)
	PORT MAP(
		CLOCK_IN => CLOCK,
		RESET => RESET,
		CLOCK_OUT => CLOCK_FX
	);

	Inst_CLOCK_FILTER_DISPLAY: CLOCK_FILTER_DISPLAY
	GENERIC MAP(
		CLOCK_FREQUENCY_IN => 50000000,
		CLOCK_FREQUENCY_OUT => 500
	)
	PORT MAP(
		CLOCK_IN => CLOCK,
		RESET => RESET,
		CLOCK_OUT => CLOCK_FX_DISPLAY
	);
	
	Inst_display_seven_segments: display_seven_segments PORT MAP(
		clock => CLOCK_FX_DISPLAY,
		reset => RESET,
		value => Y_TEMP,
		anodes => ANODES,
		cathodes => CATHODES
	);
	
end structural;