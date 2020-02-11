library IEEE;
use IEEE.std_logic_1164.all;

library storage;
use storage.all;

library simpleLogic;
use simpleLogic.all;

entity bitEncoder is
	port(bIn : in std_logic;
		  mult : in std_logic;
		  clk : in std_logic;
		  nRst : in std_logic;
		  bOut : out std_logic);
end bitEncoder;

architecture Structural of bitEncoder is
	signal s_xor, s_ff, s_and : std_logic;
	component flipFlopDSimul IS
		port (clk : in std_logic;
				D: IN STD_LOGIC;
				nSet, nRst: IN STD_LOGIC;
				Q : OUT STD_LOGIC);
	end component;
	component gateAnd2 IS
		PORT (x1, x2: IN STD_LOGIC;
				y:      OUT STD_LOGIC);
	end component;
	component gateXor2 IS
		port (x1, x2: IN STD_LOGIC;
        y:      OUT STD_LOGIC);
	end component;
	
begin
	ff0 : flipFlopDSimul port map(clk, s_xor, '1', nRst, s_ff);
	and0: gateAnd2 port map(bIn, mult, s_and);
	xor0: gateXor2 port map(s_and, s_ff, s_xor);
	bOut <= s_xor;
	
end Structural;