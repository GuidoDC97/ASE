library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity arbitro_tb is
end arbitro_tb;

architecture behavioral of arbitro_tb is

	component arbitro is
	Port( A1 : in STD_LOGIC;
	      A2 : in STD_LOGIC;
	      A3 : in STD_LOGIC;
	      U : out STD_LOGIC
	     );
    end component;

signal a1 : STD_LOGIC:='0';
signal a2 :  STD_LOGIC:='0';
signal a3 :  STD_LOGIC:='0';
signal u:  STD_LOGIC:='0';

begin

	uut: arbitro Port map(
			A1 => a1,
	      A2 => a2,
	      A3 => a3,
	      U => u
		);

	stim_proc: process
	begin
	
		wait for 10 ns;
		a1 <= '1';
		a2 <= '1';
		a3 <='0';
		wait for 20 ns;
		 
		assert u='1'
		report "errore0"
		severity failure;
		 
		a1 <= '0';
		a2 <= '1';
		a3 <='0';
		wait for 20 ns;
		 
		assert u='0'
		report "errore1"
		severity failure;

		a1 <= '1';
		a2 <= '0';
		a3 <='0';
		wait for 20 ns;
		 
		assert u='0'
		report "errore2"
		severity failure;
		wait;
	end process;
end; 
