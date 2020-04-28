library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Debouncer is
	Port ( 
		clock : in  STD_LOGIC;
      reset : in  STD_LOGIC;
		load_add_0 : in  STD_LOGIC;
		load_add_1 : in  STD_LOGIC;
		in_byte : in STD_LOGIC_VECTOR(7 downto 0);	
		add_0 : out STD_LOGIC_VECTOR(7 downto 0);
		add_1 : out STD_LOGIC_VECTOR(7 downto 0)
		); 
end Debouncer;

architecture behavioral of Debouncer is

signal add_0_temp : std_logic_vector(7 downto 0):= (others => '0');
signal add_1_temp : std_logic_vector(7 downto 0):= (others => '0');

begin

add_0 <= add_0_temp;
add_1 <= add_1_temp;

main: process(clock, reset)
begin

	if reset = '1' then
		add_1_temp <= (others => '0');
		add_0_temp <= (others => '0');
	elsif rising_edge(clock) then		-- Attivo sul fronte di salita
		if load_add_0 = '1' then
			add_0_temp <= in_byte;
		elsif load_add_1 = '1' then
			add_1_temp<= in_byte;
		end if;
	end if;

end process;

end behavioral;

