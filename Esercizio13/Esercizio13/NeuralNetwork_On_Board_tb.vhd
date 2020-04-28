LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY NeuralNetwork_On_Board_tb IS
END NeuralNetwork_On_Board_tb;
 
ARCHITECTURE behavior OF NeuralNetwork_On_Board_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NeuralNetwork_On_Board
    PORT(
         CLOCK : IN  std_logic;
         RESET : IN  std_logic;
         SWITCH : IN  std_logic_vector(7 downto 0);
         BTN_LOAD : IN  std_logic;
         BTN_START : IN  std_logic;
         LED : OUT  std_logic;
         ANODES : OUT  std_logic_vector(3 downto 0);
         CATHODES : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal SWITCH : std_logic_vector(7 downto 0) := (others => '0');
   signal BTN_LOAD : std_logic := '0';
   signal BTN_START : std_logic := '0';

 	--Outputs
   signal LED : std_logic;
   signal ANODES : std_logic_vector(3 downto 0);
   signal CATHODES : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NeuralNetwork_On_Board PORT MAP (
          CLOCK => CLOCK,
          RESET => RESET,
          SWITCH => SWITCH,
          BTN_LOAD => BTN_LOAD,
          BTN_START => BTN_START,
          LED => LED,
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
		SWITCH <= "00100010"; -- 2 2 --> 10
		BTN_LOAD	<= '1';
		
      wait for 12 ms;

		BTN_LOAD	<= '0';
		BTN_START <= '1';

      wait for 12 ms;

		BTN_START <= '0';

		wait for 50 ms;

		SWITCH <= "00100001"; -- 2 1 --> 8 
		BTN_LOAD	<= '1';
		
      wait for 12 ms;

		BTN_LOAD	<= '0';
		BTN_START <= '1';

      wait for 12 ms;

		BTN_START <= '0';
		
		wait for 50 ms;

		SWITCH <= "00010001"; -- 1 1 --> 6 
		BTN_LOAD	<= '1';
		 
      wait for 12 ms;

		BTN_LOAD	<= '0';
		BTN_START <= '1';

      wait for 12 ms;

		BTN_START <= '0';
		
		wait for 50 ms;

		SWITCH <= "01110111"; -- 7 7 --> 30 
		BTN_LOAD	<= '1';
		
      wait for 12 ms;

		BTN_LOAD	<= '0';
		BTN_START <= '1';

      wait for 12 ms;

		BTN_START <= '0';

--############################################################################

-- TESTBENCH PER ARCHITETTURA PIPELINED RETE NEURALE.

--############################################################################
      -- insert stimulus here 
--		SWITCH <= "00100010"; -- 2 2 --> 10
--		BTN_LOAD	<= '1';
--		BTN_START <= '1';
--      wait for 5 ms;
--
--		BTN_LOAD	<= '0';
--		
--		wait for 2 ms;
--
--		SWITCH <= "00100001"; -- 2 1 --> 8 
--		BTN_LOAD	<= '1';
--		
--      wait for 5 ms;
--
--		BTN_LOAD	<= '0';
--
--
--      wait for 12 ms;
--
--		BTN_START <= '0';
--		
--		wait for 50 ms;
      wait;
   end process;

END;
