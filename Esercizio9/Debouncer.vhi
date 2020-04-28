
-- VHDL Instantiation Created from source file Debouncer.vhd -- 17:36:06 02/01/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Debouncer
	PORT(
		clock : IN std_logic;
		reset_n : IN std_logic;
		load_op_0 : IN std_logic;
		load_op_1 : IN std_logic;
		in_byte : IN std_logic_vector(7 downto 0);          
		op_0 : OUT std_logic_vector(7 downto 0);
		op_1 : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Debouncer: Debouncer PORT MAP(
		clock => ,
		reset_n => ,
		load_op_0 => ,
		load_op_1 => ,
		in_byte => ,
		op_0 => ,
		op_1 => 
	);


