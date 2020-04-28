library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Digital_watch_on_board is
    Port ( clock 		: in  STD_LOGIC;
           reset 		: in  STD_LOGIC;
           load_sec 	: in  STD_LOGIC;
           load_min 	: in  STD_LOGIC;
           load_h 	: in  STD_LOGIC;
           in_value 	: in  STD_LOGIC_VECTOR (5 downto 0);
			  led 		: out STD_LOGIC_VECTOR (5 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end Digital_watch_on_board;

architecture Behavioral of Digital_watch_on_board is

	component display_seven_segments
		Port ( clock : in  STD_LOGIC;
				 reset : in  STD_LOGIC;
				 value : in  STD_LOGIC_VECTOR (15 downto 0);
				 anodes : out  STD_LOGIC_VECTOR (3 downto 0);
				 cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
				 );
	end component;
	
	COMPONENT Debouncer
	PORT(
		clock : IN std_logic;
		reset : IN std_logic;
		load_sec : IN std_logic;
		load_min : IN std_logic;
		load_h : IN std_logic;
		in_value : IN std_logic_vector(5 downto 0);          
		sec : OUT std_logic_vector(5 downto 0);
		min : OUT std_logic_vector(5 downto 0);
		h : OUT std_logic_vector(4 downto 0);
		load_sec_out : OUT std_logic;
		load_min_out : OUT std_logic;
		load_h_out : OUT std_logic
		);
	END COMPONENT;

	component Digital_watch is
		 Generic( clock_frequency_in : integer;
					 clock_frequency_out : integer
					);
		 Port ( clock 		: in  STD_LOGIC;
				  reset 		: in  STD_LOGIC;
				  load_sec 	: in  STD_LOGIC;
				  load_min 	: in  STD_LOGIC;
				  load_h 	: in  STD_LOGIC;
				  sec_in 	: in  STD_LOGIC_VECTOR (5 downto 0);
				  min_in 	: in  STD_LOGIC_VECTOR (5 downto 0);
				  h_in 		: in  STD_LOGIC_VECTOR (4 downto 0);
				  sec_out 	: out  STD_LOGIC_VECTOR (5 downto 0);
				  min_out 	: out  STD_LOGIC_VECTOR (5 downto 0);
				  h_out		: out  STD_LOGIC_VECTOR (4 downto 0)
				  );
	end component;
		
	COMPONENT clock_filter
		GENERIC(
					clock_frequency_in : integer;
					clock_frequency_out : integer
					);
		PORT(
			clock_in : IN std_logic; 
			reset : in  STD_LOGIC;		
			clock_out : OUT std_logic
			);
	END COMPONENT;
	
	component bin2bcd_12bit is
		 Port ( binIN : in  STD_LOGIC_VECTOR (11 downto 0);
				  ones : out  STD_LOGIC_VECTOR (3 downto 0);
				  tens : out  STD_LOGIC_VECTOR (3 downto 0);
				  hundreds : out  STD_LOGIC_VECTOR (3 downto 0);
				  thousands : out  STD_LOGIC_VECTOR (3 downto 0)
				 );
	end component;
	
	signal clock_fx : STD_LOGIC;
	
	signal value : STD_LOGIC_VECTOR (15 downto 0);
	
	signal temp_sec_in : STD_LOGIC_VECTOR (5 downto 0);
	signal temp_min_in : STD_LOGIC_VECTOR (5 downto 0);
	signal temp_h_in : STD_LOGIC_VECTOR (4 downto 0);
	
	signal temp_load_sec : STD_LOGIC;
	signal temp_load_min : STD_LOGIC;
	signal temp_load_h : STD_LOGIC;
	
	signal temp_sec_out : STD_LOGIC_VECTOR (5 downto 0);
	signal temp_min_out : STD_LOGIC_VECTOR (5 downto 0);
	signal temp_h_out : STD_LOGIC_VECTOR (4 downto 0);

	signal temp_binIN_0 : STD_LOGIC_VECTOR (11 downto 0);
	signal temp_binIN_1 : STD_LOGIC_VECTOR (11 downto 0);
	
	begin
		
		sevent_segment: display_seven_segments
			port map(
				clock => clock_fx,
				reset => reset,
				value => value,
				anodes => anodes,
				cathodes => cathodes
			);
			
		Inst_Debouncer: Debouncer PORT MAP(
				clock => clock,
				reset => reset,
				load_sec => load_sec,
				load_min => load_min,
				load_h => load_h,
				in_value => in_value,
				sec => temp_sec_in,
				min => temp_min_in,
				h => temp_h_in,
				load_sec_out => temp_load_sec,
            load_min_out => temp_load_min,
            load_h_out=> temp_load_h
			);
			
		watch: Digital_watch
			generic map(
				clock_frequency_in => 50000000,
				clock_frequency_out => 1
			)
			port map(
				clock => clock,
				reset => reset,
				load_sec => temp_load_sec,
				load_min => temp_load_min,
				load_h => temp_load_h,
				sec_in => temp_sec_in,
				min_in => temp_min_in,
				h_in => temp_h_in,
				sec_out => temp_sec_out,
				min_out => temp_min_out,
				h_out	=> temp_h_out
			);
			
		clk_filter: clock_filter
			generic map(
				clock_frequency_in => 50000000,
				clock_frequency_out => 500
			)
			PORT MAP(
				clock_in => clock,
				reset => reset,
				clock_out => clock_fx
			);
			
		temp_binIN_1 <= "0000000" & temp_h_out;	-- Si concatenano 6 bit '0' essendo il
																-- convertitore binario - BCD a 12 bit
		
		converter_1: bin2bcd_12bit
			port map ( 
				binIN => temp_binIN_1,
				ones => value(11 downto 8),
				tens => value(15 downto 12)
			);	
		
		temp_binIN_0 <= "000000" & temp_min_out;

		converter_0: bin2bcd_12bit
			port map ( 
				binIN => temp_binIN_0,
				ones => value(3 downto 0),
				tens => value(7 downto 4)
			);	
		
		led <= temp_sec_out;
		
end Behavioral;