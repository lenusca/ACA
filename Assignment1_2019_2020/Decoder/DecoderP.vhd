library IEEE;
use IEEE.STD_LOGIC_1164.all;
library simpleLogic;
use simpleLogic.all;
library Validation;
use Validation.all;

entity DecoderP is
port (dataIn         : in std_logic_vector(7 downto 0);
      dataOut        : out std_logic_vector(3 downto 0);
		valid          : out std_logic);
end DecoderP;


architecture structure of DecoderP is

	signal s_m0, s_m1, s_m2 : std_logic_vector(3 downto 0);
	signal s_one0, s_one1, s_one2 : std_logic;
	signal s_valid0, s_valid1, s_valid2 : std_logic;
	signal s_x, s_y, s_z : std_logic;
	signal s_xor1, s_xor2, s_xor3, s_xor4, s_xor5, s_xor6, s_xor7 : std_logic;
	signal s_or1, s_or2 : std_logic;
	signal s_and1 : std_logic;
	signal s_vres1 : std_logic;

	component Validation
	port (c         : in std_logic_vector(3 downto 0);
			one,flag  : out std_logic);
	end component;
	component gateXor2
    port (x1, x2: IN STD_LOGIC;
          y:      OUT STD_LOGIC);
	end component;
	component gateAnd2 is
		port(x1, x2: in  std_logic;
					 y: out std_logic);
	end component;
	component gateOr2 is
		port (x1, x2: in  std_logic;
					  y: out std_logic);
	end component;

begin
	
	--m0--
	xor0m0 : gateXor2 port map(dataIn(0), dataIn(1), s_m0(0));
	xor1m0 : gateXor2 port map(dataIn(2), dataIn(3), s_m0(1));
	xor2m0 : gateXor2 port map(dataIn(4), dataIn(5), s_m0(2));
	xor3m0 : gateXor2 port map(dataIn(6), dataIn(7), s_m0(3));
	
--	s_m0(0) <= dataIn(0) xor dataIn(1);
--	s_m0(1) <= dataIn(2) xor dataIn(3);
--	s_m0(2) <= dataIn(4) xor dataIn(5);
--	s_m0(3) <= dataIn(6) xor dataIn(7);
	
					
	--m1--
	xor0m1 : gateXor2 port map(dataIn(0), dataIn(2), s_m1(0));
	xor1m1 : gateXor2 port map(dataIn(1), dataIn(3), s_m1(1));
	xor2m1 : gateXor2 port map(dataIn(4), dataIn(6), s_m1(2));
	xor3m1 : gateXor2 port map(dataIn(5), dataIn(7), s_m1(3));
	
--	s_m1(0) <= dataIn(0) xor dataIn(2);
--	s_m1(1) <= dataIn(1) xor dataIn(3);
--	s_m1(2) <= dataIn(4) xor dataIn(6);
--	s_m1(3) <= dataIn(5) xor dataIn(7);
	
	--m2--
	xor0m2 : gateXor2 port map(dataIn(0), dataIn(4), s_m2(0));
	xor1m2 : gateXor2 port map(dataIn(1), dataIn(5), s_m2(1));
	xor2m2 : gateXor2 port map(dataIn(2), dataIn(6), s_m2(2));
	xor3m2 : gateXor2 port map(dataIn(3), dataIn(7), s_m2(3));
	
--	s_m2(0) <= dataIn(0) xor dataIn(4);
--	s_m2(1) <= dataIn(1) xor dataIn(5);
--	s_m2(2) <= dataIn(2) xor dataIn(6);
--	s_m2(3) <= dataIn(3) xor dataIn(7);
	
	--validation--				
	V_m0 : Validation port map(s_m0(3 downto 0),s_one0, s_valid0);
	V_m1 : Validation port map(s_m1(3 downto 0),s_one1, s_valid1);
	V_m2 : Validation port map(s_m2(3 downto 0),s_one2, s_valid2);	
	
	dataOut(3) <=s_one0;
	dataOut(2) <=s_one1;
	dataOut(1) <=s_one2;
	
	andv0v1 : gateAnd2 port map(s_valid0, s_valid1, s_vres1);
	andvres1v2 : gateAnd2 port map(s_vres1, s_valid2, valid);
	
	--valid <= s_valid0 and s_valid1 and s_valid2;
	
	--x--
	xor1 : gateXor2 port map(s_one0, s_m0(0), s_xor1);
	xor2 : gateXor2 port map(s_m0(1), s_m0(2), s_xor2);
	x    : gateXor2 port map(s_xor1, s_xor2, s_x);
	--s_x <= s_one0 xor s_m0(0) xor s_m0(1) xor s_m0(2);
	
	--y--
	xor3 : gateXor2 port map(s_one1, s_m1(0), s_xor3);
	xor4 : gateXor2 port map(s_m1(1), s_m1(2), s_xor4);
	y 	  : gateXor2 port map(s_xor3, s_xor4, s_y);
	--s_y <= s_one1 xor s_m1(0) xor s_m1(1) xor s_m1(2);
	
	--z--
	xor5 : gateXor2 port map(s_one2, s_m2(0), s_xor5);
	xor6 : gateXor2 port map(s_m2(1), s_m2(2), s_xor6);
	z 	  : gateXor2 port map(s_xor5, s_xor6, s_z);
	--s_z <= s_one2 xor s_m2(0) xor s_m2(1) xor s_m2(2);
	
	--m4--
	or1 	: gateOr2 port map(not(s_x), not(s_y), s_or1);
	or2 	: gateOr2 port map(s_or1, not(s_z), s_or2);
	xor7  : gateXor2 port map(s_one0, s_m0(3), s_xor7);
	and1  : gateAnd2 port map(s_or2, s_xor7, s_and1);
	xor8  : gateXor2 port map(s_and1, dataIn(7), dataOut(0));
	--dataOut(0) <= ((not(s_x) or not(s_y) or not(s_z)) and (s_one0 xor s_m0(3)))  xor dataIn(7);
end structure;		
	
	

