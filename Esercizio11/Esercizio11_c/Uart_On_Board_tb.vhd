LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY UART_On_Board_tb IS
END UART_On_Board_tb;
 
ARCHITECTURE behavior OF UART_On_Board_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_On_Board
    PORT(
         CLOCK : IN  std_logic;
         BTN_RESET : IN  std_logic;
         BTN_WR : IN  std_logic;
         BTN_RD : IN  std_logic;
         SWITCH : IN  std_logic_vector(7 downto 0);
         RXD : IN  std_logic;
         LED : OUT  std_logic_vector(7 downto 0);
         TXD : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal BTN_RESET : std_logic := '0';
   signal BTN_WR : std_logic := '0';
   signal BTN_RD : std_logic := '0';
   signal SWITCH : std_logic_vector(7 downto 0) := (others => '0');
   signal RXD : std_logic := '0';

 	--Outputs
   signal LED : std_logic_vector(7 downto 0);
   signal TXD : std_logic;

   -- Clock period definitions
   constant CLOCK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_On_Board PORT MAP (
          CLOCK => CLOCK,
          BTN_RESET => BTN_RESET,
          BTN_WR => BTN_WR,
          BTN_RD => BTN_RD,
          SWITCH => SWITCH,
          RXD => RXD,
          LED => LED,
          TXD => TXD
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
	
		RXD <= '1';

      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for CLOCK_period*10;

      -- insert stimulus here 
		wait for 30 ms;		-- 1 ms per farlo "funzionare" post route
								-- 30 ms per farlo funzionare behavioural
		
		SWITCH <= "01011101";
		
--      wait for CLOCK_period*2;
		wait for 30 ms;
		
		BTN_WR <= '1';
		
		wait for 30 ms;
		
		BTN_WR <= '0';
		
		wait for 30 ms;
		
		BTN_RD <= '1';		
		
		wait for 30 ms;

		RXD <= '0';
		wait for 4.64 us;		
		RXD <= '1';
		wait for 4.64 us;
		RXD <= '0';
		wait for 4.64 us;
		RXD <= '1';
		wait for 4.64 us;
		RXD <= '0';
		wait for 4.64 us;
		RXD <= '0';
		wait for 4.64 us;
		RXD <= '0';
		wait for 4.64 us;
		RXD <= '0';
		wait for 4.64 us;
		RXD <= '0';
		wait for 4.64 us;
		RXD <= '1';
		wait for 4.64 us;
		RXD <= '1';
		wait for 4.64 us;	
				
		wait for 30 ms;
		
		BTN_RD <= '0';	
		
      wait;
   end process;

END;
