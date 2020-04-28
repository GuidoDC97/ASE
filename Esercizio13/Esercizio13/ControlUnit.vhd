library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnit is
	port(	CLOCK 			: in STD_LOGIC;
			RESET 			: in STD_LOGIC;
			START	   		: in STD_LOGIC;
			EN_HI 			: out STD_LOGIC;
			EN_OUT			: out STD_LOGIC;
			EN_ERR			: out STD_LOGIC			
	);
end ControlUnit;

architecture Behavioral of ControlUnit is

	type STATE_TYPE is(
		IDLE_S,
		HID_S,
		OUT_S
	);
	
-- SEGNALI TEMPORANEI	
	signal CURRENT_STATE, NEXT_STATE : STATE_TYPE;
	
	begin
		CURR_STATE_PROC : process(CLOCK,RESET)
		begin
			if(RESET = '1') then 
				CURRENT_STATE <= IDLE_S;
			elsif(rising_edge(CLOCK)) then
				if(START = '1' and CURRENT_STATE = IDLE_S) then
					CURRENT_STATE <= HID_S;
				else CURRENT_STATE <= NEXT_STATE;
				end if;
			end if;
		end process CURR_STATE_PROC;
		
		NEXT_STATE_PROC : process(CURRENT_STATE)
		begin
		
			EN_HI 	<= '0';
			EN_OUT 	<= '0';
			EN_ERR 	<= '0';
			
			case CURRENT_STATE is
				when IDLE_S => 
					NEXT_STATE <= IDLE_S;
				
				when HID_S =>
					EN_HI <= '1';
					NEXT_STATE <= OUT_S;
				
				when OUT_S =>
					EN_OUT <= '1';
					EN_ERR <= '1';
					NEXT_STATE <= IDLE_S;
			end case;
		end process NEXT_STATE_PROC;
end Behavioral;

