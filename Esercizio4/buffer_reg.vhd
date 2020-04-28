library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buffer_reg is
    Port ( 
			  clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           load_value : in  STD_LOGIC;
			  in_value : in STD_LOGIC_VECTOR(8 downto 0);
           value : out  STD_LOGIC_VECTOR(8 downto 0)
			 );
end buffer_reg;

architecture Behavioral of buffer_reg is

	begin

		main: process(clock, reset)
		begin

			if reset = '1' then
				value <= (others => '0');
			elsif rising_edge(clock) then		-- Attivo sul fronte di salita
				if load_value = '1' then
					value <= in_value;	
				end if;
			end if;

		end process;

end Behavioral;

