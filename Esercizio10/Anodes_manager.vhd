----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:42:32 09/16/2012 
-- Design Name: 
-- Module Name:    anodes_manager - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ANODES_MANAGER is
    Port ( COUNTER : in  STD_LOGIC_VECTOR (1 downto 0);
           ANODES : out  STD_LOGIC_VECTOR (3 downto 0));
end ANODES_MANAGER;

architecture behavioral of ANODES_MANAGER is

	signal ANODES_SWITCHING : std_logic_vector(3 downto 0) := (others => '0');

	begin
		ANODES <= not ANODES_SWITCHING OR not "1111";

		ANODES_PROCESS: process(COUNTER)
		begin
			case COUNTER is
				when "00" =>
					ANODES_SWITCHING <= x"1";
				when "01" =>
					ANODES_SWITCHING <= x"2";
				when "10" =>
					ANODES_SWITCHING <= x"4";
				when "11" =>
					ANODES_SWITCHING <= x"8";
				when others =>
					ANODES_SWITCHING <= (others => '0');
			end case;
		end process;
		
end behavioral;

