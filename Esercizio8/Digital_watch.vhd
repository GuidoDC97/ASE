library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Digital_watch is
	Generic( clock_frequency_in : integer := 50000000;
				clock_frequency_out : integer := 1 			
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
           h_out		: out  STD_LOGIC_VECTOR (4 downto 0));
end Digital_watch;

architecture Structural of Digital_watch is

	component Counter_mod_M_load
		generic(	M : integer;
					N : integer
		);
		port( clock 		: in  STD_LOGIC;
				reset 		: in  STD_LOGIC;
				load 			: in  STD_LOGIC;
				data 			: in  STD_LOGIC_VECTOR (N-1 downto 0);
				y 				: out STD_LOGIC_VECTOR (N-1 downto 0);
				enable_out	: out STD_LOGIC
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
	
	signal enable_sec : STD_LOGIC;
	signal enable_min : STD_LOGIC;
	
	signal clock_min : STD_LOGIC;
	signal clock_h : STD_LOGIC;

	signal clock_fx : STD_LOGIC;

	begin
	
		clk_filter: clock_filter
			GENERIC MAP(
				clock_frequency_in => clock_frequency_in,
				clock_frequency_out => clock_frequency_out
			)
			PORT MAP(
				clock_in => clock,
				reset => reset,
				clock_out => clock_fx
			);

		clock_min	<= enable_sec;
		clock_h 		<= enable_min;
		
		sec_counter: Counter_mod_M_load
			generic map( 	M => 60,
								N => 6
			)
			port map(	clock 		=> clock_fx,
							reset 		=> reset,
							load			=> load_sec,
							data			=> sec_in,
							y				=> sec_out,
							enable_out	=> enable_sec
			);
			
		min_counter: Counter_mod_M_load
			generic map( 	M => 60,
								N => 6
			)
			port map(	clock 		=> clock_min,
							reset 		=> reset,
							load			=> load_min,
							data			=> min_in,
							y				=> min_out,
							enable_out	=> enable_min
			);

		h_counter: Counter_mod_M_load
			generic map( 	M => 24,
								N => 5
			)
			port map(	clock 		=> clock_h,
							reset 		=> reset,
							load			=> load_h,
							data			=> h_in,
							y				=> h_out
			);

end Structural;