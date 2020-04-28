
-- VHDL Instantiation Created from source file NeuralNetwork_On_Board.vhd -- 11:16:44 02/22/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT NeuralNetwork_On_Board
	PORT(
		CLOCK : IN std_logic;
		RESET : IN std_logic;
		SWITCH : IN std_logic_vector(7 downto 0);
		BTN_LOAD : IN std_logic;
		BTN_START : IN std_logic;          
		LED : OUT std_logic;
		ANODES : OUT std_logic_vector(3 downto 0);
		CATHODES : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_NeuralNetwork_On_Board: NeuralNetwork_On_Board PORT MAP(
		CLOCK => ,
		RESET => ,
		SWITCH => ,
		BTN_LOAD => ,
		BTN_START => ,
		LED => ,
		ANODES => ,
		CATHODES => 
	);


