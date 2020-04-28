--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:45:45 11/25/2019
-- Design Name:   
-- Module Name:   C:/Users/fabio/Desktop/Elaborato/Esercizio5/ShiftRegister_tb.vhd
-- Project Name:  Esercizio5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ShiftRegister
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
 
ENTITY ShiftRegister_tb IS
END ShiftRegister_tb;
 
ARCHITECTURE behavior OF ShiftRegister_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ShiftRegister
    PORT(
         X : IN  std_logic_vector(0 to 7);
         ENABLE_SH : IN  std_logic;
         RESET : IN  std_logic;
         LOAD : IN  std_logic;
         Y : OUT  std_logic_vector(0 to 7)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(0 to 7) := (others => '0');
   signal ENABLE_SH : std_logic := '0';
   signal RESET : std_logic := '0';
   signal LOAD : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(0 to 7);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ShiftRegister PORT MAP (
          X => X,
			 ENABLE_SH => ENABLE_SH,
          RESET => RESET,
          LOAD => LOAD,
          Y => Y
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for CLK_period*10;

      -- insert stimulus here
		RESET <= '0';
		
		wait for 5 ns;
		
		X <= "00010001";
		
		wait for 5 ns;

		LOAD <= '1';
		
		wait for 5 ns;

		ENABLE_SH <= '1';	-- Essendo LOAD = 1 viene caricato X
		
		wait for 5 ns;
		
		LOAD <= '0';		
		ENABLE_SH <= '0';
		
		wait for 5 ns;

		ENABLE_SH <= '1'; -- Essendo LOAD = 0 vengono shiftate i bit del registro

		wait for 5 ns;

		ENABLE_SH <= '0';

      wait;
   end process;

END;
