
-- VHDL Instantiation Created from source file Control_Unit.vhd -- 22:16:23 02/20/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Control_Unit
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		START : IN std_logic;
		S_BUF : IN std_logic_vector(1 downto 0);
		COUNT : IN std_logic;          
		en_sh : OUT std_logic;
		en_ex : OUT std_logic;
		en_cnt : OUT std_logic;
		load_q : OUT std_logic;
		load_sa : OUT std_logic;
		sub : OUT std_logic
		);
	END COMPONENT;

	Inst_Control_Unit: Control_Unit PORT MAP(
		CLOCK => ,
		RESET => ,
		START => ,
		S_BUF => ,
		COUNT => ,
		en_sh => ,
		en_ex => ,
		en_cnt => ,
		load_q => ,
		load_sa => ,
		sub => 
	);


