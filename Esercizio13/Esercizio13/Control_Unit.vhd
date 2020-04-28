--############################################################################

-- IMPLEMENTAZIONE CONTROL UNIT PER ARCHITETTURA PIPELINED RETE NEURALE.

--############################################################################

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control_Unit is
	port(	CLOCK 			: in STD_LOGIC;
			RESET 			: in STD_LOGIC;
			START	   		: in STD_LOGIC;
			EN_HI 			: out STD_LOGIC;
			EN_OUT			: out STD_LOGIC;
			EN_ERR			: out STD_LOGIC			
	);
end Control_Unit;

architecture Behavioral of Control_Unit is

	type state is (idle_s, wait_s , op_s);
	signal current_state, next_state : state;
	
	begin
	
		nex_state : process(CLOCK, reset)
		begin
			if(rising_edge(CLOCK)) then
				if (reset = '1') then
					current_state <= idle_s;
				elsif(start = '1') then
					current_state <= wait_s;
				end if;
			end if;
		end process nex_state;
		
		curr_state : process(current_state)
		begin
		case current_state is 
			when idle_s => 
				next_state <= idle_S;
			when op_s => 
				EN_HI 	<= '0';
				EN_OUT 	<= '0';
				EN_ERR 	<= '0';
				next_state <= wait_s;
			when wait_s => 
				EN_HI 	<= '1';
				EN_OUT 	<= '1';
				EN_ERR 	<= '1';
		end case;
		end process curr_state;
		
end Behavioral;