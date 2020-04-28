library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Datapath is
	generic( N : integer := 4);
	port(
		CLOCK 	: IN std_logic;
		EN_IN 	: IN std_logic;
		EN_HI 	: IN std_logic;
		EN_OUT 	: IN std_logic;
		EN_ERR 	: IN std_logic;		
		RESET		: IN std_logic;
		X1 		: IN std_logic_vector(N-1 downto 0);
		X2			: IN std_logic_vector(N-1 downto 0);
		Y		 	: OUT std_logic_vector(4*N-1 downto 0);
		ERR		: OUT std_logic 
	);
end Datapath;

architecture Structural of Datapath is

	--Dichiarazione componenti	
	COMPONENT NeuronHL
	GENERIC( N : integer;
				NUM : integer
	);
	PORT(
		X1 	: IN std_logic_vector(N-1 downto 0);
		X2 	: IN std_logic_vector(N-1 downto 0);          
		Y 		: OUT std_logic_vector(2*N-1 downto 0);
		ERR 	: OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT NeuronOL
	GENERIC( N : integer);
	PORT(
		H1 	: IN std_logic_vector(2*N-1 downto 0);
		H2 	: IN std_logic_vector(2*N-1 downto 0);
		H3 	: IN std_logic_vector(2*N-1 downto 0);          
		Y 		: OUT std_logic_vector(4*N-1 downto 0);
		ERR 	: OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT RegisterN
	GENERIC( N : integer);
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		ENABLE : IN std_logic;
		X : IN std_logic_vector(N-1 downto 0);          
		Y : OUT std_logic_vector(N-1 downto 0)
	);
	END COMPONENT;


	signal X1_REG : std_logic_vector(N-1 downto 0);
	signal X2_REG : std_logic_vector(N-1 downto 0);	
	
	signal Y_H_REG_0 : std_logic_vector(2*N-1 downto 0);
	signal Y_H_REG_1 : std_logic_vector(2*N-1 downto 0);
	signal Y_H_REG_2 : std_logic_vector(2*N-1 downto 0);
		
	signal Y_O_TEMP_0 : std_logic_vector(2*N-1 downto 0);
	signal Y_O_TEMP_1 : std_logic_vector(2*N-1 downto 0);
	signal Y_O_TEMP_2 : std_logic_vector(2*N-1 downto 0);

	signal Y_O_REG : std_logic_vector(4*N-1 downto 0);
	signal ERR_TEMP : std_logic_vector(3 downto 0);
	
	signal ERR_REG : std_logic;
	
	begin
	
	--Istanziazione componenti	
	Register_X1: RegisterN 
	GENERIC MAP( N => N)
	PORT MAP(
		CLOCK => CLOCK,
		RESET => RESET,
		ENABLE => EN_IN,
		X => X1,
		Y => X1_REG
	);
	
	Register_X2: RegisterN 
	GENERIC MAP( N => N)
	PORT MAP(
		CLOCK => CLOCK,
		RESET => RESET,
		ENABLE => EN_IN,
		X => X2,
		Y => X2_REG
	);
	
	
	Inst_NeuronHL_0: NeuronHL 
	GENERIC MAP( 
		N => N,
		NUM => 1
	)
	PORT MAP(
		X1 => X1_REG,
		X2 => X2_REG,
		Y => Y_H_REG_0,
		ERR => ERR_TEMP(0)
	);	
	
	Inst_NeuronHL_1: NeuronHL 
	GENERIC MAP( 
		N => N,
		NUM => 2
	)
	PORT MAP(
		X1 => X1_REG,
		X2 => X2_REG,
		Y => Y_H_REG_1,
		ERR => ERR_TEMP(1)
	);	
	
	Inst_NeuronHL_2: NeuronHL 
	GENERIC MAP( 
		N => N,
		NUM => 3
	)
	PORT MAP(
		X1 => X1_REG,
		X2 => X2_REG,
		Y => Y_H_REG_2,
		ERR => ERR_TEMP(2)
	);	
	
	Register_H0: RegisterN 
	GENERIC MAP( N => 2*N)
	PORT MAP(
		CLOCK => CLOCK,
		RESET => RESET,
		ENABLE => EN_HI,
		X => Y_H_REG_0,
		Y => Y_O_TEMP_0
	);

	Register_H1: RegisterN 
	GENERIC MAP( N => 2*N)
	PORT MAP(
		CLOCK => CLOCK,
		RESET => RESET,
		ENABLE => EN_HI,
		X => Y_H_REG_1,
		Y => Y_O_TEMP_1
	);

	Register_H2: RegisterN 
	GENERIC MAP( N => 2*N)
	PORT MAP(
		CLOCK => CLOCK,
		RESET => RESET,
		ENABLE => EN_HI,
		X => Y_H_REG_2,
		Y => Y_O_TEMP_2
	);
	
	Inst_NeuronOL: NeuronOL 
	GENERIC MAP( 
			N => N
	)
	PORT MAP(
		H1 => Y_O_TEMP_0,
		H2 => Y_O_TEMP_1,
		H3 => Y_O_TEMP_2,
		Y => Y_O_REG,
		ERR => ERR_TEMP(3)
	);
	
	
	Register_Y: RegisterN 
	GENERIC MAP( N => 4*N)
	PORT MAP(
		CLOCK => CLOCK,
		RESET => RESET,
		ENABLE => EN_OUT,
		X => Y_O_REG,
		Y => Y
	);
	
	ERR_PROC : process(CLOCK, RESET)
		begin
			if(RESET = '1') then
				ERR_REG <= '0';
			elsif(falling_edge(CLOCK)) then
				if(EN_ERR = '1') then
					ERR_REG <= ERR_TEMP(0) or ERR_TEMP(1) or ERR_TEMP(2) or ERR_TEMP(3);
				end if;
			end if;
		end process ERR_PROC;
		
	ERR <= ERR_REG;

end Structural;