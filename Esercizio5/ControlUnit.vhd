----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:07:17 11/25/2019 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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

entity ControlUnit is
    Port ( CLK : in  STD_LOGIC;
           SHIFT_IN : in  STD_LOGIC;
           SHIFT_OUT : out  STD_LOGIC
			 );
end ControlUnit;

architecture Behavioral of ControlUnit is

	begin
		cu_proc : process(CLK)
		begin
			if CLK' event and CLK = '1' then
				if SHIFT_IN = '1' then
					SHIFT_OUT <= '1';
				else SHIFT_OUT <= '0';
				end if;
			end if;
		end process;
		
end Behavioral;

