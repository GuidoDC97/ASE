library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FF_D is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  RESET: in STD_LOGIC;
           Q : out  STD_LOGIC
			  );
end FF_D;

architecture Behavioral of FF_D is

	begin
		FF_D_proc : process(CLK, RESET)
		begin
			if RESET = '1' then
				Q <= '0'; 
			elsif falling_edge(CLK) then
				Q <= D;
			end if;
		end process;
		
end Behavioral;