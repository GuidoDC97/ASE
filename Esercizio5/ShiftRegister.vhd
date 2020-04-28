library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShiftRegister is
	generic(	
				N : POSITIVE := 8
			);
   port(	
			X 		: in  STD_LOGIC_VECTOR(N-1 downto 0);
         ENABLE_SH	: in  STD_LOGIC;
         RESET	: in  STD_LOGIC;
         LOAD	: in  STD_LOGIC;
         Y		: out	STD_LOGIC_VECTOR(N-1 downto 0)
		  );
end ShiftRegister; 

architecture Structural of ShiftRegister is

	COMPONENT MUX_2_1_Nbit
	GENERIC( N : integer);
	PORT(
			X0 : IN STD_LOGIC_VECTOR(N-1 downto 0);
			X1 : IN STD_LOGIC_VECTOR(N-1 downto 0);
			S : IN std_logic;          
			Y : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		);
	END COMPONENT;
	
	component FF_D
	port(	D 		: in STD_LOGIC;
			CLK 	: in  STD_LOGIC;
			RESET	: in STD_LOGIC;
			Q 		: out STD_LOGIC
		 );
	end component;
		
	signal MUX_OUT: STD_LOGIC_VECTOR(N-1 downto 0);
	signal REG_VAL: STD_LOGIC_VECTOR(N-1 downto 0);
	
	begin	
	
		mux_2_1_all: for i in 0 to N-1 generate
			m: if i = 0 generate
				most: MUX_2_1_Nbit 
				GENERIC MAP ( N => 1)
				PORT MAP(
					X0(0) => REG_VAL(N-1),
					X1(0) => X(i),
					S => LOAD,
					Y(0) => MUX_OUT(i)
				);
			end generate;
			
			r: if i > 0 and i <= N-1 generate
				rest: MUX_2_1_Nbit  
				GENERIC MAP ( N => 1)
				PORT MAP(
					X0(0) => REG_VAL(i-1),
					X1(0) => X(i),
					S => LOAD,
					Y(0) => MUX_OUT(i) 
				);
				end generate;
		end generate;
		
		FF_D_all: for i in 0 to N-1 generate
			FF_D_i: FF_D 
			PORT MAP(	
				D		=> MUX_OUT(i), 
				CLK	=> ENABLE_SH,
				RESET	=> RESET,
				Q		=> REG_VAL(i)
			);
		end generate;
		
		Y <= REG_VAL;
		
end Structural;

