library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity decoder is
	port(x : in std_logic_vector(14 downto 0);
		  e : out std_logic_vector(3 downto 0));
end decoder;

architecture Structural of Decoder is
	signal s_xor1, s_xor2, s_xor3, s_xor4, s_xor5, s_xor6, s_xor7, s_xor8, s_xor9, s_xor10, s_xor11, s_xor12, s_xor13, s_xor34, s_xor56, s_xor57, s_xor89, s_xor1011, s_xor1357, s_xor1234, s_xor1256, s_xor891011: std_logic;
	begin
		xor1: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(0),
								dataIn1 => x(1),
								dataOut => s_xor1);
								
		xor2: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(2),
								dataIn1 => x(3),
								dataOut => s_xor2);
								
		xor3: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(4),
								dataIn1 => x(5),
								dataOut => s_xor3);
								
		xor4: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(6),
								dataIn1 => x(11),
								dataOut => s_xor4);
								
		xor5: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(7),
								dataIn1 => x(8),
								dataOut => s_xor5);
								
		xor6: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(9),
								dataIn1 => x(12),
								dataOut => s_xor6);
								
		xor7: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(10),
								dataIn1 => x(13),
								dataOut => s_xor7);
								
		xor8: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(0),
								dataIn1 => x(2),
								dataOut => s_xor8);
								
		xor9: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(4),
								dataIn1 => x(6),
								dataOut => s_xor9);
								
		xor10: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(7),
								dataIn1 => x(9),
								dataOut => s_xor10);
								
		xor11: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(10),
								dataIn1 => x(14),
								dataOut => s_xor11);
								
		xor1x2: entity work.XOR2_1(Behav)
					port map(dataIn0 => s_xor1,
								dataIn1 => s_xor2,
								dataOut => s_xor12);
								
		xor1x3: entity work.XOR2_1(Behav)
					port map(dataIn0 => s_xor1,
								dataIn1 => s_xor3,
								dataOut => s_xor13);
								
		xor3x4: entity work.XOR2_1(Behav)
					port map(dataIn0 => s_xor3,
								dataIn1 => s_xor4,
								dataOut => s_xor34);
		
		xor5x6: entity work.XOR2_1(Behav)
					port map(dataIn0 => s_xor5,
								dataIn1 => s_xor6,
								dataOut => s_xor56);
								
		xor5x7: entity work.XOR2_1(Behav)
					port map(dataIn0 => s_xor5,
								dataIn1 => s_xor7,
								dataOut => s_xor57);
								
		xor8x9: entity work.XOR2_1(Behav)
					port map(dataIn0 => s_xor8,
								dataIn1 => s_xor9,
								dataOut => s_xor89);
								
		xor10x11: entity work.XOR2_1(Behav)
					port map(dataIn0 => s_xor10,
								dataIn1 => s_xor11,
								dataOut => s_xor1011);
		
	
		xor12x34: entity work.XOR2_1(Behav)
					port map(dataIn0 => s_xor12,
								dataIn1 => s_xor34,
								dataOut => e(0));
								
		xor12x56: entity work.XOR2_1(Behav)
					port map(dataIn0 => s_xor12,
								dataIn1 => s_xor56,
								dataOut => e(1));
								
		xor13x57: entity work.XOR2_1(Behav)
					port map(dataIn0 => s_xor13,
								dataIn1 => s_xor57,
								dataOut => e(2));
								
		xor89x1011: entity work.XOR2_1(Behav)
					port map(dataIn0 => s_xor89,
								dataIn1 => s_xor1011,
								dataOut => e(3));
								
		
								
	
								
end Structural;	