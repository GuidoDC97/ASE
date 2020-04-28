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
 
ENTITY D_MS_ideale_tb IS
END D_MS_ideale_tb;
 
ARCHITECTURE behavioral OF D_MS_ideale_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT D_MS_ideale
    PORT(
         D3 	: IN  std_logic;
         Clk3 	: IN  std_logic;
         Q3 	: OUT  std_logic;
         nQ3 	: OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D3_tb 	: std_logic;
   signal CLK3_tb	: std_logic;

 	--Outputs
   signal Q3_tb 	: std_logic;
   signal nQ3_tb 	: std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D_MS_ideale PORT MAP (
          D3 		=> D3_tb,
          CLK3		=> CLK3_tb,
          Q3 		=> Q3_tb,
          nQ3 		=> nQ3_tb
        );

   -- Clock process definitions
   Clk_process :process
   begin
		CLK3_tb <= '0';
		wait for CLK_period/2;
		CLK3_tb <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc:process
	
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      wait for Clk_period*10;
			
      -- insert stimulus here 
		wait for 2.5 ns;
		D3_tb <= '1';
		wait for Clk_period;
		
		D3_tb <= '0';
		wait for 1 ns;
		
		D3_tb <= '1';
		wait for 3 ns;
		
		D3_tb <= '1';
		wait for 4 ns;
		
		D3_tb <= '0';	
		
      wait;
   end process;

END behavioral;
