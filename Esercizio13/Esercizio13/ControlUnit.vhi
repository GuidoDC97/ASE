
-- VHDL Instantiation Created from source file ControlUnit.vhd -- 11:16:21 02/22/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ControlUnit
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		START : IN std_logic;          
		EN_HI : OUT std_logic;
		EN_OUT : OUT std_logic;
		EN_ERR : OUT std_logic
		);
	END COMPONENT;

	Inst_ControlUnit: ControlUnit PORT MAP(
		CLOCK => ,
		RESET => ,
		START => ,
		EN_HI => ,
		EN_OUT => ,
		EN_ERR => 
	);


