LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MAC_multiplier_tb IS
END MAC_multiplier_tb;
 
ARCHITECTURE behavior OF MAC_multiplier_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT MAC_multiplier
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Y : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MAC_multiplier PORT MAP (
          A => A,
          B => B,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 30 ns.
      wait for 30 ns;	

      -- insert stimulus here 
		A <= "00000010";
		B <= "00000010";
		wait for 10 ns;
		
		assert Y = "0000000000000100"
		report "errore1"
		severity failure;
		
		A <= "00000001";
		B <= "00000010";
		wait for 10 ns;
		
		assert Y = "0000000000000010"
		report "errore2"
		severity failure;
		
		
		A <= "00000011";
		B <= "00000110";
		wait for 10 ns;
		 
		assert Y = "0000000000010010"
		report "errore3"
		severity failure;

      wait;
   end process;

END;
