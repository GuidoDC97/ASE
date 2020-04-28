LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Digital_watch_tb IS
END Digital_watch_tb;
 
ARCHITECTURE behavior OF Digital_watch_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Digital_watch
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         load_sec : IN  std_logic;
         load_min : IN  std_logic;
         load_h : IN  std_logic;
         sec_in : IN  std_logic_vector(5 downto 0);
         min_in : IN  std_logic_vector(5 downto 0);
         h_in : IN  std_logic_vector(4 downto 0);
         sec_out : OUT  std_logic_vector(5 downto 0);
         min_out : OUT  std_logic_vector(5 downto 0);
         h_out : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal load_sec : std_logic := '0';
   signal load_min : std_logic := '0';
   signal load_h : std_logic := '0';
   signal sec_in : std_logic_vector(5 downto 0) := (others => '0');
   signal min_in : std_logic_vector(5 downto 0) := (others => '0');
   signal h_in : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal sec_out : std_logic_vector(5 downto 0);
   signal min_out : std_logic_vector(5 downto 0);
   signal h_out : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Digital_watch PORT MAP (
          clock => clock,
          reset => reset,
          load_sec => load_sec,
          load_min => load_min,
          load_h => load_h,
          sec_in => sec_in,
          min_in => min_in,
          h_in => h_in,
          sec_out => sec_out,
          min_out => min_out,
          h_out => h_out
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
      -- hold reset state for 100 ns.
      wait for 30 ms;	

      -- insert stimulus here 
		reset <= '1';
		
		wait for 30 ms;

		reset <= '0';

		wait for 70 ms;
		
		sec_in <= "111011";
		min_in <= "111011";
		h_in <= "10111"; 	
		
		load_sec <= '1';
		load_min <= '1';
		load_h <= '1'; 

		wait for 70 ms;
		
		load_sec <= '0';
		load_min <= '0';
		load_h <= '0'; 

      wait;
   end process;

END;
