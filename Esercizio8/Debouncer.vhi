
-- VHDL Instantiation Created from source file Debouncer.vhd -- 11:05:24 02/01/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Debouncer
	PORT(
		clock : IN std_logic;
		reset : IN std_logic;
		load_sec : IN std_logic;
		load_min : IN std_logic;
		load_h : IN std_logic;
		in_value : IN std_logic_vector(5 downto 0);          
		sec : OUT std_logic_vector(5 downto 0);
		min : OUT std_logic_vector(5 downto 0);
		h : OUT std_logic_vector(4 downto 0);
		load_sec_out : OUT std_logic;
		load_min_out : OUT std_logic;
		load_h_out : OUT std_logic
		);
	END COMPONENT;

	Inst_Debouncer: Debouncer PORT MAP(
		clock => ,
		reset => ,
		load_sec => ,
		load_min => ,
		load_h => ,
		in_value => ,
		sec => ,
		min => ,
		h => ,
		load_sec_out => ,
		load_min_out => ,
		load_h_out => 
	);


