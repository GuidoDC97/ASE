LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Contatore_mod16_seriale_tb IS
END Contatore_mod16_seriale_tb;
 
ARCHITECTURE behavior OF Contatore_mod16_seriale_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Contatore_mod16_seriale
    PORT(
         count : IN  	std_logic;
         Reset : IN  	std_logic;
         value : OUT  	std_logic_vector(3 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal count : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal value : std_logic_vector(3 downto 0);
   constant count_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Contatore_mod16_seriale PORT MAP (
          count => count,
          Reset => Reset,
          value => value
        );

   -- Clock process definitions
   count_process :process
   begin
		count <= '0';
		wait for count_period/2;
		count <= '1';
		wait for count_period/2;
   end process; 
 

   -- Stimulus process
   stim_proc: process
   begin		 
      -- hold reset state for 10 ns.
      wait for 15 ns;	
		Reset <= '1';
		wait for 1 ns;
		Reset <= '0';
		
      wait;
   end process;

END;
