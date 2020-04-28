
-- VHDL Instantiation Created from source file Control_Unit.vhd -- 11:55:34 01/22/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Control_Unit
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		LOAD : IN std_logic;
		TBE : IN std_logic;
		RDA : IN std_logic;
		SWITCH : IN std_logic_vector(7 downto 0);
		DBOUT : IN std_logic_vector(7 downto 0);          
		RD : OUT std_logic;
		WR : OUT std_logic;
		LED : OUT std_logic_vector(7 downto 0);
		DBIN : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Control_Unit: Control_Unit PORT MAP(
		CLOCK => ,
		RESET => ,
		LOAD => ,
		TBE => ,
		RD => ,
		RDA => ,
		SWITCH => ,
		DBOUT => ,
		WR => ,
		LED => ,
		DBIN => 
	);


