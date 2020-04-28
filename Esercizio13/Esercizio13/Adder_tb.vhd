--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:45:01 01/25/2020
-- Design Name:   
-- Module Name:   C:/Users/fabio/Desktop/Elaborato_ASE/Esercizio13/Adder_tb.vhd
-- Project Name:  Esercizio13
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Adder_tb IS
END Adder_tb;
 
ARCHITECTURE behavior OF Adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder
    PORT(
         OP1 : IN  std_logic_vector(7 downto 0);
         OP2 : IN  std_logic_vector(7 downto 0);
         RIS : OUT  std_logic_vector(7 downto 0);
         ERR : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal OP1 : std_logic_vector(7 downto 0) := (others => '0');
   signal OP2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal RIS : std_logic_vector(7 downto 0);
   signal ERR : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder PORT MAP (
          OP1 => OP1,
          OP2 => OP2,
          RIS => RIS,
          ERR => ERR
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for <clock>_period*10;

      -- insert stimulus here 
		OP1 <= "00000010";	-- 2
		OP2 <= "11111110";	-- -2
		
      wait for 100 ns;	
		
		OP1 <= "00000010";	-- 2
		OP2 <= "00000010";	-- 2
		
		wait for 100 ns;	
		
		OP1 <= "01111111";	-- 127
		OP2 <= "01111111";	-- 127
		
      wait for 100 ns;	
		
		OP1 <= "10000000";	-- -128
		OP2 <= "10000000";	-- -128

      wait;
   end process;

END;
