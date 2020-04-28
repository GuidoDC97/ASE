library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Cell is
port(
		en 	: in std_logic;
		a0 	: in std_logic_vector(1 downto 0);
		a1 	: in std_logic_vector(1 downto 0);
		s		: in std_logic;	
		d		: in std_logic;
		u0 	: out std_logic_vector(1 downto 0);
		u1 	: out std_logic_vector(1 downto 0)	
	);


end Cell;

architecture structural of Cell is
	COMPONENT Mux_2_1_ab
	PORT(
		a0 : IN std_logic_vector(1 downto 0);
		a1 : IN std_logic_vector(1 downto 0);
		sel : IN std_logic;
		en : IN std_logic;          
		u : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT DeMux_1_2
	PORT(
		sel : IN std_logic;
		i : IN std_logic_vector(1 downto 0);          
		u0 : OUT std_logic_vector(1 downto 0);
		u1 : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	signal temp : std_logic_vector(1 downto 0);
	
begin

	Inst_Mux_2_1_ab: Mux_2_1_ab PORT MAP(
		a0 => a0,
		a1 => a1,
		sel => s,
		en => en,
		u => temp
	);
	
	
	Inst_DeMux_1_2: DeMux_1_2 PORT MAP(
		sel => d,
		i => temp,
		u0 => u0,
		u1 => u1 
	);
end structural;

