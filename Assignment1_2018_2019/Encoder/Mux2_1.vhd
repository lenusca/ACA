library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
	port(sel, dataIn0, dataIn1 : in std_logic;
		  dataOut : out std_logic);
end Mux2_1;

architecture Behav of Mux2_1 is
begin
	dataOut <= (dataIn0 and not sel) or (dataIn1 and sel);
end Behav;