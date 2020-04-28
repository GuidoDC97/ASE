--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:08:44 01/31/2020
-- Design Name:   
-- Module Name:   C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio6/Contatore_mod16_seriale/Contatore_mod16_seriale_on_board_tb.vhd
-- Project Name:  Contatore_mod16_seriale
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Contatore_mod16_seriale_on_board
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
 
ENTITY Contatore_mod16_seriale_on_board_tb IS
END Contatore_mod16_seriale_on_board_tb;
 
ARCHITECTURE behavior OF Contatore_mod16_seriale_on_board_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Contatore_mod16_seriale_on_board
    PORT(
         clock : IN  std_logic;
         btn_reset : IN  std_logic;
         btn_incr : IN  std_logic;
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal btn_reset : std_logic := '0';
   signal btn_incr : std_logic := '0';

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Contatore_mod16_seriale_on_board PORT MAP (
          clock => clock,
          btn_reset => btn_reset,
          btn_incr => btn_incr,
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
		btn_incr <= '1';
		wait for 20 ns;
		btn_incr <= '0';
		wait for 20 ns;
		
		btn_incr <= '1';
		wait for 20 ns;
		btn_incr <= '0';
		wait for 20 ns;
		
		btn_incr <= '1';
		wait for 20 ns;
		btn_incr <= '0';
		wait for 20 ns;
		
		btn_incr <= '1';
		wait for 20 ns;
		btn_incr <= '0';
		wait for 20 ns;
		
		btn_reset <= '1';
		wait for 20 ns;
		btn_reset <= '0';
		
      wait;
   end process;

END;
