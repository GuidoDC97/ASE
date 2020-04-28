library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display_on_board is
	Port(
			  clock : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
			  load_value : in  STD_LOGIC;	-- Comando di caricamento dati (4 bit)
			  in_value : in STD_LOGIC_VECTOR(3 downto 0); 
			  anodes : out  STD_LOGIC_VECTOR (3 downto 0);
			  cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
			);
end display_on_board;

architecture Structural of display_on_board is

	COMPONENT display_seven_segments
		PORT(
				value : IN std_logic_vector(3 downto 0);	-- Numero esadecimale codificato su 4 bit
				anodes : OUT std_logic_vector(3 downto 0);
				cathodes : OUT std_logic_vector(7 downto 0)
			);
	END COMPONENT;

	COMPONENT buffer_reg
		PORT(
				clock : IN std_logic;
				reset : IN std_logic;
				load_value : IN std_logic;
				in_value : IN std_logic_vector(3 downto 0);          
				value : OUT std_logic_vector(3 downto 0)
			);
	END COMPONENT;

	signal cu_value : std_logic_vector(3 downto 0);

	begin

		seven_segment_array: display_seven_segments
			PORT MAP(
				value => cu_value,
				anodes => anodes,
				cathodes => cathodes
			);

		br: buffer_reg PORT MAP(
				clock => clock,
				reset => reset,
				load_value => load_value,
				in_value => in_value,
				value => cu_value
			);

end Structural;