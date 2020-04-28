library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux_8_1_tb is

end mux_8_1_tb;

architecture behavioral of mux_8_1_tb is

	component mux_8_1
	
		port(	X3 : in STD_LOGIC_VECTOR (7 downto 0);
				S3 : in STD_LOGIC_VECTOR (2 downto 0);
				Y3 : out STD_LOGIC
				);
		 
	end component; 
	
	signal Xtb	: STD_LOGIC_VECTOR (7 downto 0);
	signal Stb	: STD_LOGIC_VECTOR (2 downto 0);
	signal Ytb	: STD_LOGIC;
	
	begin
	
		uut: mux_8_1 
			Port map(	X3 => Xtb,
							S3 => Stb,
							Y3 => Ytb
							);
					
		stim_proc: process
		begin
			wait for 4 ns;
		
			Xtb	<= "00110010";
			Stb	<= "101";  	
			wait for 10 ns; 	-- Xtb(5) = 1 in uscita
		
			assert  Ytb = '1'
			report "errore0"
			severity failure;
		
		
			Xtb 	<= "01110010";
			Stb <= "000";	
			wait for 10 ns; 	-- Xtb(0) = 0 in uscita
		
			assert Ytb = '0'
			report "errore1"
			severity failure;
			
			
			Xtb 	<= "01101110";
			Stb <= "110";
			wait for 10 ns; 	-- Xtb(6) = 1 in uscita
			
			assert Ytb = '1'
			report "errore2"
			severity failure;
			
			wait;
		end process;		
end; 
		
		
		
		
		
		
		