
-- VHDL Instantiation Created from source file Debouncer.vhd -- 17:45:00 02/03/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Debouncer
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		BTN_LOAD : IN std_logic;          
		LOAD : OUT std_logic
		);
	END COMPONENT;

	Inst_Debouncer: Debouncer PORT MAP(
		CLOCK => ,
		RESET => ,
		BTN_LOAD => ,
		LOAD => 
	);


