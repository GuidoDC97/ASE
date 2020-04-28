
-- VHDL Instantiation Created from source file Debounce.vhd -- 12:11:30 01/22/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Debounce
	PORT(
		CLOCK : IN std_logic;
		BTN_RESET : IN std_logic;
		BTN_LOAD : IN std_logic;          
		LOAD : OUT std_logic
		);
	END COMPONENT;

	Inst_Debounce: Debounce PORT MAP(
		CLOCK => ,
		BTN_RESET => ,
		BTN_LOAD => ,
		LOAD => 
	);


