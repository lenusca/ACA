-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "11/28/2018 23:46:45"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	final IS
    PORT (
	x : IN std_logic_vector(14 DOWNTO 0);
	final : BUFFER std_logic_vector(10 DOWNTO 0)
	);
END final;

-- Design Ports Information
-- final[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[4]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[9]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final[10]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[11]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[8]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[12]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[13]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_final : std_logic_vector(10 DOWNTO 0);
SIGNAL \final[0]~output_o\ : std_logic;
SIGNAL \final[1]~output_o\ : std_logic;
SIGNAL \final[2]~output_o\ : std_logic;
SIGNAL \final[3]~output_o\ : std_logic;
SIGNAL \final[4]~output_o\ : std_logic;
SIGNAL \final[5]~output_o\ : std_logic;
SIGNAL \final[6]~output_o\ : std_logic;
SIGNAL \final[7]~output_o\ : std_logic;
SIGNAL \final[8]~output_o\ : std_logic;
SIGNAL \final[9]~output_o\ : std_logic;
SIGNAL \final[10]~output_o\ : std_logic;
SIGNAL \x[11]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \decoder|xor12x34|dataOut~0_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \decoder|xor1x2|dataOut~0_combout\ : std_logic;
SIGNAL \x[12]~input_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \x[8]~input_o\ : std_logic;
SIGNAL \decoder|xor5|dataOut~combout\ : std_logic;
SIGNAL \x[9]~input_o\ : std_logic;
SIGNAL \decoder|xor12x56|dataOut~0_combout\ : std_logic;
SIGNAL \verif|and0x7|dataOut~2_combout\ : std_logic;
SIGNAL \decoder|xor13x57|dataOut~0_combout\ : std_logic;
SIGNAL \x[10]~input_o\ : std_logic;
SIGNAL \x[13]~input_o\ : std_logic;
SIGNAL \decoder|xor13x57|dataOut~combout\ : std_logic;
SIGNAL \x[14]~input_o\ : std_logic;
SIGNAL \decoder|xor89x1011|dataOut~1_combout\ : std_logic;
SIGNAL \decoder|xor89x1011|dataOut~0_combout\ : std_logic;
SIGNAL \verif|and3x4|dataOut~2_combout\ : std_logic;
SIGNAL \mens|xor0|dataOut~combout\ : std_logic;
SIGNAL \verif|and0x6|dataOut~2_combout\ : std_logic;
SIGNAL \mens|xor1|dataOut~combout\ : std_logic;
SIGNAL \verif|and0x5|dataOut~2_combout\ : std_logic;
SIGNAL \mens|xor2|dataOut~combout\ : std_logic;
SIGNAL \decoder|xor89x1011|dataOut~combout\ : std_logic;
SIGNAL \mens|xor3|dataOut~combout\ : std_logic;
SIGNAL \verif|and1x4|dataOut~2_combout\ : std_logic;
SIGNAL \mens|xor4|dataOut~combout\ : std_logic;
SIGNAL \mens|xor5|dataOut~combout\ : std_logic;
SIGNAL \mens|xor6|dataOut~combout\ : std_logic;
SIGNAL \verif|and2x4|dataOut~2_combout\ : std_logic;
SIGNAL \mens|xor7|dataOut~combout\ : std_logic;
SIGNAL \mens|xor8|dataOut~combout\ : std_logic;
SIGNAL \mens|xor9|dataOut~combout\ : std_logic;
SIGNAL \decoder|xor12x34|dataOut~1_combout\ : std_logic;
SIGNAL \mens|xor10|dataOut~combout\ : std_logic;

BEGIN

ww_x <= x;
final <= ww_final;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X33_Y14_N9
\final[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mens|xor0|dataOut~combout\,
	devoe => ww_devoe,
	o => \final[0]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\final[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mens|xor1|dataOut~combout\,
	devoe => ww_devoe,
	o => \final[1]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\final[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mens|xor2|dataOut~combout\,
	devoe => ww_devoe,
	o => \final[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\final[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mens|xor3|dataOut~combout\,
	devoe => ww_devoe,
	o => \final[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\final[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mens|xor4|dataOut~combout\,
	devoe => ww_devoe,
	o => \final[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\final[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mens|xor5|dataOut~combout\,
	devoe => ww_devoe,
	o => \final[5]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\final[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mens|xor6|dataOut~combout\,
	devoe => ww_devoe,
	o => \final[6]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\final[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mens|xor7|dataOut~combout\,
	devoe => ww_devoe,
	o => \final[7]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\final[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mens|xor8|dataOut~combout\,
	devoe => ww_devoe,
	o => \final[8]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\final[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mens|xor9|dataOut~combout\,
	devoe => ww_devoe,
	o => \final[9]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\final[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mens|xor10|dataOut~combout\,
	devoe => ww_devoe,
	o => \final[10]~output_o\);

-- Location: IOIBUF_X33_Y15_N1
\x[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(11),
	o => \x[11]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\x[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\x[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\x[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: LCCOMB_X27_Y18_N10
\decoder|xor12x34|dataOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor12x34|dataOut~0_combout\ = \x[11]~input_o\ $ (\x[4]~input_o\ $ (\x[5]~input_o\ $ (\x[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[11]~input_o\,
	datab => \x[4]~input_o\,
	datac => \x[5]~input_o\,
	datad => \x[6]~input_o\,
	combout => \decoder|xor12x34|dataOut~0_combout\);

-- Location: IOIBUF_X33_Y12_N1
\x[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\x[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\x[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\x[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LCCOMB_X27_Y18_N0
\decoder|xor1x2|dataOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor1x2|dataOut~0_combout\ = \x[1]~input_o\ $ (\x[3]~input_o\ $ (\x[0]~input_o\ $ (\x[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[0]~input_o\,
	datad => \x[2]~input_o\,
	combout => \decoder|xor1x2|dataOut~0_combout\);

-- Location: IOIBUF_X16_Y31_N1
\x[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(12),
	o => \x[12]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\x[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\x[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(8),
	o => \x[8]~input_o\);

-- Location: LCCOMB_X27_Y22_N26
\decoder|xor5|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor5|dataOut~combout\ = \x[7]~input_o\ $ (\x[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[7]~input_o\,
	datad => \x[8]~input_o\,
	combout => \decoder|xor5|dataOut~combout\);

-- Location: IOIBUF_X31_Y31_N1
\x[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(9),
	o => \x[9]~input_o\);

-- Location: LCCOMB_X27_Y22_N28
\decoder|xor12x56|dataOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor12x56|dataOut~0_combout\ = \decoder|xor1x2|dataOut~0_combout\ $ (\x[12]~input_o\ $ (\decoder|xor5|dataOut~combout\ $ (\x[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|xor1x2|dataOut~0_combout\,
	datab => \x[12]~input_o\,
	datac => \decoder|xor5|dataOut~combout\,
	datad => \x[9]~input_o\,
	combout => \decoder|xor12x56|dataOut~0_combout\);

-- Location: LCCOMB_X27_Y22_N18
\verif|and0x7|dataOut~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \verif|and0x7|dataOut~2_combout\ = (\decoder|xor12x56|dataOut~0_combout\ & (\decoder|xor12x34|dataOut~0_combout\ $ (\decoder|xor1x2|dataOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|xor12x34|dataOut~0_combout\,
	datac => \decoder|xor1x2|dataOut~0_combout\,
	datad => \decoder|xor12x56|dataOut~0_combout\,
	combout => \verif|and0x7|dataOut~2_combout\);

-- Location: LCCOMB_X27_Y18_N12
\decoder|xor13x57|dataOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor13x57|dataOut~0_combout\ = \x[1]~input_o\ $ (\x[0]~input_o\ $ (\x[5]~input_o\ $ (\x[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \x[0]~input_o\,
	datac => \x[5]~input_o\,
	datad => \x[4]~input_o\,
	combout => \decoder|xor13x57|dataOut~0_combout\);

-- Location: IOIBUF_X16_Y31_N8
\x[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(10),
	o => \x[10]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\x[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(13),
	o => \x[13]~input_o\);

-- Location: LCCOMB_X27_Y22_N22
\decoder|xor13x57|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor13x57|dataOut~combout\ = \decoder|xor13x57|dataOut~0_combout\ $ (\x[10]~input_o\ $ (\decoder|xor5|dataOut~combout\ $ (\x[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|xor13x57|dataOut~0_combout\,
	datab => \x[10]~input_o\,
	datac => \decoder|xor5|dataOut~combout\,
	datad => \x[13]~input_o\,
	combout => \decoder|xor13x57|dataOut~combout\);

-- Location: IOIBUF_X33_Y27_N1
\x[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(14),
	o => \x[14]~input_o\);

-- Location: LCCOMB_X27_Y22_N24
\decoder|xor89x1011|dataOut~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor89x1011|dataOut~1_combout\ = \x[9]~input_o\ $ (\x[14]~input_o\ $ (\x[10]~input_o\ $ (\x[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[9]~input_o\,
	datab => \x[14]~input_o\,
	datac => \x[10]~input_o\,
	datad => \x[7]~input_o\,
	combout => \decoder|xor89x1011|dataOut~1_combout\);

-- Location: LCCOMB_X27_Y18_N22
\decoder|xor89x1011|dataOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor89x1011|dataOut~0_combout\ = \x[2]~input_o\ $ (\x[4]~input_o\ $ (\x[0]~input_o\ $ (\x[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[4]~input_o\,
	datac => \x[0]~input_o\,
	datad => \x[6]~input_o\,
	combout => \decoder|xor89x1011|dataOut~0_combout\);

-- Location: LCCOMB_X27_Y18_N24
\verif|and3x4|dataOut~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \verif|and3x4|dataOut~2_combout\ = (\decoder|xor13x57|dataOut~combout\ & (\decoder|xor89x1011|dataOut~1_combout\ $ (\decoder|xor89x1011|dataOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|xor13x57|dataOut~combout\,
	datab => \decoder|xor89x1011|dataOut~1_combout\,
	datac => \decoder|xor89x1011|dataOut~0_combout\,
	combout => \verif|and3x4|dataOut~2_combout\);

-- Location: LCCOMB_X27_Y18_N2
\mens|xor0|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mens|xor0|dataOut~combout\ = \x[0]~input_o\ $ (((\verif|and0x7|dataOut~2_combout\ & \verif|and3x4|dataOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verif|and0x7|dataOut~2_combout\,
	datab => \verif|and3x4|dataOut~2_combout\,
	datac => \x[0]~input_o\,
	combout => \mens|xor0|dataOut~combout\);

-- Location: LCCOMB_X27_Y18_N26
\verif|and0x6|dataOut~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \verif|and0x6|dataOut~2_combout\ = (\decoder|xor13x57|dataOut~combout\ & (\decoder|xor89x1011|dataOut~1_combout\ $ (!\decoder|xor89x1011|dataOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|xor13x57|dataOut~combout\,
	datab => \decoder|xor89x1011|dataOut~1_combout\,
	datac => \decoder|xor89x1011|dataOut~0_combout\,
	combout => \verif|and0x6|dataOut~2_combout\);

-- Location: LCCOMB_X27_Y18_N20
\mens|xor1|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mens|xor1|dataOut~combout\ = \x[1]~input_o\ $ (((\verif|and0x7|dataOut~2_combout\ & \verif|and0x6|dataOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verif|and0x7|dataOut~2_combout\,
	datac => \verif|and0x6|dataOut~2_combout\,
	datad => \x[1]~input_o\,
	combout => \mens|xor1|dataOut~combout\);

-- Location: LCCOMB_X27_Y18_N28
\verif|and0x5|dataOut~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \verif|and0x5|dataOut~2_combout\ = (!\decoder|xor13x57|dataOut~combout\ & (\decoder|xor89x1011|dataOut~1_combout\ $ (\decoder|xor89x1011|dataOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|xor13x57|dataOut~combout\,
	datab => \decoder|xor89x1011|dataOut~1_combout\,
	datac => \decoder|xor89x1011|dataOut~0_combout\,
	combout => \verif|and0x5|dataOut~2_combout\);

-- Location: LCCOMB_X27_Y18_N6
\mens|xor2|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mens|xor2|dataOut~combout\ = \x[2]~input_o\ $ (((\verif|and0x5|dataOut~2_combout\ & \verif|and0x7|dataOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verif|and0x5|dataOut~2_combout\,
	datac => \verif|and0x7|dataOut~2_combout\,
	datad => \x[2]~input_o\,
	combout => \mens|xor2|dataOut~combout\);

-- Location: LCCOMB_X27_Y18_N16
\decoder|xor89x1011|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor89x1011|dataOut~combout\ = \decoder|xor89x1011|dataOut~0_combout\ $ (\decoder|xor89x1011|dataOut~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decoder|xor89x1011|dataOut~0_combout\,
	datad => \decoder|xor89x1011|dataOut~1_combout\,
	combout => \decoder|xor89x1011|dataOut~combout\);

-- Location: LCCOMB_X27_Y18_N8
\mens|xor3|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mens|xor3|dataOut~combout\ = \x[3]~input_o\ $ (((!\decoder|xor13x57|dataOut~combout\ & (!\decoder|xor89x1011|dataOut~combout\ & \verif|and0x7|dataOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|xor13x57|dataOut~combout\,
	datab => \decoder|xor89x1011|dataOut~combout\,
	datac => \verif|and0x7|dataOut~2_combout\,
	datad => \x[3]~input_o\,
	combout => \mens|xor3|dataOut~combout\);

-- Location: LCCOMB_X27_Y22_N12
\verif|and1x4|dataOut~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \verif|and1x4|dataOut~2_combout\ = (\decoder|xor12x56|dataOut~0_combout\ & (\decoder|xor12x34|dataOut~0_combout\ $ (!\decoder|xor1x2|dataOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|xor12x34|dataOut~0_combout\,
	datac => \decoder|xor1x2|dataOut~0_combout\,
	datad => \decoder|xor12x56|dataOut~0_combout\,
	combout => \verif|and1x4|dataOut~2_combout\);

-- Location: LCCOMB_X27_Y18_N18
\mens|xor4|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mens|xor4|dataOut~combout\ = \x[4]~input_o\ $ (((\verif|and1x4|dataOut~2_combout\ & \verif|and3x4|dataOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verif|and1x4|dataOut~2_combout\,
	datab => \verif|and3x4|dataOut~2_combout\,
	datad => \x[4]~input_o\,
	combout => \mens|xor4|dataOut~combout\);

-- Location: LCCOMB_X27_Y18_N4
\mens|xor5|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mens|xor5|dataOut~combout\ = \x[5]~input_o\ $ (((\verif|and0x6|dataOut~2_combout\ & \verif|and1x4|dataOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verif|and0x6|dataOut~2_combout\,
	datac => \x[5]~input_o\,
	datad => \verif|and1x4|dataOut~2_combout\,
	combout => \mens|xor5|dataOut~combout\);

-- Location: LCCOMB_X27_Y18_N30
\mens|xor6|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mens|xor6|dataOut~combout\ = \x[6]~input_o\ $ (((\verif|and1x4|dataOut~2_combout\ & \verif|and0x5|dataOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verif|and1x4|dataOut~2_combout\,
	datab => \verif|and0x5|dataOut~2_combout\,
	datad => \x[6]~input_o\,
	combout => \mens|xor6|dataOut~combout\);

-- Location: LCCOMB_X27_Y22_N6
\verif|and2x4|dataOut~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \verif|and2x4|dataOut~2_combout\ = (!\decoder|xor12x56|dataOut~0_combout\ & (\decoder|xor12x34|dataOut~0_combout\ $ (\decoder|xor1x2|dataOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|xor12x34|dataOut~0_combout\,
	datac => \decoder|xor1x2|dataOut~0_combout\,
	datad => \decoder|xor12x56|dataOut~0_combout\,
	combout => \verif|and2x4|dataOut~2_combout\);

-- Location: LCCOMB_X27_Y22_N10
\mens|xor7|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mens|xor7|dataOut~combout\ = \x[7]~input_o\ $ (((\verif|and2x4|dataOut~2_combout\ & \verif|and3x4|dataOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verif|and2x4|dataOut~2_combout\,
	datab => \verif|and3x4|dataOut~2_combout\,
	datad => \x[7]~input_o\,
	combout => \mens|xor7|dataOut~combout\);

-- Location: LCCOMB_X27_Y22_N4
\mens|xor8|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mens|xor8|dataOut~combout\ = \x[8]~input_o\ $ (((\verif|and2x4|dataOut~2_combout\ & \verif|and0x6|dataOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verif|and2x4|dataOut~2_combout\,
	datac => \verif|and0x6|dataOut~2_combout\,
	datad => \x[8]~input_o\,
	combout => \mens|xor8|dataOut~combout\);

-- Location: LCCOMB_X27_Y22_N14
\mens|xor9|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mens|xor9|dataOut~combout\ = \x[9]~input_o\ $ (((\verif|and2x4|dataOut~2_combout\ & \verif|and0x5|dataOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verif|and2x4|dataOut~2_combout\,
	datac => \verif|and0x5|dataOut~2_combout\,
	datad => \x[9]~input_o\,
	combout => \mens|xor9|dataOut~combout\);

-- Location: LCCOMB_X27_Y22_N16
\decoder|xor12x34|dataOut~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decoder|xor12x34|dataOut~1_combout\ = \decoder|xor12x34|dataOut~0_combout\ $ (\decoder|xor1x2|dataOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|xor12x34|dataOut~0_combout\,
	datac => \decoder|xor1x2|dataOut~0_combout\,
	combout => \decoder|xor12x34|dataOut~1_combout\);

-- Location: LCCOMB_X27_Y22_N0
\mens|xor10|dataOut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mens|xor10|dataOut~combout\ = \x[10]~input_o\ $ (((\verif|and3x4|dataOut~2_combout\ & (!\decoder|xor12x56|dataOut~0_combout\ & !\decoder|xor12x34|dataOut~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verif|and3x4|dataOut~2_combout\,
	datab => \decoder|xor12x56|dataOut~0_combout\,
	datac => \x[10]~input_o\,
	datad => \decoder|xor12x34|dataOut~1_combout\,
	combout => \mens|xor10|dataOut~combout\);

ww_final(0) <= \final[0]~output_o\;

ww_final(1) <= \final[1]~output_o\;

ww_final(2) <= \final[2]~output_o\;

ww_final(3) <= \final[3]~output_o\;

ww_final(4) <= \final[4]~output_o\;

ww_final(5) <= \final[5]~output_o\;

ww_final(6) <= \final[6]~output_o\;

ww_final(7) <= \final[7]~output_o\;

ww_final(8) <= \final[8]~output_o\;

ww_final(9) <= \final[9]~output_o\;

ww_final(10) <= \final[10]~output_o\;
END structure;


