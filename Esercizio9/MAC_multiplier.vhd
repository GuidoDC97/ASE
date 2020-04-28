library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MAC_multiplier is
    Port(	A : in  STD_LOGIC_VECTOR (7 downto 0);
				B : in  STD_LOGIC_VECTOR (7 downto 0);
				Y : out  STD_LOGIC_VECTOR (15 downto 0)
				);
end MAC_multiplier;

architecture Behavioral of MAC_multiplier is
	
	COMPONENT MAC_cell
	PORT(
		x : IN std_logic;
		s_in : IN std_logic;
		y : IN std_logic;
		c_in : IN std_logic;          
		c_out : OUT std_logic;
		s_out : OUT std_logic
		);
	END COMPONENT;

	constant N : positive := 8;
	type matrix is array (N-1 downto 0, N-1 downto 0) of std_logic;
	signal temp_s : matrix;
	signal temp_c : matrix;
	signal temp_Y : STD_LOGIC_VECTOR (15 downto 0);

	begin	

	MAC_cell_row : for i in 0 to N-1 generate

		l_row: if i=0 generate 
			least_row: for j in 0 to N-1 generate	
				l_col: if j=0 generate
					least_col: MAC_cell
						PORT MAP(
							x => A(j),
							s_in => '0',
							y => B(i),
							c_in => '0',
							c_out => temp_c(i,j),
							s_out => temp_s(i,j)
						);
				end generate;
				
				r_col: if j>0 and j<=N-1 generate
					rest_col: MAC_cell
						PORT MAP(
							x => A(j),
							s_in => '0',
							y => B(i),
							c_in => temp_c(i,j-1),
							c_out => temp_c(i,j),
							s_out => temp_s(i,j)
						);
				end generate;
			end generate;
		end generate;
		
		r_row: if i>0 and i<= N-1 generate
			rest_row: for j in 0 to N-1 generate 
				l_col: if j=0 generate
					least_col: MAC_cell
						PORT MAP(
							x => A(j),
							s_in => temp_s(i-1,j+1),
							y => B(i),
							c_in => '0',
							c_out => temp_c(i,j),
							s_out => temp_s(i,j)
						);
				end generate;
				
				r_col: if j>0 and j<N-1 generate
					rest_col: MAC_cell
						PORT MAP(
							x => A(j),
							s_in => temp_s(i-1,j+1),
							y => B(i),
							c_in => temp_c(i,j-1),
							c_out => temp_c(i,j),
							s_out => temp_s(i,j)
						);
				end generate;
				
				m_col: if j=N-1 generate
					most_col: MAC_cell
						PORT MAP(
							x => A(j),
							s_in => temp_c(i-1,j),
							y => B(i),
							c_in => temp_c(i,j-1),
							c_out => temp_c(i,j),
							s_out => temp_s(i,j)
						);
				end generate;
			end generate;
		end generate;
		
	end generate;

	temp_Y(0) <= temp_s(0,0);
	temp_Y(1) <= temp_s(1,0);
	temp_Y(2) <= temp_s(2,0);
	temp_Y(3) <= temp_s(3,0);
	temp_Y(4) <= temp_s(4,0);
	temp_Y(5) <= temp_s(5,0);
	temp_Y(6) <= temp_s(6,0);
	temp_Y(7) <= temp_s(7,0);
	temp_Y(8) <= temp_s(7,1);
	temp_Y(9) <= temp_s(7,2);
	temp_Y(10)<= temp_s(7,3);
	temp_Y(11)<= temp_s(7,4);
	temp_Y(12)<= temp_s(7,5);
	temp_Y(13)<= temp_s(7,6);
	temp_Y(14)<= temp_s(7,7);
	temp_Y(15)<= temp_c(7,7);
	
	y 	<= temp_Y;
end Behavioral;

