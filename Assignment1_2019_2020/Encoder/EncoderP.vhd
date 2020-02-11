library IEEE;
use IEEE.STD_LOGIC_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

entity EncoderP is
	port(m     : in std_logic_vector(3 downto 0);
		  x 	  : out std_logic_vector(7 downto 0));
end EncoderP;



architecture Structural of EncoderP is
	signal s_xor0, s_xor1: std_logic;
	COMPONENT gateXor2
    PORT (x1, x2: IN STD_LOGIC;
          y:      OUT STD_LOGIC);
	END COMPONENT;
BEGIN		
	
	xor0: gateXor2 PORT MAP(m(3), m(0), x(6));
	
	xor1: gateXor2 PORT MAP(m(2), m(0), x(5));
	
	
	xor2: gateXor2 PORT MAP(m(3), m(2), s_xor0);
	
	xor3: gateXor2 PORT MAP(s_xor0, m(0), x(4));
	
	xor4: gateXor2 PORT MAP(m(1), m(0), s_xor1);
		
	xor5: gateXor2 PORT MAP(s_xor1, m(3), x(2));
	
	xor6: gateXor2 PORT MAP(s_xor1, m(2), x(1));
	
	xor7: gateXor2 PORT MAP(s_xor0, s_xor1, x(0));
	
	x(3) <= s_xor1;
	x(7) <= m(0);
	
end Structural;	