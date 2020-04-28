library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Debouncer is
    Port ( CLK : in  STD_LOGIC;
           INCR_IN : in  STD_LOGIC;
           INCR_OUT : out  STD_LOGIC
			 );
end Debouncer;

architecture behavioral of Debouncer is

begin

	input: process(CLK)
	begin

		if rising_edge(CLK) then	
			INCR_OUT <= '0';
			if INCR_IN = '1' then
				INCR_OUT <= '1';
			end if;
		end if;

	end process input;

end behavioral;