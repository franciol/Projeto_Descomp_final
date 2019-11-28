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

-- DATE "11/28/2019 13:43:57"

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

ENTITY 	UC_ULA IS
    PORT (
	funct : IN std_logic_vector(5 DOWNTO 0);
	ALUop : IN std_logic_vector(2 DOWNTO 0);
	ALUctr : OUT std_logic_vector(3 DOWNTO 0)
	);
END UC_ULA;

ARCHITECTURE structure OF UC_ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_funct : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ALUop : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ALUctr : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALUctr[0]~output_o\ : std_logic;
SIGNAL \ALUctr[1]~output_o\ : std_logic;
SIGNAL \ALUctr[2]~output_o\ : std_logic;
SIGNAL \ALUctr[3]~output_o\ : std_logic;
SIGNAL \ALUop[2]~input_o\ : std_logic;
SIGNAL \ALUop[1]~input_o\ : std_logic;
SIGNAL \ALUctr~0_combout\ : std_logic;
SIGNAL \funct[0]~input_o\ : std_logic;
SIGNAL \funct[2]~input_o\ : std_logic;
SIGNAL \funct[3]~input_o\ : std_logic;
SIGNAL \funct[4]~input_o\ : std_logic;
SIGNAL \ALUctr~1_combout\ : std_logic;
SIGNAL \funct[5]~input_o\ : std_logic;
SIGNAL \ALUctr~2_combout\ : std_logic;
SIGNAL \ALUop[0]~input_o\ : std_logic;
SIGNAL \ALUctr~3_combout\ : std_logic;
SIGNAL \funct[1]~input_o\ : std_logic;
SIGNAL \ALUctr~4_combout\ : std_logic;
SIGNAL \ALUctr~5_combout\ : std_logic;

BEGIN

ww_funct <= funct;
ww_ALUop <= ALUop;
ALUctr <= ww_ALUctr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ALUctr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUctr~0_combout\,
	devoe => ww_devoe,
	o => \ALUctr[0]~output_o\);

\ALUctr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUctr~3_combout\,
	devoe => ww_devoe,
	o => \ALUctr[1]~output_o\);

\ALUctr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUctr~5_combout\,
	devoe => ww_devoe,
	o => \ALUctr[2]~output_o\);

\ALUctr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUctr[3]~output_o\);

\ALUop[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUop(2),
	o => \ALUop[2]~input_o\);

\ALUop[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUop(1),
	o => \ALUop[1]~input_o\);

\ALUctr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUctr~0_combout\ = (\ALUop[2]~input_o\ & !\ALUop[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUop[2]~input_o\,
	datad => \ALUop[1]~input_o\,
	combout => \ALUctr~0_combout\);

\funct[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(0),
	o => \funct[0]~input_o\);

\funct[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(2),
	o => \funct[2]~input_o\);

\funct[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(3),
	o => \funct[3]~input_o\);

\funct[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(4),
	o => \funct[4]~input_o\);

\ALUctr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUctr~1_combout\ = (!\funct[0]~input_o\ & (!\funct[2]~input_o\ & (!\funct[3]~input_o\ & !\funct[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \funct[0]~input_o\,
	datab => \funct[2]~input_o\,
	datac => \funct[3]~input_o\,
	datad => \funct[4]~input_o\,
	combout => \ALUctr~1_combout\);

\funct[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(5),
	o => \funct[5]~input_o\);

\ALUctr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUctr~2_combout\ = (\ALUctr~1_combout\ & (\funct[5]~input_o\ & !\ALUop[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctr~1_combout\,
	datab => \funct[5]~input_o\,
	datad => \ALUop[2]~input_o\,
	combout => \ALUctr~2_combout\);

\ALUop[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUop(0),
	o => \ALUop[0]~input_o\);

\ALUctr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUctr~3_combout\ = (\ALUop[0]~input_o\ & (((!\ALUop[1]~input_o\)))) # (!\ALUop[0]~input_o\ & ((\ALUop[1]~input_o\ & ((!\ALUop[2]~input_o\))) # (!\ALUop[1]~input_o\ & (\ALUctr~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctr~2_combout\,
	datab => \ALUop[0]~input_o\,
	datac => \ALUop[2]~input_o\,
	datad => \ALUop[1]~input_o\,
	combout => \ALUctr~3_combout\);

\funct[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(1),
	o => \funct[1]~input_o\);

\ALUctr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUctr~4_combout\ = (\ALUop[0]~input_o\ & (\ALUctr~0_combout\)) # (!\ALUop[0]~input_o\ & (((\ALUctr~2_combout\ & \funct[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctr~0_combout\,
	datab => \ALUctr~2_combout\,
	datac => \funct[1]~input_o\,
	datad => \ALUop[0]~input_o\,
	combout => \ALUctr~4_combout\);

\ALUctr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUctr~5_combout\ = (\ALUctr~4_combout\) # ((\ALUop[1]~input_o\ & (!\ALUop[2]~input_o\ & !\ALUop[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctr~4_combout\,
	datab => \ALUop[1]~input_o\,
	datac => \ALUop[2]~input_o\,
	datad => \ALUop[0]~input_o\,
	combout => \ALUctr~5_combout\);

ww_ALUctr(0) <= \ALUctr[0]~output_o\;

ww_ALUctr(1) <= \ALUctr[1]~output_o\;

ww_ALUctr(2) <= \ALUctr[2]~output_o\;

ww_ALUctr(3) <= \ALUctr[3]~output_o\;
END structure;


