library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RS_latch is

	port(	R		: in STD_LOGIC;
			S 		: in STD_LOGIC;
			E1		: in STD_LOGIC;
			Q1		: out STD_LOGIC;
			nQ1	: out STD_LOGIC
			);

end RS_latch;

architecture behavioral of RS_latch is

--	signal RS 	: STD_LOGIC_VECTOR(1 downto 0);
	signal TEMP : STD_LOGIC;
	
	begin
		latch: process(R, S, E1)
		begin
			if(E1 = '1') then
				if(S = '1' AND R = '0') then
					TEMP <= '1';
				elsif(S = '0' AND R = '1') then
					TEMP <= '0';
				elsif(S = '0' AND R = '0') then
					null;
				elsif(S = '1' AND r = '1') then
					TEMP <= 'X';
				end if;
			end if;
		end process;

		Q1	<= TEMP;
		nQ1	<= NOT TEMP;
		
--		RS <= R & S;
		
--		latch: process(RS, E1)
--		begin
--			if(E1 = '1') then
--				case RS is
--					when "00" =>
--						null;
--					when "01" =>
--						TEMP <= '1';
--					when "10" =>
--						TEMP <= '0';
--					when "11" =>
--						TEMP <= 'X';
--					when others =>
--						TEMP <= 'X';
--				end case;
--			end if;
--		end process;
	
end behavioral;
