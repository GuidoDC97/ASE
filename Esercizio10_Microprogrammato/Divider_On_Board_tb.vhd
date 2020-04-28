LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Divider_On_Board_tb IS
END Divider_On_Board_tb;
 
ARCHITECTURE behavior OF Divider_On_Board_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Divider_On_Board
    PORT(
         CLOCK : IN  std_logic;
         RESET : IN  std_logic;
         SWITCH : IN  std_logic_vector(3 downto 0);
         BTN_SAQ : IN  std_logic;
         BTN_M : IN  std_logic;
         BTN_START : IN  std_logic;
         ANODES : OUT  std_logic_vector(3 downto 0);
         CATHODES : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
     

   --Inputs
   signal CLOCK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal SWITCH : std_logic_vector(3 downto 0) := (others => '0');
   signal BTN_SAQ : std_logic := '0';
   signal BTN_M : std_logic := '0';
   signal BTN_START : std_logic := '0';

 	--Outputs
   signal ANODES : std_logic_vector(3 downto 0);
   signal CATHODES : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Divider_On_Board PORT MAP (
          CLOCK => CLOCK,
          RESET => RESET,
          SWITCH => SWITCH,
          BTN_SAQ => BTN_SAQ,
          BTN_M => BTN_M,
          BTN_START => BTN_START,
          ANODES => ANODES,
          CATHODES => CATHODES
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		wait for CLOCK_period/2;
		CLOCK <= '1';
		wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLOCK_period*10;

      -- insert stimulus here 
		SWITCH <= "1000";	-- 8
		BTN_SAQ	<= '1';

      wait for 12 ms;	

		SWITCH <= "0100";	-- 4
		BTN_M	<= '1';
		BTN_SAQ	<= '0';

      wait for 12 ms;	
		
		BTN_START	<= '1';
		BTN_M	<= '0';

      wait for 12 ms;	
		BTN_START	<= '0';
		
		
		wait for 200 ms;	

		
		SWITCH <= "1001";	-- 9
		BTN_SAQ	<= '1';

      wait for 12 ms;	

		SWITCH <= "0100";	-- 4
		BTN_M	<= '1';
		BTN_SAQ	<= '0';

      wait for 12 ms;	
		
		BTN_START	<= '1';
		BTN_M	<= '0';

      wait for 12 ms;	
		BTN_START	<= '0';


		wait for 200 ms;	

		
		SWITCH <= "1111";	-- 15
		BTN_SAQ	<= '1';

      wait for 12 ms;	

		SWITCH <= "1010";	-- 10
		BTN_M	<= '1';
		BTN_SAQ	<= '0';

      wait for 12 ms;	
		
		BTN_START	<= '1';
		BTN_M	<= '0';

      wait for 12 ms;	
		BTN_START	<= '0';
		 
      wait;
   end process;

END;
