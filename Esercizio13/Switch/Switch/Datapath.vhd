library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Datapath is
	PORT(
		en : IN std_logic;
		dst0 : IN std_logic_vector(1 downto 0);
		dst1 : IN std_logic_vector(1 downto 0);
		dst2 : IN std_logic_vector(1 downto 0);
		dst3 : IN std_logic_vector(1 downto 0);
		data0 : IN std_logic_vector(1 downto 0);
		data1 : IN std_logic_vector(1 downto 0);
		data2 : IN std_logic_vector(1 downto 0);
		data3 : IN std_logic_vector(1 downto 0);
		out0 : IN std_logic_vector(1 downto 0);
		out1 : IN std_logic_vector(1 downto 0);
		out2 : IN std_logic_vector(1 downto 0);
		out3 : IN std_logic_vector(1 downto 0);
		sel : IN std_logic_vector(1 downto 0);
		u : OUT std_logic_vector(1 downto 0)
	);
end Datapath;

architecture structural of Datapath is
	COMPONENT Mux_4_1
	PORT(
		a0 : IN std_logic_vector(1 downto 0);
		a1 : IN std_logic_vector(1 downto 0);
		a2 : IN std_logic_vector(1 downto 0);
		a3 : IN std_logic_vector(1 downto 0);
		sel : IN std_logic_vector(1 downto 0);
		u : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	COMPONENT Cell
	PORT(
		en : IN std_logic;
		a0 : IN std_logic_vector(1 downto 0);
		a1 : IN std_logic_vector(1 downto 0);
		s : IN std_logic;
		d : IN std_logic;          
		u0 : OUT std_logic_vector(1 downto 0);
		u1 : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	signal d 		: std_logic_vector(1 downto 0);
	signal temp0 	: std_logic_vector(1 downto 0);
	signal temp1 	: std_logic_vector(1 downto 0);
	signal temp2 	: std_logic_vector(1 downto 0);
	signal temp3 	: std_logic_vector(1 downto 0);
begin

	Inst_Mux_4_1: Mux_4_1 PORT MAP(
		a0 => dst0,
		a1 => dst1,
		a2 => dst2,
		a3 => dst3,
		sel => sel,
		u => d
	);

	Inst_Cell_0: Cell PORT MAP(
		en => en,
		a0 => data0,
		a1 => data1,
		s => sel(0),
		d => d(1),
		u0 => temp0,
		u1 => temp1
	);
	
	Inst_Cell_1: Cell PORT MAP(
		en => en,
		a0 => temp0,
		a1 => temp2,
		s => sel(0),
		d => d(0),
		u0 => out0,
		u1 => out1
	);
	
	Inst_Cell_2: Cell PORT MAP(
		en => en,
		a0 => data2,
		a1 => data3,
		s => sel(1),
		d => d(1),
		u0 => temp2,
		u1 => temp3
	);
	
	Inst_Cell_3: Cell PORT MAP(
		en => en,
		a0 => temp1,
		a1 => temp3,
		s => sel(1),
		d => d(0),
		u0 => out2,
		u1 => out3
	);
end structural;