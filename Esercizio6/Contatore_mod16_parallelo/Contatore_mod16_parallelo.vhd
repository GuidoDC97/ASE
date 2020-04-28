library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Contatore_mod16_parallelo is
   port(count 		: in  STD_LOGIC;
        Reset		: in  STD_LOGIC;
        value		: out	STD_LOGIC_VECTOR(3 downto 0)
		  );
end Contatore_mod16_parallelo;

architecture Structural of Contatore_mod16_parallelo is
	component Flip_Flop_T_etd 
		 Port ( T 		: in  STD_LOGIC;
				  Reset 	: in std_logic;
				  Q 		: out  STD_LOGIC
				  );
	end component;
	
--	signal T1 : std_logic := '0';
--	signal T2 : std_logic := '0';
--	signal T3 : std_logic := '0';
--	signal T4 : std_logic := '0';
	signal Temp : std_logic_vector(2 downto 0) := (others => '0');
	signal Qtemp : std_logic_vector(3 downto 0) := (others => '0'); 
begin

--Flip_Flop_T_all: for i in 0 to n-1 generate
--			l: if i = 0 generate
--				least: Flip_Flop_T_etd port map(	T => count,
--															Reset => Reset,
--															Q => Qtemp(0)
--														);
--				end generate;
--			
--			r: if i > 0 and i <= n-1 generate
--				rest: Flip_Flop_T_etd port map(	T => Qtemp(i-1) and cont,
--															Reset => Reset,
--															Q => Qtemp(i)
--														);
--				end generate;
--		end generate;

	Temp(0) <= count and Qtemp(0);
	Temp(1) <= Temp(0) and Qtemp(1);
	Temp(2) <= Temp(1) and Qtemp(2);

	FF0: Flip_Flop_T_etd port map(	T => count,
												Reset => Reset,
												Q => Qtemp(0)
											);
	FF1: Flip_Flop_T_etd port map(	T => Temp(0),
												Reset => Reset,
												Q => Qtemp(1)
											);	
	FF2: Flip_Flop_T_etd port map(	T => Temp(1),
												Reset => Reset,
												Q => Qtemp(2)
											);
	FF3: Flip_Flop_T_etd port map(	T => Temp(2),
												Reset => Reset,
												Q => Qtemp(3)
											);

		
	value <= Qtemp;
end Structural;

