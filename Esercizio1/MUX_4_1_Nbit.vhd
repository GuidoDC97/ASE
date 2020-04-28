library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_4_1_Nbit is
	generic( N : integer);
	port(	X0 : in STD_LOGIC_VECTOR(N-1 downto 0);
			X1 : in STD_LOGIC_VECTOR(N-1 downto 0);
			X2 : in STD_LOGIC_VECTOR(N-1 downto 0);
			X3 : in STD_LOGIC_VECTOR(N-1 downto 0);
			S : in STD_LOGIC_VECTOR(1 downto 0);
			Y : out STD_LOGIC_VECTOR(N-1 downto 0)
			);
end MUX_4_1_Nbit;

architecture structural of MUX_4_1_Nbit is

	COMPONENT MUX_2_1_Nbit
	generic( N : integer);
	PORT(
			X0 : IN STD_LOGIC_VECTOR(N-1 downto 0);
			X1 : IN STD_LOGIC_VECTOR(N-1 downto 0);
			S : IN STD_lOGIC;          
			Y : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		);
	END COMPONENT;
	
	signal Y_TEMP_0 : STD_LOGIC_VECTOR(N-1 downto 0);
	signal Y_TEMP_1 : STD_LOGIC_VECTOR(N-1 downto 0);

	begin
		Inst_MUX_2_1_Nbit_0: MUX_2_1_Nbit 
		GENERIC MAP (N=> N)
		PORT MAP(
			X0 => X0,
			X1 => X1,
			S => S(0),
			Y => Y_TEMP_0
		);
		
		Inst_MUX_2_1_Nbit_1: MUX_2_1_Nbit 
		GENERIC MAP (N=> N)
		PORT MAP(
			X0 => X2,
			X1 => X3,
			S => S(0),
			Y => Y_TEMP_1
		);
		
		Inst_MUX_2_1_Nbit_2: MUX_2_1_Nbit 
		GENERIC MAP (N=> N)
		PORT MAP(
			X0 => Y_TEMP_0,
			X1 => Y_TEMP_1,
			S => S(1),
			Y => Y
		);

end structural;

