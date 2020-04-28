library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Divider_On_Board is
	GENERIC(	N : integer := 4);
	port(	CLOCK : in  STD_LOGIC;
			RESET : in STD_LOGIC;
			SWITCH : in  std_logic_vector(3 downto 0);
			BTN_SAQ	: in STD_LOGIC;
			BTN_M : in STD_LOGIC;
			BTN_START : in STD_LOGIC;
			ANODES : out std_logic_vector(3 downto 0);
			CATHODES : out std_logic_vector(7 downto 0));
end Divider_On_Board;

architecture Structural of Divider_On_Board is
	COMPONENT Datapath
	GENERIC(	N : integer);
	PORT(
		CLOCK 		: IN std_logic;
		RESET 		: IN std_logic;
		SAQ			: IN std_logic_vector(N*2-2 downto 0);
		M				: IN std_logic_vector(N-1 downto 0);
		INIT	 		: IN std_logic;
		ENABLE_M 	: IN std_logic;
		ENABLE_C 	: IN std_logic;
		INIT_C	 	: IN std_logic;
		LOAD_SA 		: IN std_logic;
		LOAD_Q 		: IN std_logic;
		SHIFT 		: IN std_logic;  
		SUB			: IN std_logic;
		Q				: OUT std_logic_vector(N-1 downto 0);
		R				: OUT std_logic_vector(N-1 downto 0);
		S 				: OUT std_logic_vector(1 downto 0);
		COUNT			: OUT std_logic
		);
	END COMPONENT;
	
--	COMPONENT ControlUnit
--	PORT(
--		CLOCK : IN std_logic;
--		RESET : IN std_logic;
--		START : IN std_logic;
--		S_BUF : IN std_logic_vector(1 downto 0);
--		COUNT : IN std_logic;          
--		LOAD_SA : OUT std_logic;
--		LOAD_Q : OUT std_logic;
--		SHIFT : OUT std_logic;
--		ENABLE_C : OUT std_logic;
--		ENABLE_EXIT : OUT std_logic;
--		SUB : OUT std_logic;
--		INIT_COUNT		: out STD_LOGIC
--		);
--	END COMPONENT;
	
	COMPONENT Control_Unit
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		START : IN std_logic;
		S_BUF : IN std_logic_vector(1 downto 0);
		COUNT : IN std_logic;          
		en_sh : OUT std_logic;
		en_ex : OUT std_logic;
		en_cnt : OUT std_logic;
		LOAD_Q : OUT std_logic;
		LOAD_SA : OUT std_logic;
		SUB : OUT std_logic
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

	COMPONENT DISPLAY_SEVEN_SEGMENTS
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		ERR		: in  STD_LOGIC;
		ENABLE_VAL : IN std_logic;
		VALUE : IN std_logic_vector(15 downto 0);          
		ANODES : OUT std_logic_vector(3 downto 0);
		CATHODES : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;


	COMPONENT bin2bcd_12bit
	PORT(
		binIN : IN std_logic_vector(11 downto 0);          
		ones : OUT std_logic_vector(3 downto 0);
		tens : OUT std_logic_vector(3 downto 0);
		hundreds : OUT std_logic_vector(3 downto 0);
		thousands : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	COMPONENT Debouncer
	generic (N : integer);
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		X : IN std_logic_vector(N-1 downto 0);
		BTN_SAQ : IN std_logic;
		BTN_M : IN std_logic;
		BTN_START : IN std_logic;          
		SAQ : OUT std_logic_vector(2*N-2 downto 0);
		M : OUT std_logic_vector(N-1 downto 0);
		START : OUT std_logic;
		ENABLE_SAQ : OUT std_logic;
		ENABLE_M : OUT std_logic;
		ERR : out STD_LOGIC
		);
	END COMPONENT;

	signal CLOCK_FX : std_logic;
	signal CLOCK_FX_1 : std_logic;
	signal SAQ_TEMP : std_logic_vector(N*2-2 downto 0);
	signal M_TEMP : std_logic_vector(N-1 downto 0);
	signal INIT_TEMP : std_logic;
	signal ENABLE_M_TEMP : std_logic;
	signal LOAD_SA_TEMP : std_logic;
	signal LOAD_Q_TEMP : std_logic;
	signal SHIFT_TEMP : std_logic;
	signal SUB_TEMP : std_logic;
	signal START_TEMP : std_logic;
	signal ENABLE_C_TEMP : std_logic;
	signal COUNT_TEMP : std_logic;
	signal S_BUF_TEMP : std_logic_vector(1 downto 0);
	signal Q_TEMP : std_logic_vector(N-1 downto 0);
	signal R_TEMP : std_logic_vector(N-1 downto 0);
	signal Q_CONV : std_logic_vector(11 downto 0);
	signal R_CONV : std_logic_vector(11 downto 0);
	signal VALUE  : std_logic_vector(15 downto 0);
	signal ENABLE_EXIT : std_logic;
	signal INIT_COUNT_TEMP	: STD_LOGIC := '0';
	signal ERR_TEMP	: STD_LOGIC;

	
begin
	Inst_Datapath: Datapath 
	GENERIC MAP(N => 4)
	PORT MAP(
		CLOCK => CLOCK_FX,
		RESET => RESET,
		SAQ => SAQ_TEMP,
		M => M_TEMP,
		INIT => INIT_TEMP,
		ENABLE_M => ENABLE_M_TEMP,
		LOAD_SA => LOAD_SA_TEMP,
		LOAD_Q => LOAD_Q_TEMP,
		SHIFT => SHIFT_TEMP,
		SUB => SUB_TEMP,
		ENABLE_C => ENABLE_C_TEMP,
		INIT_C => INIT_COUNT_TEMP,
		Q => Q_TEMP,
		R => R_TEMP,
		S => S_BUF_TEMP,
		COUNT => COUNT_TEMP
	);
	
--	Inst_ControlUnit: ControlUnit 
--	PORT MAP(
--		CLOCK => CLOCK_FX,
--		RESET => RESET,
--		START => START_TEMP,
--		S_BUF => S_BUF_TEMP,
--		COUNT => COUNT_TEMP,
--		LOAD_SA => LOAD_SA_TEMP,
--		LOAD_Q => LOAD_Q_TEMP,
--		SHIFT => SHIFT_TEMP,
--		ENABLE_C => ENABLE_C_TEMP,
--		ENABLE_EXIT => ENABLE_EXIT,
--		SUB => SUB_TEMP,
--		INIT_COUNT => INIT_COUNT_TEMP
--	);
	
		Inst_Control_Unit: Control_Unit PORT MAP(
		CLOCK => CLOCK_FX,
		RESET => RESET,
		START => START_TEMP,
		S_BUF => S_BUF_TEMP,
		COUNT => COUNT_TEMP,
		en_sh => SHIFT_TEMP,
		en_ex => ENABLE_EXIT,
		en_cnt => ENABLE_C_TEMP,
		load_q => LOAD_Q_TEMP,
		load_sa => LOAD_SA_TEMP,
		sub => SUB_TEMP
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
	
	
	Inst_Debouncer: Debouncer 
	GENERIC MAP(N => 4)
	PORT MAP( 
		CLOCK => CLOCK_FX,
		RESET => RESET,
		X => SWITCH,
		BTN_SAQ => BTN_SAQ,
		BTN_M => BTN_M,
		BTN_START => BTN_START,
		SAQ => SAQ_TEMP,
		M => M_TEMP,
		START => START_TEMP,
		ENABLE_SAQ => INIT_TEMP,
		ENABLE_M => ENABLE_M_TEMP,
		ERR => ERR_TEMP
	);

	Inst_CLOCK_FILTER_DISPLAY: CLOCK_FILTER_DISPLAY 
	GENERIC MAP(
		CLOCK_FREQUENCY_IN => 50000000,
		CLOCK_FREQUENCY_OUT => 500
	)
	PORT MAP(
		CLOCK_IN => CLOCK,
		RESET => RESET,
		CLOCK_OUT => CLOCK_FX_1
	);
	
	Inst_DISPLAY_SEVEN_SEGMENTS: DISPLAY_SEVEN_SEGMENTS PORT MAP(
		CLOCK => CLOCK_FX_1,
		RESET => RESET,
		ERR => ERR_TEMP,
		ENABLE_VAL => ENABLE_EXIT,
		VALUE => VALUE,
		ANODES => ANODES,
		CATHODES => CATHODES
	);
	
	Q_CONV <= "00000000" & Q_TEMP;
	Inst_bin2bcd_12bit: bin2bcd_12bit PORT MAP(
		binIN => Q_CONV,
		ones => value(11 downto 8),
		tens => value(15 downto 12)
	);
	
	R_CONV <= "00000000" & R_TEMP;
	Inst_bin2bcd_12bit_1: bin2bcd_12bit PORT MAP(
		binIN => R_CONV,
		ones => value(3 downto 0),
		tens => value(7 downto 4)
	);

end Structural;

