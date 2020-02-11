LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY factorMem IS
  PORT (add			 :in STD_LOGIC_VECTOR (2 DOWNTO 0);
        dataOut    :out std_logic_vector(9 downto 0));
END factorMem;

ARCHITECTURE behavior OF factorMem IS
BEGIN
	PROCESS (add)
    TYPE CMem IS ARRAY(0 TO 7) OF STD_LOGIC_VECTOR (9 DOWNTO 0);
	 VARIABLE prog: CMem := ("1111111110", -- nRst = 1   done=0   00
                            "0000111110", -- nRst = 1   done=0   01
                            "0011001110", -- nRst = 1   done=0   02
                            "0101010110", -- nRst = 1   done=0   03
                            "0000000011", -- nRst = 1   done=0   04
                            "0000000000", -- nRst = 0   done=1   05
                            "0000000010", -- Dont care
									 "0000000010"  -- Dont care
									 );
	
		VARIABLE pos: INTEGER;
	 BEGIN
		pos := CONV_INTEGER(add);
		dataOut <= prog(pos);
 END PROCESS;
END behavior;



LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

ENTITY controlUnit IS
  PORT (nGRst : IN STD_LOGIC;
        clk   : IN STD_LOGIC;
        add   : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        nRst  : OUT STD_LOGIC;
        valid : OUT STD_LOGIC;
		  factor: OUT STD_LOGIC_VECTOR (7 downto 0));
END controlUnit;


ARCHITECTURE structure OF controlUnit IS
	signal gLines: STD_LOGIC_VECTOR (9 DOWNTO 0);
	signal iNRst: STD_LOGIC;	
	component factorMem
   port (add    :  in STD_LOGIC_VECTOR (2 DOWNTO 0);
         dataOut:  out STD_LOGIC_VECTOR (9 DOWNTO 0));
   end component;
	
	
	component gateNand2
   port(x1, x2: IN STD_LOGIC;
        y	  : OUT STD_LOGIC);
   end component;
	
BEGIN
  fMem: factorMem   PORT MAP (add, gLines);
  nad1: gateNand2 PORT MAP (nGRst, gLines(1), iNRst);
  nad2: gateNand2 PORT MAP (clk, iNRst, nRst);
  factor<= gLines(9 downto 2);
  valid <= gLines(0);
END structure; 
