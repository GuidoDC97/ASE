
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Debounce is
	port(
		CLOCK				: in		STD_LOGIC;	-- Clock
		RESET 			: in		STD_LOGIC;	-- Reset
		BTN_WR : IN std_logic; 
		BTN_RD : IN std_logic;                   
		WR : OUT std_logic;
		RD : OUT std_logic
		);
end Debounce;

architecture Behavioral of Debounce is

begin

	DEB : process(CLOCK, RESET)
		begin
		if(RESET = '1')then
			WR <= '0';
			RD <= '0';
		elsif(rising_edge(CLOCK)) then
			if(BTN_WR = '1') then
				WR <= '1';
			elsif(BTN_RD = '1') then
				RD <= '1';
			else
				WR <= '0';
				RD <= '0';				
			end if;
		end if;
	end process DEB;

end Behavioral;