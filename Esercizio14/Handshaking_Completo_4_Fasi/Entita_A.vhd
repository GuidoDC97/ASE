--############################################################################

-- IMPLEMENTAZIONE DI PRINCIPIO DEL MODELLO DI HANDSHAKING COMPLETO A 4 FASI.
-- IN REALTà NON SINTETIZZABILE TRAMITE ISE.

--############################################################################

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Entita_A is
	port(
		data_ready : in std_logic;
		data_in : in std_logic_vector(7 downto 0);
		beta : in std_logic;
		alpha : out std_logic;
		data_out : out std_logic_vector(7 downto 0)
	);

end Entita_A;

architecture Behavioral of Entita_A is

begin
	
	handshaking : process 
	begin
	wait until data_ready = '1';
	--Sending data to receiver
	data_out <= data_in;
	alpha <= '1';
	wait until beta = '1';
	--Data picked by receiver
	alpha <= '0';
	end process handshaking;

end Behavioral;


--############################################################################

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Entita_B is
	port(	
		data_in : in std_logic_vector(7 downto 0);
		alpha : in std_logic;
		beta : out std_logic;
		data_received : out std_logic;
		data_out : out std_logic_vector(7 downto 0)
	);

end Entita_B;

architecture Behavioral of Entita_B is

begin
	
	handshaking : process 
	begin
	wait until alpha = '1';
	data_out <= data_in;
	beta <= '1';
	wait until alpha = '0';
	beta <= '0';
	end process handshaking;

end Behavioral;