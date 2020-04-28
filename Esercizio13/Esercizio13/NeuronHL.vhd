library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NeuronHL is
	generic( NUM	: integer := 1;
				N 		: integer := 4);
	port(	X1		: in STD_LOGIC_VECTOR(N-1 downto 0);
			X2		: in STD_LOGIC_VECTOR(N-1 downto 0);
			Y		: out STD_LOGIC_VECTOR(2*N-1 downto 0);
			ERR	: out STD_LOGIC);
end NeuronHL;

architecture structural of NeuronHL is

	constant W11	: STD_LOGIC_VECTOR(N-1 downto 0) := "0001";
	constant W12	: STD_LOGIC_VECTOR(N-1 downto 0) := "0001"; 
	constant B1		: STD_LOGIC_VECTOR(2*N-1 downto 0) := "00000001"; 	
--	constant B1		: STD_LOGIC_VECTOR(2*N-1 downto 0) := "01111111";	-- test overflow

	constant W21	: STD_LOGIC_VECTOR(N-1 downto 0) := "0001";
	constant W22	: STD_LOGIC_VECTOR(N-1 downto 0) := "0001"; 
	constant B2		: STD_LOGIC_VECTOR(2*N-1 downto 0) := "00000001"; 
	
	constant W31	: STD_LOGIC_VECTOR(N-1 downto 0) := "0001";
	constant W32	: STD_LOGIC_VECTOR(N-1 downto 0) := "0001"; 
	constant B3		: STD_LOGIC_VECTOR(2*N-1 downto 0) := "00000001";
	
	COMPONENT Multiplier
	GENERIC( N : integer);
	PORT(
		OP1 : IN std_logic_vector(N-1 downto 0);
		OP2 : IN std_logic_vector(N-1 downto 0);          
		RIS : OUT std_logic_vector(2*N-1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Adder
	GENERIC( N : integer);
	PORT(
		OP1 : IN std_logic_vector(N-1 downto 0);
		OP2 : IN std_logic_vector(N-1 downto 0);          
		RIS : OUT std_logic_vector(N-1 downto 0);
		ERR : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT Multiplexer_2_1_Nbit
	GENERIC( N : integer);
	PORT(
		X0 : IN std_logic_vector(N-1 downto 0);
		X1 : IN std_logic_vector(N-1 downto 0);
		S : IN std_logic;          
		Y : OUT std_logic_vector(N-1 downto 0)
		);
	END COMPONENT;

	signal W1 : STD_LOGIC_VECTOR(N-1 downto 0);
	signal W2 : STD_LOGIC_VECTOR(N-1 downto 0);
	
	signal B	 : STD_LOGIC_VECTOR(2*N-1 downto 0);
	
	signal P1 : STD_LOGIC_VECTOR(2*N-1 downto 0);
	signal P2 : STD_LOGIC_VECTOR(2*N-1 downto 0);

	signal S_TEMP : STD_LOGIC_VECTOR(2*N-1 downto 0);

	signal ERR_1 : STD_LOGIC;
	signal ERR_2 : STD_LOGIC;
	
	signal Y_TEMP : STD_LOGIC_VECTOR(2*N-1 downto 0); 
	
	signal GROUND : STD_LOGIC_VECTOR(2*N-1 downto 0); 
	
	begin
		GROUND <= (others => '0');
		
		with NUM select
			W1 <= W11	when 1,	
					W21	when 2,
					W31	when 3,
					(others => '0') when others;
		with NUM select			
			W2 <= W12	when 1,
					W22	when 2,
					W32	when 3,
					(others => '0') when others;

		with NUM select			
			B	<= B1	when 1,	
					B2	when 2,
					B3	when 3,
					(others => '0') when others;

		
		Inst_Multiplier_1: Multiplier 
			GENERIC MAP(
				N => N
			)
			PORT MAP(
				OP1 => X1,
				OP2 => W1,
				RIS => P1
			);
			
		Inst_Multiplier_2: Multiplier 
			GENERIC MAP(
				N => N
			)
			PORT MAP(
				OP1 => X2,
				OP2 => W2,
				RIS => P2 
			); 

		Inst_Adder_1: Adder 
		GENERIC MAP(
				N => 2*N
			)
		PORT MAP(
			OP1 => P1,
			OP2 => P2,
			RIS => S_TEMP,
			ERR => ERR_1
		);		

		Inst_Adder_2: Adder 
		GENERIC MAP(
				N => 2*N
			)
		PORT MAP(
			OP1 => S_TEMP,
			OP2 => B,
			RIS => Y_TEMP,
			ERR => ERR_2
		);		
	
		Inst_Multiplexer_2_1_Nbit: Multiplexer_2_1_Nbit
		GENERIC MAP(
				N => 2*N
			)
		PORT MAP(
			X0 => Y_TEMP,
			X1 => GROUND,
			S => Y_TEMP(2*N-1),
			Y => Y
		);

		ERR <= ERR_1 or ERR_2;
			
end structural;