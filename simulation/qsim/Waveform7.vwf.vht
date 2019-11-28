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
-- Generated on "11/28/2019 13:43:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UC_ULA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UC_ULA_vhd_vec_tst IS
END UC_ULA_vhd_vec_tst;
ARCHITECTURE UC_ULA_arch OF UC_ULA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUctr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ALUop : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL funct : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT UC_ULA
	PORT (
	ALUctr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ALUop : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	funct : IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : UC_ULA
	PORT MAP (
-- list connections between master ports and signals
	ALUctr => ALUctr,
	ALUop => ALUop,
	funct => funct
	);
-- ALUop[2]
t_prcs_ALUop_2: PROCESS
BEGIN
	ALUop(2) <= '0';
WAIT;
END PROCESS t_prcs_ALUop_2;
-- ALUop[1]
t_prcs_ALUop_1: PROCESS
BEGIN
	ALUop(1) <= '0';
WAIT;
END PROCESS t_prcs_ALUop_1;
-- ALUop[0]
t_prcs_ALUop_0: PROCESS
BEGIN
	ALUop(0) <= '0';
WAIT;
END PROCESS t_prcs_ALUop_0;
-- funct[5]
t_prcs_funct_5: PROCESS
BEGIN
	funct(5) <= '1';
	WAIT FOR 320000 ps;
	funct(5) <= '0';
	WAIT FOR 320000 ps;
	funct(5) <= '1';
	WAIT FOR 320000 ps;
	funct(5) <= '0';
WAIT;
END PROCESS t_prcs_funct_5;
-- funct[4]
t_prcs_funct_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		funct(4) <= '0';
		WAIT FOR 160000 ps;
		funct(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	funct(4) <= '0';
WAIT;
END PROCESS t_prcs_funct_4;
-- funct[3]
t_prcs_funct_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		funct(3) <= '0';
		WAIT FOR 80000 ps;
		funct(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	funct(3) <= '0';
WAIT;
END PROCESS t_prcs_funct_3;
-- funct[2]
t_prcs_funct_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		funct(2) <= '0';
		WAIT FOR 40000 ps;
		funct(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	funct(2) <= '0';
WAIT;
END PROCESS t_prcs_funct_2;
-- funct[1]
t_prcs_funct_1: PROCESS
BEGIN
LOOP
	funct(1) <= '0';
	WAIT FOR 20000 ps;
	funct(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_funct_1;
-- funct[0]
t_prcs_funct_0: PROCESS
BEGIN
LOOP
	funct(0) <= '0';
	WAIT FOR 10000 ps;
	funct(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_funct_0;
END UC_ULA_arch;
