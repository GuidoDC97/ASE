library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Debouncer is
    Port ( clock 		: in  STD_LOGIC;
           reset 		: in  STD_LOGIC;
			  load_sec 	: in  STD_LOGIC;
           load_min 	: in  STD_LOGIC;
           load_h 	: in  STD_LOGIC;
			  in_value 	: in STD_LOGIC_VECTOR(5 downto 0);
           sec 		: out  STD_LOGIC_VECTOR (5 downto 0);
           min 		: out  STD_LOGIC_VECTOR (5 downto 0);
           h			: out  STD_LOGIC_VECTOR (4 downto 0);
			  load_sec_out 	: out  STD_LOGIC;
           load_min_out 	: out  STD_LOGIC;
           load_h_out	: out  STD_LOGIC
			  );
end Debouncer;

architecture behavioral of Debouncer is

	signal temp_sec 	: STD_LOGIC_VECTOR (5 downto 0) := (others => '0');
	signal temp_min 	: STD_LOGIC_VECTOR (5 downto 0) := (others => '0');
	signal temp_h		: STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
	
	begin
	
		sec <= temp_sec;
		min <= temp_min;
		h 	 <= temp_h;

		main: process(clock, reset)
		begin
			if reset = '1' then
				temp_sec <= (others => '0');
				temp_min <= (others => '0');
				temp_h 	<= (others => '0');
			elsif clock'event and clock = '1' then
				if load_sec = '1' then
					temp_sec <= in_value;
					load_sec_out <= '1';
				elsif load_min = '1' then
					temp_min <= in_value; 
					load_min_out <= '1';					
				elsif load_h = '1' then
					temp_h <= in_value(4 downto 0);
					load_h_out <= '1';
				else 
					load_sec_out <= '0';
					load_min_out <= '0';					
					load_h_out <= '0';					
				end if;
			end if;
		end process;

end behavioral;