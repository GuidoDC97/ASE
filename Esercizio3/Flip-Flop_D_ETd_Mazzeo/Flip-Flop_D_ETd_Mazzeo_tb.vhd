--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:43:13 10/28/2019
-- Design Name:   
-- Module Name:   C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio 3/D_et_MAZZEO/D_et_Mazzeo_tb.vhd
-- Project Name:  D_et_Mazzeo.vhd
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D_et_MAZZEO
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
 
ENTITY D_ETd_Mazzeo_tb IS
END D_ETd_Mazzeo_tb;
 
ARCHITECTURE behavioral OF D_ETd_Mazzeo_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT D_ETd_Mazzeo
    PORT(
         D 		: IN  std_logic;
         CLK 	: IN  std_logic;
         Q2 	: OUT  std_logic;
         nQ2 	: OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D_tb 	: std_logic := '0';
   signal CLK_tb	: std_logic := '0';

 	--Outputs
   signal Q2_tb 	: std_logic;
   signal nQ2_tb 	: std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D_ETd_Mazzeo PORT MAP (
          D 	=> D_tb,
          CLK 	=> CLK_tb,
          Q2 	=> Q2_tb,
          nQ2 	=> nQ2_tb
        );

   -- Clock process definitions
   Clk_process :process
   begin
		CLK_tb <= '0';
		wait for CLK_period/2;
		CLK_tb <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc:process
	
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      wait for CLK_period*10;
			
      -- insert stimulus here 
		wait for 2.5 ns;
		D_tb <= '1';
		wait for CLK_period;
		
		D_tb <= '0';
		wait for 1 ns;
		
		D_tb <= '1';
		wait for 3 ns;
		
		D_tb <= '1';
		wait for 3 ns; --- 4ns
		
		D_tb <= '0';	
		
      wait;
   end process;

END behavioral;
