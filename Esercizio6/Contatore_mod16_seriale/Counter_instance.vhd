library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter_mod2 is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           counter : out  STD_LOGIC
			  );
end counter_mod2;

architecture Behavioral of counter_mod2 is

signal c : std_logic := '0';

begin

	counter <= c;

	counter_process: process(clock, reset)
	begin
		
		if reset = '1' then
			c <= '0';
		elsif rising_edge(clock)then
			c <= not c;
			
		end if;
	end process;

end Behavioral;

