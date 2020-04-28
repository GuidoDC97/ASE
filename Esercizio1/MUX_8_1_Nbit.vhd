library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_8_1_Nbit is
	generic( N : integer := 1);
	port(
			X0 : in STD_LOGIC_VECTOR(N-1 downto 0);
			X1 : in STD_LOGIC_VECTOR(N-1 downto 0);
			X2 : in STD_LOGIC_VECTOR(N-1 downto 0);
			X3 : in STD_LOGIC_VECTOR(N-1 downto 0);
			X4 : in STD_LOGIC_VECTOR(N-1 downto 0);
			X5 : in STD_LOGIC_VECTOR(N-1 downto 0);
			X6 : in STD_LOGIC_VECTOR(N-1 downto 0);
			X7 : in STD_LOGIC_VECTOR(N-1 downto 0);
			S 	: in STD_LOGIC_VECTOR(2 downto 0);
			Y : out STD_LOGIC_VECTOR(N-1 downto 0)
	);
end MUX_8_1_Nbit;

architecture structural of MUX_8_1_Nbit is

	type ARRAY_TEMP_OUT is array(3 downto 0) of STD_LOGIC_VECTOR(N-1 downto 0);
	type ARRAY_TEMP_IN is array(7 downto 0) of STD_LOGIC_VECTOR(N-1 downto 0);
	

	COMPONENT MUX_2_1_Nbit
	GENERIC (N : integer);
	PORT(
			X0 : IN STD_LOGIC_VECTOR(N-1 downto 0);
			X1 : IN STD_LOGIC_VECTOR(N-1 downto 0);
			S : IN STD_LOGIC;      
			Y : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		);
	END COMPONENT;

	COMPONENT MUX_4_1_Nbit
	GENERIC (N : integer);
	PORT(
			X0 : IN STD_LOGIC_VECTOR(N-1 downto 0);
			X1 : IN STD_LOGIC_VECTOR(N-1 downto 0);
			X2 : IN STD_LOGIC_VECTOR(N-1 downto 0);
			X3 : IN STD_LOGIC_VECTOR(N-1 downto 0);
			S : IN std_logic_vector(1 downto 0);          
			Y : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		);
	END COMPONENT;

	signal Y_TEMP : ARRAY_TEMP_OUT;
	signal X_TEMP : ARRAY_TEMP_IN;
	
	begin

		X_TEMP(0) <= X0;
		X_TEMP(1) <= X1;
		X_TEMP(2) <= X2;
		X_TEMP(3) <= X3;
		X_TEMP(4) <= X4;
		X_TEMP(5) <= X5;
		X_TEMP(6) <= X6;
		X_TEMP(7) <= X7;

		mux_all: for i in 0 to 3 generate
			mux_i: MUX_2_1_Nbit 
								generic map (N => N)
								port map(	X0	=> X_TEMP(2*i), 
												X1 => X_TEMP(2*i+1),
												S	=> S(0),
												Y	=> Y_TEMP(i) 
											);
		end generate;

		Inst_MUX_4_1_Nbit: MUX_4_1_Nbit 
		GENERIC MAP (N=> N)
		PORT MAP(
			X0 => Y_TEMP(0),
			X1 => Y_TEMP(1),
			X2 => Y_TEMP(2),
			X3 => Y_TEMP(3),
			S => S(2 downto 1),
			Y => Y
		);


end structural;

