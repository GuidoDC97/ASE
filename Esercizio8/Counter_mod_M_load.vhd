library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Counter_mod_M_load is
	generic( M : integer := 60;
				N : integer := 6
				);
	port( clock 		: in  STD_LOGIC;
			reset 		: in  STD_LOGIC;
         load 			: in  STD_LOGIC;
         data 			: in  STD_LOGIC_VECTOR (N-1 downto 0);
         y 				: out STD_LOGIC_VECTOR (N-1 downto 0);
			enable_out	: out STD_LOGIC
			);
end Counter_mod_M_load;

architecture Behavioral of Counter_mod_M_load is

	signal ty : STD_LOGIC_VECTOR (N-1  downto 0); 

	begin
	count: process(clock, reset, load, data)
		begin
			if(reset = '1') then
				ty 			<= (others => '0');
				enable_out	<= '0';
			elsif(load = '1') then
				if(conv_integer(data) > M-1) then
					ty	<= std_logic_vector(to_unsigned(M-1, ty' length));
				else 
					ty	<= data;
				end if;
				enable_out	<= '0';
			elsif(rising_edge(clock)) then
				if(ty = std_logic_vector(to_unsigned(M-1, ty' length))) then 
					ty 			<= (others => '0');
					enable_out	<= '1';
				else 
					ty 			<= ty + "1";
					enable_out	<= '0';
				end if;
			end if;
		end process;

	y <= ty;

end Behavioral;