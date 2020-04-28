library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clock_filter is
	 generic(
				clock_frequency_in : integer := 50000000;
				clock_frequency_out : integer := 500
				);
    Port ( clock_in : in  STD_LOGIC;
				reset : in STD_LOGIC;
           clock_out : out  STD_LOGIC);
end clock_filter;

architecture Behavioral of clock_filter is

signal clockfx: std_logic := '0';

constant count_max_value : integer := clock_frequency_in/(clock_frequency_out)-1;
--constant count_max_value : integer := 1;		-- Impostare così in SIMULAZIONE

begin

clock_out <= clockfx;

count_for_division: process(clock_in, reset)
variable counter : integer range 0 to count_max_value := 0;
begin

	if reset = '1' then
		counter := 0;
		clockfx <= '0';
	elsif clock_in'event and clock_in = '1' then
		if counter = count_max_value then	-- Dopo count_max_value colpi del clock_in 
			clockfx <=  '1';						-- si ha clock_out alto
			counter := 0;
		else
			clockfx <=  '0';
			counter := counter + 1;
		end if;
	end if;

end process;


end Behavioral;

