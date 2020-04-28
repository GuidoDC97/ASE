library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity cathodes_manager is
    Port ( value : in  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
end cathodes_manager;

architecture Behavioral of cathodes_manager is

	constant zero   : std_logic_vector(6 downto 0) := "1000000";	-- Rappresentano la configurazione dei catodi per ottenere
	constant one    : std_logic_vector(6 downto 0) := "1111001"; 	-- il numero corrispondente (7 bit come il numero dei segmenti)
	constant two    : std_logic_vector(6 downto 0) := "0100100"; 
	constant three  : std_logic_vector(6 downto 0) := "0110000"; 
	constant four   : std_logic_vector(6 downto 0) := "0011001"; 
	constant five   : std_logic_vector(6 downto 0) := "0010010"; 
	constant six    : std_logic_vector(6 downto 0) := "0000010"; 
	constant seven  : std_logic_vector(6 downto 0) := "1111000"; 
	constant eight  : std_logic_vector(6 downto 0) := "0000000"; 
	constant nine   : std_logic_vector(6 downto 0) := "0010000"; 
	constant a   	 : std_logic_vector(6 downto 0) := "0001000"; 
	constant b      : std_logic_vector(6 downto 0) := "0000011"; 
	constant c      : std_logic_vector(6 downto 0) := "1000110"; 
	constant d      : std_logic_vector(6 downto 0) := "0100001"; 
	constant e      : std_logic_vector(6 downto 0) := "0000110"; 
	constant f      : std_logic_vector(6 downto 0) := "0001110";

	signal cathodes_for_digit : std_logic_Vector(6 downto 0) := (others => '0');

	begin 
				 
		seven_segment_decoder_process: process(value) 
		  begin 
			 case value is 
				when "0000" => cathodes_for_digit <= zero; 
				when "0001" => cathodes_for_digit <= one; 
				when "0010" => cathodes_for_digit <= two; 
				when "0011" => cathodes_for_digit <= three; 
				when "0100" => cathodes_for_digit <= four; 
				when "0101" => cathodes_for_digit <= five; 
				when "0110" => cathodes_for_digit <= six; 
				when "0111" => cathodes_for_digit <= seven; 
				when "1000" => cathodes_for_digit <= eight; 
				when "1001" => cathodes_for_digit <= nine; 
				when "1010" => cathodes_for_digit <= a; 
				when "1011" => cathodes_for_digit <= b; 
				when "1100" => cathodes_for_digit <= c; 
				when "1101" => cathodes_for_digit <= d; 
				when "1110" => cathodes_for_digit <= e; 
				when "1111" => cathodes_for_digit <= f;
				when others => cathodes_for_digit <= (others => '0');
			 end case; 
		  end process seven_segment_decoder_process;
		  
		cathodes <= not '0' & cathodes_for_digit;	-- 0 indica il bit dedicato al dot della cifra accesa


end Behavioral;