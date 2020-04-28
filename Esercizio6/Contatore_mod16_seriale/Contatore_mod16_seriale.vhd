library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Contatore_mod16_seriale is
	generic(	n : POSITIVE := 4);
   port(	count 	: in  STD_LOGIC;
         Reset		: in  STD_LOGIC;
         value		: out	STD_LOGIC_VECTOR(n-1 downto 0)
		  );
end Contatore_mod16_seriale;

architecture structural of Contatore_mod16_seriale is

		  
	component Flip_Flop_T_etd 
		 Port ( T 		: in  STD_LOGIC;
				  Reset 	: in std_logic;
				  Q 		: out  STD_LOGIC
				  );
	end component;	  
		  
	signal Qtemp : std_logic_vector (n-1 downto 0);
	
begin

	Flip_Flop_T_all: for i in 0 to n-1 generate
			l: if i = 0 generate
				least: Flip_Flop_T_etd port map(	T => count,
															Reset => Reset,
															Q => Qtemp(0)
														);
				end generate;
			
			r: if i > 0 and i <= n-1 generate
				rest: Flip_Flop_T_etd port map(	T => Qtemp(i-1),
															Reset => Reset,
															Q => Qtemp(i)
														);
				end generate;
				
		end generate;

	value <= Qtemp;

end structural;

