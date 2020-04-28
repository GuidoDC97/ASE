library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShiftRegister_on_board is
   port(	X 		: in  STD_LOGIC_VECTOR(7 downto 0);
			CLK	: in  STD_LOGIC;
         SHIFT	: in  STD_LOGIC;
         RESET	: in  STD_LOGIC;
         LOAD	: in  STD_LOGIC;
         Y		: out	STD_LOGIC_VECTOR(7 downto 0)
		  );
end ShiftRegister_on_board;

architecture Behavioral of ShiftRegister_on_board is

	COMPONENT ShiftRegister
	GENERIC(	
				N : POSITIVE := 8
			);
	PORT(	
			X 				: in  STD_LOGIC_VECTOR(N-1 downto 0);
			ENABLE_SH	: in  STD_LOGIC;
			RESET			: in  STD_LOGIC;
			LOAD			: in  STD_LOGIC;
			Y				: out	STD_LOGIC_VECTOR(N-1 downto 0)
			); 
	END COMPONENT;

	COMPONENT Debouncer
	PORT(
		CLK : IN std_logic;
		SHIFT_IN : IN std_logic;
		LOAD : IN std_logic;          
		SHIFT_OUT : OUT std_logic;
		LOAD_OUT : OUT std_logic
		);
	END COMPONENT;

	COMPONENT clock_filter 
	GENERIC(
				clock_frequency_in 	: integer := 50000000;
				clock_frequency_out 	: integer := 500
			  );
	PORT(
			clock_in 	: IN std_logic; 
			reset 		: in  STD_LOGIC;		
			clock_out 	: OUT std_logic
		);
	END COMPONENT;

	signal SHIFT_TEMP : STD_LOGIC;
	signal LOAD_TEMP 	: STD_LOGIC;
	signal CLOCK_FX 	: STD_LOGIC;
	
	begin
	
		ShiftRegister_0: ShiftRegister
			port map(	
				X 				=> X,
				ENABLE_SH 	=> SHIFT_TEMP,
				RESET			=> RESET,
				LOAD			=> LOAD_TEMP,
				Y 				=> Y
			);

		Inst_Debouncer: Debouncer 
			port map(
				CLK 			=> CLOCK_FX,
				SHIFT_IN 	=> SHIFT,
				LOAD 			=> LOAD,
				SHIFT_OUT 	=> SHIFT_TEMP,
				LOAD_OUT 	=> LOAD_TEMP
			);
		
		clk_filter: clock_filter
			PORT MAP(
				clock_in 	=> CLK,
				reset 		=> RESET,
				clock_out	=> CLOCK_FX
			);
			 
end Behavioral;

