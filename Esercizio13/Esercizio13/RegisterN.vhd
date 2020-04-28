library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegisterN is
	generic( N	: integer := 4);
	port(	CLOCK		: in STD_LOGIC;
			RESET		: in STD_LOGIC;
			ENABLE	: in STD_LOGIC;
			X			: in STD_LOGIC_VECTOR(N-1 downto 0);
			Y			: out STD_LOGIC_VECTOR(N-1 downto 0));
end RegisterN;

architecture behavioral of RegisterN is

	begin
		REG_PROC : process(CLOCK, RESET)
		begin
			if(RESET = '1') then
				Y <= (others =>'0');
			elsif (falling_edge(CLOCK)) then
				if(ENABLE = '1') then
					Y <= X;
				end if;
			end if;		
		end process REG_PROC;

end behavioral;