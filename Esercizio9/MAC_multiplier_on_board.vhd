library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MAC_multiplier_on_board is
	Port(
		  clock 			: in  STD_LOGIC;
		  reset 			: in  STD_LOGIC;
		  load_op_0 	: in  STD_LOGIC; 
		  load_op_1 	: in  STD_LOGIC; 
		  in_byte 		: in STD_LOGIC_VECTOR(7 downto 0);
		  btn_calc 		: in  STD_LOGIC;
		  anodes 		: out  STD_LOGIC_VECTOR (3 downto 0);
		  cathodes 		: out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end MAC_multiplier_on_board;

architecture structural of MAC_multiplier_on_board is

	COMPONENT display_seven_segments 
		PORT(
			clock : in  STD_LOGIC;
			reset : in  STD_LOGIC;
			value : in  STD_LOGIC_VECTOR (15 downto 0); 		-- 4 Nibble da mostrare
			anodes : out  STD_LOGIC_VECTOR (3 downto 0);
			cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
			);
	END COMPONENT;
	
	COMPONENT Debouncer
	PORT(
		clock : IN std_logic;
		reset : IN std_logic;
		load_op_0 : IN std_logic;
		load_op_1 : IN std_logic;
		in_byte : IN std_logic_vector(7 downto 0);          
		op_0 : OUT std_logic_vector(7 downto 0);
		op_1 : OUT std_logic_vector(7 downto 0)
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

	COMPONENT MAC_multiplier
    Port(	A : in  STD_LOGIC_VECTOR (7 downto 0);
				B : in  STD_LOGIC_VECTOR (7 downto 0);
				Y : out  STD_LOGIC_VECTOR (15 downto 0)
				);
	END COMPONENT;
	
	COMPONENT buffer_reg
	PORT(
		clock : IN std_logic;
		reset : IN std_logic;
		load_value : IN std_logic;
		in_value : IN std_logic_vector(15 downto 0);          
		value : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	signal buf_in : std_logic_vector(15 downto 0);
	signal buf_out : std_logic_vector(15 downto 0);
	signal op_0_temp : std_logic_vector(7 downto 0);
	signal op_1_temp : std_logic_vector(7 downto 0);
	signal calc : std_logic;
	signal clock_fx : std_logic;

begin

	calc <= reset or btn_calc;

	seven_segment_array: display_seven_segments
		PORT MAP(
			clock => clock_fx,
			reset => reset,
			value => buf_out, 
			anodes => anodes,
			cathodes => cathodes
	); 

	Inst_Debouncer: Debouncer PORT MAP(
		clock => clock_fx,
		reset => reset,
		load_op_0 => load_op_0,
		load_op_1 => load_op_1,
		in_byte => in_byte,
		op_0 => op_0_temp,
		op_1 => op_1_temp
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
	
	Inst_MAC_multiplier: MAC_multiplier
		PORT MAP(
			A => op_0_temp,
			B => op_1_temp,
			Y => buf_in
		);

	Inst_buffer_reg: buffer_reg PORT MAP(
		clock => clock_fx,
		reset => reset,
		load_value => calc,
		in_value => buf_in,
		value => buf_out
	);

end structural;