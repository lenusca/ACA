-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/17/2019 21:26:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          binCounter_3bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY binCounter_3bit_vhd_vec_tst IS
END binCounter_3bit_vhd_vec_tst;
ARCHITECTURE binCounter_3bit_arch OF binCounter_3bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL nRst : STD_LOGIC;
COMPONENT binCounter_3bit
	PORT (
	c : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	clk : IN STD_LOGIC;
	nRst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : binCounter_3bit
	PORT MAP (
-- list connections between master ports and signals
	c => c,
	clk => clk,
	nRst => nRst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- nRst
t_prcs_nRst: PROCESS
BEGIN
	nRst <= '1';
	WAIT FOR 520000 ps;
	nRst <= '0';
WAIT;
END PROCESS t_prcs_nRst;
END binCounter_3bit_arch;
