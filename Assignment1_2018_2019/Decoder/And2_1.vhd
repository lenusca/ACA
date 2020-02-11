library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity And2_1 is
	port(dataIn0, dataIn1 : in std_logic;
		  dataOut : out std_logic);
end And2_1;

architecture Behav of And2_1 is
	begin
		dataOut <= dataIn0 and dataIn1;
end Behav;