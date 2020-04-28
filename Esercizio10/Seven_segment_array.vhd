library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DISPLAY_SEVEN_SEGMENTS is
    port(	CLOCK 	: in  STD_LOGIC;
				RESET		: in  STD_LOGIC;
				ENABLE_VAL : in STD_LOGIC;
				ERR		: in  STD_LOGIC;
				VALUE		: in 	STD_LOGIC_VECTOR (15 downto 0);
				ANODES	: out	STD_LOGIC_VECTOR (3 downto 0);
				CATHODES : out	STD_LOGIC_VECTOR (7 downto 0));
end DISPLAY_SEVEN_SEGMENTS;

architecture structural of DISPLAY_SEVEN_SEGMENTS is

	signal COUNTER : STD_LOGIC_VECTOR (1 downto 0);
	signal TEMP_VAL : std_logic_vector(15 downto 0);
	signal ERR_OUT : std_logic;
	
	component COUNTER_MOD4
		port(	CLOCK		: in  STD_LOGIC;
				RESET	: in  STD_LOGIC;
				COUNTER	: out  STD_LOGIC_VECTOR (1 downto 0));
	end component;

	component CATHODES_MANAGER
		port(	COUNTER : IN STD_LOGIC_VECTOR (1 downto 0);
				ERR			: in	STD_LOGIC;
				VALUE : IN std_logic_vector(15 downto 0);         
				CATHODES : OUT std_logic_vector(7 downto 0));
	end component;

	component ANODES_MANAGER
		port(	COUNTER : IN  STD_LOGIC_VECTOR (1 downto 0);
				ANODES : OUT std_logic_vector(3 downto 0));
	end component;

	begin

	COUNTER_INSTANCE: COUNTER_MOD4 port map(
		CLOCK		=> CLOCK,
		RESET	=> RESET,
		COUNTER	=> COUNTER
	);

	CATHODES_INSTANCE: CATHODES_MANAGER port map(
		COUNTER	=> COUNTER,
		ERR => ERR_OUT,
		VALUE 	=> TEMP_VAL,
		CATHODES => CATHODES
	);

	ANODES_INSTANCE: ANODES_MANAGER port map(
		COUNTER	=> COUNTER,
		ANODES	=> ANODES 
	);
	
	VAL_PROC : process(CLOCK, RESET)
	begin
		if(RESET = '1') then
			TEMP_VAL <= (others => '0');
			ERR_OUT <= '0';
		elsif(falling_edge(CLOCK)) then
			if(ERR = '1') then
				ERR_OUT <= '1';
			elsif(ENABLE_VAL = '1') then
				ERR_OUT <= '0';
				TEMP_VAL <= VALUE;
			end if;
		end if;
	end process VAL_PROC;
	
end structural;