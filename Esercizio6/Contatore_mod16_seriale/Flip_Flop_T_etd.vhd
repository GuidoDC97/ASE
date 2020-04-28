library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Flip_Flop_T_etd is
    Port ( T 		: in  STD_LOGIC;
		   Reset 	: in std_logic;
           Q 		: out  STD_LOGIC
			  );
end Flip_Flop_T_etd;

architecture Behavioral of Flip_Flop_T_etd is

	signal Qint : std_logic;
begin

	ffT : process(T, Reset)
	begin
		
		if( Reset = '1') then
			Qint <= '0'; 
		elsif(falling_edge(T)) then
			Qint <= not Qint;
		end if;
	end process ffT;
	 
	Q <= Qint;
end Behavioral;
 
