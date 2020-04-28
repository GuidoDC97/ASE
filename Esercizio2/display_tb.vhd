LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY display_tb IS
END display_tb;
 
ARCHITECTURE behavior OF display_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT display_seven_segments
    PORT(
         value : IN  std_logic_vector(3 downto 0);
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal value : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: display_seven_segments PORT MAP (
          value => value,
          anodes => anodes,
          cathodes => cathodes
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here
		value <= x"A";
		
		wait for 10 ns;

		assert anodes = not "0001" and cathodes = "10001000"
		report "errore1"
		severity failure; 
		
		
		value <= x"8";
		
		wait for 10 ns;

		assert anodes = not "0001" and cathodes = "10000000"
		report "errore1"
		severity failure;

		value <= x"5";

		wait for 10 ns;

		assert anodes = not "0001" and cathodes = "10010010"
		report "errore1"
		severity failure;
		
      wait;
   end process;

END;
