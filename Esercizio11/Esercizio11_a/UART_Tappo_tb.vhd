LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY UART_Tappo_tb IS
END UART_Tappo_tb;
 
ARCHITECTURE behavior OF UART_Tappo_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_Tappo
    PORT(
         CLOCK : IN  std_logic;
         RESET : IN  std_logic;
         LOAD : IN  std_logic;
         IN_VALUE : IN  std_logic_vector(7 downto 0);
         OUT_VALUE : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal LOAD : std_logic := '0';
   signal IN_VALUE : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal OUT_VALUE : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_Tappo PORT MAP (
          CLOCK => CLOCK,
          RESET => RESET,
          LOAD => LOAD,
          IN_VALUE => IN_VALUE,
          OUT_VALUE => OUT_VALUE
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
      wait for 100 ms;	

      wait for CLOCK_period*10;

      -- insert stimulus here 
		IN_VALUE <= "00000011";
		LOAD <= '1';

      wait for 6 ms;
		
		LOAD <= '0';


      wait for 100 ms;

		
		IN_VALUE <= "00000101";
		LOAD <= '1';

      wait for 6 ms;
		
		LOAD <= '0';

      wait;
   end process;

END;
