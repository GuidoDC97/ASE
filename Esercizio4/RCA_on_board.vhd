library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RCA_on_board is
	Port(
		  clock 			: in  STD_LOGIC;
		  reset 			: in  STD_LOGIC;
		  load_add_0 	: in  STD_LOGIC; --comando di caricamento byte meno significativo
		  load_add_1 	: in  STD_LOGIC; --comando di caricaernto byte più significativo
		  in_byte 		: in STD_LOGIC_VECTOR(7 downto 0);
		  btn_calc 			: in  STD_LOGIC;
		  anodes 		: out  STD_LOGIC_VECTOR (3 downto 0);
		  cathodes 		: out  STD_LOGIC_VECTOR (7 downto 0);
		  overflow 		: out  STD_LOGIC
		  );
end RCA_on_board;

architecture structural of RCA_on_board is

COMPONENT display_seven_segments 
	PORT(
		clock : in  STD_LOGIC;
      reset : in  STD_LOGIC;
		value : in  STD_LOGIC_VECTOR (7 downto 0); 		-- 2 Nibble da mostrare
      anodes : out  STD_LOGIC_VECTOR (3 downto 0);
      cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
		);
END COMPONENT;

COMPONENT Debouncer
	PORT(
		clock : IN std_logic;
		reset : IN std_logic;
		load_add_0 : IN std_logic;
		load_add_1 : IN std_logic;
		in_byte : IN std_logic_vector(7 downto 0);          
		add_0 : OUT std_logic_vector(7 downto 0);
		add_1 : OUT std_logic_vector(7 downto 0)
	);
END COMPONENT;

COMPONENT clock_filter
	GENERIC(
				clock_frequency_in : integer := 50000000;
				clock_frequency_out : integer := 500
				);
	PORT(
		clock_in 	: IN STD_LOGIC; 
      reset		: IN  STD_LOGIC;		
		clock_out 	: OUT STD_LOGIC
		);
END COMPONENT;

COMPONENT RCA_8bit
	port(	A1		: in STD_LOGIC_VECTOR (7 downto 0);
			B1		: in STD_LOGIC_VECTOR (7 downto 0); 
			cin1	: in STD_LOGIC;
			S1		: out STD_LOGIC_VECTOR (7 downto 0);
			cout1	: out STD_LOGIC
			 );
END COMPONENT;

COMPONENT buffer_reg
PORT(
	clock : IN std_logic;
	reset : IN std_logic;
	load_value : IN std_logic;
	in_value : IN std_logic_vector(8 downto 0);          
	value : OUT std_logic_vector(8 downto 0)
	);
END COMPONENT;

signal carry_in : std_logic := '0';
signal buf_in : std_logic_vector(8 downto 0);
signal buf_out : std_logic_vector(8 downto 0);
signal s_temp : std_logic_vector(7 downto 0);
signal c_out : std_logic;
signal add_0_temp : std_logic_vector(7 downto 0);
signal add_1_temp : std_logic_vector(7 downto 0);
signal calc : std_logic;
signal clock_fx : std_logic;

begin

calc <= reset or btn_calc;
buf_in <= c_out & s_temp;

seven_segment_array: display_seven_segments 
	PORT MAP(
		clock => clock_fx,
		reset => reset,
		value => buf_out(7 downto 0), 
		anodes => anodes,
		cathodes => cathodes
); 
	
Inst_Debouncer: Debouncer PORT MAP(
		clock => clock_fx,
		reset => reset,
		load_add_0 => load_add_0,
		load_add_1 => load_add_1,
		in_byte => in_byte,
		add_0 => add_0_temp,
		add_1 => add_1_temp
	);

clk_filter: clock_filter 
	GENERIC MAP(
		clock_frequency_in => 50000000,
		clock_frequency_out => 500
	)
	PORT MAP(
		clock_in => clock,
		reset => reset,
		clock_out => clock_fx
	);
	
rca: RCA_8bit PORT MAP(
		A1	=> add_0_temp,
		B1	=> add_1_temp,
		cin1	=> carry_in,
		S1	=> s_temp,
		cout1	=> c_out
	);
	
Inst_buffer_reg: buffer_reg PORT MAP(
	clock => clock,
	reset => reset,
	load_value => calc,
	in_value => buf_in,
	value => buf_out
);

overflow <= buf_out(8);
	
end structural;

