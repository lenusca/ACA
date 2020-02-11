library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity encoder is
	port(m: in std_logic;
        x: out STD_LOGIC;
		  clk : in std_logic);
end encoder;

architecture Structural of encoder is
 signal s_dataOut1, s_dataOut2, s_dataOut3, s_dataOut4, s_dataOut5, s_dataOut6, s_dataOut7, s_y1, s_y2, s_y3, s_y4, s_p1, s_p2, s_p3, s_p4, s_d, s_q1, s_q2, s_q3, s_q4 : std_logic;
 signal s_dataOut : std_logic_vector(3 downto 0);
 begin 
	
						
	controlado1rp1: entity work.Contador(Behav)
							port map(clk => clk,
										dataOUt => s_dataOut);
	
	controladorp2 : entity work.ROM16(Behavioral)
							port map(address => s_dataOut,
										dataOut(0) => s_dataOut1,
										dataOut(1) => s_dataOut2,
										dataOut(2) => s_dataOut3,
										dataOut(3) => s_dataOut4,
										dataOut(4) => s_dataOut5,
										dataOut(5) => s_dataOut6,
										dataOut(6) => s_dataOut7);
										
	flipflop1: 		entity work.flipFlopDSimul(behavior)
							port map(clk => clk,
										D => s_p1,
										nSet => '1',
										nRst => '1',
										nQ => s_q1);
										
	flipflop2: 		entity work.flipFlopDSimul(behavior)
							port map(clk => clk,
										D => s_p2,
										nSet => '1',
										nRst => '1',
										nQ => s_q2);
										
	flipflop3: 		entity work.flipFlopDSimul(behavior)
							port map(clk => clk,
										D => s_p3,
										nSet => '1',
										nRst => '1',
										nQ => s_q3);
										
	flipflop4: 		entity work.flipFlopDSimul(behavior)
							port map(clk => clk,
										D => s_p4,
										nSet => '1',
										nRst => '1',
										nQ => s_q4);
										
	and1 : 			entity work.And2_1(Behav)
							port map(dataIn0 => m,
										dataIn1 => s_dataOut7,
										y       => s_y1);
										
	and2 : 			entity work.And2_1(Behav)
							port map(dataIn0 => m,
										dataIn1 => s_dataOut6,
										y       => s_y2);
										
										
	and3 : 			entity work.And2_1(Behav)
							port map(dataIn0 => m,
										dataIn1 => s_dataOut5,
										y       => s_y3);
	
	and4 : 			entity work.And2_1(Behav)
							port map(dataIn0 => m,
										dataIn1 => s_dataOut4,
										y       => s_y4);
										
	xor1:				entity work.XOR2_1(Behav)
							port map(dataIn0 => s_y1,
										dataIn1 => s_q1,
										y => s_p1);
										
	xor2:				entity work.XOR2_1(Behav)
							port map(dataIn0 => s_y2,
										dataIn1 => s_q2,
										y => s_p2);
										
	xor3:				entity work.XOR2_1(Behav)
							port map(dataIn0 => s_y3,
										dataIn1 => s_q3, 
										y => s_p3);
										
	xor4:				entity work.XOR2_1(Behav)
							port map(dataIn0 => s_y4,
										dataIn1 => s_q4,
										y => s_p4);
										
	mux4_1: 			entity work.Mux4_1(Behav)
							port map(sel0 => s_dataOut2,
										sel1 => s_dataOut3,
										dataIn0 => s_p1,
										dataIn1 => s_p2,
										dataIn2 => s_p3, 
										dataIn3 => s_p4,
										dataOut => s_d);
	
	mux2_1: 			entity work.Mux2_1(Behav)
							port map(sel => s_dataOut1,
										dataIn0 => m,
										dataIn1 => s_d,
										dataOut => x);
										
end Structural;