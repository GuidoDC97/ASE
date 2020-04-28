LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY MUX_8_1_Nbit_tb IS
END MUX_8_1_Nbit_tb;
 
ARCHITECTURE behavior OF MUX_8_1_Nbit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_8_1_Nbit
	 GENERIC(N : integer);
    PORT(
         X0 : IN  std_logic_vector(0 downto 0);
         X1 : IN  std_logic_vector(0 downto 0);
         X2 : IN  std_logic_vector(0 downto 0);
         X3 : IN  std_logic_vector(0 downto 0);
         X4 : IN  std_logic_vector(0 downto 0);
         X5 : IN  std_logic_vector(0 downto 0);
         X6 : IN  std_logic_vector(0 downto 0);
         X7 : IN  std_logic_vector(0 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         Y : OUT  std_logic_vector(0 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X0 : std_logic_vector(0 downto 0) := (others => '0');
   signal X1 : std_logic_vector(0 downto 0) := (others => '0');
   signal X2 : std_logic_vector(0 downto 0) := (others => '0');
   signal X3 : std_logic_vector(0 downto 0) := (others => '0');
   signal X4 : std_logic_vector(0 downto 0) := (others => '0');
   signal X5 : std_logic_vector(0 downto 0) := (others => '0');
   signal X6 : std_logic_vector(0 downto 0) := (others => '0');
   signal X7 : std_logic_vector(0 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(0 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_8_1_Nbit 
	GENERIC MAP (N => 1)
	PORT MAP (
          X0 => X0,
          X1 => X1,
          X2 => X2,
          X3 => X3,
          X4 => X4,
          X5 => X5,
          X6 => X6,
          X7 => X7,
          S => S,
          Y => Y
        );

  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		X0 <= "1";
      X1 <= "1";
      X2 <= "0";
      X3 <= "0";
      X4 <= "0";
      X5 <= "0";
      X6 <= "1";
      X7 <= "0";
			 
		S <= "010"; -- Seleziona X2
		
		wait for 50 ns;
		assert  Y = "0"
		report "errore0"
		severity failure;

		X0 <= "1";
      X1 <= "0";
      X2 <= "0";
      X3 <= "1";
      X4 <= "0";
      X5 <= "0";
      X6 <= "1";
      X7 <= "0";
			 
		S <= "011"; -- Seleziona X6
		
		wait for 50 ns;
		assert  Y = "1"
		report "errore0"
		severity failure;			

      wait;
   end process;

END;
