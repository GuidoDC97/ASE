
-- VHDL Instantiation Created from source file Counter.vhd -- 11:58:27 01/28/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Counter
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		ENABLE : IN std_logic;
		INIT : IN std_logic;          
		COUNT : OUT std_logic;
		VALUE : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_Counter: Counter PORT MAP(
		CLOCK => ,
		RESET => ,
		ENABLE => ,
		INIT => ,
		COUNT => ,
		VALUE => 
	);


