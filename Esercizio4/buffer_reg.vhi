
-- VHDL Instantiation Created from source file buffer_reg.vhd -- 12:23:05 02/01/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT buffer_reg
	PORT(
		clock : IN std_logic;
		reset : IN std_logic;
		load_value : IN std_logic;
		in_value : IN std_logic_vector(3 downto 0);          
		value : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_buffer_reg: buffer_reg PORT MAP(
		clock => ,
		reset => ,
		load_value => ,
		in_value => ,
		value => 
	);


