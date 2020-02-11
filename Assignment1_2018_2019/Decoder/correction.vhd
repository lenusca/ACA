library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity correction is
	port(	x,f     : in std_logic_vector(10 downto 0);
			final : out std_logic_vector(10 downto 0));
end correction;

architecture Structural of correction is
	begin					
		xor0: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(0),
								dataIn1 => f(0),
								dataOut => final(0));
								
		xor1: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(1),
								dataIn1 => f(1),
								dataOut => final(1));
								
		xor2: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(2),
								dataIn1 => f(2),
								dataOut => final(2));
								
		xor3: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(3),
								dataIn1 => f(3),
								dataOut => final(3));
								
		xor4: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(4),
								dataIn1 => f(4),
								dataOut => final(4));
								
		xor5: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(5),
								dataIn1 => f(5),
								dataOut => final(5));
								
		xor6: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(6),
								dataIn1 => f(6),
								dataOut => final(6));
								
		xor7: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(7),
								dataIn1 => f(7),
								dataOut => final(7));
								
		xor8: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(8),
								dataIn1 => f(8),
								dataOut => final(8));
								
		xor9: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(9),
								dataIn1 => f(9),
								dataOut => final(9));
								
		xor10: entity work.XOR2_1(Behav)
					port map(dataIn0 => x(10),
								dataIn1 => f(10),
								dataOut => final(10));
end Structural;