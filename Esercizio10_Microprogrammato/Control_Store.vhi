
-- VHDL Instantiation Created from source file Control_Store.vhd -- 22:14:03 02/20/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Control_Store
	PORT(
		address : IN std_logic_vector(2 downto 0);          
		word : OUT std_logic_vector(10 downto 0)
		);
	END COMPONENT;

	Inst_Control_Store: Control_Store PORT MAP(
		address => ,
		word => 
	);


