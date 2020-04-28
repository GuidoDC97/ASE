library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Debouncer is
	generic (N : integer := 4);
	port (CLOCK 		: in STD_LOGIC;
			RESET 		: in STD_LOGIC;
			X 				: in STD_LOGIC_VECTOR(2*N-1 downto 0); --switch
			BTN_LOAD 	: in STD_LOGIC;
			BTN_START 	: in STD_LOGIC;
			X1 			: out STD_LOGIC_VECTOR(N-1 downto 0);  -- ingresso 1 rete neurale
			X2 			: out STD_LOGIC_VECTOR(N-1 downto 0);	-- ingresso 2 rete neurale
			START 		: out STD_LOGIC;
			LOAD 			: out STD_LOGIC
			);
end Debouncer;

architecture Behavioral of Debouncer is

	constant CONST : integer := 0;
	begin
		DEB_PROC : process (CLOCK, RESET)
		variable i : integer := 0;
		begin
			if(RESET = '1') then
				X1 <= (others =>'0');
				X2	<= (others =>'0');
				LOAD <= '1';
				START <= '0';
			elsif(rising_edge(CLOCK)) then
				if(BTN_LOAD = '1') then
					X1 <= X(2*N-1 downto N); 		-- 4 Bit di sinistra 
					X2 <= X(N-1 downto 0);		 	-- 4 Bit di destra 
					LOAD <= '1';
					i := 1;
				elsif(BTN_START = '1' and i = 1) then
					START <= '1';
					LOAD <= '0';
					i := 0;
				else
					LOAD <= '0';
					START <= '0';
				end if;
			end if;
		end process DEB_PROC;
				
end Behavioral;

