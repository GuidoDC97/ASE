LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ShiftRegiste_on_board_tb IS
END ShiftRegiste_on_board_tb;
 
ARCHITECTURE behavior OF ShiftRegiste_on_board_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT ShiftRegister_on_board
    PORT(
         X : IN  std_logic_vector(7 downto 0);
         CLK : IN  std_logic;
         SHIFT : IN  std_logic;
         RESET : IN  std_logic;
         LOAD : IN  std_logic;
         Y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(7 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal SHIFT : std_logic := '0';
   signal RESET : std_logic := '0';
   signal LOAD : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftRegister_on_board PORT MAP (
          X => X,
          CLK => CLK,
          SHIFT => SHIFT,
          RESET => RESET,
          LOAD => LOAD,
          Y => Y
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 
		X <= "00011100";
		LOAD <= '1';
		
		wait for 20 ms;
		
		LOAD <= '0';
		
		wait for 20 ms;
		
		RESET <= '1'; 
		
		wait for 20 ms;
		
		RESET <= '0';
		




      wait;
   end process;

END;
