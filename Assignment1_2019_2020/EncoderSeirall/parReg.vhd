LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY parReg_1bit IS
  PORT (nRst: IN STD_LOGIC;
        clk: IN STD_LOGIC;
        D: IN STD_LOGIC;
        Q: OUT STD_LOGIC);
END parReg_1bit;

ARCHITECTURE structure OF parReg_1bit IS
  COMPONENT flipFlopDSimul
    PORT (clk, D: IN STD_LOGIC;
          nSet, nRst: IN STD_LOGIC;
          Q, nQ: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  ff0: flipFlopDSimul PORT MAP (clk, D, nRst, '1', Q);
END structure;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY parReg_8bit IS
  PORT (nSet: IN STD_LOGIC;
        clk: IN STD_LOGIC;
        D: IN STD_LOGIC_vector(7 downto 0);
        Q: OUT STD_LOGIC_vector(7 downto 0));
END parReg_8bit;

ARCHITECTURE structure OF parReg_8bit IS
  COMPONENT flipFlopDSimul
    PORT (clk, D: IN STD_LOGIC;
          nSet, nRst: IN STD_LOGIC;
          Q, nQ: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  ff0: flipFlopDSimul PORT MAP (clk, D(0), nSet, '1', Q(0));
  ff1: flipFlopDSimul PORT MAP (clk, D(1), nSet, '1', Q(1));
  ff2: flipFlopDSimul PORT MAP (clk, D(2), nSet, '1', Q(2));
  ff3: flipFlopDSimul PORT MAP (clk, D(3), nSet, '1', Q(3));
  ff4: flipFlopDSimul PORT MAP (clk, D(4), nSet, '1', Q(4));
  ff5: flipFlopDSimul PORT MAP (clk, D(5), nSet, '1', Q(5));
  ff6: flipFlopDSimul PORT MAP (clk, D(6), nSet, '1', Q(6));
  ff7: flipFlopDSimul PORT MAP (clk, D(7), nSet, '1', Q(7));
END structure;