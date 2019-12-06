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
-- Generated on "12/05/2019 20:22:45"
                                                             
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
SIGNAL saidaMUXBRANCH : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaZOUT : STD_LOGIC;
SIGNAL selbeq : STD_LOGIC;
SIGNAL ula_signal_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL zout : STD_LOGIC;
COMPONENT mips
	PORT (
	clk : IN STD_LOGIC;
	inst_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	program_c_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaMUXBRANCH : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaZOUT : OUT STD_LOGIC;
	selbeq : OUT STD_LOGIC;
	ula_signal_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	zout : OUT STD_LOGIC
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
	saidaMUXBRANCH => saidaMUXBRANCH,
	saidaZOUT => saidaZOUT,
	selbeq => selbeq,
	ula_signal_out => ula_signal_out,
	zout => zout
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
END mips_arch;