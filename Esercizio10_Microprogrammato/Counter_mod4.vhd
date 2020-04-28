----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:49:41 09/16/2012 
-- Design Name: 
-- Module Name:    counter_mod4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity COUNTER_MOD4 is
    Port ( CLOCK		: in  STD_LOGIC;
           RESET	: in  STD_LOGIC;
           COUNTER	: out	STD_LOGIC_VECTOR (1 downto 0));
end COUNTER_MOD4;

architecture behavioral of COUNTER_MOD4 is

	signal C	: std_logic_vector (1 downto 0) := (others => '0');

	begin

		COUNTER_PROCESS : process(CLOCK, RESET)
		begin
			if RESET = '1' then
				C <= (others => '0');
			elsif rising_edge(clock) then
				C <= std_logic_vector(unsigned(C) + 1);
			end if;
		end process;

		COUNTER <= C;

end behavioral;

