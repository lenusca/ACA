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

-- DATE "11/22/2019 15:11:12"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	EncoderSeriall IS
    PORT (
	mIn : IN std_logic;
	nGRst : IN std_logic;
	clk : IN std_logic;
	code : BUFFER std_logic_vector(7 DOWNTO 0);
	done : BUFFER std_logic
	);
END EncoderSeriall;

-- Design Ports Information
-- code[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mIn	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nGRst	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EncoderSeriall IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mIn : std_logic;
SIGNAL ww_nGRst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_code : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \mIn~input_o\ : std_logic;
SIGNAL \bc|ff0|Q~0_combout\ : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \bc|ff1|Q~DUPLICATE_q\ : std_logic;
SIGNAL \bc|ff2|Q~q\ : std_logic;
SIGNAL \con|nad2|y~0_combout\ : std_logic;
SIGNAL \bc|ff0|Q~q\ : std_logic;
SIGNAL \con|fMem|prog~1_combout\ : std_logic;
SIGNAL \bc|ff1|Q~q\ : std_logic;
SIGNAL \bc|ff2|Q~0_combout\ : std_logic;
SIGNAL \bc|ff2|Q~DUPLICATE_q\ : std_logic;
SIGNAL \be0|ff0|Q~q\ : std_logic;
SIGNAL \be0|xor0|y~combout\ : std_logic;
SIGNAL \pr|ff0|Q~0_combout\ : std_logic;
SIGNAL \pr|ff0|Q~q\ : std_logic;
SIGNAL \be1|ff0|Q~q\ : std_logic;
SIGNAL \be1|xor0|y~combout\ : std_logic;
SIGNAL \pr|ff1|Q~0_combout\ : std_logic;
SIGNAL \pr|ff1|Q~q\ : std_logic;
SIGNAL \be2|ff0|Q~q\ : std_logic;
SIGNAL \be2|xor0|y~combout\ : std_logic;
SIGNAL \pr|ff2|Q~0_combout\ : std_logic;
SIGNAL \pr|ff2|Q~q\ : std_logic;
SIGNAL \be3|ff0|Q~q\ : std_logic;
SIGNAL \be3|xor0|y~combout\ : std_logic;
SIGNAL \pr|ff3|Q~0_combout\ : std_logic;
SIGNAL \pr|ff3|Q~q\ : std_logic;
SIGNAL \be4|ff0|Q~q\ : std_logic;
SIGNAL \be4|xor0|y~combout\ : std_logic;
SIGNAL \pr|ff4|Q~0_combout\ : std_logic;
SIGNAL \pr|ff4|Q~q\ : std_logic;
SIGNAL \be5|ff0|Q~q\ : std_logic;
SIGNAL \be5|xor0|y~combout\ : std_logic;
SIGNAL \pr|ff5|Q~0_combout\ : std_logic;
SIGNAL \pr|ff5|Q~q\ : std_logic;
SIGNAL \be6|ff0|Q~q\ : std_logic;
SIGNAL \be6|xor0|y~combout\ : std_logic;
SIGNAL \pr|ff6|Q~0_combout\ : std_logic;
SIGNAL \pr|ff6|Q~q\ : std_logic;
SIGNAL \be7|ff0|Q~q\ : std_logic;
SIGNAL \be7|xor0|y~combout\ : std_logic;
SIGNAL \pr|ff7|Q~0_combout\ : std_logic;
SIGNAL \pr|ff7|Q~q\ : std_logic;
SIGNAL \con|fMem|prog~0_combout\ : std_logic;
SIGNAL \bc|ff1|ALT_INV_Q~DUPLICATE_q\ : std_logic;
SIGNAL \bc|ff2|ALT_INV_Q~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_nGRst~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_mIn~input_o\ : std_logic;
SIGNAL \con|nad2|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \be7|xor0|ALT_INV_y~combout\ : std_logic;
SIGNAL \be7|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \be6|xor0|ALT_INV_y~combout\ : std_logic;
SIGNAL \be6|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \be5|xor0|ALT_INV_y~combout\ : std_logic;
SIGNAL \be5|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \be4|xor0|ALT_INV_y~combout\ : std_logic;
SIGNAL \be4|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \be3|xor0|ALT_INV_y~combout\ : std_logic;
SIGNAL \be3|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \be2|xor0|ALT_INV_y~combout\ : std_logic;
SIGNAL \be2|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \be1|xor0|ALT_INV_y~combout\ : std_logic;
SIGNAL \be1|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \be0|xor0|ALT_INV_y~combout\ : std_logic;
SIGNAL \be0|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \bc|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \bc|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \bc|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr|ff7|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr|ff6|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr|ff5|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr|ff4|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr|ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \pr|ff0|ALT_INV_Q~q\ : std_logic;

BEGIN

ww_mIn <= mIn;
ww_nGRst <= nGRst;
ww_clk <= clk;
code <= ww_code;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\bc|ff1|ALT_INV_Q~DUPLICATE_q\ <= NOT \bc|ff1|Q~DUPLICATE_q\;
\bc|ff2|ALT_INV_Q~DUPLICATE_q\ <= NOT \bc|ff2|Q~DUPLICATE_q\;
\ALT_INV_nGRst~input_o\ <= NOT \nGRst~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_mIn~input_o\ <= NOT \mIn~input_o\;
\con|nad2|ALT_INV_y~0_combout\ <= NOT \con|nad2|y~0_combout\;
\be7|xor0|ALT_INV_y~combout\ <= NOT \be7|xor0|y~combout\;
\be7|ff0|ALT_INV_Q~q\ <= NOT \be7|ff0|Q~q\;
\be6|xor0|ALT_INV_y~combout\ <= NOT \be6|xor0|y~combout\;
\be6|ff0|ALT_INV_Q~q\ <= NOT \be6|ff0|Q~q\;
\be5|xor0|ALT_INV_y~combout\ <= NOT \be5|xor0|y~combout\;
\be5|ff0|ALT_INV_Q~q\ <= NOT \be5|ff0|Q~q\;
\be4|xor0|ALT_INV_y~combout\ <= NOT \be4|xor0|y~combout\;
\be4|ff0|ALT_INV_Q~q\ <= NOT \be4|ff0|Q~q\;
\be3|xor0|ALT_INV_y~combout\ <= NOT \be3|xor0|y~combout\;
\be3|ff0|ALT_INV_Q~q\ <= NOT \be3|ff0|Q~q\;
\be2|xor0|ALT_INV_y~combout\ <= NOT \be2|xor0|y~combout\;
\be2|ff0|ALT_INV_Q~q\ <= NOT \be2|ff0|Q~q\;
\be1|xor0|ALT_INV_y~combout\ <= NOT \be1|xor0|y~combout\;
\be1|ff0|ALT_INV_Q~q\ <= NOT \be1|ff0|Q~q\;
\be0|xor0|ALT_INV_y~combout\ <= NOT \be0|xor0|y~combout\;
\be0|ff0|ALT_INV_Q~q\ <= NOT \be0|ff0|Q~q\;
\bc|ff1|ALT_INV_Q~q\ <= NOT \bc|ff1|Q~q\;
\bc|ff0|ALT_INV_Q~q\ <= NOT \bc|ff0|Q~q\;
\bc|ff2|ALT_INV_Q~q\ <= NOT \bc|ff2|Q~q\;
\pr|ff7|ALT_INV_Q~q\ <= NOT \pr|ff7|Q~q\;
\pr|ff6|ALT_INV_Q~q\ <= NOT \pr|ff6|Q~q\;
\pr|ff5|ALT_INV_Q~q\ <= NOT \pr|ff5|Q~q\;
\pr|ff4|ALT_INV_Q~q\ <= NOT \pr|ff4|Q~q\;
\pr|ff3|ALT_INV_Q~q\ <= NOT \pr|ff3|Q~q\;
\pr|ff2|ALT_INV_Q~q\ <= NOT \pr|ff2|Q~q\;
\pr|ff1|ALT_INV_Q~q\ <= NOT \pr|ff1|Q~q\;
\pr|ff0|ALT_INV_Q~q\ <= NOT \pr|ff0|Q~q\;

-- Location: IOOBUF_X89_Y36_N22
\code[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pr|ff0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_code(0));

-- Location: IOOBUF_X89_Y35_N45
\code[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pr|ff1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_code(1));

-- Location: IOOBUF_X89_Y37_N22
\code[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pr|ff2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_code(2));

-- Location: IOOBUF_X89_Y35_N96
\code[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pr|ff3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_code(3));

-- Location: IOOBUF_X89_Y37_N39
\code[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pr|ff4|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_code(4));

-- Location: IOOBUF_X89_Y36_N39
\code[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pr|ff5|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_code(5));

-- Location: IOOBUF_X89_Y35_N79
\code[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pr|ff6|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_code(6));

-- Location: IOOBUF_X89_Y37_N56
\code[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pr|ff7|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => ww_code(7));

-- Location: IOOBUF_X89_Y37_N5
\done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \con|fMem|prog~0_combout\,
	devoe => ww_devoe,
	o => ww_done);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y36_N55
\mIn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mIn,
	o => \mIn~input_o\);

-- Location: LABCELL_X88_Y35_N3
\bc|ff0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bc|ff0|Q~0_combout\ = !\bc|ff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bc|ff0|ALT_INV_Q~q\,
	combout => \bc|ff0|Q~0_combout\);

-- Location: IOIBUF_X89_Y36_N4
\nGRst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: FF_X88_Y35_N50
\bc|ff1|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \con|fMem|prog~1_combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff1|Q~DUPLICATE_q\);

-- Location: FF_X88_Y35_N29
\bc|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bc|ff2|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff2|Q~q\);

-- Location: LABCELL_X88_Y35_N0
\con|nad2|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \con|nad2|y~0_combout\ = ( \bc|ff0|Q~q\ & ( (\clk~input_o\ & ((!\nGRst~input_o\) # ((!\bc|ff1|Q~DUPLICATE_q\ & \bc|ff2|Q~q\)))) ) ) # ( !\bc|ff0|Q~q\ & ( (\clk~input_o\ & !\nGRst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010101000100010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \ALT_INV_nGRst~input_o\,
	datac => \bc|ff1|ALT_INV_Q~DUPLICATE_q\,
	datad => \bc|ff2|ALT_INV_Q~q\,
	dataf => \bc|ff0|ALT_INV_Q~q\,
	combout => \con|nad2|y~0_combout\);

-- Location: FF_X88_Y35_N44
\bc|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \bc|ff0|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N48
\con|fMem|prog~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \con|fMem|prog~1_combout\ = ( \bc|ff0|Q~q\ & ( !\bc|ff1|Q~q\ ) ) # ( !\bc|ff0|Q~q\ & ( \bc|ff1|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bc|ff1|ALT_INV_Q~q\,
	dataf => \bc|ff0|ALT_INV_Q~q\,
	combout => \con|fMem|prog~1_combout\);

-- Location: FF_X88_Y35_N49
\bc|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \con|fMem|prog~1_combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff1|Q~q\);

-- Location: LABCELL_X88_Y35_N27
\bc|ff2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bc|ff2|Q~0_combout\ = ( \bc|ff0|Q~q\ & ( !\bc|ff1|Q~q\ $ (!\bc|ff2|Q~q\) ) ) # ( !\bc|ff0|Q~q\ & ( \bc|ff2|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bc|ff1|ALT_INV_Q~q\,
	datad => \bc|ff2|ALT_INV_Q~q\,
	dataf => \bc|ff0|ALT_INV_Q~q\,
	combout => \bc|ff2|Q~0_combout\);

-- Location: FF_X88_Y35_N28
\bc|ff2|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bc|ff2|Q~0_combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bc|ff2|Q~DUPLICATE_q\);

-- Location: FF_X88_Y35_N4
\be0|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \be0|xor0|y~combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be0|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N9
\be0|xor0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \be0|xor0|y~combout\ = !\be0|ff0|Q~q\ $ (((!\mIn~input_o\) # (\bc|ff2|Q~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011010010110100101101001011010010110100101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mIn~input_o\,
	datab => \bc|ff2|ALT_INV_Q~DUPLICATE_q\,
	datac => \be0|ff0|ALT_INV_Q~q\,
	combout => \be0|xor0|y~combout\);

-- Location: LABCELL_X88_Y35_N18
\pr|ff0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr|ff0|Q~0_combout\ = ( !\be0|xor0|y~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \be0|xor0|ALT_INV_y~combout\,
	combout => \pr|ff0|Q~0_combout\);

-- Location: FF_X88_Y35_N19
\pr|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pr|ff0|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr|ff0|Q~q\);

-- Location: FF_X88_Y35_N26
\be1|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \be1|xor0|y~combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be1|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N24
\be1|xor0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \be1|xor0|y~combout\ = ( \bc|ff2|Q~DUPLICATE_q\ & ( \be1|ff0|Q~q\ ) ) # ( !\bc|ff2|Q~DUPLICATE_q\ & ( !\be1|ff0|Q~q\ $ (((!\mIn~input_o\) # ((\bc|ff0|Q~q\ & \bc|ff1|Q~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010010101011010101001010101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mIn~input_o\,
	datab => \bc|ff0|ALT_INV_Q~q\,
	datac => \bc|ff1|ALT_INV_Q~DUPLICATE_q\,
	datad => \be1|ff0|ALT_INV_Q~q\,
	dataf => \bc|ff2|ALT_INV_Q~DUPLICATE_q\,
	combout => \be1|xor0|y~combout\);

-- Location: LABCELL_X88_Y35_N36
\pr|ff1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr|ff1|Q~0_combout\ = ( !\be1|xor0|y~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \be1|xor0|ALT_INV_y~combout\,
	combout => \pr|ff1|Q~0_combout\);

-- Location: FF_X88_Y35_N37
\pr|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pr|ff1|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr|ff1|Q~q\);

-- Location: FF_X88_Y35_N2
\be2|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \be2|xor0|y~combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be2|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N6
\be2|xor0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \be2|xor0|y~combout\ = ( \bc|ff0|Q~q\ & ( !\be2|ff0|Q~q\ $ (((!\mIn~input_o\) # (\bc|ff2|Q~DUPLICATE_q\))) ) ) # ( !\bc|ff0|Q~q\ & ( !\be2|ff0|Q~q\ $ (((!\mIn~input_o\) # ((\bc|ff1|Q~DUPLICATE_q\) # (\bc|ff2|Q~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010111111010000001011111101000100101110110100010010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mIn~input_o\,
	datab => \bc|ff2|ALT_INV_Q~DUPLICATE_q\,
	datac => \bc|ff1|ALT_INV_Q~DUPLICATE_q\,
	datad => \be2|ff0|ALT_INV_Q~q\,
	dataf => \bc|ff0|ALT_INV_Q~q\,
	combout => \be2|xor0|y~combout\);

-- Location: LABCELL_X88_Y35_N39
\pr|ff2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr|ff2|Q~0_combout\ = ( !\be2|xor0|y~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \be2|xor0|ALT_INV_y~combout\,
	combout => \pr|ff2|Q~0_combout\);

-- Location: FF_X88_Y35_N41
\pr|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pr|ff2|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr|ff2|Q~q\);

-- Location: FF_X88_Y35_N35
\be3|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \be3|xor0|y~combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be3|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N33
\be3|xor0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \be3|xor0|y~combout\ = ( \bc|ff1|Q~DUPLICATE_q\ & ( \be3|ff0|Q~q\ ) ) # ( !\bc|ff1|Q~DUPLICATE_q\ & ( !\be3|ff0|Q~q\ $ (((!\mIn~input_o\) # (\bc|ff2|Q~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111010100001010111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mIn~input_o\,
	datac => \bc|ff2|ALT_INV_Q~DUPLICATE_q\,
	datad => \be3|ff0|ALT_INV_Q~q\,
	dataf => \bc|ff1|ALT_INV_Q~DUPLICATE_q\,
	combout => \be3|xor0|y~combout\);

-- Location: LABCELL_X88_Y35_N15
\pr|ff3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr|ff3|Q~0_combout\ = ( !\be3|xor0|y~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \be3|xor0|ALT_INV_y~combout\,
	combout => \pr|ff3|Q~0_combout\);

-- Location: FF_X88_Y35_N16
\pr|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pr|ff3|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr|ff3|Q~q\);

-- Location: FF_X88_Y35_N53
\be4|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \be4|xor0|y~combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be4|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N51
\be4|xor0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \be4|xor0|y~combout\ = ( \bc|ff1|Q~DUPLICATE_q\ & ( !\be4|ff0|Q~q\ $ (((!\mIn~input_o\) # (\bc|ff2|Q~DUPLICATE_q\))) ) ) # ( !\bc|ff1|Q~DUPLICATE_q\ & ( !\be4|ff0|Q~q\ $ (((!\mIn~input_o\) # ((\bc|ff0|Q~q\) # (\bc|ff2|Q~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010111111010000001011111101000100101110110100010010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mIn~input_o\,
	datab => \bc|ff2|ALT_INV_Q~DUPLICATE_q\,
	datac => \bc|ff0|ALT_INV_Q~q\,
	datad => \be4|ff0|ALT_INV_Q~q\,
	dataf => \bc|ff1|ALT_INV_Q~DUPLICATE_q\,
	combout => \be4|xor0|y~combout\);

-- Location: LABCELL_X88_Y35_N54
\pr|ff4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr|ff4|Q~0_combout\ = ( !\be4|xor0|y~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \be4|xor0|ALT_INV_y~combout\,
	combout => \pr|ff4|Q~0_combout\);

-- Location: FF_X88_Y35_N55
\pr|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pr|ff4|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr|ff4|Q~q\);

-- Location: FF_X88_Y35_N11
\be5|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \be5|xor0|y~combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be5|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N30
\be5|xor0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \be5|xor0|y~combout\ = ( \bc|ff0|Q~q\ & ( \be5|ff0|Q~q\ ) ) # ( !\bc|ff0|Q~q\ & ( !\be5|ff0|Q~q\ $ (((!\mIn~input_o\) # (\bc|ff2|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000110011011001100011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mIn~input_o\,
	datab => \be5|ff0|ALT_INV_Q~q\,
	datad => \bc|ff2|ALT_INV_Q~q\,
	dataf => \bc|ff0|ALT_INV_Q~q\,
	combout => \be5|xor0|y~combout\);

-- Location: LABCELL_X88_Y35_N21
\pr|ff5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr|ff5|Q~0_combout\ = ( !\be5|xor0|y~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \be5|xor0|ALT_INV_y~combout\,
	combout => \pr|ff5|Q~0_combout\);

-- Location: FF_X88_Y35_N22
\pr|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pr|ff5|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr|ff5|Q~q\);

-- Location: FF_X88_Y35_N7
\be6|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \be6|xor0|y~combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be6|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N42
\be6|xor0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \be6|xor0|y~combout\ = ( \be6|ff0|Q~q\ & ( ((!\mIn~input_o\) # (!\bc|ff1|Q~DUPLICATE_q\ $ (!\bc|ff0|Q~q\))) # (\bc|ff2|Q~q\) ) ) # ( !\be6|ff0|Q~q\ & ( (!\bc|ff2|Q~q\ & (\mIn~input_o\ & (!\bc|ff1|Q~DUPLICATE_q\ $ (\bc|ff0|Q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000010001000000000001011011111111111011101111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff2|ALT_INV_Q~q\,
	datab => \ALT_INV_mIn~input_o\,
	datac => \bc|ff1|ALT_INV_Q~DUPLICATE_q\,
	datad => \bc|ff0|ALT_INV_Q~q\,
	dataf => \be6|ff0|ALT_INV_Q~q\,
	combout => \be6|xor0|y~combout\);

-- Location: LABCELL_X88_Y35_N57
\pr|ff6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr|ff6|Q~0_combout\ = ( !\be6|xor0|y~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \be6|xor0|ALT_INV_y~combout\,
	combout => \pr|ff6|Q~0_combout\);

-- Location: FF_X88_Y35_N59
\pr|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pr|ff6|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr|ff6|Q~q\);

-- Location: FF_X88_Y35_N47
\be7|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \be7|xor0|y~combout\,
	clrn => \con|nad2|ALT_INV_y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \be7|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N45
\be7|xor0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \be7|xor0|y~combout\ = ( \bc|ff0|Q~q\ & ( \be7|ff0|Q~q\ ) ) # ( !\bc|ff0|Q~q\ & ( !\be7|ff0|Q~q\ $ ((((!\mIn~input_o\) # (\bc|ff1|Q~q\)) # (\bc|ff2|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011011111001000001101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bc|ff2|ALT_INV_Q~q\,
	datab => \ALT_INV_mIn~input_o\,
	datac => \bc|ff1|ALT_INV_Q~q\,
	datad => \be7|ff0|ALT_INV_Q~q\,
	dataf => \bc|ff0|ALT_INV_Q~q\,
	combout => \be7|xor0|y~combout\);

-- Location: LABCELL_X88_Y35_N12
\pr|ff7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr|ff7|Q~0_combout\ = !\be7|xor0|y~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \be7|xor0|ALT_INV_y~combout\,
	combout => \pr|ff7|Q~0_combout\);

-- Location: FF_X88_Y35_N13
\pr|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pr|ff7|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr|ff7|Q~q\);

-- Location: MLABCELL_X87_Y35_N48
\con|fMem|prog~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \con|fMem|prog~0_combout\ = ( !\bc|ff1|Q~DUPLICATE_q\ & ( (\bc|ff2|Q~DUPLICATE_q\ & !\bc|ff0|Q~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \bc|ff2|ALT_INV_Q~DUPLICATE_q\,
	datad => \bc|ff0|ALT_INV_Q~q\,
	datae => \bc|ff1|ALT_INV_Q~DUPLICATE_q\,
	combout => \con|fMem|prog~0_combout\);

-- Location: LABCELL_X23_Y48_N3
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


