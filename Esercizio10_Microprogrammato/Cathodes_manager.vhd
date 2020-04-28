----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:29:17 22/10/2012 
-- Design Name: 
-- Module Name:    cathode_manager - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CATHODES_MANAGER is
    port ( COUNTER	: in  STD_LOGIC_VECTOR (1 downto 0);
			  ERR			: in	STD_LOGIC;
           VALUE		: in  STD_LOGIC_VECTOR (15 downto 0);
           CATHODES	: out  STD_LOGIC_VECTOR (7 downto 0));
end CATHODES_MANAGER;

architecture behavioral of CATHODES_MANAGER is

	constant zero   : STD_LOGIC_VECTOR(6 downto 0) := "1000000";
	constant one    : STD_LOGIC_VECTOR(6 downto 0) := "1111001"; 
	constant two    : STD_LOGIC_VECTOR(6 downto 0) := "0100100"; 
	constant three  : STD_LOGIC_VECTOR(6 downto 0) := "0110000"; 
	constant four   : STD_LOGIC_VECTOR(6 downto 0) := "0011001"; 
	constant five   : STD_LOGIC_VECTOR(6 downto 0) := "0010010"; 
	constant six    : STD_LOGIC_VECTOR(6 downto 0) := "0000010"; 
	constant seven  : STD_LOGIC_VECTOR(6 downto 0) := "1111000"; 
	constant eight  : STD_LOGIC_VECTOR(6 downto 0) := "0000000"; 
	constant nine   : STD_LOGIC_VECTOR(6 downto 0) := "0010000"; 
	constant a   	 : STD_LOGIC_VECTOR(6 downto 0) := "0001000"; 
	constant b      : STD_LOGIC_VECTOR(6 downto 0) := "0000011"; 
	constant c      : STD_LOGIC_VECTOR(6 downto 0) := "1000110"; 
	constant d      : STD_LOGIC_VECTOR(6 downto 0) := "0100001"; 
	constant e      : STD_LOGIC_VECTOR(6 downto 0) := "0000110"; 
	constant f      : STD_LOGIC_VECTOR(6 downto 0) := "0001110";
	constant r      : STD_LOGIC_VECTOR(6 downto 0) := "0101111";
	constant empty  : STD_LOGIC_VECTOR(6 downto 0) := "1111111";

	alias DIGIT_0 is VALUE (3 downto 0);	
	alias DIGIT_1 is VALUE (7 downto 4);	
	alias DIGIT_2 is VALUE (11 downto 8);	
	alias DIGIT_3 is VALUE (15 downto 12);

	signal CATHODES_FOR_DIGIT 	: STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
	signal NIBBLE 					: STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
	signal DOT 					: STD_LOGIC;

	begin 

		DIGIT_SWITCHING: process(COUNTER, VALUE, ERR)
		begin
			case COUNTER is				
				when "00" =>	
					if(ERR = '0') then
						NIBBLE <= '0' & DIGIT_0;
						DOT <= '0';
					elsif(ERR = '1') then
						NIBBLE <= "11101";
						DOT <= '0';
					end if;
				when "01" =>
					if(ERR = '0') then
						NIBBLE <= '0' & DIGIT_1;
						DOT <= '0';
					elsif(ERR = '1') then
						NIBBLE <= "11110";
						DOT <= '1';
					end if;
				when "10" =>
					if(ERR = '0') then
						NIBBLE <= '0' & DIGIT_2;
						DOT <= '1';
					elsif(ERR = '1') then
						NIBBLE <= "11110";
						DOT <= '0';
					end if;
				when "11" =>
					if(ERR = '0') then
						NIBBLE <= '0' & DIGIT_3;
						DOT <= '0';
					elsif(ERR = '1') then
						NIBBLE <= "11111";
						DOT <= '0';
					end if;
				when others =>
					NIBBLE <= (others => '0');
			end case;
		end process;
					 
		SEVENT_SEGMENT_DECODER_PROCESS: process(nibble) 
		  begin 
			 case NIBBLE is 
				when "00000" => CATHODES_FOR_DIGIT <= zero; 
				when "00001" => CATHODES_FOR_DIGIT <= one; 
				when "00010" => CATHODES_FOR_DIGIT <= two; 
				when "00011" => CATHODES_FOR_DIGIT <= three; 
				when "00100" => CATHODES_FOR_DIGIT <= four; 
				when "00101" => CATHODES_FOR_DIGIT <= five; 
				when "00110" => CATHODES_FOR_DIGIT <= six; 
				when "00111" => CATHODES_FOR_DIGIT <= seven; 
				when "01000" => CATHODES_FOR_DIGIT <= eight; 
				when "01001" => CATHODES_FOR_DIGIT <= nine; 
				when "01010" => CATHODES_FOR_DIGIT <= a; 
				when "01011" => CATHODES_FOR_DIGIT <= b; 
				when "01100" => CATHODES_FOR_DIGIT <= c; 
				when "01101" => CATHODES_FOR_DIGIT <= d; 
				when "01110" => CATHODES_FOR_DIGIT <= e; 
				when "01111" => CATHODES_FOR_DIGIT <= f;
				when "11111" => CATHODES_FOR_DIGIT <= e;
				when "11110" => CATHODES_FOR_DIGIT <= r;
				when "11101" => CATHODES_FOR_DIGIT <= empty;
				when others => CATHODES_FOR_DIGIT <= (others => '0');
			 end case; 
		  end process SEVENT_SEGMENT_DECODER_PROCESS;
		
			
		CATHODES <= not(DOT) & CATHODES_FOR_DIGIT;	
		
end behavioral;