library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Debouncer is
    Port ( CLK : in  STD_LOGIC;
           SHIFT_IN : in  STD_LOGIC;
			  LOAD : in STD_LOGIC;
           SHIFT_OUT : out  STD_LOGIC;
			  LOAD_OUT : out  STD_LOGIC
			 );
end Debouncer;

architecture behavioral of Debouncer is

begin

	cu_proc : process(CLK)
	begin
		if rising_edge(CLK) then
			SHIFT_OUT <= '0';
			LOAD_OUT <= '0';
				
			if LOAD = '1' then
				LOAD_OUT <= '1'; 
				SHIFT_OUT <= '1';
			end if;
			if SHIFT_IN = '1' then
				SHIFT_OUT <= '1';
			end if;
	end if;
	end process;

end behavioral;

