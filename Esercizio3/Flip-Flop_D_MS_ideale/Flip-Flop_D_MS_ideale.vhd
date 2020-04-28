----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:52:05 10/28/2019 
-- Design Name: 
-- Module Name:    D_ms_ideale_MAZZEO - structural 
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

entity D_MS_ideale is
    Port ( D3		: in  STD_LOGIC;
           CLK3	: in  STD_LOGIC;
           Q3 		: out  STD_LOGIC;
           nQ3		: out  STD_LOGIC
			  );
end D_MS_ideale;

architecture structural of D_MS_ideale is

	component D_ETd_Mazzeo
		 Port ( D2		: in  STD_LOGIC;
				  CLK2	: in  STD_LOGIC;
				  Q2		: out  STD_LOGIC;
				  nQ2		: out  STD_LOGIC
				 );	 
	end component;
		 
	signal TEMP : STD_LOGIC;

	begin

		D_ETd0 : D_ETd_Mazzeo port map(	D2 	=> D3,
													CLK2 	=> NOT(CLK3),
													Q2		=> TEMP
													-- nQ2 
												);

		D_ETd1 : D_ETd_Mazzeo port map(	D2 	=> TEMP,
													CLK2 	=> CLK3,
													Q2		=> Q3,
													nQ2	=> nQ3
												);

end structural;

