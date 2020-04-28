library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;


entity counter_mod4 is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           counter : out  STD_LOGIC_VECTOR (1 downto 0));
end counter_mod4;

architecture Behavioral of counter_mod4 is

signal c : std_logic_vector (1 downto 0) := (others => '0');

begin
counter <= c;

counter_process: process(clock, reset)
begin
	
	if reset = '1' then
		c <= (others => '0');
	elsif rising_edge(clock) then
		c <= std_logic_vector(unsigned(c) + 1);
	end if;
	
end process;

end Behavioral;

