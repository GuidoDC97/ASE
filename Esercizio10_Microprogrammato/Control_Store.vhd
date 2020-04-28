library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Control_Store is
  port (
    address : in  std_logic_vector(2 downto 0);
    word    : out std_logic_vector(10 downto 0)
    );
end entity Control_Store;


architecture dataflow of Control_Store is
  -- Types
  --! Control store content
  type ctrl_str_type is array (5 downto 0) of std_logic_vector(10 downto 0);
  
  -- Constants
  constant words : ctrl_str_type := (
--BEGIN_WORDS_ENTRY
0 => "00000000000",
1 => "01010000101",
2 => "00101111000",
3 => "00101011000",
4 => "10100010000",
5 => "00000000010",

others => (others => '0')
--END_WORDS_ENTRY
    );

begin  -- architecture dataflow

  word <= words(to_integer(unsigned(address)));

end architecture dataflow;