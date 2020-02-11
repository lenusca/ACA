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

-- DATE "12/04/2018 12:00:49"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	encoder IS
    PORT (
	m : IN std_logic;
	x : BUFFER std_logic;
	clk : IN std_logic
	);
END encoder;

-- Design Ports Information
-- x	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_m : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \controlado1rp1|cout[0]~3_combout\ : std_logic;
SIGNAL \controlado1rp1|cout[1]~2_combout\ : std_logic;
SIGNAL \controlado1rp1|cout[2]~0_combout\ : std_logic;
SIGNAL \controlado1rp1|cout[3]~1_combout\ : std_logic;
SIGNAL \m~input_o\ : std_logic;
SIGNAL \flipflop1|nQ~q\ : std_logic;
SIGNAL \controladorp2|Mux0~0_combout\ : std_logic;
SIGNAL \xor1|y~combout\ : std_logic;
SIGNAL \flipflop3|nQ~q\ : std_logic;
SIGNAL \controladorp2|Mux2~0_combout\ : std_logic;
SIGNAL \xor3|y~combout\ : std_logic;
SIGNAL \flipflop2|nQ~q\ : std_logic;
SIGNAL \controladorp2|Mux1~0_combout\ : std_logic;
SIGNAL \xor2|y~combout\ : std_logic;
SIGNAL \flipflop4|nQ~q\ : std_logic;
SIGNAL \controladorp2|Mux3~0_combout\ : std_logic;
SIGNAL \xor4|y~combout\ : std_logic;
SIGNAL \mux2_1|dataOut~0_combout\ : std_logic;
SIGNAL \mux2_1|dataOut~1_combout\ : std_logic;
SIGNAL \mux2_1|dataOut~2_combout\ : std_logic;
SIGNAL \controlado1rp1|cout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_m <= m;
x <= ww_x;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X10_Y0_N9
\x~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux2_1|dataOut~2_combout\,
	devoe => ww_devoe,
	o => \x~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y1_N26
\controlado1rp1|cout[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlado1rp1|cout[0]~3_combout\ = !\controlado1rp1|cout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlado1rp1|cout\(0),
	combout => \controlado1rp1|cout[0]~3_combout\);

-- Location: FF_X11_Y1_N27
\controlado1rp1|cout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlado1rp1|cout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlado1rp1|cout\(0));

-- Location: LCCOMB_X11_Y1_N16
\controlado1rp1|cout[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlado1rp1|cout[1]~2_combout\ = \controlado1rp1|cout\(1) $ (\controlado1rp1|cout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlado1rp1|cout\(1),
	datad => \controlado1rp1|cout\(0),
	combout => \controlado1rp1|cout[1]~2_combout\);

-- Location: FF_X11_Y1_N17
\controlado1rp1|cout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlado1rp1|cout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlado1rp1|cout\(1));

-- Location: LCCOMB_X11_Y1_N28
\controlado1rp1|cout[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlado1rp1|cout[2]~0_combout\ = \controlado1rp1|cout\(2) $ (((\controlado1rp1|cout\(0) & \controlado1rp1|cout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlado1rp1|cout\(0),
	datac => \controlado1rp1|cout\(2),
	datad => \controlado1rp1|cout\(1),
	combout => \controlado1rp1|cout[2]~0_combout\);

-- Location: FF_X11_Y1_N29
\controlado1rp1|cout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlado1rp1|cout[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlado1rp1|cout\(2));

-- Location: LCCOMB_X11_Y1_N22
\controlado1rp1|cout[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controlado1rp1|cout[3]~1_combout\ = \controlado1rp1|cout\(3) $ (((\controlado1rp1|cout\(0) & (\controlado1rp1|cout\(2) & \controlado1rp1|cout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlado1rp1|cout\(0),
	datab => \controlado1rp1|cout\(2),
	datac => \controlado1rp1|cout\(3),
	datad => \controlado1rp1|cout\(1),
	combout => \controlado1rp1|cout[3]~1_combout\);

-- Location: FF_X11_Y1_N23
\controlado1rp1|cout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlado1rp1|cout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlado1rp1|cout\(3));

-- Location: IOIBUF_X12_Y0_N1
\m~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m,
	o => \m~input_o\);

-- Location: FF_X11_Y1_N5
\flipflop1|nQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xor1|y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop1|nQ~q\);

-- Location: LCCOMB_X11_Y1_N2
\controladorp2|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controladorp2|Mux0~0_combout\ = (!\controlado1rp1|cout\(3) & ((\controlado1rp1|cout\(1)) # ((\controlado1rp1|cout\(0)) # (\controlado1rp1|cout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlado1rp1|cout\(3),
	datab => \controlado1rp1|cout\(1),
	datac => \controlado1rp1|cout\(0),
	datad => \controlado1rp1|cout\(2),
	combout => \controladorp2|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y1_N4
\xor1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor1|y~combout\ = \flipflop1|nQ~q\ $ (((!\controladorp2|Mux0~0_combout\) # (!\m~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~input_o\,
	datac => \flipflop1|nQ~q\,
	datad => \controladorp2|Mux0~0_combout\,
	combout => \xor1|y~combout\);

-- Location: FF_X11_Y1_N1
\flipflop3|nQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xor3|y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop3|nQ~q\);

-- Location: LCCOMB_X11_Y1_N10
\controladorp2|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controladorp2|Mux2~0_combout\ = (\controlado1rp1|cout\(3) & (!\controlado1rp1|cout\(2) & ((\controlado1rp1|cout\(0)) # (!\controlado1rp1|cout\(1))))) # (!\controlado1rp1|cout\(3) & ((\controlado1rp1|cout\(0) $ (\controlado1rp1|cout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlado1rp1|cout\(3),
	datab => \controlado1rp1|cout\(2),
	datac => \controlado1rp1|cout\(0),
	datad => \controlado1rp1|cout\(1),
	combout => \controladorp2|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y1_N0
\xor3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor3|y~combout\ = \flipflop3|nQ~q\ $ (((!\controladorp2|Mux2~0_combout\) # (!\m~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~input_o\,
	datac => \flipflop3|nQ~q\,
	datad => \controladorp2|Mux2~0_combout\,
	combout => \xor3|y~combout\);

-- Location: FF_X11_Y1_N9
\flipflop2|nQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xor2|y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop2|nQ~q\);

-- Location: LCCOMB_X11_Y1_N18
\controladorp2|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controladorp2|Mux1~0_combout\ = (\controlado1rp1|cout\(3) & (!\controlado1rp1|cout\(2) & ((!\controlado1rp1|cout\(0)) # (!\controlado1rp1|cout\(1))))) # (!\controlado1rp1|cout\(3) & (\controlado1rp1|cout\(2) $ (((\controlado1rp1|cout\(1)) # 
-- (\controlado1rp1|cout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlado1rp1|cout\(3),
	datab => \controlado1rp1|cout\(1),
	datac => \controlado1rp1|cout\(0),
	datad => \controlado1rp1|cout\(2),
	combout => \controladorp2|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y1_N8
\xor2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor2|y~combout\ = \flipflop2|nQ~q\ $ (((!\controladorp2|Mux1~0_combout\) # (!\m~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~input_o\,
	datac => \flipflop2|nQ~q\,
	datad => \controladorp2|Mux1~0_combout\,
	combout => \xor2|y~combout\);

-- Location: FF_X11_Y1_N25
\flipflop4|nQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \xor4|y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipflop4|nQ~q\);

-- Location: LCCOMB_X11_Y1_N6
\controladorp2|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \controladorp2|Mux3~0_combout\ = (\controlado1rp1|cout\(3) & (!\controlado1rp1|cout\(2) & ((\controlado1rp1|cout\(1)) # (!\controlado1rp1|cout\(0))))) # (!\controlado1rp1|cout\(3) & (\controlado1rp1|cout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlado1rp1|cout\(0),
	datab => \controlado1rp1|cout\(2),
	datac => \controlado1rp1|cout\(3),
	datad => \controlado1rp1|cout\(1),
	combout => \controladorp2|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y1_N24
\xor4|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor4|y~combout\ = \flipflop4|nQ~q\ $ (((!\controladorp2|Mux3~0_combout\) # (!\m~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~input_o\,
	datac => \flipflop4|nQ~q\,
	datad => \controladorp2|Mux3~0_combout\,
	combout => \xor4|y~combout\);

-- Location: LCCOMB_X11_Y1_N12
\mux2_1|dataOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2_1|dataOut~0_combout\ = (\controlado1rp1|cout\(0) & ((\controlado1rp1|cout\(1) & ((!\xor4|y~combout\))) # (!\controlado1rp1|cout\(1) & (!\xor2|y~combout\)))) # (!\controlado1rp1|cout\(0) & (((\controlado1rp1|cout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlado1rp1|cout\(0),
	datab => \xor2|y~combout\,
	datac => \xor4|y~combout\,
	datad => \controlado1rp1|cout\(1),
	combout => \mux2_1|dataOut~0_combout\);

-- Location: LCCOMB_X11_Y1_N30
\mux2_1|dataOut~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2_1|dataOut~1_combout\ = (\controlado1rp1|cout\(0) & (((\mux2_1|dataOut~0_combout\)))) # (!\controlado1rp1|cout\(0) & ((\mux2_1|dataOut~0_combout\ & ((!\xor3|y~combout\))) # (!\mux2_1|dataOut~0_combout\ & (!\xor1|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlado1rp1|cout\(0),
	datab => \xor1|y~combout\,
	datac => \xor3|y~combout\,
	datad => \mux2_1|dataOut~0_combout\,
	combout => \mux2_1|dataOut~1_combout\);

-- Location: LCCOMB_X11_Y1_N20
\mux2_1|dataOut~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2_1|dataOut~2_combout\ = (\controlado1rp1|cout\(2) & ((\controlado1rp1|cout\(3) & (\mux2_1|dataOut~1_combout\)) # (!\controlado1rp1|cout\(3) & ((\m~input_o\))))) # (!\controlado1rp1|cout\(2) & (((\m~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlado1rp1|cout\(2),
	datab => \controlado1rp1|cout\(3),
	datac => \mux2_1|dataOut~1_combout\,
	datad => \m~input_o\,
	combout => \mux2_1|dataOut~2_combout\);

ww_x <= \x~output_o\;
END structure;


