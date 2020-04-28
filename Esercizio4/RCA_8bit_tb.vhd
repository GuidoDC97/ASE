
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RCA_8bit_tb IS
END RCA_8bit_tb;
 
ARCHITECTURE behavior OF RCA_8bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RCA_8bit
    PORT(
         A1 : IN  std_logic_vector(7 downto 0);
         B1 : IN  std_logic_vector(7 downto 0);
         cin1 : IN  std_logic;
         enable : IN  std_logic;
         clock : IN  std_logic;
         S1 : OUT  std_logic_vector(7 downto 0);
         cout1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A1 : std_logic_vector(7 downto 0) := (others => '0');
   signal B1 : std_logic_vector(7 downto 0) := (others => '0');
   signal cin1 : std_logic := '0';
   signal enable : std_logic := '0';
   signal clock : std_logic := '0';

 	--Outputs
   signal S1 : std_logic_vector(7 downto 0);
   signal cout1 : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RCA_8bit PORT MAP (
          A1 => A1,
          B1 => B1,
          cin1 => cin1,
          enable => enable,
          clock => clock,
          S1 => S1,
          cout1 => cout1
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 5 ns.
      wait for 5 ns;	

      -- insert stimulus here 
		
		-- A1 = a7 a6 a5 a4 a3 a2 a1 a0
		-- B1 = b7 b6 b5 b4 b3 b2 b1 b0
		-- S1 = s7 s6 s5 s4 s3 s2 s1 s0
		-- cin1
		-- cout1
			
		A1  		<= "00000000";
		B1 		<= "00000000";
		cin1		<= '0';
		enable 	<= '1';
		wait for 9 ns; 
			
		assert S1 = "00000000" AND cout1 = '0'
		report "errore0"
		severity failure; 
		
		enable 	<= '0';
		wait for 1 ns;
		
		A1  		<= "00011000";
		B1 		<= "11000000";
		cin1		<= '0';
		wait for 9 ns; 
			
		assert S1 = "00000000" AND cout1 = '0'
		report "errore1"
		severity failure; 
		
		enable <= '1';
		wait for 1 ns;
		
		wait for 10 ns; 
			
		assert S1 = "11011000" AND cout1 = '0'
		report "errore2"
		severity failure;
		
		
		A1  	<= "00100001"; 
		B1 	<= "10001000";
		cin1	<= '1';
		wait for 10 ns; 
			
		wait for 1 ns;
		
		assert S1 = "10101010" AND cout1 = '0'
		report "errore3"
		severity failure;
		
		wait for 1 ns;

		enable <= '0';
		wait for 1 ns;
		
		A1  	<= "10000001";
		B1 	<= "10000010";
		cin1	<= '1'; 
		wait for 16 ns; 
		
		enable <= '1';
		wait for 2 ns;
		
		
		assert S1 = "00000100" AND cout1 = '1'
		report "errore4"
		severity failure;
		
      wait;
   end process;

END;
