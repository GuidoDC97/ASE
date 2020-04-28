----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:14:33 11/13/2019 
-- Design Name: 
-- Module Name:    D_ET_Mazzeo - Behavioral 
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

entity D_ETd_Mazzeo is

    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q2 : out  STD_LOGIC;
           nQ2 : out  STD_LOGIC);
			  
end D_ETd_Mazzeo;

architecture structural of D_ETd_Mazzeo is

	component  RS

		port(	R		: in STD_LOGIC;
				S 		: in STD_LOGIC;
				Q1		: out STD_LOGIC;
				nQ1	: out STD_LOGIC
			 );
			 
	end component;
	
	signal TEMP_OR : STD_LOGIC;
	signal TEMP_R1 : STD_LOGIC;
	signal TEMP_R2 : STD_LOGIC;
	signal TEMP_S3 : STD_LOGIC;

	begin
		TEMP_OR <= CLK OR TEMP_R1;
	
		RS1 :  RS
			port map(	R		=> TEMP_OR,
							S		=> D,
							Q1		=> TEMP_S3,
							nQ1	=> TEMP_R2
							);
			
		RS2 :  RS
			port map(	R		=> TEMP_R2,
							S		=> CLK,
							nQ1	=> TEMP_R1
							);
							
		RS3 :  RS
			port map(	R		=> TEMP_R1,
							S		=> TEMP_S3,
							Q1		=> Q2,
							nQ1	=> nQ2
							);

end structural;

