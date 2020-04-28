library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Debouncer is
	generic (N : integer := 4);
	port (CLOCK : in STD_LOGIC;
			RESET : in STD_LOGIC;
			X : in STD_LOGIC_VECTOR(N-1 downto 0); --switch
			BTN_SAQ : in STD_LOGIC;
			BTN_M : in STD_LOGIC;
			BTN_START : in STD_LOGIC;
			SAQ : out STD_LOGIC_VECTOR(2*N-2 downto 0);  -- dividendo
			M : out STD_LOGIC_VECTOR(N-1 downto 0);	 -- divisore		
			START : out STD_LOGIC;
			ENABLE_SAQ : out STD_LOGIC;
			ENABLE_M : out STD_LOGIC;
			ERR : out STD_LOGIC
			);
end Debouncer;

architecture Behavioral of Debouncer is

	signal ERR_TEMP : STD_LOGIC;
	signal M_TEMP : STD_LOGIC_VECTOR(N-1 downto 0);
	
	constant CONST : integer := 0;
	begin
		DEB_PROC : process (CLOCK, RESET )
		variable i : integer := 0;
		begin
				
			if(RESET = '1') then
				SAQ <= (others =>'0');
				M	<=(others =>'0');
				ENABLE_SAQ <= '1';
				ENABLE_M <= '1';
				ERR_TEMP <= '0';	
				i := 0;
			elsif(rising_edge(CLOCK)) then
				if(BTN_SAQ = '1' and i = 0) then
					SAQ <= "000" & X;
					ENABLE_SAQ <= '1';
					i := 1;
				elsif(BTN_M = '1' and i = 1) then
					M <= X; 
					M_TEMP <= X;
					ENABLE_M <= '1';
					i := 2;
				elsif(BTN_START = '1' and i = 2) then
					if (M_TEMP = std_logic_vector(to_unsigned(CONST, M_TEMP' length))) then
						ERR_TEMP <= '1';
					else 
						START<= '1';
						ERR_TEMP <= '0';
					end if;
					ENABLE_SAQ <= '0';
					ENABLE_M <= '0';
					i := 0;
				else
					ENABLE_SAQ <= '0';
					ENABLE_M <= '0';
					START <= '0'; 
				end if;
			end if;
		end process DEB_PROC;

		ERR <= ERR_TEMP;		
end Behavioral;