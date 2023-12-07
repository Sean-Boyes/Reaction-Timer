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

-- DATE "12/05/2023 00:41:46"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LFSR IS
    PORT (
	enable : IN std_logic;
	CLK : IN std_logic;
	LFSR_Reg : OUT std_logic_vector(7 DOWNTO 0)
	);
END LFSR;

-- Design Ports Information
-- LFSR_Reg[0]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LFSR_Reg[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LFSR_Reg[2]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LFSR_Reg[3]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LFSR_Reg[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LFSR_Reg[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LFSR_Reg[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LFSR_Reg[7]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LFSR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_LFSR_Reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \LessThan0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LessThan1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LFSR_Reg[0]~output_o\ : std_logic;
SIGNAL \LFSR_Reg[1]~output_o\ : std_logic;
SIGNAL \LFSR_Reg[2]~output_o\ : std_logic;
SIGNAL \LFSR_Reg[3]~output_o\ : std_logic;
SIGNAL \LFSR_Reg[4]~output_o\ : std_logic;
SIGNAL \LFSR_Reg[5]~output_o\ : std_logic;
SIGNAL \LFSR_Reg[6]~output_o\ : std_logic;
SIGNAL \LFSR_Reg[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \inCLK~combout\ : std_logic;
SIGNAL \inCLK~clkctrl_outclk\ : std_logic;
SIGNAL \instance1|Q~feeder_combout\ : std_logic;
SIGNAL \instance1|Q~q\ : std_logic;
SIGNAL \instance2|Q~feeder_combout\ : std_logic;
SIGNAL \instance2|Q~q\ : std_logic;
SIGNAL \instance3|Q~q\ : std_logic;
SIGNAL \instance4|Q~q\ : std_logic;
SIGNAL \instance5|Q~feeder_combout\ : std_logic;
SIGNAL \instance5|Q~q\ : std_logic;
SIGNAL \instance6|Q~q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \instance0|Q~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~0clkctrl_outclk\ : std_logic;
SIGNAL \LFSR_Reg[0]$latch~combout\ : std_logic;
SIGNAL \LFSR_Reg[1]$latch~combout\ : std_logic;
SIGNAL \LFSR_Reg[2]$latch~combout\ : std_logic;
SIGNAL \LFSR_Reg[3]$latch~combout\ : std_logic;
SIGNAL \instance7|Q~feeder_combout\ : std_logic;
SIGNAL \instance7|Q~q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~0clkctrl_outclk\ : std_logic;
SIGNAL \LFSR_Reg[4]$latch~combout\ : std_logic;
SIGNAL \LFSR_Reg[5]$latch~combout\ : std_logic;
SIGNAL \LFSR_Reg[6]$latch~combout\ : std_logic;
SIGNAL \LFSR_Reg[7]$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_enable <= enable;
ww_CLK <= CLK;
LFSR_Reg <= ww_LFSR_Reg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\LessThan0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \LessThan0~0_combout\);

\inCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inCLK~combout\);

\LessThan1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \LessThan1~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y0_N23
\LFSR_Reg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR_Reg[0]$latch~combout\,
	devoe => ww_devoe,
	o => \LFSR_Reg[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\LFSR_Reg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR_Reg[1]$latch~combout\,
	devoe => ww_devoe,
	o => \LFSR_Reg[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\LFSR_Reg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR_Reg[2]$latch~combout\,
	devoe => ww_devoe,
	o => \LFSR_Reg[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\LFSR_Reg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR_Reg[3]$latch~combout\,
	devoe => ww_devoe,
	o => \LFSR_Reg[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\LFSR_Reg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR_Reg[4]$latch~combout\,
	devoe => ww_devoe,
	o => \LFSR_Reg[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\LFSR_Reg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR_Reg[5]$latch~combout\,
	devoe => ww_devoe,
	o => \LFSR_Reg[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\LFSR_Reg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR_Reg[6]$latch~combout\,
	devoe => ww_devoe,
	o => \LFSR_Reg[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\LFSR_Reg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LFSR_Reg[7]$latch~combout\,
	devoe => ww_devoe,
	o => \LFSR_Reg[7]~output_o\);

-- Location: IOIBUF_X60_Y0_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X59_Y1_N16
inCLK : cycloneive_lcell_comb
-- Equation(s):
-- \inCLK~combout\ = LCELL((\CLK~input_o\ & \enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK~input_o\,
	datad => \enable~input_o\,
	combout => \inCLK~combout\);

-- Location: CLKCTRL_G18
\inCLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inCLK~clkctrl_outclk\);

-- Location: LCCOMB_X59_Y1_N28
\instance1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance1|Q~feeder_combout\ = \instance0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance0|Q~q\,
	combout => \instance1|Q~feeder_combout\);

-- Location: FF_X59_Y1_N29
\instance1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inCLK~clkctrl_outclk\,
	d => \instance1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance1|Q~q\);

-- Location: LCCOMB_X59_Y1_N14
\instance2|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance2|Q~feeder_combout\ = \instance1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance1|Q~q\,
	combout => \instance2|Q~feeder_combout\);

-- Location: FF_X59_Y1_N15
\instance2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inCLK~combout\,
	d => \instance2|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance2|Q~q\);

-- Location: FF_X59_Y1_N9
\instance3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inCLK~combout\,
	asdata => \instance2|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance3|Q~q\);

-- Location: FF_X59_Y1_N19
\instance4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inCLK~clkctrl_outclk\,
	asdata => \instance3|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance4|Q~q\);

-- Location: LCCOMB_X59_Y1_N30
\instance5|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance5|Q~feeder_combout\ = \instance4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance4|Q~q\,
	combout => \instance5|Q~feeder_combout\);

-- Location: FF_X59_Y1_N31
\instance5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inCLK~clkctrl_outclk\,
	d => \instance5|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance5|Q~q\);

-- Location: FF_X59_Y1_N13
\instance6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inCLK~combout\,
	asdata => \instance5|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance6|Q~q\);

-- Location: LCCOMB_X59_Y1_N18
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = \instance5|Q~q\ $ (\instance2|Q~q\ $ (\instance3|Q~q\ $ (\instance6|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance5|Q~q\,
	datab => \instance2|Q~q\,
	datac => \instance3|Q~q\,
	datad => \instance6|Q~q\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X59_Y1_N8
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = \inCLK~combout\ $ (\comb~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inCLK~combout\,
	datad => \comb~0_combout\,
	combout => \comb~1_combout\);

-- Location: FF_X59_Y1_N21
\instance0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inCLK~clkctrl_outclk\,
	asdata => \comb~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance0|Q~q\);

-- Location: LCCOMB_X59_Y1_N2
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\instance3|Q~q\ & ((\instance2|Q~q\) # (\instance1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance2|Q~q\,
	datac => \instance3|Q~q\,
	datad => \instance1|Q~q\,
	combout => \LessThan0~0_combout\);

-- Location: CLKCTRL_G17
\LessThan0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LessThan0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LessThan0~0clkctrl_outclk\);

-- Location: LCCOMB_X59_Y1_N20
\LFSR_Reg[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR_Reg[0]$latch~combout\ = (GLOBAL(\LessThan0~0clkctrl_outclk\) & (\LFSR_Reg[0]$latch~combout\)) # (!GLOBAL(\LessThan0~0clkctrl_outclk\) & ((\instance0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LFSR_Reg[0]$latch~combout\,
	datac => \instance0|Q~q\,
	datad => \LessThan0~0clkctrl_outclk\,
	combout => \LFSR_Reg[0]$latch~combout\);

-- Location: LCCOMB_X58_Y1_N28
\LFSR_Reg[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR_Reg[1]$latch~combout\ = (GLOBAL(\LessThan0~0clkctrl_outclk\) & (\LFSR_Reg[1]$latch~combout\)) # (!GLOBAL(\LessThan0~0clkctrl_outclk\) & ((\instance1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LFSR_Reg[1]$latch~combout\,
	datac => \instance1|Q~q\,
	datad => \LessThan0~0clkctrl_outclk\,
	combout => \LFSR_Reg[1]$latch~combout\);

-- Location: LCCOMB_X59_Y1_N6
\LFSR_Reg[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR_Reg[2]$latch~combout\ = (GLOBAL(\LessThan0~0clkctrl_outclk\) & (\LFSR_Reg[2]$latch~combout\)) # (!GLOBAL(\LessThan0~0clkctrl_outclk\) & ((\instance2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR_Reg[2]$latch~combout\,
	datab => \instance2|Q~q\,
	datad => \LessThan0~0clkctrl_outclk\,
	combout => \LFSR_Reg[2]$latch~combout\);

-- Location: LCCOMB_X59_Y1_N0
\LFSR_Reg[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR_Reg[3]$latch~combout\ = (GLOBAL(\LessThan0~0clkctrl_outclk\) & ((\LFSR_Reg[3]$latch~combout\))) # (!GLOBAL(\LessThan0~0clkctrl_outclk\) & (\instance3|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance3|Q~q\,
	datac => \LessThan0~0clkctrl_outclk\,
	datad => \LFSR_Reg[3]$latch~combout\,
	combout => \LFSR_Reg[3]$latch~combout\);

-- Location: LCCOMB_X59_Y1_N4
\instance7|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance7|Q~feeder_combout\ = \instance6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance6|Q~q\,
	combout => \instance7|Q~feeder_combout\);

-- Location: FF_X59_Y1_N5
\instance7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inCLK~combout\,
	d => \instance7|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance7|Q~q\);

-- Location: LCCOMB_X59_Y1_N24
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\instance7|Q~q\ & ((\instance5|Q~q\) # (\instance6|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance7|Q~q\,
	datac => \instance5|Q~q\,
	datad => \instance6|Q~q\,
	combout => \LessThan1~0_combout\);

-- Location: CLKCTRL_G15
\LessThan1~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LessThan1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LessThan1~0clkctrl_outclk\);

-- Location: LCCOMB_X59_Y1_N26
\LFSR_Reg[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR_Reg[4]$latch~combout\ = (GLOBAL(\LessThan1~0clkctrl_outclk\) & (\LFSR_Reg[4]$latch~combout\)) # (!GLOBAL(\LessThan1~0clkctrl_outclk\) & ((\instance4|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0clkctrl_outclk\,
	datac => \LFSR_Reg[4]$latch~combout\,
	datad => \instance4|Q~q\,
	combout => \LFSR_Reg[4]$latch~combout\);

-- Location: LCCOMB_X58_Y1_N14
\LFSR_Reg[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR_Reg[5]$latch~combout\ = (GLOBAL(\LessThan1~0clkctrl_outclk\) & (\LFSR_Reg[5]$latch~combout\)) # (!GLOBAL(\LessThan1~0clkctrl_outclk\) & ((\instance5|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LFSR_Reg[5]$latch~combout\,
	datac => \instance5|Q~q\,
	datad => \LessThan1~0clkctrl_outclk\,
	combout => \LFSR_Reg[5]$latch~combout\);

-- Location: LCCOMB_X59_Y1_N10
\LFSR_Reg[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR_Reg[6]$latch~combout\ = (GLOBAL(\LessThan1~0clkctrl_outclk\) & (\LFSR_Reg[6]$latch~combout\)) # (!GLOBAL(\LessThan1~0clkctrl_outclk\) & ((\instance6|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LFSR_Reg[6]$latch~combout\,
	datac => \instance6|Q~q\,
	datad => \LessThan1~0clkctrl_outclk\,
	combout => \LFSR_Reg[6]$latch~combout\);

-- Location: LCCOMB_X59_Y1_N22
\LFSR_Reg[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR_Reg[7]$latch~combout\ = (GLOBAL(\LessThan1~0clkctrl_outclk\) & ((\LFSR_Reg[7]$latch~combout\))) # (!GLOBAL(\LessThan1~0clkctrl_outclk\) & (\instance7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance7|Q~q\,
	datac => \LFSR_Reg[7]$latch~combout\,
	datad => \LessThan1~0clkctrl_outclk\,
	combout => \LFSR_Reg[7]$latch~combout\);

ww_LFSR_Reg(0) <= \LFSR_Reg[0]~output_o\;

ww_LFSR_Reg(1) <= \LFSR_Reg[1]~output_o\;

ww_LFSR_Reg(2) <= \LFSR_Reg[2]~output_o\;

ww_LFSR_Reg(3) <= \LFSR_Reg[3]~output_o\;

ww_LFSR_Reg(4) <= \LFSR_Reg[4]~output_o\;

ww_LFSR_Reg(5) <= \LFSR_Reg[5]~output_o\;

ww_LFSR_Reg(6) <= \LFSR_Reg[6]~output_o\;

ww_LFSR_Reg(7) <= \LFSR_Reg[7]~output_o\;
END structure;


