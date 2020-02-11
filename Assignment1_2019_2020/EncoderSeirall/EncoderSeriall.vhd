library IEEE;
use IEEE.std_logic_1164.all;

library storage;
use storage.all;

library bitEncoder;
use bitEncoder.all;

library bitCounter_3bit;
use bitCounter_3bit.all;

library controlUnit;
use controlUnit.all;

library parReg;
use parReg.all;

entity EncoderSeriall is
	port(mIn : in std_logic;
		  nGRst : in std_logic;
		  clk : in std_logic;
		  code : out std_logic_vector(7 downto 0);
		  done : out std_logic);
end EncoderSeriall;

architecture Structural of EncoderSeriall is
	signal s_bitcounter : std_logic_vector(2 downto 0);
	signal s_nreset, s_done : std_logic;
	signal s_out : std_logic_vector(7 downto 0);
	signal s_control : std_logic_vector(7 downto 0);
	component bitEncoder is
		port(bIn : in std_logic;
			  mult : in std_logic;
			  clk : in std_logic;
			  nRst : in std_logic;
			  bOut : out std_logic);
	end component;
	component controlUnit IS
	  PORT (nGRst : IN STD_LOGIC;
			  clk   : IN STD_LOGIC;
			  add   : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			  nRst  : OUT STD_LOGIC;
			  valid : OUT STD_LOGIC;
			  factor: OUT STD_LOGIC_VECTOR (7 downto 0));
	END component;
	component binCounter_3bit IS
		PORT (nRst: IN STD_LOGIC;
        clk:  IN STD_LOGIC;
        c:    OUT STD_LOGIC_VECTOR (2 DOWNTO 0));
	END component;
	component parReg_8bit IS
		PORT (nSet: IN STD_LOGIC;
        clk: IN STD_LOGIC;
        D: IN STD_LOGIC_vector(7 downto 0);
        Q: OUT STD_LOGIC_vector(7 downto 0));
	END component;
	
	
begin
	
	bc : binCounter_3bit port map(s_nreset, clk, s_bitcounter);
	con : controlUnit port map(nGRst, clk, s_bitcounter, s_nreset, s_done, s_control);
	be0: bitEncoder port map(mIn, s_control(0), clk, s_nreset, s_out(0));
	be1: bitEncoder port map(mIn, s_control(1), clk, s_nreset, s_out(1));
	be2: bitEncoder port map(mIn, s_control(2), clk, s_nreset, s_out(2));
	be3: bitEncoder port map(mIn, s_control(3), clk, s_nreset, s_out(3));
	be4: bitEncoder port map(mIn, s_control(4), clk, s_nreset, s_out(4));
	be5: bitEncoder port map(mIn, s_control(5), clk, s_nreset, s_out(5));
	be6: bitEncoder port map(mIn, s_control(6), clk, s_nreset, s_out(6));
	be7: bitEncoder port map(mIn, s_control(7), clk, s_nreset, s_out(7));
	pr : parReg_8bit port map('1', clk, s_out, code);
	
	done <= s_done;
	
	
end Structural;