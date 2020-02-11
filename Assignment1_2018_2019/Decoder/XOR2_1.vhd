library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity XOR2_1 is
	port(dataIn0, dataIn1 : in std_logic;
		  dataOut : out std_logic);
end XOR2_1;

architecture Behav of XOR2_1 is
	begin
		dataOut <= dataIn0 xor dataIn1;
end Behav;