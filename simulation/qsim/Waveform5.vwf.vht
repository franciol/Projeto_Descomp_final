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
-- Generated on "11/28/2019 13:36:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          uc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY uc_vhd_vec_tst IS
END uc_vhd_vec_tst;
ARCHITECTURE uc_arch OF uc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL pontosDeControle : STD_LOGIC_VECTOR(10 DOWNTO 0);
COMPONENT uc
	PORT (
	opcode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	pontosDeControle : BUFFER STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : uc
	PORT MAP (
-- list connections between master ports and signals
	opcode => opcode,
	pontosDeControle => pontosDeControle
	);
-- opcode[5]
t_prcs_opcode_5: PROCESS
BEGIN
	opcode(5) <= '0';
WAIT;
END PROCESS t_prcs_opcode_5;
-- opcode[4]
t_prcs_opcode_4: PROCESS
BEGIN
	opcode(4) <= '0';
WAIT;
END PROCESS t_prcs_opcode_4;
-- opcode[3]
t_prcs_opcode_3: PROCESS
BEGIN
	opcode(3) <= '0';
WAIT;
END PROCESS t_prcs_opcode_3;
-- opcode[2]
t_prcs_opcode_2: PROCESS
BEGIN
	opcode(2) <= '0';
WAIT;
END PROCESS t_prcs_opcode_2;
-- opcode[1]
t_prcs_opcode_1: PROCESS
BEGIN
	opcode(1) <= '0';
WAIT;
END PROCESS t_prcs_opcode_1;
-- opcode[0]
t_prcs_opcode_0: PROCESS
BEGIN
	opcode(0) <= '0';
WAIT;
END PROCESS t_prcs_opcode_0;
END uc_arch;
