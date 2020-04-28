
-- VHDL Instantiation Created from source file Debouncer.vhd -- 19:19:59 01/30/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Debouncer
	PORT(
		CLK : IN std_logic;
		SHIFT_IN : IN std_logic;
		LOAD : IN std_logic;          
		SHIFT_OUT : OUT std_logic;
		LOAD_OUT : OUT std_logic
		);
	END COMPONENT;

	Inst_Debouncer: Debouncer PORT MAP(
		CLK => ,
		SHIFT_IN => ,
		LOAD => ,
		SHIFT_OUT => ,
		LOAD_OUT => 
	);


