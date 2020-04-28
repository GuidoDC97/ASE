library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NeuronOL is
	generic( N 		: integer := 4);
	port(	H1		: in STD_LOGIC_VECTOR(2*N-1 downto 0);
			H2		: in STD_LOGIC_VECTOR(2*N-1 downto 0);
			H3		: in STD_LOGIC_VECTOR(2*N-1 downto 0);
			Y		: out STD_LOGIC_VECTOR(4*N-1 downto 0);
			ERR	: out STD_LOGIC);
end NeuronOL;

architecture Behavioral of NeuronOL is

	constant W1	: STD_LOGIC_VECTOR(2*N-1 downto 0) := "00000001";	
	constant W2	: STD_LOGIC_VECTOR(2*N-1 downto 0) := "00000001";	
	constant W3	: STD_LOGIC_VECTOR(2*N-1 downto 0) := "00000000";
	
	constant B	: STD_LOGIC_VECTOR(4*N-1 downto 0) := "0000000000000000"; 

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

	signal P1 : STD_LOGIC_VECTOR(4*N-1 downto 0);
	signal P2 : STD_LOGIC_VECTOR(4*N-1 downto 0);
	signal P3 : STD_LOGIC_VECTOR(4*N-1 downto 0);	
	
	signal S_TEMP1 : STD_LOGIC_VECTOR(4*N-1 downto 0);
	signal S_TEMP2 : STD_LOGIC_VECTOR(4*N-1 downto 0);

	signal ERR_1 : STD_LOGIC;
	signal ERR_2 : STD_LOGIC;
	signal ERR_3 : STD_LOGIC;

	signal Y_TEMP : STD_LOGIC_VECTOR(4*N-1 downto 0); 
	
	signal GROUND : STD_LOGIC_VECTOR(4*N-1 downto 0); 

	begin
		GROUND <= (others => '0');
	
		Inst_Multiplier_1: Multiplier 
			GENERIC MAP(
				N => 2*N
			)
			PORT MAP(
				OP1 => H1,
				OP2 => W1,
				RIS => P1
			);

		Inst_Multiplier_2: Multiplier 
			GENERIC MAP(
				N => 2*N
			) 
			PORT MAP( 
				OP1 => H2,
				OP2 => W2,
				RIS => P2
			);
			
		Inst_Multiplier_3: Multiplier 
			GENERIC MAP(
				N => 2*N
			)
			PORT MAP(
				OP1 => H3,
				OP2 => W3,
				RIS => P3
			);

		Inst_Adder_1: Adder 
			GENERIC MAP(
					N => 4*N
				)
			PORT MAP(
				OP1 => P1,
				OP2 => P2,
				RIS => S_TEMP1,
				ERR => ERR_1
			);		

		Inst_Adder_2: Adder 
			GENERIC MAP(
					N => 4*N
				)
			PORT MAP(
				OP1 => S_TEMP1,
				OP2 => P3,
				RIS => S_TEMP2,
				ERR => ERR_2
			);
			
		Inst_Adder_3: Adder 
			GENERIC MAP(
					N => 4*N
				)
			PORT MAP(
				OP1 => S_TEMP2,
				OP2 => B,
				RIS => Y_TEMP, 
				ERR => ERR_3
			);
 
		Inst_Multiplexer_2_1_Nbit: Multiplexer_2_1_Nbit
		GENERIC MAP(
				N => 4*N
			)
		PORT MAP(
			X0 => Y_TEMP,
			X1 => GROUND,
			S => Y_TEMP(4*N-1),
			Y => Y
		);
		
		
		ERR <= ERR_1 or ERR_2 or ERR_3;
			
end Behavioral;

