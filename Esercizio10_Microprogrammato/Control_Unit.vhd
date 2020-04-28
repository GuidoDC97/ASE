library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control_Unit is
	PORT(
			CLOCK 			: in STD_LOGIC;
			RESET 			: in STD_LOGIC;
			START	   		: in STD_LOGIC;
			S_BUF 			: in STD_LOGIC_VECTOR (1 downto 0);
			COUNT 			: in STD_LOGIC;
		    en_sh	 		: out std_logic;
			en_ex	 		: out std_logic;
			en_cnt 			: out std_logic;
			load_q 			: out std_logic;
			load_sa 		: out std_logic;
			sub				: out std_logic
		);
end Control_Unit;

architecture Behavioral of Control_Unit is
	COMPONENT Control_Store
	PORT(
		address : IN std_logic_vector(2 downto 0);          
		word : OUT std_logic_vector(10 downto 0)
		);
	END COMPONENT;

	signal word : std_logic_vector(10 downto 0);
	signal mpc : std_logic_vector(2 downto 0);
	signal jcnt : std_logic;
	signal jop : std_logic;
	signal mir_reg : std_logic_vector(10 downto 0);
	
begin

	Inst_Control_Store: Control_Store PORT MAP(
		address => mpc,
		word => word
	);
		
  -- Jump Signals
  jcnt		 <= mir_reg(6);
  jop		 <= mir_reg(7);

  -- Output to datapath
  en_sh      <= mir_reg(0);
  en_ex 	 <= mir_reg(1);
  en_cnt     <= mir_reg(2);
  load_q 	 <= mir_reg(3);
  load_sa 	 <= mir_reg(4);
  sub		 <= mir_reg(5);

  -- MIR Register
  mir_proc : process(clock) is
  begin
    if rising_edge(clock) then
      if reset = '1' then
        mir_reg <= "00000000000";  
      else
        mir_reg <= word;
      end if;
    end if;
  end process mir_proc;
  
  -- MPC Register 
  mpc <= "000" when reset = '1' else 
			"001" when start = '1' else 
			"010" when jop = '1' and S_BUF(1) = '0' else 
			"011" when jop = '1' and S_BUF(1) = '1' else 
			"101" when jcnt = '1' and COUNT = '1'  and S_BUF(0) = '0' else  
			"100" when jcnt = '1' and COUNT = '1'  and S_BUF(0) = '1' else  
			"001" when jcnt = '1' and COUNT = '0' else 
			mir_reg(10 downto 8);
			
  -- MPC Register
--  mpc_proc : process(clock) is
--  begin
--    if falling_edge(clock) then
--      if reset = '1' then
--         mpc <= "000";
--      else
--			if start = '1' then
--				mpc <= "001";
--			elsif jop = '1' then
--				if S_BUF(1) = '0' then
--					mpc <= "010";
--				elsif S_BUF(1) = '1' then
--					mpc <= "011";
--				end if;
--			elsif jcnt = '1' then
--				if COUNT = '1'  and S_BUF(0) = '0' then
--					mpc <= "101";
--				elsif COUNT = '1'  and S_BUF(0) = '1' then
--					mpc <= "100";
--				elsif COUNT = '0' then
--					mpc <= "001";
--				end if;
--			else 
--				mpc <= mir_reg(10 downto 8);
--			end if;		
--      end if;
--    end if;
--  end process mpc_proc;
end Behavioral;