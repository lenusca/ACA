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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/22/2019 15:30:56"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DecoderP IS
    PORT (
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	dataOut : OUT std_logic_vector(3 DOWNTO 0);
	valid : OUT std_logic
	);
END DecoderP;

-- Design Ports Information
-- dataOut[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DecoderP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_valid : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \xor3m0|y~combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \xor0m0|y~combout\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \xor1m0|y~combout\ : std_logic;
SIGNAL \x|y~combout\ : std_logic;
SIGNAL \xor8|y~0_combout\ : std_logic;
SIGNAL \xor3m1|y~combout\ : std_logic;
SIGNAL \xor0m1|y~combout\ : std_logic;
SIGNAL \xor1m1|y~combout\ : std_logic;
SIGNAL \y|y~combout\ : std_logic;
SIGNAL \xor0m2|y~combout\ : std_logic;
SIGNAL \xor1m2|y~combout\ : std_logic;
SIGNAL \xor3m2|y~combout\ : std_logic;
SIGNAL \z|y~combout\ : std_logic;
SIGNAL \xor8|y~1_combout\ : std_logic;
SIGNAL \V_m2|orsa3sa4|y~0_combout\ : std_logic;
SIGNAL \V_m1|orsa3sa4|y~0_combout\ : std_logic;
SIGNAL \V_m0|orsa3sa4|y~0_combout\ : std_logic;
SIGNAL \V_m2|orsoneszero|y~0_combout\ : std_logic;
SIGNAL \V_m1|orsoneszero|y~0_combout\ : std_logic;
SIGNAL \andvres1v2|y~0_combout\ : std_logic;
SIGNAL \andvres1v2|y~1_combout\ : std_logic;
SIGNAL \ALT_INV_dataIn[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataIn[7]~input_o\ : std_logic;
SIGNAL \andvres1v2|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \V_m1|orsoneszero|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \V_m2|orsoneszero|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xor8|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \z|ALT_INV_y~combout\ : std_logic;
SIGNAL \xor3m2|ALT_INV_y~combout\ : std_logic;
SIGNAL \xor1m2|ALT_INV_y~combout\ : std_logic;
SIGNAL \xor0m2|ALT_INV_y~combout\ : std_logic;
SIGNAL \y|ALT_INV_y~combout\ : std_logic;
SIGNAL \xor3m1|ALT_INV_y~combout\ : std_logic;
SIGNAL \xor1m1|ALT_INV_y~combout\ : std_logic;
SIGNAL \xor0m1|ALT_INV_y~combout\ : std_logic;
SIGNAL \x|ALT_INV_y~combout\ : std_logic;
SIGNAL \xor3m0|ALT_INV_y~combout\ : std_logic;
SIGNAL \xor1m0|ALT_INV_y~combout\ : std_logic;
SIGNAL \xor0m0|ALT_INV_y~combout\ : std_logic;

BEGIN

ww_dataIn <= dataIn;
dataOut <= ww_dataOut;
valid <= ww_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_dataIn[6]~input_o\ <= NOT \dataIn[6]~input_o\;
\ALT_INV_dataIn[5]~input_o\ <= NOT \dataIn[5]~input_o\;
\ALT_INV_dataIn[4]~input_o\ <= NOT \dataIn[4]~input_o\;
\ALT_INV_dataIn[3]~input_o\ <= NOT \dataIn[3]~input_o\;
\ALT_INV_dataIn[2]~input_o\ <= NOT \dataIn[2]~input_o\;
\ALT_INV_dataIn[1]~input_o\ <= NOT \dataIn[1]~input_o\;
\ALT_INV_dataIn[0]~input_o\ <= NOT \dataIn[0]~input_o\;
\ALT_INV_dataIn[7]~input_o\ <= NOT \dataIn[7]~input_o\;
\andvres1v2|ALT_INV_y~0_combout\ <= NOT \andvres1v2|y~0_combout\;
\V_m1|orsoneszero|ALT_INV_y~0_combout\ <= NOT \V_m1|orsoneszero|y~0_combout\;
\V_m2|orsoneszero|ALT_INV_y~0_combout\ <= NOT \V_m2|orsoneszero|y~0_combout\;
\xor8|ALT_INV_y~0_combout\ <= NOT \xor8|y~0_combout\;
\z|ALT_INV_y~combout\ <= NOT \z|y~combout\;
\xor3m2|ALT_INV_y~combout\ <= NOT \xor3m2|y~combout\;
\xor1m2|ALT_INV_y~combout\ <= NOT \xor1m2|y~combout\;
\xor0m2|ALT_INV_y~combout\ <= NOT \xor0m2|y~combout\;
\y|ALT_INV_y~combout\ <= NOT \y|y~combout\;
\xor3m1|ALT_INV_y~combout\ <= NOT \xor3m1|y~combout\;
\xor1m1|ALT_INV_y~combout\ <= NOT \xor1m1|y~combout\;
\xor0m1|ALT_INV_y~combout\ <= NOT \xor0m1|y~combout\;
\x|ALT_INV_y~combout\ <= NOT \x|y~combout\;
\xor3m0|ALT_INV_y~combout\ <= NOT \xor3m0|y~combout\;
\xor1m0|ALT_INV_y~combout\ <= NOT \xor1m0|y~combout\;
\xor0m0|ALT_INV_y~combout\ <= NOT \xor0m0|y~combout\;

-- Location: IOOBUF_X89_Y38_N39
\dataOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor8|y~1_combout\,
	devoe => ww_devoe,
	o => ww_dataOut(0));

-- Location: IOOBUF_X89_Y35_N45
\dataOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V_m2|orsa3sa4|y~0_combout\,
	devoe => ww_devoe,
	o => ww_dataOut(1));

-- Location: IOOBUF_X89_Y38_N5
\dataOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V_m1|orsa3sa4|y~0_combout\,
	devoe => ww_devoe,
	o => ww_dataOut(2));

-- Location: IOOBUF_X89_Y38_N22
\dataOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \V_m0|orsa3sa4|y~0_combout\,
	devoe => ww_devoe,
	o => ww_dataOut(3));

-- Location: IOOBUF_X89_Y35_N96
\valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \andvres1v2|y~1_combout\,
	devoe => ww_devoe,
	o => ww_valid);

-- Location: IOIBUF_X89_Y36_N4
\dataIn[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\dataIn[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\dataIn[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

-- Location: LABCELL_X88_Y36_N45
\xor3m0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor3m0|y~combout\ = ( \dataIn[6]~input_o\ & ( !\dataIn[7]~input_o\ ) ) # ( !\dataIn[6]~input_o\ & ( \dataIn[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_dataIn[7]~input_o\,
	dataf => \ALT_INV_dataIn[6]~input_o\,
	combout => \xor3m0|y~combout\);

-- Location: IOIBUF_X89_Y37_N38
\dataIn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\dataIn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: LABCELL_X88_Y36_N30
\xor0m0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor0m0|y~combout\ = ( \dataIn[0]~input_o\ & ( !\dataIn[1]~input_o\ ) ) # ( !\dataIn[0]~input_o\ & ( \dataIn[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[1]~input_o\,
	dataf => \ALT_INV_dataIn[0]~input_o\,
	combout => \xor0m0|y~combout\);

-- Location: IOIBUF_X89_Y36_N21
\dataIn[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\dataIn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\dataIn[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

-- Location: LABCELL_X88_Y36_N39
\xor1m0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor1m0|y~combout\ = !\dataIn[2]~input_o\ $ (!\dataIn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[2]~input_o\,
	datac => \ALT_INV_dataIn[3]~input_o\,
	combout => \xor1m0|y~combout\);

-- Location: LABCELL_X88_Y36_N18
\x|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \x|y~combout\ = ( \xor1m0|y~combout\ & ( (!\xor3m0|y~combout\ & (!\xor0m0|y~combout\ & (!\dataIn[4]~input_o\ $ (\dataIn[5]~input_o\)))) # (\xor3m0|y~combout\ & (!\dataIn[4]~input_o\ $ (!\xor0m0|y~combout\ $ (\dataIn[5]~input_o\)))) ) ) # ( 
-- !\xor1m0|y~combout\ & ( !\dataIn[4]~input_o\ $ (!\dataIn[5]~input_o\ $ (((!\xor3m0|y~combout\ & \xor0m0|y~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100110100110010110011010011010010010011000011001001001100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[4]~input_o\,
	datab => \xor3m0|ALT_INV_y~combout\,
	datac => \xor0m0|ALT_INV_y~combout\,
	datad => \ALT_INV_dataIn[5]~input_o\,
	dataf => \xor1m0|ALT_INV_y~combout\,
	combout => \x|y~combout\);

-- Location: LABCELL_X88_Y36_N12
\xor8|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor8|y~0_combout\ = ( \dataIn[7]~input_o\ & ( \xor0m0|y~combout\ & ( (!\xor1m0|y~combout\) # ((!\dataIn[6]~input_o\) # (!\dataIn[4]~input_o\ $ (\dataIn[5]~input_o\))) ) ) ) # ( !\dataIn[7]~input_o\ & ( \xor0m0|y~combout\ & ( (\xor1m0|y~combout\ & 
-- (!\dataIn[6]~input_o\ & (!\dataIn[4]~input_o\ $ (!\dataIn[5]~input_o\)))) ) ) ) # ( \dataIn[7]~input_o\ & ( !\xor0m0|y~combout\ & ( (\dataIn[6]~input_o\) # (\xor1m0|y~combout\) ) ) ) # ( !\dataIn[7]~input_o\ & ( !\xor0m0|y~combout\ & ( 
-- (!\xor1m0|y~combout\ & \dataIn[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010000001000001111111011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[4]~input_o\,
	datab => \xor1m0|ALT_INV_y~combout\,
	datac => \ALT_INV_dataIn[6]~input_o\,
	datad => \ALT_INV_dataIn[5]~input_o\,
	datae => \ALT_INV_dataIn[7]~input_o\,
	dataf => \xor0m0|ALT_INV_y~combout\,
	combout => \xor8|y~0_combout\);

-- Location: LABCELL_X88_Y36_N27
\xor3m1|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor3m1|y~combout\ = !\dataIn[5]~input_o\ $ (!\dataIn[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dataIn[5]~input_o\,
	datad => \ALT_INV_dataIn[7]~input_o\,
	combout => \xor3m1|y~combout\);

-- Location: LABCELL_X88_Y36_N36
\xor0m1|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor0m1|y~combout\ = ( \dataIn[0]~input_o\ & ( !\dataIn[2]~input_o\ ) ) # ( !\dataIn[0]~input_o\ & ( \dataIn[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[2]~input_o\,
	dataf => \ALT_INV_dataIn[0]~input_o\,
	combout => \xor0m1|y~combout\);

-- Location: LABCELL_X88_Y36_N33
\xor1m1|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor1m1|y~combout\ = !\dataIn[1]~input_o\ $ (!\dataIn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[1]~input_o\,
	datac => \ALT_INV_dataIn[3]~input_o\,
	combout => \xor1m1|y~combout\);

-- Location: LABCELL_X88_Y36_N0
\y|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \y|y~combout\ = ( \dataIn[4]~input_o\ & ( (!\xor3m1|y~combout\ & ((!\xor0m1|y~combout\ & (!\dataIn[6]~input_o\ $ (\xor1m1|y~combout\))) # (\xor0m1|y~combout\ & (\dataIn[6]~input_o\ & !\xor1m1|y~combout\)))) # (\xor3m1|y~combout\ & (!\dataIn[6]~input_o\ $ 
-- (((\xor0m1|y~combout\ & \xor1m1|y~combout\))))) ) ) # ( !\dataIn[4]~input_o\ & ( (!\xor3m1|y~combout\ & ((!\xor0m1|y~combout\ & (!\dataIn[6]~input_o\ $ (!\xor1m1|y~combout\))) # (\xor0m1|y~combout\ & (!\dataIn[6]~input_o\ & !\xor1m1|y~combout\)))) # 
-- (\xor3m1|y~combout\ & (!\dataIn[6]~input_o\ $ (((!\xor0m1|y~combout\) # (!\xor1m1|y~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110110010100001011011001010011010010010010011101001001001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \xor3m1|ALT_INV_y~combout\,
	datab => \xor0m1|ALT_INV_y~combout\,
	datac => \ALT_INV_dataIn[6]~input_o\,
	datad => \xor1m1|ALT_INV_y~combout\,
	dataf => \ALT_INV_dataIn[4]~input_o\,
	combout => \y|y~combout\);

-- Location: LABCELL_X88_Y36_N9
\xor0m2|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor0m2|y~combout\ = ( \dataIn[0]~input_o\ & ( !\dataIn[4]~input_o\ ) ) # ( !\dataIn[0]~input_o\ & ( \dataIn[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[4]~input_o\,
	dataf => \ALT_INV_dataIn[0]~input_o\,
	combout => \xor0m2|y~combout\);

-- Location: LABCELL_X88_Y36_N24
\xor1m2|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor1m2|y~combout\ = ( \dataIn[1]~input_o\ & ( !\dataIn[5]~input_o\ ) ) # ( !\dataIn[1]~input_o\ & ( \dataIn[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dataIn[5]~input_o\,
	dataf => \ALT_INV_dataIn[1]~input_o\,
	combout => \xor1m2|y~combout\);

-- Location: LABCELL_X88_Y36_N6
\xor3m2|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor3m2|y~combout\ = !\dataIn[3]~input_o\ $ (!\dataIn[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dataIn[3]~input_o\,
	datac => \ALT_INV_dataIn[7]~input_o\,
	combout => \xor3m2|y~combout\);

-- Location: LABCELL_X88_Y35_N0
\z|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \z|y~combout\ = ( \xor3m2|y~combout\ & ( \dataIn[2]~input_o\ & ( !\dataIn[6]~input_o\ $ (((\xor0m2|y~combout\ & \xor1m2|y~combout\))) ) ) ) # ( !\xor3m2|y~combout\ & ( \dataIn[2]~input_o\ & ( (!\dataIn[6]~input_o\ & (!\xor0m2|y~combout\ & 
-- !\xor1m2|y~combout\)) # (\dataIn[6]~input_o\ & (!\xor0m2|y~combout\ $ (!\xor1m2|y~combout\))) ) ) ) # ( \xor3m2|y~combout\ & ( !\dataIn[2]~input_o\ & ( !\dataIn[6]~input_o\ $ (((!\xor0m2|y~combout\) # (!\xor1m2|y~combout\))) ) ) ) # ( !\xor3m2|y~combout\ 
-- & ( !\dataIn[2]~input_o\ & ( (!\dataIn[6]~input_o\ & (!\xor0m2|y~combout\ $ (!\xor1m2|y~combout\))) # (\dataIn[6]~input_o\ & (!\xor0m2|y~combout\ & !\xor1m2|y~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100001101000010101100101011010010100100101001010100110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[6]~input_o\,
	datab => \xor0m2|ALT_INV_y~combout\,
	datac => \xor1m2|ALT_INV_y~combout\,
	datae => \xor3m2|ALT_INV_y~combout\,
	dataf => \ALT_INV_dataIn[2]~input_o\,
	combout => \z|y~combout\);

-- Location: LABCELL_X88_Y36_N48
\xor8|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor8|y~1_combout\ = ( \dataIn[7]~input_o\ & ( \z|y~combout\ & ( ((\x|y~combout\ & \y|y~combout\)) # (\xor8|y~0_combout\) ) ) ) # ( !\dataIn[7]~input_o\ & ( \z|y~combout\ & ( (\xor8|y~0_combout\ & ((!\x|y~combout\) # (!\y|y~combout\))) ) ) ) # ( 
-- \dataIn[7]~input_o\ & ( !\z|y~combout\ & ( \xor8|y~0_combout\ ) ) ) # ( !\dataIn[7]~input_o\ & ( !\z|y~combout\ & ( \xor8|y~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110010001100100011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x|ALT_INV_y~combout\,
	datab => \xor8|ALT_INV_y~0_combout\,
	datac => \y|ALT_INV_y~combout\,
	datae => \ALT_INV_dataIn[7]~input_o\,
	dataf => \z|ALT_INV_y~combout\,
	combout => \xor8|y~1_combout\);

-- Location: LABCELL_X88_Y35_N36
\V_m2|orsa3sa4|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V_m2|orsa3sa4|y~0_combout\ = ( \xor3m2|y~combout\ & ( \dataIn[2]~input_o\ & ( (\xor1m2|y~combout\) # (\xor0m2|y~combout\) ) ) ) # ( !\xor3m2|y~combout\ & ( \dataIn[2]~input_o\ & ( (!\dataIn[6]~input_o\ & (\xor0m2|y~combout\ & \xor1m2|y~combout\)) ) ) ) # 
-- ( \xor3m2|y~combout\ & ( !\dataIn[2]~input_o\ & ( (\xor1m2|y~combout\) # (\xor0m2|y~combout\) ) ) ) # ( !\xor3m2|y~combout\ & ( !\dataIn[2]~input_o\ & ( (\dataIn[6]~input_o\ & (\xor0m2|y~combout\ & \xor1m2|y~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001111110011111100000010000000100011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[6]~input_o\,
	datab => \xor0m2|ALT_INV_y~combout\,
	datac => \xor1m2|ALT_INV_y~combout\,
	datae => \xor3m2|ALT_INV_y~combout\,
	dataf => \ALT_INV_dataIn[2]~input_o\,
	combout => \V_m2|orsa3sa4|y~0_combout\);

-- Location: LABCELL_X88_Y36_N54
\V_m1|orsa3sa4|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V_m1|orsa3sa4|y~0_combout\ = ( \dataIn[4]~input_o\ & ( (!\xor0m1|y~combout\ & (\xor1m1|y~combout\ & ((\xor3m1|y~combout\)))) # (\xor0m1|y~combout\ & (((\xor1m1|y~combout\ & !\dataIn[6]~input_o\)) # (\xor3m1|y~combout\))) ) ) # ( !\dataIn[4]~input_o\ & ( 
-- (!\xor0m1|y~combout\ & (\xor1m1|y~combout\ & ((\xor3m1|y~combout\)))) # (\xor0m1|y~combout\ & (((\xor1m1|y~combout\ & \dataIn[6]~input_o\)) # (\xor3m1|y~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101110111000000010111011100010000011101110001000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \xor0m1|ALT_INV_y~combout\,
	datab => \xor1m1|ALT_INV_y~combout\,
	datac => \ALT_INV_dataIn[6]~input_o\,
	datad => \xor3m1|ALT_INV_y~combout\,
	dataf => \ALT_INV_dataIn[4]~input_o\,
	combout => \V_m1|orsa3sa4|y~0_combout\);

-- Location: LABCELL_X88_Y36_N21
\V_m0|orsa3sa4|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V_m0|orsa3sa4|y~0_combout\ = ( \xor0m0|y~combout\ & ( ((\xor1m0|y~combout\ & (!\dataIn[4]~input_o\ $ (!\dataIn[5]~input_o\)))) # (\xor3m0|y~combout\) ) ) # ( !\xor0m0|y~combout\ & ( (\xor3m0|y~combout\ & \xor1m0|y~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110111001110110011011100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataIn[4]~input_o\,
	datab => \xor3m0|ALT_INV_y~combout\,
	datac => \xor1m0|ALT_INV_y~combout\,
	datad => \ALT_INV_dataIn[5]~input_o\,
	dataf => \xor0m0|ALT_INV_y~combout\,
	combout => \V_m0|orsa3sa4|y~0_combout\);

-- Location: LABCELL_X88_Y35_N15
\V_m2|orsoneszero|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V_m2|orsoneszero|y~0_combout\ = ( \xor3m2|y~combout\ & ( \dataIn[2]~input_o\ & ( (!\xor1m2|y~combout\ & (!\xor0m2|y~combout\ & !\dataIn[6]~input_o\)) ) ) ) # ( !\xor3m2|y~combout\ & ( \dataIn[2]~input_o\ & ( (!\xor1m2|y~combout\ & (\xor0m2|y~combout\ & 
-- !\dataIn[6]~input_o\)) # (\xor1m2|y~combout\ & (!\xor0m2|y~combout\ $ (\dataIn[6]~input_o\))) ) ) ) # ( \xor3m2|y~combout\ & ( !\dataIn[2]~input_o\ & ( (!\xor1m2|y~combout\ & (!\xor0m2|y~combout\ & \dataIn[6]~input_o\)) ) ) ) # ( !\xor3m2|y~combout\ & ( 
-- !\dataIn[2]~input_o\ & ( (!\xor1m2|y~combout\ & (\xor0m2|y~combout\ & \dataIn[6]~input_o\)) # (\xor1m2|y~combout\ & (!\xor0m2|y~combout\ $ (!\dataIn[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011010000000001010000001011010000001011010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \xor1m2|ALT_INV_y~combout\,
	datac => \xor0m2|ALT_INV_y~combout\,
	datad => \ALT_INV_dataIn[6]~input_o\,
	datae => \xor3m2|ALT_INV_y~combout\,
	dataf => \ALT_INV_dataIn[2]~input_o\,
	combout => \V_m2|orsoneszero|y~0_combout\);

-- Location: LABCELL_X88_Y36_N3
\V_m1|orsoneszero|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \V_m1|orsoneszero|y~0_combout\ = ( \dataIn[4]~input_o\ & ( (!\xor0m1|y~combout\ & (!\dataIn[6]~input_o\ & (!\xor3m1|y~combout\ $ (!\xor1m1|y~combout\)))) # (\xor0m1|y~combout\ & (!\xor3m1|y~combout\ & (!\xor1m1|y~combout\ $ (\dataIn[6]~input_o\)))) ) ) # 
-- ( !\dataIn[4]~input_o\ & ( (!\xor0m1|y~combout\ & (\dataIn[6]~input_o\ & (!\xor3m1|y~combout\ $ (!\xor1m1|y~combout\)))) # (\xor0m1|y~combout\ & (!\xor3m1|y~combout\ & (!\xor1m1|y~combout\ $ (!\dataIn[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001101000000000100110100001101000000000100110100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \xor3m1|ALT_INV_y~combout\,
	datab => \xor0m1|ALT_INV_y~combout\,
	datac => \xor1m1|ALT_INV_y~combout\,
	datad => \ALT_INV_dataIn[6]~input_o\,
	dataf => \ALT_INV_dataIn[4]~input_o\,
	combout => \V_m1|orsoneszero|y~0_combout\);

-- Location: LABCELL_X88_Y36_N42
\andvres1v2|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \andvres1v2|y~0_combout\ = ( \xor1m0|y~combout\ & ( (!\xor3m0|y~combout\ & (!\xor0m0|y~combout\ $ (!\dataIn[4]~input_o\ $ (\dataIn[5]~input_o\)))) ) ) # ( !\xor1m0|y~combout\ & ( (!\xor0m0|y~combout\ & (\xor3m0|y~combout\ & (!\dataIn[4]~input_o\ $ 
-- (!\dataIn[5]~input_o\)))) # (\xor0m0|y~combout\ & (!\xor3m0|y~combout\ & (!\dataIn[4]~input_o\ $ (!\dataIn[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000001001000100001000100100010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \xor0m0|ALT_INV_y~combout\,
	datab => \xor3m0|ALT_INV_y~combout\,
	datac => \ALT_INV_dataIn[4]~input_o\,
	datad => \ALT_INV_dataIn[5]~input_o\,
	dataf => \xor1m0|ALT_INV_y~combout\,
	combout => \andvres1v2|y~0_combout\);

-- Location: LABCELL_X88_Y36_N57
\andvres1v2|y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \andvres1v2|y~1_combout\ = ( !\andvres1v2|y~0_combout\ & ( (!\V_m2|orsoneszero|y~0_combout\ & !\V_m1|orsoneszero|y~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \V_m2|orsoneszero|ALT_INV_y~0_combout\,
	datad => \V_m1|orsoneszero|ALT_INV_y~0_combout\,
	dataf => \andvres1v2|ALT_INV_y~0_combout\,
	combout => \andvres1v2|y~1_combout\);

-- Location: LABCELL_X79_Y42_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


