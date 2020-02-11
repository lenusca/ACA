library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1 is
	port(sel0, sel1, dataIn0, dataIn1, dataIn2, dataIn3 : in std_logic;
		  dataOut : out std_logic);
end Mux4_1;

architecture Behav of Mux4_1 is
begin
	dataOut <= (dataIn0 and not sel1 and not sel0) or (dataIn1 and not sel1 and sel0) or (dataIn2 and sel1 and not sel0) or (dataIn3 and sel1 and sel0);
end Behav;