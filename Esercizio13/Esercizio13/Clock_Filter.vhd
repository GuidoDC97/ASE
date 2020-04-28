library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Clock_Filter is
	generic(	CLOCK_FREQUENCY_IN	: integer := 50000000; 
				CLOCK_FREQUENCY_OUT	: integer := 500);
    port(	CLOCK_IN : in  STD_LOGIC;
				RESET : in STD_LOGIC;
				CLOCK_OUT : out  STD_LOGIC);
end Clock_Filter;

architecture Behavioral of Clock_Filter is

	signal CLOCK_FX : std_logic := '0';

	constant COUNT_MAX_VALUE: integer := CLOCK_FREQUENCY_IN/(CLOCK_FREQUENCY_OUT)-1;

	begin
		CLOCK_OUT <= CLOCK_FX;

		count_for_division: process(CLOCK_IN, RESET)
		variable COUNTER : integer range 0 to COUNT_MAX_VALUE := 0;
		begin
			if RESET = '1' then
				COUNTER := 0;
				CLOCK_FX <= '0';
			elsif CLOCK_IN' event and CLOCK_IN = '1' then
				if COUNTER = COUNT_MAX_VALUE then	
					if(CLOCK_FX = '0') then
						CLOCK_FX <=  '1';	
					elsif(CLOCK_FX = '1')then
						CLOCK_FX <=  '0';		
					end if;
					COUNTER := 0;
				else
					COUNTER := COUNTER + 1;
				end if;
			end if;

end process;

end Behavioral;



