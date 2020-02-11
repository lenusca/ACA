library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Contador is
	port(dataOut : out std_logic_vector(3 downto 0);
		  clk     : in std_logic);
end Contador;

architecture Behav of contador is
	signal cout : unsigned(3 downto 0);
	begin
		process(clk, cout)
		begin
			if ((clk = '1') AND (clk'EVENT)) then
				cout <= cout + 1;
			else 
				cout <= cout;
			end if;
		end process;
		dataOut <= std_logic_vector(cout);
end Behav;