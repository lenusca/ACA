library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM16 is
	port(address : in std_logic_vector(3 downto 0);
		  dataOut : out std_logic_vector(6 downto 0));
end ROM16;

architecture Behavioral of ROM16 is
	type TROM is array (0 to 15) of std_logic_vector(6 downto 0);
	constant c_memory: TROM := ( "0000000","1111000", "1110000", "1101000","1100000","1011000","1010000","1001000","0111000",
		"0110000", "0101000","0011000","0000001","0000011","0000101","0000111");
begin
		dataOut <= c_memory(to_integer(unsigned(address)));
end Behavioral;