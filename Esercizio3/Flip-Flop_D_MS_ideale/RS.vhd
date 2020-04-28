library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RS is

	port(	R		: in STD_LOGIC;
			S 		: in STD_LOGIC;
			Q1		: out STD_LOGIC;
			nQ1	: out STD_LOGIC
			);

end RS;

architecture behavioral of RS is

	signal TEMP : STD_LOGIC;
	
	begin
		latch: process(R, S)
		begin
			if(S = '1' AND R = '0') then
--				TEMP <= '1';
				Q1		<= '1';
				nQ1	<= '0';
			elsif(S = '0' AND R = '1') then
--				TEMP <= '0';
				Q1		<= '0';
				nQ1	<= '1';
			elsif(S = '0' AND R = '0') then
				null;
			elsif(S = '1' AND R = '1') then
--				TEMP <= 'X';
				Q1		<= '0';
				nQ1	<= '0';
			end if;
		end process;

--		Q1		<= TEMP;
--		nQ1	<= NOT TEMP;
		
--	signal RS 	: STD_LOGIC_VECTOR(1 downto 0);
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
