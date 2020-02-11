library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity verification is
	port(e     : in std_logic_vector(3 downto 0);
		  f 	  : out std_logic_vector(10 downto 0));
end verification;

architecture Structural of verification is
	signal s_and0, s_and1, s_and2, s_and3, s_and4, s_and5, s_and6, s_and7 : std_logic;
	begin
		and0: entity work.And2_1(Behav)
					port map(dataIn0 => e(0),
								dataIn1 => e(1),
								dataOut => s_and0);
								
		and1: entity work.And2_1(Behav)
					port map(dataIn0 => not e(0),
								dataIn1 => e(1),
								dataOut => s_and1);
		
		and2: entity work.And2_1(Behav)
					port map(dataIn0 => e(0),
								dataIn1 => not e(1),
								dataOut => s_and2);
		
		and3: entity work.And2_1(Behav)
					port map(dataIn0 => not e(0),
								dataIn1 => not e(1),
								dataOut => s_and3);
								
		and4: entity work.And2_1(Behav)
					port map(dataIn0 => e(2),
								dataIn1 => e(3),
								dataOut => s_and4);
								
		and5: entity work.And2_1(Behav)
					port map(dataIn0 => not e(2),
								dataIn1 => e(3),
								dataOut => s_and5);
								
		and6: entity work.And2_1(Behav)
					port map(dataIn0 => e(2),
								dataIn1 => not e(3),
								dataOut => s_and6);
								
		and7: entity work.And2_1(Behav)
					port map(dataIn0 => not e(2),
								dataIn1 => not e(3),
								dataOut => s_and7);
								
		and0x4: entity work.And2_1(Behav)
					port map(dataIn0 => s_and0,
								dataIn1 => s_and4,
								dataOut => f(0));
		
		and0x6: entity work.And2_1(Behav)
					port map(dataIn0 => s_and0,
								dataIn1 => s_and6,
								dataOut => f(1));
							
		and0x5: entity work.And2_1(Behav)
					port map(dataIn0 => s_and0,
								dataIn1 => s_and5,
								dataOut => f(2));
						
		and0x7: entity work.And2_1(Behav)
					port map(dataIn0 => s_and0,
								dataIn1 => s_and7,
								dataOut => f(3));
					
		and1x4: entity work.And2_1(Behav)
					port map(dataIn0 => s_and1,
								dataIn1 => s_and4,
								dataOut => f(4));
								
		and1x6: entity work.And2_1(Behav)
					port map(dataIn0 => s_and1,
								dataIn1 => s_and6,
								dataOut => f(5));
								
		and1x5: entity work.And2_1(Behav)
					port map(dataIn0 => s_and1,
								dataIn1 => s_and5,
								dataOut => f(6));
								
		and2x4: entity work.And2_1(Behav)
					port map(dataIn0 => s_and2,
								dataIn1 => s_and4,
								dataOut => f(7));
								
		and2x6: entity work.And2_1(Behav)
					port map(dataIn0 => s_and2,
								dataIn1 => s_and6,
								dataOut => f(8));
								
		and2x5: entity work.And2_1(Behav)
					port map(dataIn0 => s_and2,
								dataIn1 => s_and5,
								dataOut => f(9));
		
		and3x4: entity work.And2_1(Behav)
					port map(dataIn0 => s_and3,
								dataIn1 => s_and4,
								dataOut => f(10));
end Structural;
		
					
					
		