--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:15:38 02/02/2020
-- Design Name:   
-- Module Name:   C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio9/MAC_multiplier_on_board_tb.vhd
-- Project Name:  Esercizio9
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MAC_multiplier_on_board
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
 
ENTITY MAC_multiplier_on_board_tb IS
END MAC_multiplier_on_board_tb;
 
ARCHITECTURE behavior OF MAC_multiplier_on_board_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MAC_multiplier_on_board
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         load_op_0 : IN  std_logic;
         load_op_1 : IN  std_logic;
         in_byte : IN  std_logic_vector(7 downto 0);
         btn_calc : IN  std_logic;
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal load_op_0 : std_logic := '0';
   signal load_op_1 : std_logic := '0';
   signal in_byte : std_logic_vector(7 downto 0) := (others => '0');
   signal btn_calc : std_logic := '0';

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MAC_multiplier_on_board PORT MAP (
          clock => clock,
          reset => reset,
          load_op_0 => load_op_0,
          load_op_1 => load_op_1,
          in_byte => in_byte,
          btn_calc => btn_calc,
          anodes => anodes,
          cathodes => cathodes
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
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
