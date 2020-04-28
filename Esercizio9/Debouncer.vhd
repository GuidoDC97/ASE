library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Debouncer is
	Port (
			clock : in  STD_LOGIC;
			reset : in  STD_LOGIC;
			load_op_0 : in  STD_LOGIC;
			load_op_1 : in  STD_LOGIC;
			in_byte : in STD_LOGIC_VECTOR(7 downto 0);
			op_0 : out STD_LOGIC_VECTOR(7 downto 0);
			op_1 : out STD_LOGIC_VECTOR(7 downto 0)
		  ); 
begin

end Debouncer;

architecture behavioral of Debouncer is

signal op_0_temp : std_logic_vector(7 downto 0):= (others => '0');
signal op_1_temp : std_logic_vector(7 downto 0):= (others => '0');

begin

op_0 <= op_0_temp;
op_1 <= op_1_temp;

main: process(clock, reset, load_op_0, load_op_1)
begin

	if reset = '1' then
		op_0_temp <= (others => '0');
		op_1_temp <= (others => '0');
	elsif clock'event and clock = '1' then		-- Attivo sul fronte di salita
		if load_op_0 = '1' then
			op_0_temp <= in_byte;
		elsif load_op_1 = '1' then
			op_1_temp<= in_byte;
		end if;
	end if;

end process;

end behavioral;

