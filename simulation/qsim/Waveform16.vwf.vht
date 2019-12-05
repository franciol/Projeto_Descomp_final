-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/05/2019 14:57:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mips
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mips_vhd_vec_tst IS
END mips_vhd_vec_tst;
ARCHITECTURE mips_arch OF mips_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL inst_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL program_c_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaZOUT : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL selbeq : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL ula_signal_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL zout : STD_LOGIC_VECTOR(0 DOWNTO 0);
COMPONENT mips
	PORT (
	clk : IN STD_LOGIC;
	inst_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	program_c_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaA : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaB : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaZOUT : BUFFER STD_LOGIC_VECTOR(0 DOWNTO 0);
	selbeq : BUFFER STD_LOGIC_VECTOR(0 DOWNTO 0);
	ula_signal_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	zout : BUFFER STD_LOGIC_VECTOR(0 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mips
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	inst_out => inst_out,
	program_c_out => program_c_out,
	saidaA => saidaA,
	saidaB => saidaB,
	saidaZOUT => saidaZOUT,
	selbeq => selbeq,
	ula_signal_out => ula_signal_out,
	zout => zout
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END mips_arch;
