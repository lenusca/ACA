library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Validation is
port (c         : in std_logic_vector(3 downto 0);
      one, flag : out std_logic);
end Validation;

architecture logFunction of Validation is
	signal s_and1, s_and2, s_and3, s_and4, s_and5, s_and6 : std_logic; 
	signal s_or1, s_or2, s_or3 : std_logic;
	signal s_nor1, s_nor2 : std_logic;
	signal s_nand1, s_nand2 : std_logic; 	
	signal s_zero :std_logic;
	signal s_one :std_logic;
	
	component gateAnd2 is
		port(x1, x2: in  std_logic;
					 y: out std_logic);
	end component;
	component gateOr2 is
		port (x1, x2: in  std_logic;
					  y: out std_logic);
	end component;
	component gateNor2 is
		port (x1, x2: in std_logic;
					  y: out std_logic);
	end component;
	component gateNand2 is
		port (x1, x2: in std_logic;
					  y: out std_logic);
	end component;
begin
	--s_one--
	andc3c2	: gateAnd2 port map(c(3), c(2), s_and1);
	andc1c0	: gateAnd2 port map(c(1), c(0), s_and2);
	orC1C0 	: gateOr2  port map(c(1), c(0), s_or1);
	orC3C2 	: gateOr2  port map(c(3), c(2), s_or2);
	andsa1so1: gateAnd2 port map(s_and1, s_or1, s_and3);
	andsa2so2: gateAnd2 port map(s_and2, s_or2, s_and4);
	orsa3sa4 : gateOr2  port map(s_and3, s_and4, s_one);
	
	--s_one    <= ((c(3) and c(2)) and (c(1) or c(0))) or ((c(1) and c(0)) and (c(3) or c(2)));
	
	
	--s_zero--
	norC3C2 	  : gateNor2  port map(c(3), c(2), s_nor1);
	norC1C0 	  : gateNor2  port map(c(1), c(0), s_nor2);	nandc1c0	  : gateNand2 port map(c(1), c(0), s_nand1);
	nandc3c2	  : gateNand2 port map(c(3), c(2), s_nand2);
	andsno1sna1: gateAnd2  port map(s_nor1, s_nand1, s_and5);
	andsno2sna2: gateAnd2  port map(s_nor2, s_nand2, s_and6);
	orsa5sa6   : gateOr2   port map(s_and5, s_and6, s_zero);
	
	--s_zero   <= (not(c(3) or c(2)) and not(c(1) and c(0))) or (not(c(1) or c(0)) and not(c(3) and c(2)));
	
	one      <= s_one;
	
	--flag--
	orsoneszero: gateOr2  port map(s_one, s_zero, flag);
	
	--flag     <=  s_one or s_zero;
	
end logFunction; 