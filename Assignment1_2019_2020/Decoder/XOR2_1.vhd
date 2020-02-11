library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity XOR2_1 is
	port(a,b         : in std_logic;
		  dataOut 	  : out std_logic);
end XOR2_1;


architecture Behav of XOR2_1 is
begin
	dataOut <= (a and not(b)) or (not(a) and b);
end Behav;