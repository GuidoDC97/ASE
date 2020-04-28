library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Contatore_mod16_seriale_on_board is
	Port(
		  clock 					: in  STD_LOGIC;
		  btn_reset 			: in  STD_LOGIC;
		  btn_incr 				: in  STD_LOGIC;
		  anodes 				: out  STD_LOGIC_VECTOR (3 downto 0);
		  cathodes 				: out  STD_LOGIC_VECTOR (7 downto 0)
		);

end Contatore_mod16_seriale_on_board;
 
architecture Structural of Contatore_mod16_seriale_on_board is

	component clock_filter
		 generic(
					clock_frequency_in : integer 	:= 50000000; 
					clock_frequency_out : integer := 500     
					);
		 Port ( 	clock_in 	: in  STD_LOGIC;
					reset 		: in STD_LOGIC;
					clock_out 	: out  STD_LOGIC);
	end component;
	
	COMPONENT Debouncer
	PORT(
		CLK : IN std_logic;
		INCR_IN : IN std_logic;          
		INCR_OUT : OUT std_logic
		);
	END COMPONENT;

	component Contatore_mod16_seriale 
		generic(	n : POSITIVE := 4);
		port(	count 	: in  STD_LOGIC;
				Reset		: in  STD_LOGIC;
				value		: out	STD_LOGIC_VECTOR(n-1 downto 0)
			  );
	end component;

	component display_seven_segments 
		 Port ( clock 		: in  STD_LOGIC;
				  reset 	: in  STD_LOGIC;
				  value 		: in  STD_LOGIC_VECTOR (7 downto 0);
				  anodes 	: out  STD_LOGIC_VECTOR (3 downto 0);
				  cathodes 	: out  STD_LOGIC_VECTOR (7 downto 0)
				  );
	end component;

	component bin2bcd_12bit 
		 Port ( binIN : in  STD_LOGIC_VECTOR (11 downto 0);
				  ones : out  STD_LOGIC_VECTOR (3 downto 0);
				  tens : out  STD_LOGIC_VECTOR (3 downto 0);
				  hundreds : out  STD_LOGIC_VECTOR (3 downto 0);
				  thousands : out  STD_LOGIC_VECTOR (3 downto 0)
				 );
	end component;

	signal clock_fx_temp : std_logic := '0';
	signal incr_out_temp : std_logic := '0';
	signal value_temp : std_logic_vector (3 downto 0) := (others => '0');
	signal value_out_temp : std_logic_vector (7 downto 0) := (others => '0');
	signal value_temp_1 : std_logic_vector (11 downto 0) := (others => '0');

begin

	seven_segment : display_seven_segments
			 Port map( clock 		=> clock_fx_temp,
						reset 		=> btn_reset,
						value 		=> value_out_temp,
						anodes 		=> anodes,
						cathodes 	=> cathodes
					);

	clk_filter: clock_filter
			Port map ( 	clock_in 	=> clock,
							reset 		=> btn_reset,
							clock_out   => clock_fx_temp
						);
		
	Inst_Debouncer: Debouncer 
		PORT MAP(
			CLK => clock_fx_temp,
			INCR_IN => btn_incr,
			INCR_OUT => incr_out_temp
		);
  
	Contatore : Contatore_mod16_seriale
		Port map(	count 	=> incr_out_temp,
						Reset		=> btn_reset,
						value		=> value_temp
			  );

	value_temp_1 <= "00000000" & value_temp;
	 
	Inst_bin2bcd_12bit: bin2bcd_12bit 
		PORT MAP(
			binIN => value_temp_1,
			ones => value_out_temp (3 downto 0),
			tens => value_out_temp (7 downto 4)
		);
		
end Structural;

