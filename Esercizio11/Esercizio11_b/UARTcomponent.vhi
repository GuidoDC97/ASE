
-- VHDL Instantiation Created from source file UARTcomponent.vhd -- 11:03:57 01/22/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UARTcomponent
	PORT(
		RXD : IN std_logic;
		CLK : IN std_logic;
		DBIN : IN std_logic_vector(7 downto 0);
		RD : IN std_logic;
		WR : IN std_logic;
		RST : IN std_logic;    
		RDA : INOUT std_logic;      
		TXD : OUT std_logic;
		DBOUT : OUT std_logic_vector(7 downto 0);
		TBE : OUT std_logic;
		PE : OUT std_logic;
		FE : OUT std_logic;
		OE : OUT std_logic
		);
	END COMPONENT;

	Inst_UARTcomponent: UARTcomponent PORT MAP(
		TXD => ,
		RXD => ,
		CLK => ,
		DBIN => ,
		DBOUT => ,
		RDA => ,
		TBE => ,
		RD => ,
		WR => ,
		PE => ,
		FE => ,
		OE => ,
		RST => 
	);


