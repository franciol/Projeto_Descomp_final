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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "12/03/2019 21:12:26"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips IS
    PORT (
	clk : IN std_logic;
	inst_out : OUT std_logic_vector(31 DOWNTO 0);
	program_c_out : OUT std_logic_vector(31 DOWNTO 0);
	ula_signal_out : OUT std_logic_vector(31 DOWNTO 0);
	saidaA : OUT std_logic_vector(31 DOWNTO 0);
	saidaB : OUT std_logic_vector(31 DOWNTO 0);
	zout : OUT std_logic_vector(0 DOWNTO 0)
	);
END mips;

ARCHITECTURE structure OF mips IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_inst_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_program_c_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ula_signal_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zout : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_out[0]~output_o\ : std_logic;
SIGNAL \inst_out[1]~output_o\ : std_logic;
SIGNAL \inst_out[2]~output_o\ : std_logic;
SIGNAL \inst_out[3]~output_o\ : std_logic;
SIGNAL \inst_out[4]~output_o\ : std_logic;
SIGNAL \inst_out[5]~output_o\ : std_logic;
SIGNAL \inst_out[6]~output_o\ : std_logic;
SIGNAL \inst_out[7]~output_o\ : std_logic;
SIGNAL \inst_out[8]~output_o\ : std_logic;
SIGNAL \inst_out[9]~output_o\ : std_logic;
SIGNAL \inst_out[10]~output_o\ : std_logic;
SIGNAL \inst_out[11]~output_o\ : std_logic;
SIGNAL \inst_out[12]~output_o\ : std_logic;
SIGNAL \inst_out[13]~output_o\ : std_logic;
SIGNAL \inst_out[14]~output_o\ : std_logic;
SIGNAL \inst_out[15]~output_o\ : std_logic;
SIGNAL \inst_out[16]~output_o\ : std_logic;
SIGNAL \inst_out[17]~output_o\ : std_logic;
SIGNAL \inst_out[18]~output_o\ : std_logic;
SIGNAL \inst_out[19]~output_o\ : std_logic;
SIGNAL \inst_out[20]~output_o\ : std_logic;
SIGNAL \inst_out[21]~output_o\ : std_logic;
SIGNAL \inst_out[22]~output_o\ : std_logic;
SIGNAL \inst_out[23]~output_o\ : std_logic;
SIGNAL \inst_out[24]~output_o\ : std_logic;
SIGNAL \inst_out[25]~output_o\ : std_logic;
SIGNAL \inst_out[26]~output_o\ : std_logic;
SIGNAL \inst_out[27]~output_o\ : std_logic;
SIGNAL \inst_out[28]~output_o\ : std_logic;
SIGNAL \inst_out[29]~output_o\ : std_logic;
SIGNAL \inst_out[30]~output_o\ : std_logic;
SIGNAL \inst_out[31]~output_o\ : std_logic;
SIGNAL \program_c_out[0]~output_o\ : std_logic;
SIGNAL \program_c_out[1]~output_o\ : std_logic;
SIGNAL \program_c_out[2]~output_o\ : std_logic;
SIGNAL \program_c_out[3]~output_o\ : std_logic;
SIGNAL \program_c_out[4]~output_o\ : std_logic;
SIGNAL \program_c_out[5]~output_o\ : std_logic;
SIGNAL \program_c_out[6]~output_o\ : std_logic;
SIGNAL \program_c_out[7]~output_o\ : std_logic;
SIGNAL \program_c_out[8]~output_o\ : std_logic;
SIGNAL \program_c_out[9]~output_o\ : std_logic;
SIGNAL \program_c_out[10]~output_o\ : std_logic;
SIGNAL \program_c_out[11]~output_o\ : std_logic;
SIGNAL \program_c_out[12]~output_o\ : std_logic;
SIGNAL \program_c_out[13]~output_o\ : std_logic;
SIGNAL \program_c_out[14]~output_o\ : std_logic;
SIGNAL \program_c_out[15]~output_o\ : std_logic;
SIGNAL \program_c_out[16]~output_o\ : std_logic;
SIGNAL \program_c_out[17]~output_o\ : std_logic;
SIGNAL \program_c_out[18]~output_o\ : std_logic;
SIGNAL \program_c_out[19]~output_o\ : std_logic;
SIGNAL \program_c_out[20]~output_o\ : std_logic;
SIGNAL \program_c_out[21]~output_o\ : std_logic;
SIGNAL \program_c_out[22]~output_o\ : std_logic;
SIGNAL \program_c_out[23]~output_o\ : std_logic;
SIGNAL \program_c_out[24]~output_o\ : std_logic;
SIGNAL \program_c_out[25]~output_o\ : std_logic;
SIGNAL \program_c_out[26]~output_o\ : std_logic;
SIGNAL \program_c_out[27]~output_o\ : std_logic;
SIGNAL \program_c_out[28]~output_o\ : std_logic;
SIGNAL \program_c_out[29]~output_o\ : std_logic;
SIGNAL \program_c_out[30]~output_o\ : std_logic;
SIGNAL \program_c_out[31]~output_o\ : std_logic;
SIGNAL \ula_signal_out[0]~output_o\ : std_logic;
SIGNAL \ula_signal_out[1]~output_o\ : std_logic;
SIGNAL \ula_signal_out[2]~output_o\ : std_logic;
SIGNAL \ula_signal_out[3]~output_o\ : std_logic;
SIGNAL \ula_signal_out[4]~output_o\ : std_logic;
SIGNAL \ula_signal_out[5]~output_o\ : std_logic;
SIGNAL \ula_signal_out[6]~output_o\ : std_logic;
SIGNAL \ula_signal_out[7]~output_o\ : std_logic;
SIGNAL \ula_signal_out[8]~output_o\ : std_logic;
SIGNAL \ula_signal_out[9]~output_o\ : std_logic;
SIGNAL \ula_signal_out[10]~output_o\ : std_logic;
SIGNAL \ula_signal_out[11]~output_o\ : std_logic;
SIGNAL \ula_signal_out[12]~output_o\ : std_logic;
SIGNAL \ula_signal_out[13]~output_o\ : std_logic;
SIGNAL \ula_signal_out[14]~output_o\ : std_logic;
SIGNAL \ula_signal_out[15]~output_o\ : std_logic;
SIGNAL \ula_signal_out[16]~output_o\ : std_logic;
SIGNAL \ula_signal_out[17]~output_o\ : std_logic;
SIGNAL \ula_signal_out[18]~output_o\ : std_logic;
SIGNAL \ula_signal_out[19]~output_o\ : std_logic;
SIGNAL \ula_signal_out[20]~output_o\ : std_logic;
SIGNAL \ula_signal_out[21]~output_o\ : std_logic;
SIGNAL \ula_signal_out[22]~output_o\ : std_logic;
SIGNAL \ula_signal_out[23]~output_o\ : std_logic;
SIGNAL \ula_signal_out[24]~output_o\ : std_logic;
SIGNAL \ula_signal_out[25]~output_o\ : std_logic;
SIGNAL \ula_signal_out[26]~output_o\ : std_logic;
SIGNAL \ula_signal_out[27]~output_o\ : std_logic;
SIGNAL \ula_signal_out[28]~output_o\ : std_logic;
SIGNAL \ula_signal_out[29]~output_o\ : std_logic;
SIGNAL \ula_signal_out[30]~output_o\ : std_logic;
SIGNAL \ula_signal_out[31]~output_o\ : std_logic;
SIGNAL \saidaA[0]~output_o\ : std_logic;
SIGNAL \saidaA[1]~output_o\ : std_logic;
SIGNAL \saidaA[2]~output_o\ : std_logic;
SIGNAL \saidaA[3]~output_o\ : std_logic;
SIGNAL \saidaA[4]~output_o\ : std_logic;
SIGNAL \saidaA[5]~output_o\ : std_logic;
SIGNAL \saidaA[6]~output_o\ : std_logic;
SIGNAL \saidaA[7]~output_o\ : std_logic;
SIGNAL \saidaA[8]~output_o\ : std_logic;
SIGNAL \saidaA[9]~output_o\ : std_logic;
SIGNAL \saidaA[10]~output_o\ : std_logic;
SIGNAL \saidaA[11]~output_o\ : std_logic;
SIGNAL \saidaA[12]~output_o\ : std_logic;
SIGNAL \saidaA[13]~output_o\ : std_logic;
SIGNAL \saidaA[14]~output_o\ : std_logic;
SIGNAL \saidaA[15]~output_o\ : std_logic;
SIGNAL \saidaA[16]~output_o\ : std_logic;
SIGNAL \saidaA[17]~output_o\ : std_logic;
SIGNAL \saidaA[18]~output_o\ : std_logic;
SIGNAL \saidaA[19]~output_o\ : std_logic;
SIGNAL \saidaA[20]~output_o\ : std_logic;
SIGNAL \saidaA[21]~output_o\ : std_logic;
SIGNAL \saidaA[22]~output_o\ : std_logic;
SIGNAL \saidaA[23]~output_o\ : std_logic;
SIGNAL \saidaA[24]~output_o\ : std_logic;
SIGNAL \saidaA[25]~output_o\ : std_logic;
SIGNAL \saidaA[26]~output_o\ : std_logic;
SIGNAL \saidaA[27]~output_o\ : std_logic;
SIGNAL \saidaA[28]~output_o\ : std_logic;
SIGNAL \saidaA[29]~output_o\ : std_logic;
SIGNAL \saidaA[30]~output_o\ : std_logic;
SIGNAL \saidaA[31]~output_o\ : std_logic;
SIGNAL \saidaB[0]~output_o\ : std_logic;
SIGNAL \saidaB[1]~output_o\ : std_logic;
SIGNAL \saidaB[2]~output_o\ : std_logic;
SIGNAL \saidaB[3]~output_o\ : std_logic;
SIGNAL \saidaB[4]~output_o\ : std_logic;
SIGNAL \saidaB[5]~output_o\ : std_logic;
SIGNAL \saidaB[6]~output_o\ : std_logic;
SIGNAL \saidaB[7]~output_o\ : std_logic;
SIGNAL \saidaB[8]~output_o\ : std_logic;
SIGNAL \saidaB[9]~output_o\ : std_logic;
SIGNAL \saidaB[10]~output_o\ : std_logic;
SIGNAL \saidaB[11]~output_o\ : std_logic;
SIGNAL \saidaB[12]~output_o\ : std_logic;
SIGNAL \saidaB[13]~output_o\ : std_logic;
SIGNAL \saidaB[14]~output_o\ : std_logic;
SIGNAL \saidaB[15]~output_o\ : std_logic;
SIGNAL \saidaB[16]~output_o\ : std_logic;
SIGNAL \saidaB[17]~output_o\ : std_logic;
SIGNAL \saidaB[18]~output_o\ : std_logic;
SIGNAL \saidaB[19]~output_o\ : std_logic;
SIGNAL \saidaB[20]~output_o\ : std_logic;
SIGNAL \saidaB[21]~output_o\ : std_logic;
SIGNAL \saidaB[22]~output_o\ : std_logic;
SIGNAL \saidaB[23]~output_o\ : std_logic;
SIGNAL \saidaB[24]~output_o\ : std_logic;
SIGNAL \saidaB[25]~output_o\ : std_logic;
SIGNAL \saidaB[26]~output_o\ : std_logic;
SIGNAL \saidaB[27]~output_o\ : std_logic;
SIGNAL \saidaB[28]~output_o\ : std_logic;
SIGNAL \saidaB[29]~output_o\ : std_logic;
SIGNAL \saidaB[30]~output_o\ : std_logic;
SIGNAL \saidaB[31]~output_o\ : std_logic;
SIGNAL \zout[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \FD|Somador|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~12_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~20_combout\ : std_logic;
SIGNAL \FD|Somador|saida[6]~9\ : std_logic;
SIGNAL \FD|Somador|saida[7]~10_combout\ : std_logic;
SIGNAL \FD|Somador|saida[3]~3\ : std_logic;
SIGNAL \FD|Somador|saida[4]~4_combout\ : std_logic;
SIGNAL \FD|PC|data_s[4]~29_cout\ : std_logic;
SIGNAL \FD|PC|data_s[4]~31_cout\ : std_logic;
SIGNAL \FD|PC|data_s[4]~33\ : std_logic;
SIGNAL \FD|PC|data_s[5]~35\ : std_logic;
SIGNAL \FD|PC|data_s[6]~37\ : std_logic;
SIGNAL \FD|PC|data_s[7]~38_combout\ : std_logic;
SIGNAL \FD|comb~2_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~11_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~19_combout\ : std_logic;
SIGNAL \FD|PC|data_s[4]~32_combout\ : std_logic;
SIGNAL \FD|Somador|saida[4]~5\ : std_logic;
SIGNAL \FD|Somador|saida[5]~6_combout\ : std_logic;
SIGNAL \FD|PC|data_s[5]~34_combout\ : std_logic;
SIGNAL \FD|Somador|saida[5]~7\ : std_logic;
SIGNAL \FD|Somador|saida[6]~8_combout\ : std_logic;
SIGNAL \FD|PC|data_s[6]~36_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~38_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~18_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~30_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~31_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~14_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~70_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~41_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~1066_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~324_q\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~68_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~29_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~73_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~17_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~72_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~10_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~13_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~4_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~5_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~71_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~3_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~64_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~1067_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~294_q\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~39_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~40_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~1\ : std_logic;
SIGNAL \FD|ULA|Add1~3\ : std_logic;
SIGNAL \FD|ULA|Add1~5\ : std_logic;
SIGNAL \FD|ULA|Add1~7\ : std_logic;
SIGNAL \FD|ULA|Add1~8_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~1_cout\ : std_logic;
SIGNAL \FD|ULA|soma[1]~3\ : std_logic;
SIGNAL \FD|ULA|soma[2]~5_cout\ : std_logic;
SIGNAL \FD|ULA|soma[3]~7\ : std_logic;
SIGNAL \FD|ULA|soma[4]~8_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~36_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~298_q\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~42_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~9\ : std_logic;
SIGNAL \FD|ULA|Add1~10_combout\ : std_logic;
SIGNAL \FD|ULA|soma[4]~9\ : std_logic;
SIGNAL \FD|ULA|soma[5]~10_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~37_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~299_q\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~43_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~11\ : std_logic;
SIGNAL \FD|ULA|Add1~12_combout\ : std_logic;
SIGNAL \FD|ULA|soma[5]~11\ : std_logic;
SIGNAL \FD|ULA|soma[6]~12_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~300_q\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~44_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~13\ : std_logic;
SIGNAL \FD|ULA|Add1~14_combout\ : std_logic;
SIGNAL \FD|ULA|soma[6]~13\ : std_logic;
SIGNAL \FD|ULA|soma[7]~14_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~39_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~301_q\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~45_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~15\ : std_logic;
SIGNAL \FD|ULA|Add1~16_combout\ : std_logic;
SIGNAL \FD|ULA|soma[7]~15\ : std_logic;
SIGNAL \FD|ULA|soma[8]~16_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~40_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~302_q\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~46_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~17\ : std_logic;
SIGNAL \FD|ULA|Add1~18_combout\ : std_logic;
SIGNAL \FD|ULA|soma[8]~17\ : std_logic;
SIGNAL \FD|ULA|soma[9]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~41_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~303_q\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~47_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~19\ : std_logic;
SIGNAL \FD|ULA|Add1~20_combout\ : std_logic;
SIGNAL \FD|ULA|soma[9]~19\ : std_logic;
SIGNAL \FD|ULA|soma[10]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~42_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~304_q\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~48_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~21\ : std_logic;
SIGNAL \FD|ULA|Add1~22_combout\ : std_logic;
SIGNAL \FD|ULA|soma[10]~21\ : std_logic;
SIGNAL \FD|ULA|soma[11]~22_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~43_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~305_q\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~49_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~23\ : std_logic;
SIGNAL \FD|ULA|Add1~24_combout\ : std_logic;
SIGNAL \FD|ULA|soma[11]~23\ : std_logic;
SIGNAL \FD|ULA|soma[12]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~44_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~306_q\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~50_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~25\ : std_logic;
SIGNAL \FD|ULA|Add1~26_combout\ : std_logic;
SIGNAL \FD|ULA|soma[12]~25\ : std_logic;
SIGNAL \FD|ULA|soma[13]~26_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~45_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~307_q\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~51_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~27\ : std_logic;
SIGNAL \FD|ULA|Add1~28_combout\ : std_logic;
SIGNAL \FD|ULA|soma[13]~27\ : std_logic;
SIGNAL \FD|ULA|soma[14]~28_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~46_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~308_q\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~52_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~29\ : std_logic;
SIGNAL \FD|ULA|Add1~30_combout\ : std_logic;
SIGNAL \FD|ULA|soma[14]~29\ : std_logic;
SIGNAL \FD|ULA|soma[15]~30_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~47_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~309_q\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~53_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~31\ : std_logic;
SIGNAL \FD|ULA|Add1~32_combout\ : std_logic;
SIGNAL \FD|ULA|soma[15]~31\ : std_logic;
SIGNAL \FD|ULA|soma[16]~32_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~48_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~310_q\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~54_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~33\ : std_logic;
SIGNAL \FD|ULA|Add1~34_combout\ : std_logic;
SIGNAL \FD|ULA|soma[16]~33\ : std_logic;
SIGNAL \FD|ULA|soma[17]~34_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~49_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~311_q\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~55_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~35\ : std_logic;
SIGNAL \FD|ULA|Add1~36_combout\ : std_logic;
SIGNAL \FD|ULA|soma[17]~35\ : std_logic;
SIGNAL \FD|ULA|soma[18]~36_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~50_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~312_q\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~56_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~37\ : std_logic;
SIGNAL \FD|ULA|Add1~38_combout\ : std_logic;
SIGNAL \FD|ULA|soma[18]~37\ : std_logic;
SIGNAL \FD|ULA|soma[19]~38_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~51_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~313_q\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~57_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~39\ : std_logic;
SIGNAL \FD|ULA|Add1~40_combout\ : std_logic;
SIGNAL \FD|ULA|soma[19]~39\ : std_logic;
SIGNAL \FD|ULA|soma[20]~40_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~52_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~314_q\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~58_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~41\ : std_logic;
SIGNAL \FD|ULA|Add1~42_combout\ : std_logic;
SIGNAL \FD|ULA|soma[20]~41\ : std_logic;
SIGNAL \FD|ULA|soma[21]~42_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~53_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~315_q\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~59_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~43\ : std_logic;
SIGNAL \FD|ULA|Add1~44_combout\ : std_logic;
SIGNAL \FD|ULA|soma[21]~43\ : std_logic;
SIGNAL \FD|ULA|soma[22]~44_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~54_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~316_q\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~60_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~45\ : std_logic;
SIGNAL \FD|ULA|Add1~46_combout\ : std_logic;
SIGNAL \FD|ULA|soma[22]~45\ : std_logic;
SIGNAL \FD|ULA|soma[23]~46_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~55_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~317_q\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~61_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~47\ : std_logic;
SIGNAL \FD|ULA|Add1~48_combout\ : std_logic;
SIGNAL \FD|ULA|soma[23]~47\ : std_logic;
SIGNAL \FD|ULA|soma[24]~48_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~56_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~318_q\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~62_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~49\ : std_logic;
SIGNAL \FD|ULA|Add1~50_combout\ : std_logic;
SIGNAL \FD|ULA|soma[24]~49\ : std_logic;
SIGNAL \FD|ULA|soma[25]~50_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~57_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~319_q\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~63_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~51\ : std_logic;
SIGNAL \FD|ULA|Add1~52_combout\ : std_logic;
SIGNAL \FD|ULA|soma[25]~51\ : std_logic;
SIGNAL \FD|ULA|soma[26]~52_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~58_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~320_q\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~64_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~53\ : std_logic;
SIGNAL \FD|ULA|Add1~54_combout\ : std_logic;
SIGNAL \FD|ULA|soma[26]~53\ : std_logic;
SIGNAL \FD|ULA|soma[27]~54_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~59_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~321_q\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~65_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~55\ : std_logic;
SIGNAL \FD|ULA|Add1~56_combout\ : std_logic;
SIGNAL \FD|ULA|soma[27]~55\ : std_logic;
SIGNAL \FD|ULA|soma[28]~56_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~60_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~322_q\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~66_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~57\ : std_logic;
SIGNAL \FD|ULA|Add1~58_combout\ : std_logic;
SIGNAL \FD|ULA|soma[28]~57\ : std_logic;
SIGNAL \FD|ULA|soma[29]~58_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~61_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~323_q\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~67_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~59\ : std_logic;
SIGNAL \FD|ULA|Add1~60_combout\ : std_logic;
SIGNAL \FD|ULA|soma[29]~59\ : std_logic;
SIGNAL \FD|ULA|soma[30]~60_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~62_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~325_q\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~69_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~61\ : std_logic;
SIGNAL \FD|ULA|Add1~62_combout\ : std_logic;
SIGNAL \FD|ULA|soma[30]~61\ : std_logic;
SIGNAL \FD|ULA|soma[31]~62_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~63_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~6_combout\ : std_logic;
SIGNAL \FD|ULA|soma[3]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~34_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~35_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~1_combout\ : std_logic;
SIGNAL \FD|ULA|soma[1]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~32_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~33_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~18_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~65_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~3_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~4_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~5_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~6_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~7_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~8_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~9_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~10_combout\ : std_logic;
SIGNAL \FD|mux_beq|saida[2]~1_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~1\ : std_logic;
SIGNAL \FD|Somador|saida[3]~2_combout\ : std_logic;
SIGNAL \FD|mux_beq|saida[3]~0_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~8_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~9_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~15_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~16_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~17_combout\ : std_logic;
SIGNAL \FD|Somador|saida[7]~11\ : std_logic;
SIGNAL \FD|Somador|saida[8]~12_combout\ : std_logic;
SIGNAL \FD|PC|data_s[7]~39\ : std_logic;
SIGNAL \FD|PC|data_s[8]~40_combout\ : std_logic;
SIGNAL \FD|Somador|saida[8]~13\ : std_logic;
SIGNAL \FD|Somador|saida[9]~14_combout\ : std_logic;
SIGNAL \FD|PC|data_s[8]~41\ : std_logic;
SIGNAL \FD|PC|data_s[9]~42_combout\ : std_logic;
SIGNAL \FD|Somador|saida[9]~15\ : std_logic;
SIGNAL \FD|Somador|saida[10]~16_combout\ : std_logic;
SIGNAL \FD|PC|data_s[9]~43\ : std_logic;
SIGNAL \FD|PC|data_s[10]~44_combout\ : std_logic;
SIGNAL \FD|Somador|saida[10]~17\ : std_logic;
SIGNAL \FD|Somador|saida[11]~18_combout\ : std_logic;
SIGNAL \FD|PC|data_s[10]~45\ : std_logic;
SIGNAL \FD|PC|data_s[11]~46_combout\ : std_logic;
SIGNAL \FD|Somador|saida[11]~19\ : std_logic;
SIGNAL \FD|Somador|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|PC|data_s[11]~47\ : std_logic;
SIGNAL \FD|PC|data_s[12]~48_combout\ : std_logic;
SIGNAL \FD|Somador|saida[12]~21\ : std_logic;
SIGNAL \FD|Somador|saida[13]~22_combout\ : std_logic;
SIGNAL \FD|PC|data_s[12]~49\ : std_logic;
SIGNAL \FD|PC|data_s[13]~50_combout\ : std_logic;
SIGNAL \FD|Somador|saida[13]~23\ : std_logic;
SIGNAL \FD|Somador|saida[14]~24_combout\ : std_logic;
SIGNAL \FD|PC|data_s[13]~51\ : std_logic;
SIGNAL \FD|PC|data_s[14]~52_combout\ : std_logic;
SIGNAL \FD|Somador|saida[14]~25\ : std_logic;
SIGNAL \FD|Somador|saida[15]~26_combout\ : std_logic;
SIGNAL \FD|PC|data_s[14]~53\ : std_logic;
SIGNAL \FD|PC|data_s[15]~54_combout\ : std_logic;
SIGNAL \FD|Somador|saida[15]~27\ : std_logic;
SIGNAL \FD|Somador|saida[16]~28_combout\ : std_logic;
SIGNAL \FD|PC|data_s[15]~55\ : std_logic;
SIGNAL \FD|PC|data_s[16]~56_combout\ : std_logic;
SIGNAL \FD|Somador|saida[16]~29\ : std_logic;
SIGNAL \FD|Somador|saida[17]~30_combout\ : std_logic;
SIGNAL \FD|PC|data_s[16]~57\ : std_logic;
SIGNAL \FD|PC|data_s[17]~58_combout\ : std_logic;
SIGNAL \FD|Somador|saida[17]~31\ : std_logic;
SIGNAL \FD|Somador|saida[18]~32_combout\ : std_logic;
SIGNAL \FD|PC|data_s[17]~59\ : std_logic;
SIGNAL \FD|PC|data_s[18]~60_combout\ : std_logic;
SIGNAL \FD|Somador|saida[18]~33\ : std_logic;
SIGNAL \FD|Somador|saida[19]~34_combout\ : std_logic;
SIGNAL \FD|PC|data_s[18]~61\ : std_logic;
SIGNAL \FD|PC|data_s[19]~62_combout\ : std_logic;
SIGNAL \FD|Somador|saida[19]~35\ : std_logic;
SIGNAL \FD|Somador|saida[20]~36_combout\ : std_logic;
SIGNAL \FD|PC|data_s[19]~63\ : std_logic;
SIGNAL \FD|PC|data_s[20]~64_combout\ : std_logic;
SIGNAL \FD|Somador|saida[20]~37\ : std_logic;
SIGNAL \FD|Somador|saida[21]~38_combout\ : std_logic;
SIGNAL \FD|PC|data_s[20]~65\ : std_logic;
SIGNAL \FD|PC|data_s[21]~66_combout\ : std_logic;
SIGNAL \FD|Somador|saida[21]~39\ : std_logic;
SIGNAL \FD|Somador|saida[22]~40_combout\ : std_logic;
SIGNAL \FD|PC|data_s[21]~67\ : std_logic;
SIGNAL \FD|PC|data_s[22]~68_combout\ : std_logic;
SIGNAL \FD|Somador|saida[22]~41\ : std_logic;
SIGNAL \FD|Somador|saida[23]~42_combout\ : std_logic;
SIGNAL \FD|PC|data_s[22]~69\ : std_logic;
SIGNAL \FD|PC|data_s[23]~70_combout\ : std_logic;
SIGNAL \FD|Somador|saida[23]~43\ : std_logic;
SIGNAL \FD|Somador|saida[24]~44_combout\ : std_logic;
SIGNAL \FD|PC|data_s[23]~71\ : std_logic;
SIGNAL \FD|PC|data_s[24]~72_combout\ : std_logic;
SIGNAL \FD|Somador|saida[24]~45\ : std_logic;
SIGNAL \FD|Somador|saida[25]~46_combout\ : std_logic;
SIGNAL \FD|PC|data_s[24]~73\ : std_logic;
SIGNAL \FD|PC|data_s[25]~74_combout\ : std_logic;
SIGNAL \FD|Somador|saida[25]~47\ : std_logic;
SIGNAL \FD|Somador|saida[26]~48_combout\ : std_logic;
SIGNAL \FD|PC|data_s[25]~75\ : std_logic;
SIGNAL \FD|PC|data_s[26]~76_combout\ : std_logic;
SIGNAL \FD|Somador|saida[26]~49\ : std_logic;
SIGNAL \FD|Somador|saida[27]~50_combout\ : std_logic;
SIGNAL \FD|PC|data_s[26]~77\ : std_logic;
SIGNAL \FD|PC|data_s[27]~78_combout\ : std_logic;
SIGNAL \FD|Somador|saida[27]~51\ : std_logic;
SIGNAL \FD|Somador|saida[28]~52_combout\ : std_logic;
SIGNAL \FD|PC|data_s[27]~79\ : std_logic;
SIGNAL \FD|PC|data_s[28]~80_combout\ : std_logic;
SIGNAL \FD|Somador|saida[28]~53\ : std_logic;
SIGNAL \FD|Somador|saida[29]~54_combout\ : std_logic;
SIGNAL \FD|PC|data_s[28]~81\ : std_logic;
SIGNAL \FD|PC|data_s[29]~82_combout\ : std_logic;
SIGNAL \FD|Somador|saida[29]~55\ : std_logic;
SIGNAL \FD|Somador|saida[30]~56_combout\ : std_logic;
SIGNAL \FD|PC|data_s[29]~83\ : std_logic;
SIGNAL \FD|PC|data_s[30]~84_combout\ : std_logic;
SIGNAL \FD|Somador|saida[30]~57\ : std_logic;
SIGNAL \FD|Somador|saida[31]~58_combout\ : std_logic;
SIGNAL \FD|PC|data_s[30]~85\ : std_logic;
SIGNAL \FD|PC|data_s[31]~86_combout\ : std_logic;
SIGNAL \FD|PC|data_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|ROM|ALT_INV_memROM~20_combout\ : std_logic;

BEGIN

ww_clk <= clk;
inst_out <= ww_inst_out;
program_c_out <= ww_program_c_out;
ula_signal_out <= ww_ula_signal_out;
saidaA <= ww_saidaA;
saidaB <= ww_saidaB;
zout <= ww_zout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FD|ROM|ALT_INV_memROM~20_combout\ <= NOT \FD|ROM|memROM~20_combout\;

\inst_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[0]~output_o\);

\inst_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~18_combout\,
	devoe => ww_devoe,
	o => \inst_out[1]~output_o\);

\inst_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~19_combout\,
	devoe => ww_devoe,
	o => \inst_out[2]~output_o\);

\inst_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[3]~output_o\);

\inst_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[4]~output_o\);

\inst_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|ALT_INV_memROM~20_combout\,
	devoe => ww_devoe,
	o => \inst_out[5]~output_o\);

\inst_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[6]~output_o\);

\inst_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[7]~output_o\);

\inst_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[8]~output_o\);

\inst_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[9]~output_o\);

\inst_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[10]~output_o\);

\inst_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[11]~output_o\);

\inst_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[12]~output_o\);

\inst_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[13]~output_o\);

\inst_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|ALT_INV_memROM~20_combout\,
	devoe => ww_devoe,
	o => \inst_out[14]~output_o\);

\inst_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[15]~output_o\);

\inst_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~13_combout\,
	devoe => ww_devoe,
	o => \inst_out[16]~output_o\);

\inst_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[0]~70_combout\,
	devoe => ww_devoe,
	o => \inst_out[17]~output_o\);

\inst_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[18]~output_o\);

\inst_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[0]~70_combout\,
	devoe => ww_devoe,
	o => \inst_out[19]~output_o\);

\inst_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[20]~output_o\);

\inst_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~16_combout\,
	devoe => ww_devoe,
	o => \inst_out[21]~output_o\);

\inst_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~17_combout\,
	devoe => ww_devoe,
	o => \inst_out[22]~output_o\);

\inst_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~13_combout\,
	devoe => ww_devoe,
	o => \inst_out[23]~output_o\);

\inst_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[0]~70_combout\,
	devoe => ww_devoe,
	o => \inst_out[24]~output_o\);

\inst_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[25]~output_o\);

\inst_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[26]~output_o\);

\inst_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[27]~output_o\);

\inst_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \inst_out[28]~output_o\);

\inst_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[29]~output_o\);

\inst_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[30]~output_o\);

\inst_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[31]~output_o\);

\program_c_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \program_c_out[0]~output_o\);

\program_c_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \program_c_out[1]~output_o\);

\program_c_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(2),
	devoe => ww_devoe,
	o => \program_c_out[2]~output_o\);

\program_c_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(3),
	devoe => ww_devoe,
	o => \program_c_out[3]~output_o\);

\program_c_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(4),
	devoe => ww_devoe,
	o => \program_c_out[4]~output_o\);

\program_c_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(5),
	devoe => ww_devoe,
	o => \program_c_out[5]~output_o\);

\program_c_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(6),
	devoe => ww_devoe,
	o => \program_c_out[6]~output_o\);

\program_c_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(7),
	devoe => ww_devoe,
	o => \program_c_out[7]~output_o\);

\program_c_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(8),
	devoe => ww_devoe,
	o => \program_c_out[8]~output_o\);

\program_c_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(9),
	devoe => ww_devoe,
	o => \program_c_out[9]~output_o\);

\program_c_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(10),
	devoe => ww_devoe,
	o => \program_c_out[10]~output_o\);

\program_c_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(11),
	devoe => ww_devoe,
	o => \program_c_out[11]~output_o\);

\program_c_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(12),
	devoe => ww_devoe,
	o => \program_c_out[12]~output_o\);

\program_c_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(13),
	devoe => ww_devoe,
	o => \program_c_out[13]~output_o\);

\program_c_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(14),
	devoe => ww_devoe,
	o => \program_c_out[14]~output_o\);

\program_c_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(15),
	devoe => ww_devoe,
	o => \program_c_out[15]~output_o\);

\program_c_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(16),
	devoe => ww_devoe,
	o => \program_c_out[16]~output_o\);

\program_c_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(17),
	devoe => ww_devoe,
	o => \program_c_out[17]~output_o\);

\program_c_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(18),
	devoe => ww_devoe,
	o => \program_c_out[18]~output_o\);

\program_c_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(19),
	devoe => ww_devoe,
	o => \program_c_out[19]~output_o\);

\program_c_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(20),
	devoe => ww_devoe,
	o => \program_c_out[20]~output_o\);

\program_c_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(21),
	devoe => ww_devoe,
	o => \program_c_out[21]~output_o\);

\program_c_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(22),
	devoe => ww_devoe,
	o => \program_c_out[22]~output_o\);

\program_c_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(23),
	devoe => ww_devoe,
	o => \program_c_out[23]~output_o\);

\program_c_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(24),
	devoe => ww_devoe,
	o => \program_c_out[24]~output_o\);

\program_c_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(25),
	devoe => ww_devoe,
	o => \program_c_out[25]~output_o\);

\program_c_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(26),
	devoe => ww_devoe,
	o => \program_c_out[26]~output_o\);

\program_c_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(27),
	devoe => ww_devoe,
	o => \program_c_out[27]~output_o\);

\program_c_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(28),
	devoe => ww_devoe,
	o => \program_c_out[28]~output_o\);

\program_c_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(29),
	devoe => ww_devoe,
	o => \program_c_out[29]~output_o\);

\program_c_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(30),
	devoe => ww_devoe,
	o => \program_c_out[30]~output_o\);

\program_c_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(31),
	devoe => ww_devoe,
	o => \program_c_out[31]~output_o\);

\ula_signal_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~64_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[0]~output_o\);

\ula_signal_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~33_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[1]~output_o\);

\ula_signal_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~65_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[2]~output_o\);

\ula_signal_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~35_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[3]~output_o\);

\ula_signal_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~36_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[4]~output_o\);

\ula_signal_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~37_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[5]~output_o\);

\ula_signal_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~38_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[6]~output_o\);

\ula_signal_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~39_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[7]~output_o\);

\ula_signal_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~40_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[8]~output_o\);

\ula_signal_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~41_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[9]~output_o\);

\ula_signal_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~42_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[10]~output_o\);

\ula_signal_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~43_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[11]~output_o\);

\ula_signal_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~44_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[12]~output_o\);

\ula_signal_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~45_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[13]~output_o\);

\ula_signal_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~46_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[14]~output_o\);

\ula_signal_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~47_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[15]~output_o\);

\ula_signal_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~48_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[16]~output_o\);

\ula_signal_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~49_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[17]~output_o\);

\ula_signal_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~50_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[18]~output_o\);

\ula_signal_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~51_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[19]~output_o\);

\ula_signal_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~52_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[20]~output_o\);

\ula_signal_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~53_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[21]~output_o\);

\ula_signal_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~54_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[22]~output_o\);

\ula_signal_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~55_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[23]~output_o\);

\ula_signal_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~56_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[24]~output_o\);

\ula_signal_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~57_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[25]~output_o\);

\ula_signal_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~58_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[26]~output_o\);

\ula_signal_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~59_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[27]~output_o\);

\ula_signal_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~60_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[28]~output_o\);

\ula_signal_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~61_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[29]~output_o\);

\ula_signal_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~62_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[30]~output_o\);

\ula_signal_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Add0~63_combout\,
	devoe => ww_devoe,
	o => \ula_signal_out[31]~output_o\);

\saidaA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[0]~40_combout\,
	devoe => ww_devoe,
	o => \saidaA[0]~output_o\);

\saidaA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[1]~71_combout\,
	devoe => ww_devoe,
	o => \saidaA[1]~output_o\);

\saidaA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[2]~72_combout\,
	devoe => ww_devoe,
	o => \saidaA[2]~output_o\);

\saidaA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[3]~73_combout\,
	devoe => ww_devoe,
	o => \saidaA[3]~output_o\);

\saidaA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[4]~42_combout\,
	devoe => ww_devoe,
	o => \saidaA[4]~output_o\);

\saidaA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[5]~43_combout\,
	devoe => ww_devoe,
	o => \saidaA[5]~output_o\);

\saidaA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[6]~44_combout\,
	devoe => ww_devoe,
	o => \saidaA[6]~output_o\);

\saidaA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[7]~45_combout\,
	devoe => ww_devoe,
	o => \saidaA[7]~output_o\);

\saidaA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[8]~46_combout\,
	devoe => ww_devoe,
	o => \saidaA[8]~output_o\);

\saidaA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[9]~47_combout\,
	devoe => ww_devoe,
	o => \saidaA[9]~output_o\);

\saidaA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[10]~48_combout\,
	devoe => ww_devoe,
	o => \saidaA[10]~output_o\);

\saidaA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[11]~49_combout\,
	devoe => ww_devoe,
	o => \saidaA[11]~output_o\);

\saidaA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[12]~50_combout\,
	devoe => ww_devoe,
	o => \saidaA[12]~output_o\);

\saidaA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[13]~51_combout\,
	devoe => ww_devoe,
	o => \saidaA[13]~output_o\);

\saidaA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[14]~52_combout\,
	devoe => ww_devoe,
	o => \saidaA[14]~output_o\);

\saidaA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[15]~53_combout\,
	devoe => ww_devoe,
	o => \saidaA[15]~output_o\);

\saidaA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[16]~54_combout\,
	devoe => ww_devoe,
	o => \saidaA[16]~output_o\);

\saidaA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[17]~55_combout\,
	devoe => ww_devoe,
	o => \saidaA[17]~output_o\);

\saidaA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[18]~56_combout\,
	devoe => ww_devoe,
	o => \saidaA[18]~output_o\);

\saidaA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[19]~57_combout\,
	devoe => ww_devoe,
	o => \saidaA[19]~output_o\);

\saidaA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[20]~58_combout\,
	devoe => ww_devoe,
	o => \saidaA[20]~output_o\);

\saidaA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[21]~59_combout\,
	devoe => ww_devoe,
	o => \saidaA[21]~output_o\);

\saidaA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[22]~60_combout\,
	devoe => ww_devoe,
	o => \saidaA[22]~output_o\);

\saidaA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[23]~61_combout\,
	devoe => ww_devoe,
	o => \saidaA[23]~output_o\);

\saidaA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[24]~62_combout\,
	devoe => ww_devoe,
	o => \saidaA[24]~output_o\);

\saidaA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[25]~63_combout\,
	devoe => ww_devoe,
	o => \saidaA[25]~output_o\);

\saidaA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[26]~64_combout\,
	devoe => ww_devoe,
	o => \saidaA[26]~output_o\);

\saidaA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[27]~65_combout\,
	devoe => ww_devoe,
	o => \saidaA[27]~output_o\);

\saidaA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[28]~66_combout\,
	devoe => ww_devoe,
	o => \saidaA[28]~output_o\);

\saidaA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[29]~67_combout\,
	devoe => ww_devoe,
	o => \saidaA[29]~output_o\);

\saidaA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[30]~68_combout\,
	devoe => ww_devoe,
	o => \saidaA[30]~output_o\);

\saidaA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[31]~69_combout\,
	devoe => ww_devoe,
	o => \saidaA[31]~output_o\);

\saidaB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaB[0]~5_combout\,
	devoe => ww_devoe,
	o => \saidaB[0]~output_o\);

\saidaB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaB[0]~5_combout\,
	devoe => ww_devoe,
	o => \saidaB[1]~output_o\);

\saidaB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaB[2]~4_combout\,
	devoe => ww_devoe,
	o => \saidaB[2]~output_o\);

\saidaB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|saidaA[0]~70_combout\,
	devoe => ww_devoe,
	o => \saidaB[3]~output_o\);

\saidaB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[4]~output_o\);

\saidaB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[5]~output_o\);

\saidaB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[6]~output_o\);

\saidaB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[7]~output_o\);

\saidaB[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[8]~output_o\);

\saidaB[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[9]~output_o\);

\saidaB[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[10]~output_o\);

\saidaB[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[11]~output_o\);

\saidaB[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[12]~output_o\);

\saidaB[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[13]~output_o\);

\saidaB[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[14]~output_o\);

\saidaB[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[15]~output_o\);

\saidaB[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[16]~output_o\);

\saidaB[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[17]~output_o\);

\saidaB[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[18]~output_o\);

\saidaB[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[19]~output_o\);

\saidaB[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[20]~output_o\);

\saidaB[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[21]~output_o\);

\saidaB[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[22]~output_o\);

\saidaB[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[23]~output_o\);

\saidaB[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[24]~output_o\);

\saidaB[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[25]~output_o\);

\saidaB[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[26]~output_o\);

\saidaB[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[27]~output_o\);

\saidaB[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[28]~output_o\);

\saidaB[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[29]~output_o\);

\saidaB[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[30]~output_o\);

\saidaB[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaB[31]~output_o\);

\zout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Equal0~10_combout\,
	devoe => ww_devoe,
	o => \zout[0]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\FD|Somador|saida[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[2]~0_combout\ = \FD|PC|data_s\(2) $ (VCC)
-- \FD|Somador|saida[2]~1\ = CARRY(\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datad => VCC,
	combout => \FD|Somador|saida[2]~0_combout\,
	cout => \FD|Somador|saida[2]~1\);

\FD|ROM|memROM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~12_combout\ = (\FD|PC|data_s\(5)) # ((\FD|PC|data_s\(2) & (\FD|PC|data_s\(3))) # (!\FD|PC|data_s\(2) & ((\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~12_combout\);

\FD|ROM|memROM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~20_combout\ = (\FD|PC|data_s\(6)) # ((\FD|PC|data_s\(7)) # (\FD|ROM|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~12_combout\,
	combout => \FD|ROM|memROM~20_combout\);

\FD|Somador|saida[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[6]~8_combout\ = (\FD|PC|data_s\(6) & (\FD|Somador|saida[5]~7\ $ (GND))) # (!\FD|PC|data_s\(6) & (!\FD|Somador|saida[5]~7\ & VCC))
-- \FD|Somador|saida[6]~9\ = CARRY((\FD|PC|data_s\(6) & !\FD|Somador|saida[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datad => VCC,
	cin => \FD|Somador|saida[5]~7\,
	combout => \FD|Somador|saida[6]~8_combout\,
	cout => \FD|Somador|saida[6]~9\);

\FD|Somador|saida[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[7]~10_combout\ = (\FD|PC|data_s\(7) & (!\FD|Somador|saida[6]~9\)) # (!\FD|PC|data_s\(7) & ((\FD|Somador|saida[6]~9\) # (GND)))
-- \FD|Somador|saida[7]~11\ = CARRY((!\FD|Somador|saida[6]~9\) # (!\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datad => VCC,
	cin => \FD|Somador|saida[6]~9\,
	combout => \FD|Somador|saida[7]~10_combout\,
	cout => \FD|Somador|saida[7]~11\);

\FD|Somador|saida[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[3]~2_combout\ = (\FD|PC|data_s\(3) & (!\FD|Somador|saida[2]~1\)) # (!\FD|PC|data_s\(3) & ((\FD|Somador|saida[2]~1\) # (GND)))
-- \FD|Somador|saida[3]~3\ = CARRY((!\FD|Somador|saida[2]~1\) # (!\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datad => VCC,
	cin => \FD|Somador|saida[2]~1\,
	combout => \FD|Somador|saida[3]~2_combout\,
	cout => \FD|Somador|saida[3]~3\);

\FD|Somador|saida[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[4]~4_combout\ = (\FD|PC|data_s\(4) & (\FD|Somador|saida[3]~3\ $ (GND))) # (!\FD|PC|data_s\(4) & (!\FD|Somador|saida[3]~3\ & VCC))
-- \FD|Somador|saida[4]~5\ = CARRY((\FD|PC|data_s\(4) & !\FD|Somador|saida[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datad => VCC,
	cin => \FD|Somador|saida[3]~3\,
	combout => \FD|Somador|saida[4]~4_combout\,
	cout => \FD|Somador|saida[4]~5\);

\FD|PC|data_s[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[4]~29_cout\ = CARRY((\FD|ROM|memROM~9_combout\ & \FD|Somador|saida[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[2]~0_combout\,
	datad => VCC,
	cout => \FD|PC|data_s[4]~29_cout\);

\FD|PC|data_s[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[4]~31_cout\ = CARRY((\FD|ROM|memROM~18_combout\ & (!\FD|Somador|saida[3]~2_combout\ & !\FD|PC|data_s[4]~29_cout\)) # (!\FD|ROM|memROM~18_combout\ & ((!\FD|PC|data_s[4]~29_cout\) # (!\FD|Somador|saida[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~18_combout\,
	datab => \FD|Somador|saida[3]~2_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[4]~29_cout\,
	cout => \FD|PC|data_s[4]~31_cout\);

\FD|PC|data_s[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[4]~32_combout\ = ((\FD|ROM|memROM~19_combout\ $ (\FD|Somador|saida[4]~4_combout\ $ (!\FD|PC|data_s[4]~31_cout\)))) # (GND)
-- \FD|PC|data_s[4]~33\ = CARRY((\FD|ROM|memROM~19_combout\ & ((\FD|Somador|saida[4]~4_combout\) # (!\FD|PC|data_s[4]~31_cout\))) # (!\FD|ROM|memROM~19_combout\ & (\FD|Somador|saida[4]~4_combout\ & !\FD|PC|data_s[4]~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~19_combout\,
	datab => \FD|Somador|saida[4]~4_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[4]~31_cout\,
	combout => \FD|PC|data_s[4]~32_combout\,
	cout => \FD|PC|data_s[4]~33\);

\FD|PC|data_s[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[5]~34_combout\ = (\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[5]~6_combout\ & (\FD|PC|data_s[4]~33\ & VCC)) # (!\FD|Somador|saida[5]~6_combout\ & (!\FD|PC|data_s[4]~33\)))) # (!\FD|ROM|memROM~9_combout\ & 
-- ((\FD|Somador|saida[5]~6_combout\ & (!\FD|PC|data_s[4]~33\)) # (!\FD|Somador|saida[5]~6_combout\ & ((\FD|PC|data_s[4]~33\) # (GND)))))
-- \FD|PC|data_s[5]~35\ = CARRY((\FD|ROM|memROM~9_combout\ & (!\FD|Somador|saida[5]~6_combout\ & !\FD|PC|data_s[4]~33\)) # (!\FD|ROM|memROM~9_combout\ & ((!\FD|PC|data_s[4]~33\) # (!\FD|Somador|saida[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[5]~6_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[4]~33\,
	combout => \FD|PC|data_s[5]~34_combout\,
	cout => \FD|PC|data_s[5]~35\);

\FD|PC|data_s[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[6]~36_combout\ = ((\FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[6]~8_combout\ $ (!\FD|PC|data_s[5]~35\)))) # (GND)
-- \FD|PC|data_s[6]~37\ = CARRY((\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[6]~8_combout\) # (!\FD|PC|data_s[5]~35\))) # (!\FD|ROM|memROM~9_combout\ & (\FD|Somador|saida[6]~8_combout\ & !\FD|PC|data_s[5]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[6]~8_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[5]~35\,
	combout => \FD|PC|data_s[6]~36_combout\,
	cout => \FD|PC|data_s[6]~37\);

\FD|PC|data_s[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[7]~38_combout\ = (\FD|ROM|memROM~20_combout\ & ((\FD|Somador|saida[7]~10_combout\ & (!\FD|PC|data_s[6]~37\)) # (!\FD|Somador|saida[7]~10_combout\ & ((\FD|PC|data_s[6]~37\) # (GND))))) # (!\FD|ROM|memROM~20_combout\ & 
-- ((\FD|Somador|saida[7]~10_combout\ & (\FD|PC|data_s[6]~37\ & VCC)) # (!\FD|Somador|saida[7]~10_combout\ & (!\FD|PC|data_s[6]~37\))))
-- \FD|PC|data_s[7]~39\ = CARRY((\FD|ROM|memROM~20_combout\ & ((!\FD|PC|data_s[6]~37\) # (!\FD|Somador|saida[7]~10_combout\))) # (!\FD|ROM|memROM~20_combout\ & (!\FD|Somador|saida[7]~10_combout\ & !\FD|PC|data_s[6]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~20_combout\,
	datab => \FD|Somador|saida[7]~10_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[6]~37\,
	combout => \FD|PC|data_s[7]~38_combout\,
	cout => \FD|PC|data_s[7]~39\);

\FD|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~2_combout\ = ((\FD|PC|data_s\(2)) # ((\FD|PC|data_s\(5)) # (!\FD|ULA|Equal0~10_combout\))) # (!\FD|ROM|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~8_combout\,
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(5),
	datad => \FD|ULA|Equal0~10_combout\,
	combout => \FD|comb~2_combout\);

\FD|PC|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[7]~38_combout\,
	asdata => \FD|Somador|saida[7]~10_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(7));

\FD|ROM|memROM~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~11_combout\ = (!\FD|PC|data_s\(5) & ((\FD|PC|data_s\(2) & (!\FD|PC|data_s\(3) & \FD|PC|data_s\(4))) # (!\FD|PC|data_s\(2) & (\FD|PC|data_s\(3) & !\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~11_combout\);

\FD|ROM|memROM~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~19_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & \FD|ROM|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~11_combout\,
	combout => \FD|ROM|memROM~19_combout\);

\FD|PC|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[4]~32_combout\,
	asdata => \FD|Somador|saida[4]~4_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(4));

\FD|Somador|saida[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[5]~6_combout\ = (\FD|PC|data_s\(5) & (!\FD|Somador|saida[4]~5\)) # (!\FD|PC|data_s\(5) & ((\FD|Somador|saida[4]~5\) # (GND)))
-- \FD|Somador|saida[5]~7\ = CARRY((!\FD|Somador|saida[4]~5\) # (!\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datad => VCC,
	cin => \FD|Somador|saida[4]~5\,
	combout => \FD|Somador|saida[5]~6_combout\,
	cout => \FD|Somador|saida[5]~7\);

\FD|PC|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[5]~34_combout\,
	asdata => \FD|Somador|saida[5]~6_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(5));

\FD|PC|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[6]~36_combout\,
	asdata => \FD|Somador|saida[6]~8_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(6));

\FD|BR|saidaA[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~38_combout\ = (!\FD|PC|data_s\(3) & !\FD|PC|data_s\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(5),
	combout => \FD|BR|saidaA[0]~38_combout\);

\FD|ROM|memROM~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~18_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & (\FD|BR|saidaA[0]~38_combout\ & !\FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|BR|saidaA[0]~38_combout\,
	datad => \FD|PC|data_s\(4),
	combout => \FD|ROM|memROM~18_combout\);

\FD|ULA|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~30_combout\ = (!\FD|ROM|memROM~9_combout\ & (!\FD|ROM|memROM~18_combout\ & (!\FD|ROM|memROM~19_combout\ & !\FD|ROM|memROM~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|ROM|memROM~18_combout\,
	datac => \FD|ROM|memROM~19_combout\,
	datad => \FD|ROM|memROM~20_combout\,
	combout => \FD|ULA|Add0~30_combout\);

\FD|ULA|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~31_combout\ = (\FD|ROM|memROM~9_combout\) # ((\FD|ROM|memROM~18_combout\ & (!\FD|ROM|memROM~19_combout\ & !\FD|ROM|memROM~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|ROM|memROM~18_combout\,
	datac => \FD|ROM|memROM~19_combout\,
	datad => \FD|ROM|memROM~20_combout\,
	combout => \FD|ULA|Add0~31_combout\);

\FD|ROM|memROM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~14_combout\ = (\FD|PC|data_s\(3)) # ((\FD|PC|data_s\(5)) # ((!\FD|PC|data_s\(2) & \FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~14_combout\);

\FD|BR|saidaA[0]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~70_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & !\FD|ROM|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~14_combout\,
	combout => \FD|BR|saidaA[0]~70_combout\);

\FD|BR|saidaA[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~41_combout\ = (\FD|BR|saidaA[0]~70_combout\ & (((\FD|PC|data_s\(4) & !\FD|PC|data_s\(2))) # (!\FD|BR|saidaA[0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[0]~70_combout\,
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(2),
	datad => \FD|BR|saidaA[0]~38_combout\,
	combout => \FD|BR|saidaA[5]~41_combout\);

\FD|BR|bancoReg~1066\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~1066_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & (!\FD|ROM|memROM~9_combout\ & !\FD|ROM|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~9_combout\,
	datad => \FD|ROM|memROM~12_combout\,
	combout => \FD|BR|bancoReg~1066_combout\);

\FD|BR|bancoReg~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~62_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~324_q\);

\FD|BR|saidaA[30]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~68_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~324_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~324_q\,
	combout => \FD|BR|saidaA[30]~68_combout\);

\FD|BR|saidaA[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~29_combout\ = (!\FD|PC|data_s\(7) & ((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(7),
	combout => \FD|BR|saidaA[3]~29_combout\);

\FD|BR|saidaA[3]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~73_combout\ = (\FD|BR|saidaA[3]~29_combout\ & (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(5) & !\FD|PC|data_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[3]~29_combout\,
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(3),
	combout => \FD|BR|saidaA[3]~73_combout\);

\FD|BR|saidaA[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~17_combout\ = (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5) & !\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(3),
	combout => \FD|BR|saidaA[2]~17_combout\);

\FD|BR|saidaA[2]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~72_combout\ = (\FD|BR|saidaA[2]~17_combout\ & (\FD|PC|data_s\(2) & (!\FD|PC|data_s\(7) & !\FD|PC|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[2]~17_combout\,
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(6),
	combout => \FD|BR|saidaA[2]~72_combout\);

\FD|ROM|memROM~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~10_combout\ = (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~10_combout\);

\FD|ROM|memROM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~13_combout\ = (\FD|ROM|memROM~10_combout\ & (\FD|PC|data_s\(2) & (\FD|BR|saidaA[0]~38_combout\ & !\FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~10_combout\,
	datab => \FD|PC|data_s\(2),
	datac => \FD|BR|saidaA[0]~38_combout\,
	datad => \FD|PC|data_s\(4),
	combout => \FD|ROM|memROM~13_combout\);

\FD|BR|saidaB[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~4_combout\ = (\FD|ROM|memROM~13_combout\ & !\FD|ROM|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~13_combout\,
	datad => \FD|ROM|memROM~14_combout\,
	combout => \FD|BR|saidaB[2]~4_combout\);

\FD|BR|saidaA[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~5_combout\ = (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(2) $ (!\FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(5),
	combout => \FD|BR|saidaA[1]~5_combout\);

\FD|BR|saidaA[1]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~71_combout\ = (\FD|BR|saidaA[1]~5_combout\ & (!\FD|PC|data_s\(3) & (!\FD|PC|data_s\(7) & !\FD|PC|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[1]~5_combout\,
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(6),
	combout => \FD|BR|saidaA[1]~71_combout\);

\FD|BR|saidaB[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~5_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & (!\FD|ROM|memROM~14_combout\ & !\FD|ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~14_combout\,
	datad => \FD|ROM|memROM~13_combout\,
	combout => \FD|BR|saidaB[0]~5_combout\);

\FD|ULA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~0_combout\ = (\FD|BR|saidaB[0]~5_combout\ & (\FD|BR|saidaA[0]~40_combout\ $ (VCC))) # (!\FD|BR|saidaB[0]~5_combout\ & ((\FD|BR|saidaA[0]~40_combout\) # (GND)))
-- \FD|ULA|Add1~1\ = CARRY((\FD|BR|saidaA[0]~40_combout\) # (!\FD|BR|saidaB[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[0]~5_combout\,
	datab => \FD|BR|saidaA[0]~40_combout\,
	datad => VCC,
	combout => \FD|ULA|Add1~0_combout\,
	cout => \FD|ULA|Add1~1\);

\FD|ULA|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~3_combout\ = (\FD|ULA|Add1~0_combout\ & (!\FD|PC|data_s\(5) & ((!\FD|PC|data_s\(3)) # (!\FD|PC|data_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|ULA|Add1~0_combout\,
	datad => \FD|PC|data_s\(5),
	combout => \FD|ULA|Add0~3_combout\);

\FD|ULA|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~64_combout\ = (\FD|ULA|Add0~3_combout\ & (!\FD|PC|data_s\(7) & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~3_combout\,
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(4),
	combout => \FD|ULA|Add0~64_combout\);

\FD|BR|bancoReg~1067\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~1067_combout\ = !\FD|ULA|Add0~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~64_combout\,
	combout => \FD|BR|bancoReg~1067_combout\);

\FD|BR|bancoReg~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|bancoReg~1067_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~294_q\);

\FD|BR|saidaA[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~39_combout\ = (!\FD|BR|bancoReg~294_q\ & ((\FD|PC|data_s\(3)) # ((\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(2),
	datad => \FD|BR|bancoReg~294_q\,
	combout => \FD|BR|saidaA[0]~39_combout\);

\FD|BR|saidaA[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~40_combout\ = (\FD|BR|saidaA[0]~70_combout\ & ((\FD|BR|saidaA[0]~39_combout\) # ((\FD|BR|saidaA[0]~38_combout\ & !\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[0]~70_combout\,
	datab => \FD|BR|saidaA[0]~39_combout\,
	datac => \FD|BR|saidaA[0]~38_combout\,
	datad => \FD|PC|data_s\(4),
	combout => \FD|BR|saidaA[0]~40_combout\);

\FD|ULA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~2_combout\ = (\FD|BR|saidaA[1]~71_combout\ & ((\FD|BR|saidaB[0]~5_combout\ & (!\FD|ULA|Add1~1\)) # (!\FD|BR|saidaB[0]~5_combout\ & (\FD|ULA|Add1~1\ & VCC)))) # (!\FD|BR|saidaA[1]~71_combout\ & ((\FD|BR|saidaB[0]~5_combout\ & 
-- ((\FD|ULA|Add1~1\) # (GND))) # (!\FD|BR|saidaB[0]~5_combout\ & (!\FD|ULA|Add1~1\))))
-- \FD|ULA|Add1~3\ = CARRY((\FD|BR|saidaA[1]~71_combout\ & (\FD|BR|saidaB[0]~5_combout\ & !\FD|ULA|Add1~1\)) # (!\FD|BR|saidaA[1]~71_combout\ & ((\FD|BR|saidaB[0]~5_combout\) # (!\FD|ULA|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[1]~71_combout\,
	datab => \FD|BR|saidaB[0]~5_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~1\,
	combout => \FD|ULA|Add1~2_combout\,
	cout => \FD|ULA|Add1~3\);

\FD|ULA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~4_combout\ = ((\FD|BR|saidaA[2]~72_combout\ $ (\FD|BR|saidaB[2]~4_combout\ $ (\FD|ULA|Add1~3\)))) # (GND)
-- \FD|ULA|Add1~5\ = CARRY((\FD|BR|saidaA[2]~72_combout\ & ((!\FD|ULA|Add1~3\) # (!\FD|BR|saidaB[2]~4_combout\))) # (!\FD|BR|saidaA[2]~72_combout\ & (!\FD|BR|saidaB[2]~4_combout\ & !\FD|ULA|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[2]~72_combout\,
	datab => \FD|BR|saidaB[2]~4_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~3\,
	combout => \FD|ULA|Add1~4_combout\,
	cout => \FD|ULA|Add1~5\);

\FD|ULA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~6_combout\ = (\FD|BR|saidaA[3]~73_combout\ & ((\FD|BR|saidaA[0]~70_combout\ & (!\FD|ULA|Add1~5\)) # (!\FD|BR|saidaA[0]~70_combout\ & (\FD|ULA|Add1~5\ & VCC)))) # (!\FD|BR|saidaA[3]~73_combout\ & ((\FD|BR|saidaA[0]~70_combout\ & 
-- ((\FD|ULA|Add1~5\) # (GND))) # (!\FD|BR|saidaA[0]~70_combout\ & (!\FD|ULA|Add1~5\))))
-- \FD|ULA|Add1~7\ = CARRY((\FD|BR|saidaA[3]~73_combout\ & (\FD|BR|saidaA[0]~70_combout\ & !\FD|ULA|Add1~5\)) # (!\FD|BR|saidaA[3]~73_combout\ & ((\FD|BR|saidaA[0]~70_combout\) # (!\FD|ULA|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[3]~73_combout\,
	datab => \FD|BR|saidaA[0]~70_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~5\,
	combout => \FD|ULA|Add1~6_combout\,
	cout => \FD|ULA|Add1~7\);

\FD|ULA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~8_combout\ = (\FD|BR|saidaA[4]~42_combout\ & ((GND) # (!\FD|ULA|Add1~7\))) # (!\FD|BR|saidaA[4]~42_combout\ & (\FD|ULA|Add1~7\ $ (GND)))
-- \FD|ULA|Add1~9\ = CARRY((\FD|BR|saidaA[4]~42_combout\) # (!\FD|ULA|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[4]~42_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~7\,
	combout => \FD|ULA|Add1~8_combout\,
	cout => \FD|ULA|Add1~9\);

\FD|ULA|soma[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[0]~1_cout\ = CARRY((\FD|BR|saidaB[0]~5_combout\ & \FD|BR|saidaA[0]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[0]~5_combout\,
	datab => \FD|BR|saidaA[0]~40_combout\,
	datad => VCC,
	cout => \FD|ULA|soma[0]~1_cout\);

\FD|ULA|soma[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[1]~2_combout\ = (\FD|BR|saidaA[1]~71_combout\ & ((\FD|BR|saidaB[0]~5_combout\ & (\FD|ULA|soma[0]~1_cout\ & VCC)) # (!\FD|BR|saidaB[0]~5_combout\ & (!\FD|ULA|soma[0]~1_cout\)))) # (!\FD|BR|saidaA[1]~71_combout\ & ((\FD|BR|saidaB[0]~5_combout\ 
-- & (!\FD|ULA|soma[0]~1_cout\)) # (!\FD|BR|saidaB[0]~5_combout\ & ((\FD|ULA|soma[0]~1_cout\) # (GND)))))
-- \FD|ULA|soma[1]~3\ = CARRY((\FD|BR|saidaA[1]~71_combout\ & (!\FD|BR|saidaB[0]~5_combout\ & !\FD|ULA|soma[0]~1_cout\)) # (!\FD|BR|saidaA[1]~71_combout\ & ((!\FD|ULA|soma[0]~1_cout\) # (!\FD|BR|saidaB[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[1]~71_combout\,
	datab => \FD|BR|saidaB[0]~5_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[0]~1_cout\,
	combout => \FD|ULA|soma[1]~2_combout\,
	cout => \FD|ULA|soma[1]~3\);

\FD|ULA|soma[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[2]~5_cout\ = CARRY((\FD|BR|saidaA[2]~72_combout\ & ((\FD|BR|saidaB[2]~4_combout\) # (!\FD|ULA|soma[1]~3\))) # (!\FD|BR|saidaA[2]~72_combout\ & (\FD|BR|saidaB[2]~4_combout\ & !\FD|ULA|soma[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[2]~72_combout\,
	datab => \FD|BR|saidaB[2]~4_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[1]~3\,
	cout => \FD|ULA|soma[2]~5_cout\);

\FD|ULA|soma[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[3]~6_combout\ = (\FD|BR|saidaA[3]~73_combout\ & ((\FD|BR|saidaA[0]~70_combout\ & (\FD|ULA|soma[2]~5_cout\ & VCC)) # (!\FD|BR|saidaA[0]~70_combout\ & (!\FD|ULA|soma[2]~5_cout\)))) # (!\FD|BR|saidaA[3]~73_combout\ & 
-- ((\FD|BR|saidaA[0]~70_combout\ & (!\FD|ULA|soma[2]~5_cout\)) # (!\FD|BR|saidaA[0]~70_combout\ & ((\FD|ULA|soma[2]~5_cout\) # (GND)))))
-- \FD|ULA|soma[3]~7\ = CARRY((\FD|BR|saidaA[3]~73_combout\ & (!\FD|BR|saidaA[0]~70_combout\ & !\FD|ULA|soma[2]~5_cout\)) # (!\FD|BR|saidaA[3]~73_combout\ & ((!\FD|ULA|soma[2]~5_cout\) # (!\FD|BR|saidaA[0]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[3]~73_combout\,
	datab => \FD|BR|saidaA[0]~70_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[2]~5_cout\,
	combout => \FD|ULA|soma[3]~6_combout\,
	cout => \FD|ULA|soma[3]~7\);

\FD|ULA|soma[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[4]~8_combout\ = (\FD|BR|saidaA[4]~42_combout\ & (\FD|ULA|soma[3]~7\ $ (GND))) # (!\FD|BR|saidaA[4]~42_combout\ & (!\FD|ULA|soma[3]~7\ & VCC))
-- \FD|ULA|soma[4]~9\ = CARRY((\FD|BR|saidaA[4]~42_combout\ & !\FD|ULA|soma[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[4]~42_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[3]~7\,
	combout => \FD|ULA|soma[4]~8_combout\,
	cout => \FD|ULA|soma[4]~9\);

\FD|ULA|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~36_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[4]~8_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~8_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~8_combout\,
	datad => \FD|ULA|soma[4]~8_combout\,
	combout => \FD|ULA|Add0~36_combout\);

\FD|BR|bancoReg~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~36_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~298_q\);

\FD|BR|saidaA[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~42_combout\ = (\FD|BR|bancoReg~298_q\ & \FD|BR|saidaA[5]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~298_q\,
	datab => \FD|BR|saidaA[5]~41_combout\,
	combout => \FD|BR|saidaA[4]~42_combout\);

\FD|ULA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~10_combout\ = (\FD|BR|saidaA[5]~43_combout\ & (\FD|ULA|Add1~9\ & VCC)) # (!\FD|BR|saidaA[5]~43_combout\ & (!\FD|ULA|Add1~9\))
-- \FD|ULA|Add1~11\ = CARRY((!\FD|BR|saidaA[5]~43_combout\ & !\FD|ULA|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~43_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~9\,
	combout => \FD|ULA|Add1~10_combout\,
	cout => \FD|ULA|Add1~11\);

\FD|ULA|soma[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[5]~10_combout\ = (\FD|BR|saidaA[5]~43_combout\ & (!\FD|ULA|soma[4]~9\)) # (!\FD|BR|saidaA[5]~43_combout\ & ((\FD|ULA|soma[4]~9\) # (GND)))
-- \FD|ULA|soma[5]~11\ = CARRY((!\FD|ULA|soma[4]~9\) # (!\FD|BR|saidaA[5]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~43_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[4]~9\,
	combout => \FD|ULA|soma[5]~10_combout\,
	cout => \FD|ULA|soma[5]~11\);

\FD|ULA|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~37_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[5]~10_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~10_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~10_combout\,
	datad => \FD|ULA|soma[5]~10_combout\,
	combout => \FD|ULA|Add0~37_combout\);

\FD|BR|bancoReg~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~37_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~299_q\);

\FD|BR|saidaA[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~43_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~299_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~299_q\,
	combout => \FD|BR|saidaA[5]~43_combout\);

\FD|ULA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~12_combout\ = (\FD|BR|saidaA[6]~44_combout\ & ((GND) # (!\FD|ULA|Add1~11\))) # (!\FD|BR|saidaA[6]~44_combout\ & (\FD|ULA|Add1~11\ $ (GND)))
-- \FD|ULA|Add1~13\ = CARRY((\FD|BR|saidaA[6]~44_combout\) # (!\FD|ULA|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[6]~44_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~11\,
	combout => \FD|ULA|Add1~12_combout\,
	cout => \FD|ULA|Add1~13\);

\FD|ULA|soma[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[6]~12_combout\ = (\FD|BR|saidaA[6]~44_combout\ & (\FD|ULA|soma[5]~11\ $ (GND))) # (!\FD|BR|saidaA[6]~44_combout\ & (!\FD|ULA|soma[5]~11\ & VCC))
-- \FD|ULA|soma[6]~13\ = CARRY((\FD|BR|saidaA[6]~44_combout\ & !\FD|ULA|soma[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[6]~44_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[5]~11\,
	combout => \FD|ULA|soma[6]~12_combout\,
	cout => \FD|ULA|soma[6]~13\);

\FD|ULA|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~38_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[6]~12_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~12_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~12_combout\,
	datad => \FD|ULA|soma[6]~12_combout\,
	combout => \FD|ULA|Add0~38_combout\);

\FD|BR|bancoReg~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~38_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~300_q\);

\FD|BR|saidaA[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~44_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~300_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~300_q\,
	combout => \FD|BR|saidaA[6]~44_combout\);

\FD|ULA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~14_combout\ = (\FD|BR|saidaA[7]~45_combout\ & (\FD|ULA|Add1~13\ & VCC)) # (!\FD|BR|saidaA[7]~45_combout\ & (!\FD|ULA|Add1~13\))
-- \FD|ULA|Add1~15\ = CARRY((!\FD|BR|saidaA[7]~45_combout\ & !\FD|ULA|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[7]~45_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~13\,
	combout => \FD|ULA|Add1~14_combout\,
	cout => \FD|ULA|Add1~15\);

\FD|ULA|soma[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[7]~14_combout\ = (\FD|BR|saidaA[7]~45_combout\ & (!\FD|ULA|soma[6]~13\)) # (!\FD|BR|saidaA[7]~45_combout\ & ((\FD|ULA|soma[6]~13\) # (GND)))
-- \FD|ULA|soma[7]~15\ = CARRY((!\FD|ULA|soma[6]~13\) # (!\FD|BR|saidaA[7]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[7]~45_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[6]~13\,
	combout => \FD|ULA|soma[7]~14_combout\,
	cout => \FD|ULA|soma[7]~15\);

\FD|ULA|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~39_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[7]~14_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~14_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~14_combout\,
	datad => \FD|ULA|soma[7]~14_combout\,
	combout => \FD|ULA|Add0~39_combout\);

\FD|BR|bancoReg~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~39_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~301_q\);

\FD|BR|saidaA[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~45_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~301_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~301_q\,
	combout => \FD|BR|saidaA[7]~45_combout\);

\FD|ULA|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~16_combout\ = (\FD|BR|saidaA[8]~46_combout\ & ((GND) # (!\FD|ULA|Add1~15\))) # (!\FD|BR|saidaA[8]~46_combout\ & (\FD|ULA|Add1~15\ $ (GND)))
-- \FD|ULA|Add1~17\ = CARRY((\FD|BR|saidaA[8]~46_combout\) # (!\FD|ULA|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[8]~46_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~15\,
	combout => \FD|ULA|Add1~16_combout\,
	cout => \FD|ULA|Add1~17\);

\FD|ULA|soma[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[8]~16_combout\ = (\FD|BR|saidaA[8]~46_combout\ & (\FD|ULA|soma[7]~15\ $ (GND))) # (!\FD|BR|saidaA[8]~46_combout\ & (!\FD|ULA|soma[7]~15\ & VCC))
-- \FD|ULA|soma[8]~17\ = CARRY((\FD|BR|saidaA[8]~46_combout\ & !\FD|ULA|soma[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[8]~46_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[7]~15\,
	combout => \FD|ULA|soma[8]~16_combout\,
	cout => \FD|ULA|soma[8]~17\);

\FD|ULA|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~40_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[8]~16_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~16_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~16_combout\,
	datad => \FD|ULA|soma[8]~16_combout\,
	combout => \FD|ULA|Add0~40_combout\);

\FD|BR|bancoReg~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~40_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~302_q\);

\FD|BR|saidaA[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~46_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~302_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~302_q\,
	combout => \FD|BR|saidaA[8]~46_combout\);

\FD|ULA|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~18_combout\ = (\FD|BR|saidaA[9]~47_combout\ & (\FD|ULA|Add1~17\ & VCC)) # (!\FD|BR|saidaA[9]~47_combout\ & (!\FD|ULA|Add1~17\))
-- \FD|ULA|Add1~19\ = CARRY((!\FD|BR|saidaA[9]~47_combout\ & !\FD|ULA|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[9]~47_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~17\,
	combout => \FD|ULA|Add1~18_combout\,
	cout => \FD|ULA|Add1~19\);

\FD|ULA|soma[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[9]~18_combout\ = (\FD|BR|saidaA[9]~47_combout\ & (!\FD|ULA|soma[8]~17\)) # (!\FD|BR|saidaA[9]~47_combout\ & ((\FD|ULA|soma[8]~17\) # (GND)))
-- \FD|ULA|soma[9]~19\ = CARRY((!\FD|ULA|soma[8]~17\) # (!\FD|BR|saidaA[9]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[9]~47_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[8]~17\,
	combout => \FD|ULA|soma[9]~18_combout\,
	cout => \FD|ULA|soma[9]~19\);

\FD|ULA|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~41_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[9]~18_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~18_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~18_combout\,
	datad => \FD|ULA|soma[9]~18_combout\,
	combout => \FD|ULA|Add0~41_combout\);

\FD|BR|bancoReg~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~41_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~303_q\);

\FD|BR|saidaA[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~47_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~303_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~303_q\,
	combout => \FD|BR|saidaA[9]~47_combout\);

\FD|ULA|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~20_combout\ = (\FD|BR|saidaA[10]~48_combout\ & ((GND) # (!\FD|ULA|Add1~19\))) # (!\FD|BR|saidaA[10]~48_combout\ & (\FD|ULA|Add1~19\ $ (GND)))
-- \FD|ULA|Add1~21\ = CARRY((\FD|BR|saidaA[10]~48_combout\) # (!\FD|ULA|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[10]~48_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~19\,
	combout => \FD|ULA|Add1~20_combout\,
	cout => \FD|ULA|Add1~21\);

\FD|ULA|soma[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[10]~20_combout\ = (\FD|BR|saidaA[10]~48_combout\ & (\FD|ULA|soma[9]~19\ $ (GND))) # (!\FD|BR|saidaA[10]~48_combout\ & (!\FD|ULA|soma[9]~19\ & VCC))
-- \FD|ULA|soma[10]~21\ = CARRY((\FD|BR|saidaA[10]~48_combout\ & !\FD|ULA|soma[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[10]~48_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[9]~19\,
	combout => \FD|ULA|soma[10]~20_combout\,
	cout => \FD|ULA|soma[10]~21\);

\FD|ULA|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~42_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[10]~20_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~20_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~20_combout\,
	datad => \FD|ULA|soma[10]~20_combout\,
	combout => \FD|ULA|Add0~42_combout\);

\FD|BR|bancoReg~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~42_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~304_q\);

\FD|BR|saidaA[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~48_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~304_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~304_q\,
	combout => \FD|BR|saidaA[10]~48_combout\);

\FD|ULA|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~22_combout\ = (\FD|BR|saidaA[11]~49_combout\ & (\FD|ULA|Add1~21\ & VCC)) # (!\FD|BR|saidaA[11]~49_combout\ & (!\FD|ULA|Add1~21\))
-- \FD|ULA|Add1~23\ = CARRY((!\FD|BR|saidaA[11]~49_combout\ & !\FD|ULA|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[11]~49_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~21\,
	combout => \FD|ULA|Add1~22_combout\,
	cout => \FD|ULA|Add1~23\);

\FD|ULA|soma[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[11]~22_combout\ = (\FD|BR|saidaA[11]~49_combout\ & (!\FD|ULA|soma[10]~21\)) # (!\FD|BR|saidaA[11]~49_combout\ & ((\FD|ULA|soma[10]~21\) # (GND)))
-- \FD|ULA|soma[11]~23\ = CARRY((!\FD|ULA|soma[10]~21\) # (!\FD|BR|saidaA[11]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[11]~49_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[10]~21\,
	combout => \FD|ULA|soma[11]~22_combout\,
	cout => \FD|ULA|soma[11]~23\);

\FD|ULA|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~43_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[11]~22_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~22_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~22_combout\,
	datad => \FD|ULA|soma[11]~22_combout\,
	combout => \FD|ULA|Add0~43_combout\);

\FD|BR|bancoReg~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~43_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~305_q\);

\FD|BR|saidaA[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~49_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~305_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~305_q\,
	combout => \FD|BR|saidaA[11]~49_combout\);

\FD|ULA|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~24_combout\ = (\FD|BR|saidaA[12]~50_combout\ & ((GND) # (!\FD|ULA|Add1~23\))) # (!\FD|BR|saidaA[12]~50_combout\ & (\FD|ULA|Add1~23\ $ (GND)))
-- \FD|ULA|Add1~25\ = CARRY((\FD|BR|saidaA[12]~50_combout\) # (!\FD|ULA|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[12]~50_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~23\,
	combout => \FD|ULA|Add1~24_combout\,
	cout => \FD|ULA|Add1~25\);

\FD|ULA|soma[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[12]~24_combout\ = (\FD|BR|saidaA[12]~50_combout\ & (\FD|ULA|soma[11]~23\ $ (GND))) # (!\FD|BR|saidaA[12]~50_combout\ & (!\FD|ULA|soma[11]~23\ & VCC))
-- \FD|ULA|soma[12]~25\ = CARRY((\FD|BR|saidaA[12]~50_combout\ & !\FD|ULA|soma[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[12]~50_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[11]~23\,
	combout => \FD|ULA|soma[12]~24_combout\,
	cout => \FD|ULA|soma[12]~25\);

\FD|ULA|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~44_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[12]~24_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~24_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~24_combout\,
	datad => \FD|ULA|soma[12]~24_combout\,
	combout => \FD|ULA|Add0~44_combout\);

\FD|BR|bancoReg~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~44_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~306_q\);

\FD|BR|saidaA[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~50_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~306_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~306_q\,
	combout => \FD|BR|saidaA[12]~50_combout\);

\FD|ULA|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~26_combout\ = (\FD|BR|saidaA[13]~51_combout\ & (\FD|ULA|Add1~25\ & VCC)) # (!\FD|BR|saidaA[13]~51_combout\ & (!\FD|ULA|Add1~25\))
-- \FD|ULA|Add1~27\ = CARRY((!\FD|BR|saidaA[13]~51_combout\ & !\FD|ULA|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[13]~51_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~25\,
	combout => \FD|ULA|Add1~26_combout\,
	cout => \FD|ULA|Add1~27\);

\FD|ULA|soma[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[13]~26_combout\ = (\FD|BR|saidaA[13]~51_combout\ & (!\FD|ULA|soma[12]~25\)) # (!\FD|BR|saidaA[13]~51_combout\ & ((\FD|ULA|soma[12]~25\) # (GND)))
-- \FD|ULA|soma[13]~27\ = CARRY((!\FD|ULA|soma[12]~25\) # (!\FD|BR|saidaA[13]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[13]~51_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[12]~25\,
	combout => \FD|ULA|soma[13]~26_combout\,
	cout => \FD|ULA|soma[13]~27\);

\FD|ULA|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~45_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[13]~26_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~26_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~26_combout\,
	datad => \FD|ULA|soma[13]~26_combout\,
	combout => \FD|ULA|Add0~45_combout\);

\FD|BR|bancoReg~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~45_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~307_q\);

\FD|BR|saidaA[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~51_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~307_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~307_q\,
	combout => \FD|BR|saidaA[13]~51_combout\);

\FD|ULA|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~28_combout\ = (\FD|BR|saidaA[14]~52_combout\ & ((GND) # (!\FD|ULA|Add1~27\))) # (!\FD|BR|saidaA[14]~52_combout\ & (\FD|ULA|Add1~27\ $ (GND)))
-- \FD|ULA|Add1~29\ = CARRY((\FD|BR|saidaA[14]~52_combout\) # (!\FD|ULA|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[14]~52_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~27\,
	combout => \FD|ULA|Add1~28_combout\,
	cout => \FD|ULA|Add1~29\);

\FD|ULA|soma[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[14]~28_combout\ = (\FD|BR|saidaA[14]~52_combout\ & (\FD|ULA|soma[13]~27\ $ (GND))) # (!\FD|BR|saidaA[14]~52_combout\ & (!\FD|ULA|soma[13]~27\ & VCC))
-- \FD|ULA|soma[14]~29\ = CARRY((\FD|BR|saidaA[14]~52_combout\ & !\FD|ULA|soma[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[14]~52_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[13]~27\,
	combout => \FD|ULA|soma[14]~28_combout\,
	cout => \FD|ULA|soma[14]~29\);

\FD|ULA|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~46_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[14]~28_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~28_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~28_combout\,
	datad => \FD|ULA|soma[14]~28_combout\,
	combout => \FD|ULA|Add0~46_combout\);

\FD|BR|bancoReg~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~46_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~308_q\);

\FD|BR|saidaA[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~52_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~308_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~308_q\,
	combout => \FD|BR|saidaA[14]~52_combout\);

\FD|ULA|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~30_combout\ = (\FD|BR|saidaA[15]~53_combout\ & (\FD|ULA|Add1~29\ & VCC)) # (!\FD|BR|saidaA[15]~53_combout\ & (!\FD|ULA|Add1~29\))
-- \FD|ULA|Add1~31\ = CARRY((!\FD|BR|saidaA[15]~53_combout\ & !\FD|ULA|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[15]~53_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~29\,
	combout => \FD|ULA|Add1~30_combout\,
	cout => \FD|ULA|Add1~31\);

\FD|ULA|soma[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[15]~30_combout\ = (\FD|BR|saidaA[15]~53_combout\ & (!\FD|ULA|soma[14]~29\)) # (!\FD|BR|saidaA[15]~53_combout\ & ((\FD|ULA|soma[14]~29\) # (GND)))
-- \FD|ULA|soma[15]~31\ = CARRY((!\FD|ULA|soma[14]~29\) # (!\FD|BR|saidaA[15]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[15]~53_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[14]~29\,
	combout => \FD|ULA|soma[15]~30_combout\,
	cout => \FD|ULA|soma[15]~31\);

\FD|ULA|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~47_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[15]~30_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~30_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~30_combout\,
	datad => \FD|ULA|soma[15]~30_combout\,
	combout => \FD|ULA|Add0~47_combout\);

\FD|BR|bancoReg~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~47_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~309_q\);

\FD|BR|saidaA[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~53_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~309_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~309_q\,
	combout => \FD|BR|saidaA[15]~53_combout\);

\FD|ULA|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~32_combout\ = (\FD|BR|saidaA[16]~54_combout\ & ((GND) # (!\FD|ULA|Add1~31\))) # (!\FD|BR|saidaA[16]~54_combout\ & (\FD|ULA|Add1~31\ $ (GND)))
-- \FD|ULA|Add1~33\ = CARRY((\FD|BR|saidaA[16]~54_combout\) # (!\FD|ULA|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[16]~54_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~31\,
	combout => \FD|ULA|Add1~32_combout\,
	cout => \FD|ULA|Add1~33\);

\FD|ULA|soma[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[16]~32_combout\ = (\FD|BR|saidaA[16]~54_combout\ & (\FD|ULA|soma[15]~31\ $ (GND))) # (!\FD|BR|saidaA[16]~54_combout\ & (!\FD|ULA|soma[15]~31\ & VCC))
-- \FD|ULA|soma[16]~33\ = CARRY((\FD|BR|saidaA[16]~54_combout\ & !\FD|ULA|soma[15]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[16]~54_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[15]~31\,
	combout => \FD|ULA|soma[16]~32_combout\,
	cout => \FD|ULA|soma[16]~33\);

\FD|ULA|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~48_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[16]~32_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~32_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~32_combout\,
	datad => \FD|ULA|soma[16]~32_combout\,
	combout => \FD|ULA|Add0~48_combout\);

\FD|BR|bancoReg~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~48_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~310_q\);

\FD|BR|saidaA[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~54_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~310_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~310_q\,
	combout => \FD|BR|saidaA[16]~54_combout\);

\FD|ULA|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~34_combout\ = (\FD|BR|saidaA[17]~55_combout\ & (\FD|ULA|Add1~33\ & VCC)) # (!\FD|BR|saidaA[17]~55_combout\ & (!\FD|ULA|Add1~33\))
-- \FD|ULA|Add1~35\ = CARRY((!\FD|BR|saidaA[17]~55_combout\ & !\FD|ULA|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[17]~55_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~33\,
	combout => \FD|ULA|Add1~34_combout\,
	cout => \FD|ULA|Add1~35\);

\FD|ULA|soma[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[17]~34_combout\ = (\FD|BR|saidaA[17]~55_combout\ & (!\FD|ULA|soma[16]~33\)) # (!\FD|BR|saidaA[17]~55_combout\ & ((\FD|ULA|soma[16]~33\) # (GND)))
-- \FD|ULA|soma[17]~35\ = CARRY((!\FD|ULA|soma[16]~33\) # (!\FD|BR|saidaA[17]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[17]~55_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[16]~33\,
	combout => \FD|ULA|soma[17]~34_combout\,
	cout => \FD|ULA|soma[17]~35\);

\FD|ULA|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~49_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[17]~34_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~34_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~34_combout\,
	datad => \FD|ULA|soma[17]~34_combout\,
	combout => \FD|ULA|Add0~49_combout\);

\FD|BR|bancoReg~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~49_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~311_q\);

\FD|BR|saidaA[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~55_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~311_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~311_q\,
	combout => \FD|BR|saidaA[17]~55_combout\);

\FD|ULA|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~36_combout\ = (\FD|BR|saidaA[18]~56_combout\ & ((GND) # (!\FD|ULA|Add1~35\))) # (!\FD|BR|saidaA[18]~56_combout\ & (\FD|ULA|Add1~35\ $ (GND)))
-- \FD|ULA|Add1~37\ = CARRY((\FD|BR|saidaA[18]~56_combout\) # (!\FD|ULA|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[18]~56_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~35\,
	combout => \FD|ULA|Add1~36_combout\,
	cout => \FD|ULA|Add1~37\);

\FD|ULA|soma[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[18]~36_combout\ = (\FD|BR|saidaA[18]~56_combout\ & (\FD|ULA|soma[17]~35\ $ (GND))) # (!\FD|BR|saidaA[18]~56_combout\ & (!\FD|ULA|soma[17]~35\ & VCC))
-- \FD|ULA|soma[18]~37\ = CARRY((\FD|BR|saidaA[18]~56_combout\ & !\FD|ULA|soma[17]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[18]~56_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[17]~35\,
	combout => \FD|ULA|soma[18]~36_combout\,
	cout => \FD|ULA|soma[18]~37\);

\FD|ULA|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~50_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[18]~36_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~36_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~36_combout\,
	datad => \FD|ULA|soma[18]~36_combout\,
	combout => \FD|ULA|Add0~50_combout\);

\FD|BR|bancoReg~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~50_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~312_q\);

\FD|BR|saidaA[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~56_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~312_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~312_q\,
	combout => \FD|BR|saidaA[18]~56_combout\);

\FD|ULA|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~38_combout\ = (\FD|BR|saidaA[19]~57_combout\ & (\FD|ULA|Add1~37\ & VCC)) # (!\FD|BR|saidaA[19]~57_combout\ & (!\FD|ULA|Add1~37\))
-- \FD|ULA|Add1~39\ = CARRY((!\FD|BR|saidaA[19]~57_combout\ & !\FD|ULA|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[19]~57_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~37\,
	combout => \FD|ULA|Add1~38_combout\,
	cout => \FD|ULA|Add1~39\);

\FD|ULA|soma[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[19]~38_combout\ = (\FD|BR|saidaA[19]~57_combout\ & (!\FD|ULA|soma[18]~37\)) # (!\FD|BR|saidaA[19]~57_combout\ & ((\FD|ULA|soma[18]~37\) # (GND)))
-- \FD|ULA|soma[19]~39\ = CARRY((!\FD|ULA|soma[18]~37\) # (!\FD|BR|saidaA[19]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[19]~57_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[18]~37\,
	combout => \FD|ULA|soma[19]~38_combout\,
	cout => \FD|ULA|soma[19]~39\);

\FD|ULA|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~51_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[19]~38_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~38_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~38_combout\,
	datad => \FD|ULA|soma[19]~38_combout\,
	combout => \FD|ULA|Add0~51_combout\);

\FD|BR|bancoReg~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~51_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~313_q\);

\FD|BR|saidaA[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~57_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~313_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~313_q\,
	combout => \FD|BR|saidaA[19]~57_combout\);

\FD|ULA|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~40_combout\ = (\FD|BR|saidaA[20]~58_combout\ & ((GND) # (!\FD|ULA|Add1~39\))) # (!\FD|BR|saidaA[20]~58_combout\ & (\FD|ULA|Add1~39\ $ (GND)))
-- \FD|ULA|Add1~41\ = CARRY((\FD|BR|saidaA[20]~58_combout\) # (!\FD|ULA|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[20]~58_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~39\,
	combout => \FD|ULA|Add1~40_combout\,
	cout => \FD|ULA|Add1~41\);

\FD|ULA|soma[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[20]~40_combout\ = (\FD|BR|saidaA[20]~58_combout\ & (\FD|ULA|soma[19]~39\ $ (GND))) # (!\FD|BR|saidaA[20]~58_combout\ & (!\FD|ULA|soma[19]~39\ & VCC))
-- \FD|ULA|soma[20]~41\ = CARRY((\FD|BR|saidaA[20]~58_combout\ & !\FD|ULA|soma[19]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[20]~58_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[19]~39\,
	combout => \FD|ULA|soma[20]~40_combout\,
	cout => \FD|ULA|soma[20]~41\);

\FD|ULA|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~52_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[20]~40_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~40_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~40_combout\,
	datad => \FD|ULA|soma[20]~40_combout\,
	combout => \FD|ULA|Add0~52_combout\);

\FD|BR|bancoReg~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~52_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~314_q\);

\FD|BR|saidaA[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~58_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~314_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~314_q\,
	combout => \FD|BR|saidaA[20]~58_combout\);

\FD|ULA|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~42_combout\ = (\FD|BR|saidaA[21]~59_combout\ & (\FD|ULA|Add1~41\ & VCC)) # (!\FD|BR|saidaA[21]~59_combout\ & (!\FD|ULA|Add1~41\))
-- \FD|ULA|Add1~43\ = CARRY((!\FD|BR|saidaA[21]~59_combout\ & !\FD|ULA|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[21]~59_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~41\,
	combout => \FD|ULA|Add1~42_combout\,
	cout => \FD|ULA|Add1~43\);

\FD|ULA|soma[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[21]~42_combout\ = (\FD|BR|saidaA[21]~59_combout\ & (!\FD|ULA|soma[20]~41\)) # (!\FD|BR|saidaA[21]~59_combout\ & ((\FD|ULA|soma[20]~41\) # (GND)))
-- \FD|ULA|soma[21]~43\ = CARRY((!\FD|ULA|soma[20]~41\) # (!\FD|BR|saidaA[21]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[21]~59_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[20]~41\,
	combout => \FD|ULA|soma[21]~42_combout\,
	cout => \FD|ULA|soma[21]~43\);

\FD|ULA|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~53_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[21]~42_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~42_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~42_combout\,
	datad => \FD|ULA|soma[21]~42_combout\,
	combout => \FD|ULA|Add0~53_combout\);

\FD|BR|bancoReg~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~53_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~315_q\);

\FD|BR|saidaA[21]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~59_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~315_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~315_q\,
	combout => \FD|BR|saidaA[21]~59_combout\);

\FD|ULA|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~44_combout\ = (\FD|BR|saidaA[22]~60_combout\ & ((GND) # (!\FD|ULA|Add1~43\))) # (!\FD|BR|saidaA[22]~60_combout\ & (\FD|ULA|Add1~43\ $ (GND)))
-- \FD|ULA|Add1~45\ = CARRY((\FD|BR|saidaA[22]~60_combout\) # (!\FD|ULA|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[22]~60_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~43\,
	combout => \FD|ULA|Add1~44_combout\,
	cout => \FD|ULA|Add1~45\);

\FD|ULA|soma[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[22]~44_combout\ = (\FD|BR|saidaA[22]~60_combout\ & (\FD|ULA|soma[21]~43\ $ (GND))) # (!\FD|BR|saidaA[22]~60_combout\ & (!\FD|ULA|soma[21]~43\ & VCC))
-- \FD|ULA|soma[22]~45\ = CARRY((\FD|BR|saidaA[22]~60_combout\ & !\FD|ULA|soma[21]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[22]~60_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[21]~43\,
	combout => \FD|ULA|soma[22]~44_combout\,
	cout => \FD|ULA|soma[22]~45\);

\FD|ULA|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~54_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[22]~44_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~44_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~44_combout\,
	datad => \FD|ULA|soma[22]~44_combout\,
	combout => \FD|ULA|Add0~54_combout\);

\FD|BR|bancoReg~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~54_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~316_q\);

\FD|BR|saidaA[22]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~60_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~316_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~316_q\,
	combout => \FD|BR|saidaA[22]~60_combout\);

\FD|ULA|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~46_combout\ = (\FD|BR|saidaA[23]~61_combout\ & (\FD|ULA|Add1~45\ & VCC)) # (!\FD|BR|saidaA[23]~61_combout\ & (!\FD|ULA|Add1~45\))
-- \FD|ULA|Add1~47\ = CARRY((!\FD|BR|saidaA[23]~61_combout\ & !\FD|ULA|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[23]~61_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~45\,
	combout => \FD|ULA|Add1~46_combout\,
	cout => \FD|ULA|Add1~47\);

\FD|ULA|soma[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[23]~46_combout\ = (\FD|BR|saidaA[23]~61_combout\ & (!\FD|ULA|soma[22]~45\)) # (!\FD|BR|saidaA[23]~61_combout\ & ((\FD|ULA|soma[22]~45\) # (GND)))
-- \FD|ULA|soma[23]~47\ = CARRY((!\FD|ULA|soma[22]~45\) # (!\FD|BR|saidaA[23]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[23]~61_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[22]~45\,
	combout => \FD|ULA|soma[23]~46_combout\,
	cout => \FD|ULA|soma[23]~47\);

\FD|ULA|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~55_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[23]~46_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~46_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~46_combout\,
	datad => \FD|ULA|soma[23]~46_combout\,
	combout => \FD|ULA|Add0~55_combout\);

\FD|BR|bancoReg~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~55_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~317_q\);

\FD|BR|saidaA[23]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~61_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~317_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~317_q\,
	combout => \FD|BR|saidaA[23]~61_combout\);

\FD|ULA|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~48_combout\ = (\FD|BR|saidaA[24]~62_combout\ & ((GND) # (!\FD|ULA|Add1~47\))) # (!\FD|BR|saidaA[24]~62_combout\ & (\FD|ULA|Add1~47\ $ (GND)))
-- \FD|ULA|Add1~49\ = CARRY((\FD|BR|saidaA[24]~62_combout\) # (!\FD|ULA|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[24]~62_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~47\,
	combout => \FD|ULA|Add1~48_combout\,
	cout => \FD|ULA|Add1~49\);

\FD|ULA|soma[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[24]~48_combout\ = (\FD|BR|saidaA[24]~62_combout\ & (\FD|ULA|soma[23]~47\ $ (GND))) # (!\FD|BR|saidaA[24]~62_combout\ & (!\FD|ULA|soma[23]~47\ & VCC))
-- \FD|ULA|soma[24]~49\ = CARRY((\FD|BR|saidaA[24]~62_combout\ & !\FD|ULA|soma[23]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[24]~62_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[23]~47\,
	combout => \FD|ULA|soma[24]~48_combout\,
	cout => \FD|ULA|soma[24]~49\);

\FD|ULA|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~56_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[24]~48_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~48_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~48_combout\,
	datad => \FD|ULA|soma[24]~48_combout\,
	combout => \FD|ULA|Add0~56_combout\);

\FD|BR|bancoReg~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~56_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~318_q\);

\FD|BR|saidaA[24]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~62_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~318_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~318_q\,
	combout => \FD|BR|saidaA[24]~62_combout\);

\FD|ULA|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~50_combout\ = (\FD|BR|saidaA[25]~63_combout\ & (\FD|ULA|Add1~49\ & VCC)) # (!\FD|BR|saidaA[25]~63_combout\ & (!\FD|ULA|Add1~49\))
-- \FD|ULA|Add1~51\ = CARRY((!\FD|BR|saidaA[25]~63_combout\ & !\FD|ULA|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[25]~63_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~49\,
	combout => \FD|ULA|Add1~50_combout\,
	cout => \FD|ULA|Add1~51\);

\FD|ULA|soma[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[25]~50_combout\ = (\FD|BR|saidaA[25]~63_combout\ & (!\FD|ULA|soma[24]~49\)) # (!\FD|BR|saidaA[25]~63_combout\ & ((\FD|ULA|soma[24]~49\) # (GND)))
-- \FD|ULA|soma[25]~51\ = CARRY((!\FD|ULA|soma[24]~49\) # (!\FD|BR|saidaA[25]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[25]~63_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[24]~49\,
	combout => \FD|ULA|soma[25]~50_combout\,
	cout => \FD|ULA|soma[25]~51\);

\FD|ULA|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~57_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[25]~50_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~50_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~50_combout\,
	datad => \FD|ULA|soma[25]~50_combout\,
	combout => \FD|ULA|Add0~57_combout\);

\FD|BR|bancoReg~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~57_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~319_q\);

\FD|BR|saidaA[25]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~63_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~319_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~319_q\,
	combout => \FD|BR|saidaA[25]~63_combout\);

\FD|ULA|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~52_combout\ = (\FD|BR|saidaA[26]~64_combout\ & ((GND) # (!\FD|ULA|Add1~51\))) # (!\FD|BR|saidaA[26]~64_combout\ & (\FD|ULA|Add1~51\ $ (GND)))
-- \FD|ULA|Add1~53\ = CARRY((\FD|BR|saidaA[26]~64_combout\) # (!\FD|ULA|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[26]~64_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~51\,
	combout => \FD|ULA|Add1~52_combout\,
	cout => \FD|ULA|Add1~53\);

\FD|ULA|soma[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[26]~52_combout\ = (\FD|BR|saidaA[26]~64_combout\ & (\FD|ULA|soma[25]~51\ $ (GND))) # (!\FD|BR|saidaA[26]~64_combout\ & (!\FD|ULA|soma[25]~51\ & VCC))
-- \FD|ULA|soma[26]~53\ = CARRY((\FD|BR|saidaA[26]~64_combout\ & !\FD|ULA|soma[25]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[26]~64_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[25]~51\,
	combout => \FD|ULA|soma[26]~52_combout\,
	cout => \FD|ULA|soma[26]~53\);

\FD|ULA|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~58_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[26]~52_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~52_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~52_combout\,
	datad => \FD|ULA|soma[26]~52_combout\,
	combout => \FD|ULA|Add0~58_combout\);

\FD|BR|bancoReg~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~58_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~320_q\);

\FD|BR|saidaA[26]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~64_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~320_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~320_q\,
	combout => \FD|BR|saidaA[26]~64_combout\);

\FD|ULA|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~54_combout\ = (\FD|BR|saidaA[27]~65_combout\ & (\FD|ULA|Add1~53\ & VCC)) # (!\FD|BR|saidaA[27]~65_combout\ & (!\FD|ULA|Add1~53\))
-- \FD|ULA|Add1~55\ = CARRY((!\FD|BR|saidaA[27]~65_combout\ & !\FD|ULA|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[27]~65_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~53\,
	combout => \FD|ULA|Add1~54_combout\,
	cout => \FD|ULA|Add1~55\);

\FD|ULA|soma[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[27]~54_combout\ = (\FD|BR|saidaA[27]~65_combout\ & (!\FD|ULA|soma[26]~53\)) # (!\FD|BR|saidaA[27]~65_combout\ & ((\FD|ULA|soma[26]~53\) # (GND)))
-- \FD|ULA|soma[27]~55\ = CARRY((!\FD|ULA|soma[26]~53\) # (!\FD|BR|saidaA[27]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[27]~65_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[26]~53\,
	combout => \FD|ULA|soma[27]~54_combout\,
	cout => \FD|ULA|soma[27]~55\);

\FD|ULA|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~59_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[27]~54_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~54_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~54_combout\,
	datad => \FD|ULA|soma[27]~54_combout\,
	combout => \FD|ULA|Add0~59_combout\);

\FD|BR|bancoReg~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~59_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~321_q\);

\FD|BR|saidaA[27]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~65_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~321_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~321_q\,
	combout => \FD|BR|saidaA[27]~65_combout\);

\FD|ULA|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~56_combout\ = (\FD|BR|saidaA[28]~66_combout\ & ((GND) # (!\FD|ULA|Add1~55\))) # (!\FD|BR|saidaA[28]~66_combout\ & (\FD|ULA|Add1~55\ $ (GND)))
-- \FD|ULA|Add1~57\ = CARRY((\FD|BR|saidaA[28]~66_combout\) # (!\FD|ULA|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[28]~66_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~55\,
	combout => \FD|ULA|Add1~56_combout\,
	cout => \FD|ULA|Add1~57\);

\FD|ULA|soma[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[28]~56_combout\ = (\FD|BR|saidaA[28]~66_combout\ & (\FD|ULA|soma[27]~55\ $ (GND))) # (!\FD|BR|saidaA[28]~66_combout\ & (!\FD|ULA|soma[27]~55\ & VCC))
-- \FD|ULA|soma[28]~57\ = CARRY((\FD|BR|saidaA[28]~66_combout\ & !\FD|ULA|soma[27]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[28]~66_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[27]~55\,
	combout => \FD|ULA|soma[28]~56_combout\,
	cout => \FD|ULA|soma[28]~57\);

\FD|ULA|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~60_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[28]~56_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~56_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~56_combout\,
	datad => \FD|ULA|soma[28]~56_combout\,
	combout => \FD|ULA|Add0~60_combout\);

\FD|BR|bancoReg~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~60_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~322_q\);

\FD|BR|saidaA[28]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~66_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~322_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~322_q\,
	combout => \FD|BR|saidaA[28]~66_combout\);

\FD|ULA|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~58_combout\ = (\FD|BR|saidaA[29]~67_combout\ & (\FD|ULA|Add1~57\ & VCC)) # (!\FD|BR|saidaA[29]~67_combout\ & (!\FD|ULA|Add1~57\))
-- \FD|ULA|Add1~59\ = CARRY((!\FD|BR|saidaA[29]~67_combout\ & !\FD|ULA|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[29]~67_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~57\,
	combout => \FD|ULA|Add1~58_combout\,
	cout => \FD|ULA|Add1~59\);

\FD|ULA|soma[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[29]~58_combout\ = (\FD|BR|saidaA[29]~67_combout\ & (!\FD|ULA|soma[28]~57\)) # (!\FD|BR|saidaA[29]~67_combout\ & ((\FD|ULA|soma[28]~57\) # (GND)))
-- \FD|ULA|soma[29]~59\ = CARRY((!\FD|ULA|soma[28]~57\) # (!\FD|BR|saidaA[29]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[29]~67_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[28]~57\,
	combout => \FD|ULA|soma[29]~58_combout\,
	cout => \FD|ULA|soma[29]~59\);

\FD|ULA|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~61_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[29]~58_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~58_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~58_combout\,
	datad => \FD|ULA|soma[29]~58_combout\,
	combout => \FD|ULA|Add0~61_combout\);

\FD|BR|bancoReg~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~61_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~323_q\);

\FD|BR|saidaA[29]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~67_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~323_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~323_q\,
	combout => \FD|BR|saidaA[29]~67_combout\);

\FD|ULA|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~60_combout\ = (\FD|BR|saidaA[30]~68_combout\ & ((GND) # (!\FD|ULA|Add1~59\))) # (!\FD|BR|saidaA[30]~68_combout\ & (\FD|ULA|Add1~59\ $ (GND)))
-- \FD|ULA|Add1~61\ = CARRY((\FD|BR|saidaA[30]~68_combout\) # (!\FD|ULA|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[30]~68_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~59\,
	combout => \FD|ULA|Add1~60_combout\,
	cout => \FD|ULA|Add1~61\);

\FD|ULA|soma[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[30]~60_combout\ = (\FD|BR|saidaA[30]~68_combout\ & (\FD|ULA|soma[29]~59\ $ (GND))) # (!\FD|BR|saidaA[30]~68_combout\ & (!\FD|ULA|soma[29]~59\ & VCC))
-- \FD|ULA|soma[30]~61\ = CARRY((\FD|BR|saidaA[30]~68_combout\ & !\FD|ULA|soma[29]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[30]~68_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[29]~59\,
	combout => \FD|ULA|soma[30]~60_combout\,
	cout => \FD|ULA|soma[30]~61\);

\FD|ULA|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~62_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[30]~60_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~60_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~60_combout\,
	datad => \FD|ULA|soma[30]~60_combout\,
	combout => \FD|ULA|Add0~62_combout\);

\FD|BR|bancoReg~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Add0~63_combout\,
	ena => \FD|BR|bancoReg~1066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg~325_q\);

\FD|BR|saidaA[31]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~69_combout\ = (\FD|BR|saidaA[5]~41_combout\ & \FD|BR|bancoReg~325_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[5]~41_combout\,
	datab => \FD|BR|bancoReg~325_q\,
	combout => \FD|BR|saidaA[31]~69_combout\);

\FD|ULA|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~62_combout\ = \FD|BR|saidaA[31]~69_combout\ $ (!\FD|ULA|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[31]~69_combout\,
	cin => \FD|ULA|Add1~61\,
	combout => \FD|ULA|Add1~62_combout\);

\FD|ULA|soma[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[31]~62_combout\ = \FD|BR|saidaA[31]~69_combout\ $ (\FD|ULA|soma[30]~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[31]~69_combout\,
	cin => \FD|ULA|soma[30]~61\,
	combout => \FD|ULA|soma[31]~62_combout\);

\FD|ULA|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~63_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[31]~62_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~62_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~62_combout\,
	datad => \FD|ULA|soma[31]~62_combout\,
	combout => \FD|ULA|Add0~63_combout\);

\FD|ULA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~0_combout\ = (!\FD|ULA|Add0~38_combout\ & (!\FD|ULA|Add0~39_combout\ & (!\FD|ULA|Add0~40_combout\ & !\FD|ULA|Add0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~38_combout\,
	datab => \FD|ULA|Add0~39_combout\,
	datac => \FD|ULA|Add0~40_combout\,
	datad => \FD|ULA|Add0~41_combout\,
	combout => \FD|ULA|Equal0~0_combout\);

\FD|ULA|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~34_combout\ = (\FD|ULA|Add0~30_combout\ & ((\FD|ULA|soma[3]~6_combout\) # ((\FD|ULA|Add0~31_combout\ & \FD|ULA|Add1~6_combout\)))) # (!\FD|ULA|Add0~30_combout\ & (\FD|ULA|Add0~31_combout\ & (\FD|ULA|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~30_combout\,
	datab => \FD|ULA|Add0~31_combout\,
	datac => \FD|ULA|Add1~6_combout\,
	datad => \FD|ULA|soma[3]~6_combout\,
	combout => \FD|ULA|Add0~34_combout\);

\FD|UCULA|ALUctr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~0_combout\ = (\FD|ROM|memROM~9_combout\) # ((!\FD|ROM|memROM~19_combout\ & !\FD|ROM|memROM~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datac => \FD|ROM|memROM~19_combout\,
	datad => \FD|ROM|memROM~20_combout\,
	combout => \FD|UCULA|ALUctr[1]~0_combout\);

\FD|ULA|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~35_combout\ = (\FD|ULA|Add0~34_combout\) # ((\FD|BR|saidaA[0]~70_combout\ & (\FD|BR|saidaA[3]~73_combout\ & !\FD|UCULA|ALUctr[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~34_combout\,
	datab => \FD|BR|saidaA[0]~70_combout\,
	datac => \FD|BR|saidaA[3]~73_combout\,
	datad => \FD|UCULA|ALUctr[1]~0_combout\,
	combout => \FD|ULA|Add0~35_combout\);

\FD|ULA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~1_combout\ = (\FD|ULA|Equal0~0_combout\ & (!\FD|ULA|Add0~35_combout\ & (!\FD|ULA|Add0~36_combout\ & !\FD|ULA|Add0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~0_combout\,
	datab => \FD|ULA|Add0~35_combout\,
	datac => \FD|ULA|Add0~36_combout\,
	datad => \FD|ULA|Add0~37_combout\,
	combout => \FD|ULA|Equal0~1_combout\);

\FD|ULA|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~32_combout\ = (\FD|ULA|soma[1]~2_combout\ & ((\FD|ULA|Add0~30_combout\) # ((\FD|ULA|Add1~2_combout\ & \FD|ULA|Add0~31_combout\)))) # (!\FD|ULA|soma[1]~2_combout\ & (((\FD|ULA|Add1~2_combout\ & \FD|ULA|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[1]~2_combout\,
	datab => \FD|ULA|Add0~30_combout\,
	datac => \FD|ULA|Add1~2_combout\,
	datad => \FD|ULA|Add0~31_combout\,
	combout => \FD|ULA|Add0~32_combout\);

\FD|ULA|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~33_combout\ = (\FD|ULA|Add0~32_combout\) # ((\FD|BR|saidaA[1]~71_combout\ & (\FD|BR|saidaB[0]~5_combout\ & !\FD|UCULA|ALUctr[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[1]~71_combout\,
	datab => \FD|BR|saidaB[0]~5_combout\,
	datac => \FD|UCULA|ALUctr[1]~0_combout\,
	datad => \FD|ULA|Add0~32_combout\,
	combout => \FD|ULA|Add0~33_combout\);

\FD|ULA|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~18_combout\ = (\FD|ULA|Add1~4_combout\ & (!\FD|PC|data_s\(5) & ((!\FD|PC|data_s\(3)) # (!\FD|PC|data_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|ULA|Add1~4_combout\,
	datad => \FD|PC|data_s\(5),
	combout => \FD|ULA|Add0~18_combout\);

\FD|ULA|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~65_combout\ = (\FD|ULA|Add0~18_combout\ & (!\FD|PC|data_s\(7) & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~18_combout\,
	datab => \FD|PC|data_s\(7),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(4),
	combout => \FD|ULA|Add0~65_combout\);

\FD|ULA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~2_combout\ = (\FD|ULA|Equal0~1_combout\ & (!\FD|ULA|Add0~64_combout\ & (!\FD|ULA|Add0~33_combout\ & !\FD|ULA|Add0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~1_combout\,
	datab => \FD|ULA|Add0~64_combout\,
	datac => \FD|ULA|Add0~33_combout\,
	datad => \FD|ULA|Add0~65_combout\,
	combout => \FD|ULA|Equal0~2_combout\);

\FD|ULA|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~3_combout\ = (!\FD|ULA|Add0~42_combout\ & (!\FD|ULA|Add0~43_combout\ & (!\FD|ULA|Add0~44_combout\ & !\FD|ULA|Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~42_combout\,
	datab => \FD|ULA|Add0~43_combout\,
	datac => \FD|ULA|Add0~44_combout\,
	datad => \FD|ULA|Add0~45_combout\,
	combout => \FD|ULA|Equal0~3_combout\);

\FD|ULA|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~4_combout\ = (!\FD|ULA|Add0~46_combout\ & (!\FD|ULA|Add0~47_combout\ & (!\FD|ULA|Add0~48_combout\ & !\FD|ULA|Add0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~46_combout\,
	datab => \FD|ULA|Add0~47_combout\,
	datac => \FD|ULA|Add0~48_combout\,
	datad => \FD|ULA|Add0~49_combout\,
	combout => \FD|ULA|Equal0~4_combout\);

\FD|ULA|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~5_combout\ = (!\FD|ULA|Add0~50_combout\ & (!\FD|ULA|Add0~51_combout\ & (!\FD|ULA|Add0~52_combout\ & !\FD|ULA|Add0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~50_combout\,
	datab => \FD|ULA|Add0~51_combout\,
	datac => \FD|ULA|Add0~52_combout\,
	datad => \FD|ULA|Add0~53_combout\,
	combout => \FD|ULA|Equal0~5_combout\);

\FD|ULA|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~6_combout\ = (\FD|ULA|Equal0~4_combout\ & (\FD|ULA|Equal0~5_combout\ & (!\FD|ULA|Add0~54_combout\ & !\FD|ULA|Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~4_combout\,
	datab => \FD|ULA|Equal0~5_combout\,
	datac => \FD|ULA|Add0~54_combout\,
	datad => \FD|ULA|Add0~55_combout\,
	combout => \FD|ULA|Equal0~6_combout\);

\FD|ULA|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~7_combout\ = (\FD|ULA|Equal0~2_combout\ & (\FD|ULA|Equal0~3_combout\ & (!\FD|ULA|Add0~56_combout\ & \FD|ULA|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~2_combout\,
	datab => \FD|ULA|Equal0~3_combout\,
	datac => \FD|ULA|Add0~56_combout\,
	datad => \FD|ULA|Equal0~6_combout\,
	combout => \FD|ULA|Equal0~7_combout\);

\FD|ULA|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~8_combout\ = (!\FD|ULA|Add0~58_combout\ & (!\FD|ULA|Add0~59_combout\ & (!\FD|ULA|Add0~57_combout\ & \FD|ULA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~58_combout\,
	datab => \FD|ULA|Add0~59_combout\,
	datac => \FD|ULA|Add0~57_combout\,
	datad => \FD|ULA|Equal0~7_combout\,
	combout => \FD|ULA|Equal0~8_combout\);

\FD|ULA|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~9_combout\ = (!\FD|ULA|Add0~60_combout\ & !\FD|ULA|Add0~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~60_combout\,
	datab => \FD|ULA|Add0~61_combout\,
	combout => \FD|ULA|Equal0~9_combout\);

\FD|ULA|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~10_combout\ = (!\FD|ULA|Add0~62_combout\ & (!\FD|ULA|Add0~63_combout\ & (\FD|ULA|Equal0~8_combout\ & \FD|ULA|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add0~62_combout\,
	datab => \FD|ULA|Add0~63_combout\,
	datac => \FD|ULA|Equal0~8_combout\,
	datad => \FD|ULA|Equal0~9_combout\,
	combout => \FD|ULA|Equal0~10_combout\);

\FD|mux_beq|saida[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_beq|saida[2]~1_combout\ = (\FD|Somador|saida[2]~0_combout\ & ((!\FD|ULA|Equal0~10_combout\) # (!\FD|ROM|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[2]~0_combout\,
	datac => \FD|ROM|memROM~9_combout\,
	datad => \FD|ULA|Equal0~10_combout\,
	combout => \FD|mux_beq|saida[2]~1_combout\);

\FD|PC|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_beq|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(2));

\FD|mux_beq|saida[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_beq|saida[3]~0_combout\ = (\FD|Somador|saida[3]~2_combout\ & ((!\FD|ULA|Equal0~10_combout\) # (!\FD|ROM|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[3]~2_combout\,
	datac => \FD|ROM|memROM~9_combout\,
	datad => \FD|ULA|Equal0~10_combout\,
	combout => \FD|mux_beq|saida[3]~0_combout\);

\FD|PC|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_beq|saida[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(3));

\FD|ROM|memROM~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~8_combout\ = (\FD|PC|data_s\(3) & (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(4),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~8_combout\);

\FD|ROM|memROM~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~9_combout\ = (\FD|ROM|memROM~8_combout\ & (!\FD|PC|data_s\(2) & !\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~8_combout\,
	datac => \FD|PC|data_s\(2),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~9_combout\);

\FD|ROM|memROM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~15_combout\ = (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~15_combout\);

\FD|ROM|memROM~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~16_combout\ = (\FD|PC|data_s\(4) & (\FD|PC|data_s\(2) & (!\FD|PC|data_s\(3) & \FD|ROM|memROM~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(3),
	datad => \FD|ROM|memROM~15_combout\,
	combout => \FD|ROM|memROM~16_combout\);

\FD|ROM|memROM~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~17_combout\ = (\FD|ROM|memROM~10_combout\ & (\FD|BR|saidaA[0]~38_combout\ & (!\FD|PC|data_s\(4) & !\FD|PC|data_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~10_combout\,
	datab => \FD|BR|saidaA[0]~38_combout\,
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~17_combout\);

\FD|Somador|saida[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[8]~12_combout\ = (\FD|PC|data_s\(8) & (\FD|Somador|saida[7]~11\ $ (GND))) # (!\FD|PC|data_s\(8) & (!\FD|Somador|saida[7]~11\ & VCC))
-- \FD|Somador|saida[8]~13\ = CARRY((\FD|PC|data_s\(8) & !\FD|Somador|saida[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(8),
	datad => VCC,
	cin => \FD|Somador|saida[7]~11\,
	combout => \FD|Somador|saida[8]~12_combout\,
	cout => \FD|Somador|saida[8]~13\);

\FD|PC|data_s[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[8]~40_combout\ = ((\FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[8]~12_combout\ $ (!\FD|PC|data_s[7]~39\)))) # (GND)
-- \FD|PC|data_s[8]~41\ = CARRY((\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[8]~12_combout\) # (!\FD|PC|data_s[7]~39\))) # (!\FD|ROM|memROM~9_combout\ & (\FD|Somador|saida[8]~12_combout\ & !\FD|PC|data_s[7]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[8]~12_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[7]~39\,
	combout => \FD|PC|data_s[8]~40_combout\,
	cout => \FD|PC|data_s[8]~41\);

\FD|PC|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[8]~40_combout\,
	asdata => \FD|Somador|saida[8]~12_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(8));

\FD|Somador|saida[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[9]~14_combout\ = (\FD|PC|data_s\(9) & (!\FD|Somador|saida[8]~13\)) # (!\FD|PC|data_s\(9) & ((\FD|Somador|saida[8]~13\) # (GND)))
-- \FD|Somador|saida[9]~15\ = CARRY((!\FD|Somador|saida[8]~13\) # (!\FD|PC|data_s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(9),
	datad => VCC,
	cin => \FD|Somador|saida[8]~13\,
	combout => \FD|Somador|saida[9]~14_combout\,
	cout => \FD|Somador|saida[9]~15\);

\FD|PC|data_s[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[9]~42_combout\ = (\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[9]~14_combout\ & (\FD|PC|data_s[8]~41\ & VCC)) # (!\FD|Somador|saida[9]~14_combout\ & (!\FD|PC|data_s[8]~41\)))) # (!\FD|ROM|memROM~9_combout\ & 
-- ((\FD|Somador|saida[9]~14_combout\ & (!\FD|PC|data_s[8]~41\)) # (!\FD|Somador|saida[9]~14_combout\ & ((\FD|PC|data_s[8]~41\) # (GND)))))
-- \FD|PC|data_s[9]~43\ = CARRY((\FD|ROM|memROM~9_combout\ & (!\FD|Somador|saida[9]~14_combout\ & !\FD|PC|data_s[8]~41\)) # (!\FD|ROM|memROM~9_combout\ & ((!\FD|PC|data_s[8]~41\) # (!\FD|Somador|saida[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[9]~14_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[8]~41\,
	combout => \FD|PC|data_s[9]~42_combout\,
	cout => \FD|PC|data_s[9]~43\);

\FD|PC|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[9]~42_combout\,
	asdata => \FD|Somador|saida[9]~14_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(9));

\FD|Somador|saida[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[10]~16_combout\ = (\FD|PC|data_s\(10) & (\FD|Somador|saida[9]~15\ $ (GND))) # (!\FD|PC|data_s\(10) & (!\FD|Somador|saida[9]~15\ & VCC))
-- \FD|Somador|saida[10]~17\ = CARRY((\FD|PC|data_s\(10) & !\FD|Somador|saida[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(10),
	datad => VCC,
	cin => \FD|Somador|saida[9]~15\,
	combout => \FD|Somador|saida[10]~16_combout\,
	cout => \FD|Somador|saida[10]~17\);

\FD|PC|data_s[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[10]~44_combout\ = ((\FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[10]~16_combout\ $ (!\FD|PC|data_s[9]~43\)))) # (GND)
-- \FD|PC|data_s[10]~45\ = CARRY((\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[10]~16_combout\) # (!\FD|PC|data_s[9]~43\))) # (!\FD|ROM|memROM~9_combout\ & (\FD|Somador|saida[10]~16_combout\ & !\FD|PC|data_s[9]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[10]~16_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[9]~43\,
	combout => \FD|PC|data_s[10]~44_combout\,
	cout => \FD|PC|data_s[10]~45\);

\FD|PC|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[10]~44_combout\,
	asdata => \FD|Somador|saida[10]~16_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(10));

\FD|Somador|saida[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[11]~18_combout\ = (\FD|PC|data_s\(11) & (!\FD|Somador|saida[10]~17\)) # (!\FD|PC|data_s\(11) & ((\FD|Somador|saida[10]~17\) # (GND)))
-- \FD|Somador|saida[11]~19\ = CARRY((!\FD|Somador|saida[10]~17\) # (!\FD|PC|data_s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(11),
	datad => VCC,
	cin => \FD|Somador|saida[10]~17\,
	combout => \FD|Somador|saida[11]~18_combout\,
	cout => \FD|Somador|saida[11]~19\);

\FD|PC|data_s[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[11]~46_combout\ = (\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[11]~18_combout\ & (\FD|PC|data_s[10]~45\ & VCC)) # (!\FD|Somador|saida[11]~18_combout\ & (!\FD|PC|data_s[10]~45\)))) # (!\FD|ROM|memROM~9_combout\ & 
-- ((\FD|Somador|saida[11]~18_combout\ & (!\FD|PC|data_s[10]~45\)) # (!\FD|Somador|saida[11]~18_combout\ & ((\FD|PC|data_s[10]~45\) # (GND)))))
-- \FD|PC|data_s[11]~47\ = CARRY((\FD|ROM|memROM~9_combout\ & (!\FD|Somador|saida[11]~18_combout\ & !\FD|PC|data_s[10]~45\)) # (!\FD|ROM|memROM~9_combout\ & ((!\FD|PC|data_s[10]~45\) # (!\FD|Somador|saida[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[11]~18_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[10]~45\,
	combout => \FD|PC|data_s[11]~46_combout\,
	cout => \FD|PC|data_s[11]~47\);

\FD|PC|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[11]~46_combout\,
	asdata => \FD|Somador|saida[11]~18_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(11));

\FD|Somador|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[12]~20_combout\ = (\FD|PC|data_s\(12) & (\FD|Somador|saida[11]~19\ $ (GND))) # (!\FD|PC|data_s\(12) & (!\FD|Somador|saida[11]~19\ & VCC))
-- \FD|Somador|saida[12]~21\ = CARRY((\FD|PC|data_s\(12) & !\FD|Somador|saida[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(12),
	datad => VCC,
	cin => \FD|Somador|saida[11]~19\,
	combout => \FD|Somador|saida[12]~20_combout\,
	cout => \FD|Somador|saida[12]~21\);

\FD|PC|data_s[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[12]~48_combout\ = ((\FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[12]~20_combout\ $ (!\FD|PC|data_s[11]~47\)))) # (GND)
-- \FD|PC|data_s[12]~49\ = CARRY((\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[12]~20_combout\) # (!\FD|PC|data_s[11]~47\))) # (!\FD|ROM|memROM~9_combout\ & (\FD|Somador|saida[12]~20_combout\ & !\FD|PC|data_s[11]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[12]~20_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[11]~47\,
	combout => \FD|PC|data_s[12]~48_combout\,
	cout => \FD|PC|data_s[12]~49\);

\FD|PC|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[12]~48_combout\,
	asdata => \FD|Somador|saida[12]~20_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(12));

\FD|Somador|saida[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[13]~22_combout\ = (\FD|PC|data_s\(13) & (!\FD|Somador|saida[12]~21\)) # (!\FD|PC|data_s\(13) & ((\FD|Somador|saida[12]~21\) # (GND)))
-- \FD|Somador|saida[13]~23\ = CARRY((!\FD|Somador|saida[12]~21\) # (!\FD|PC|data_s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(13),
	datad => VCC,
	cin => \FD|Somador|saida[12]~21\,
	combout => \FD|Somador|saida[13]~22_combout\,
	cout => \FD|Somador|saida[13]~23\);

\FD|PC|data_s[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[13]~50_combout\ = (\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[13]~22_combout\ & (\FD|PC|data_s[12]~49\ & VCC)) # (!\FD|Somador|saida[13]~22_combout\ & (!\FD|PC|data_s[12]~49\)))) # (!\FD|ROM|memROM~9_combout\ & 
-- ((\FD|Somador|saida[13]~22_combout\ & (!\FD|PC|data_s[12]~49\)) # (!\FD|Somador|saida[13]~22_combout\ & ((\FD|PC|data_s[12]~49\) # (GND)))))
-- \FD|PC|data_s[13]~51\ = CARRY((\FD|ROM|memROM~9_combout\ & (!\FD|Somador|saida[13]~22_combout\ & !\FD|PC|data_s[12]~49\)) # (!\FD|ROM|memROM~9_combout\ & ((!\FD|PC|data_s[12]~49\) # (!\FD|Somador|saida[13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[13]~22_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[12]~49\,
	combout => \FD|PC|data_s[13]~50_combout\,
	cout => \FD|PC|data_s[13]~51\);

\FD|PC|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[13]~50_combout\,
	asdata => \FD|Somador|saida[13]~22_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(13));

\FD|Somador|saida[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[14]~24_combout\ = (\FD|PC|data_s\(14) & (\FD|Somador|saida[13]~23\ $ (GND))) # (!\FD|PC|data_s\(14) & (!\FD|Somador|saida[13]~23\ & VCC))
-- \FD|Somador|saida[14]~25\ = CARRY((\FD|PC|data_s\(14) & !\FD|Somador|saida[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(14),
	datad => VCC,
	cin => \FD|Somador|saida[13]~23\,
	combout => \FD|Somador|saida[14]~24_combout\,
	cout => \FD|Somador|saida[14]~25\);

\FD|PC|data_s[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[14]~52_combout\ = ((\FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[14]~24_combout\ $ (!\FD|PC|data_s[13]~51\)))) # (GND)
-- \FD|PC|data_s[14]~53\ = CARRY((\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[14]~24_combout\) # (!\FD|PC|data_s[13]~51\))) # (!\FD|ROM|memROM~9_combout\ & (\FD|Somador|saida[14]~24_combout\ & !\FD|PC|data_s[13]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[14]~24_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[13]~51\,
	combout => \FD|PC|data_s[14]~52_combout\,
	cout => \FD|PC|data_s[14]~53\);

\FD|PC|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[14]~52_combout\,
	asdata => \FD|Somador|saida[14]~24_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(14));

\FD|Somador|saida[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[15]~26_combout\ = (\FD|PC|data_s\(15) & (!\FD|Somador|saida[14]~25\)) # (!\FD|PC|data_s\(15) & ((\FD|Somador|saida[14]~25\) # (GND)))
-- \FD|Somador|saida[15]~27\ = CARRY((!\FD|Somador|saida[14]~25\) # (!\FD|PC|data_s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(15),
	datad => VCC,
	cin => \FD|Somador|saida[14]~25\,
	combout => \FD|Somador|saida[15]~26_combout\,
	cout => \FD|Somador|saida[15]~27\);

\FD|PC|data_s[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[15]~54_combout\ = (\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[15]~26_combout\ & (\FD|PC|data_s[14]~53\ & VCC)) # (!\FD|Somador|saida[15]~26_combout\ & (!\FD|PC|data_s[14]~53\)))) # (!\FD|ROM|memROM~9_combout\ & 
-- ((\FD|Somador|saida[15]~26_combout\ & (!\FD|PC|data_s[14]~53\)) # (!\FD|Somador|saida[15]~26_combout\ & ((\FD|PC|data_s[14]~53\) # (GND)))))
-- \FD|PC|data_s[15]~55\ = CARRY((\FD|ROM|memROM~9_combout\ & (!\FD|Somador|saida[15]~26_combout\ & !\FD|PC|data_s[14]~53\)) # (!\FD|ROM|memROM~9_combout\ & ((!\FD|PC|data_s[14]~53\) # (!\FD|Somador|saida[15]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[15]~26_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[14]~53\,
	combout => \FD|PC|data_s[15]~54_combout\,
	cout => \FD|PC|data_s[15]~55\);

\FD|PC|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[15]~54_combout\,
	asdata => \FD|Somador|saida[15]~26_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(15));

\FD|Somador|saida[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[16]~28_combout\ = (\FD|PC|data_s\(16) & (\FD|Somador|saida[15]~27\ $ (GND))) # (!\FD|PC|data_s\(16) & (!\FD|Somador|saida[15]~27\ & VCC))
-- \FD|Somador|saida[16]~29\ = CARRY((\FD|PC|data_s\(16) & !\FD|Somador|saida[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(16),
	datad => VCC,
	cin => \FD|Somador|saida[15]~27\,
	combout => \FD|Somador|saida[16]~28_combout\,
	cout => \FD|Somador|saida[16]~29\);

\FD|PC|data_s[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[16]~56_combout\ = ((\FD|ROM|memROM~20_combout\ $ (\FD|Somador|saida[16]~28_combout\ $ (\FD|PC|data_s[15]~55\)))) # (GND)
-- \FD|PC|data_s[16]~57\ = CARRY((\FD|ROM|memROM~20_combout\ & (\FD|Somador|saida[16]~28_combout\ & !\FD|PC|data_s[15]~55\)) # (!\FD|ROM|memROM~20_combout\ & ((\FD|Somador|saida[16]~28_combout\) # (!\FD|PC|data_s[15]~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~20_combout\,
	datab => \FD|Somador|saida[16]~28_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[15]~55\,
	combout => \FD|PC|data_s[16]~56_combout\,
	cout => \FD|PC|data_s[16]~57\);

\FD|PC|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[16]~56_combout\,
	asdata => \FD|Somador|saida[16]~28_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(16));

\FD|Somador|saida[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[17]~30_combout\ = (\FD|PC|data_s\(17) & (!\FD|Somador|saida[16]~29\)) # (!\FD|PC|data_s\(17) & ((\FD|Somador|saida[16]~29\) # (GND)))
-- \FD|Somador|saida[17]~31\ = CARRY((!\FD|Somador|saida[16]~29\) # (!\FD|PC|data_s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(17),
	datad => VCC,
	cin => \FD|Somador|saida[16]~29\,
	combout => \FD|Somador|saida[17]~30_combout\,
	cout => \FD|Somador|saida[17]~31\);

\FD|PC|data_s[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[17]~58_combout\ = (\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[17]~30_combout\ & (\FD|PC|data_s[16]~57\ & VCC)) # (!\FD|Somador|saida[17]~30_combout\ & (!\FD|PC|data_s[16]~57\)))) # (!\FD|ROM|memROM~9_combout\ & 
-- ((\FD|Somador|saida[17]~30_combout\ & (!\FD|PC|data_s[16]~57\)) # (!\FD|Somador|saida[17]~30_combout\ & ((\FD|PC|data_s[16]~57\) # (GND)))))
-- \FD|PC|data_s[17]~59\ = CARRY((\FD|ROM|memROM~9_combout\ & (!\FD|Somador|saida[17]~30_combout\ & !\FD|PC|data_s[16]~57\)) # (!\FD|ROM|memROM~9_combout\ & ((!\FD|PC|data_s[16]~57\) # (!\FD|Somador|saida[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[17]~30_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[16]~57\,
	combout => \FD|PC|data_s[17]~58_combout\,
	cout => \FD|PC|data_s[17]~59\);

\FD|PC|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[17]~58_combout\,
	asdata => \FD|Somador|saida[17]~30_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(17));

\FD|Somador|saida[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[18]~32_combout\ = (\FD|PC|data_s\(18) & (\FD|Somador|saida[17]~31\ $ (GND))) # (!\FD|PC|data_s\(18) & (!\FD|Somador|saida[17]~31\ & VCC))
-- \FD|Somador|saida[18]~33\ = CARRY((\FD|PC|data_s\(18) & !\FD|Somador|saida[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(18),
	datad => VCC,
	cin => \FD|Somador|saida[17]~31\,
	combout => \FD|Somador|saida[18]~32_combout\,
	cout => \FD|Somador|saida[18]~33\);

\FD|PC|data_s[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[18]~60_combout\ = ((\FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[18]~32_combout\ $ (!\FD|PC|data_s[17]~59\)))) # (GND)
-- \FD|PC|data_s[18]~61\ = CARRY((\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[18]~32_combout\) # (!\FD|PC|data_s[17]~59\))) # (!\FD|ROM|memROM~9_combout\ & (\FD|Somador|saida[18]~32_combout\ & !\FD|PC|data_s[17]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[18]~32_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[17]~59\,
	combout => \FD|PC|data_s[18]~60_combout\,
	cout => \FD|PC|data_s[18]~61\);

\FD|PC|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[18]~60_combout\,
	asdata => \FD|Somador|saida[18]~32_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(18));

\FD|Somador|saida[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[19]~34_combout\ = (\FD|PC|data_s\(19) & (!\FD|Somador|saida[18]~33\)) # (!\FD|PC|data_s\(19) & ((\FD|Somador|saida[18]~33\) # (GND)))
-- \FD|Somador|saida[19]~35\ = CARRY((!\FD|Somador|saida[18]~33\) # (!\FD|PC|data_s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(19),
	datad => VCC,
	cin => \FD|Somador|saida[18]~33\,
	combout => \FD|Somador|saida[19]~34_combout\,
	cout => \FD|Somador|saida[19]~35\);

\FD|PC|data_s[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[19]~62_combout\ = (\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[19]~34_combout\ & (\FD|PC|data_s[18]~61\ & VCC)) # (!\FD|Somador|saida[19]~34_combout\ & (!\FD|PC|data_s[18]~61\)))) # (!\FD|ROM|memROM~9_combout\ & 
-- ((\FD|Somador|saida[19]~34_combout\ & (!\FD|PC|data_s[18]~61\)) # (!\FD|Somador|saida[19]~34_combout\ & ((\FD|PC|data_s[18]~61\) # (GND)))))
-- \FD|PC|data_s[19]~63\ = CARRY((\FD|ROM|memROM~9_combout\ & (!\FD|Somador|saida[19]~34_combout\ & !\FD|PC|data_s[18]~61\)) # (!\FD|ROM|memROM~9_combout\ & ((!\FD|PC|data_s[18]~61\) # (!\FD|Somador|saida[19]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[19]~34_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[18]~61\,
	combout => \FD|PC|data_s[19]~62_combout\,
	cout => \FD|PC|data_s[19]~63\);

\FD|PC|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[19]~62_combout\,
	asdata => \FD|Somador|saida[19]~34_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(19));

\FD|Somador|saida[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[20]~36_combout\ = (\FD|PC|data_s\(20) & (\FD|Somador|saida[19]~35\ $ (GND))) # (!\FD|PC|data_s\(20) & (!\FD|Somador|saida[19]~35\ & VCC))
-- \FD|Somador|saida[20]~37\ = CARRY((\FD|PC|data_s\(20) & !\FD|Somador|saida[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(20),
	datad => VCC,
	cin => \FD|Somador|saida[19]~35\,
	combout => \FD|Somador|saida[20]~36_combout\,
	cout => \FD|Somador|saida[20]~37\);

\FD|PC|data_s[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[20]~64_combout\ = ((\FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[20]~36_combout\ $ (!\FD|PC|data_s[19]~63\)))) # (GND)
-- \FD|PC|data_s[20]~65\ = CARRY((\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[20]~36_combout\) # (!\FD|PC|data_s[19]~63\))) # (!\FD|ROM|memROM~9_combout\ & (\FD|Somador|saida[20]~36_combout\ & !\FD|PC|data_s[19]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[20]~36_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[19]~63\,
	combout => \FD|PC|data_s[20]~64_combout\,
	cout => \FD|PC|data_s[20]~65\);

\FD|PC|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[20]~64_combout\,
	asdata => \FD|Somador|saida[20]~36_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(20));

\FD|Somador|saida[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[21]~38_combout\ = (\FD|PC|data_s\(21) & (!\FD|Somador|saida[20]~37\)) # (!\FD|PC|data_s\(21) & ((\FD|Somador|saida[20]~37\) # (GND)))
-- \FD|Somador|saida[21]~39\ = CARRY((!\FD|Somador|saida[20]~37\) # (!\FD|PC|data_s\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(21),
	datad => VCC,
	cin => \FD|Somador|saida[20]~37\,
	combout => \FD|Somador|saida[21]~38_combout\,
	cout => \FD|Somador|saida[21]~39\);

\FD|PC|data_s[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[21]~66_combout\ = (\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[21]~38_combout\ & (\FD|PC|data_s[20]~65\ & VCC)) # (!\FD|Somador|saida[21]~38_combout\ & (!\FD|PC|data_s[20]~65\)))) # (!\FD|ROM|memROM~9_combout\ & 
-- ((\FD|Somador|saida[21]~38_combout\ & (!\FD|PC|data_s[20]~65\)) # (!\FD|Somador|saida[21]~38_combout\ & ((\FD|PC|data_s[20]~65\) # (GND)))))
-- \FD|PC|data_s[21]~67\ = CARRY((\FD|ROM|memROM~9_combout\ & (!\FD|Somador|saida[21]~38_combout\ & !\FD|PC|data_s[20]~65\)) # (!\FD|ROM|memROM~9_combout\ & ((!\FD|PC|data_s[20]~65\) # (!\FD|Somador|saida[21]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[21]~38_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[20]~65\,
	combout => \FD|PC|data_s[21]~66_combout\,
	cout => \FD|PC|data_s[21]~67\);

\FD|PC|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[21]~66_combout\,
	asdata => \FD|Somador|saida[21]~38_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(21));

\FD|Somador|saida[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[22]~40_combout\ = (\FD|PC|data_s\(22) & (\FD|Somador|saida[21]~39\ $ (GND))) # (!\FD|PC|data_s\(22) & (!\FD|Somador|saida[21]~39\ & VCC))
-- \FD|Somador|saida[22]~41\ = CARRY((\FD|PC|data_s\(22) & !\FD|Somador|saida[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(22),
	datad => VCC,
	cin => \FD|Somador|saida[21]~39\,
	combout => \FD|Somador|saida[22]~40_combout\,
	cout => \FD|Somador|saida[22]~41\);

\FD|PC|data_s[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[22]~68_combout\ = ((\FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[22]~40_combout\ $ (!\FD|PC|data_s[21]~67\)))) # (GND)
-- \FD|PC|data_s[22]~69\ = CARRY((\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[22]~40_combout\) # (!\FD|PC|data_s[21]~67\))) # (!\FD|ROM|memROM~9_combout\ & (\FD|Somador|saida[22]~40_combout\ & !\FD|PC|data_s[21]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[22]~40_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[21]~67\,
	combout => \FD|PC|data_s[22]~68_combout\,
	cout => \FD|PC|data_s[22]~69\);

\FD|PC|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[22]~68_combout\,
	asdata => \FD|Somador|saida[22]~40_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(22));

\FD|Somador|saida[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[23]~42_combout\ = (\FD|PC|data_s\(23) & (!\FD|Somador|saida[22]~41\)) # (!\FD|PC|data_s\(23) & ((\FD|Somador|saida[22]~41\) # (GND)))
-- \FD|Somador|saida[23]~43\ = CARRY((!\FD|Somador|saida[22]~41\) # (!\FD|PC|data_s\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(23),
	datad => VCC,
	cin => \FD|Somador|saida[22]~41\,
	combout => \FD|Somador|saida[23]~42_combout\,
	cout => \FD|Somador|saida[23]~43\);

\FD|PC|data_s[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[23]~70_combout\ = (\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[23]~42_combout\ & (\FD|PC|data_s[22]~69\ & VCC)) # (!\FD|Somador|saida[23]~42_combout\ & (!\FD|PC|data_s[22]~69\)))) # (!\FD|ROM|memROM~9_combout\ & 
-- ((\FD|Somador|saida[23]~42_combout\ & (!\FD|PC|data_s[22]~69\)) # (!\FD|Somador|saida[23]~42_combout\ & ((\FD|PC|data_s[22]~69\) # (GND)))))
-- \FD|PC|data_s[23]~71\ = CARRY((\FD|ROM|memROM~9_combout\ & (!\FD|Somador|saida[23]~42_combout\ & !\FD|PC|data_s[22]~69\)) # (!\FD|ROM|memROM~9_combout\ & ((!\FD|PC|data_s[22]~69\) # (!\FD|Somador|saida[23]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[23]~42_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[22]~69\,
	combout => \FD|PC|data_s[23]~70_combout\,
	cout => \FD|PC|data_s[23]~71\);

\FD|PC|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[23]~70_combout\,
	asdata => \FD|Somador|saida[23]~42_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(23));

\FD|Somador|saida[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[24]~44_combout\ = (\FD|PC|data_s\(24) & (\FD|Somador|saida[23]~43\ $ (GND))) # (!\FD|PC|data_s\(24) & (!\FD|Somador|saida[23]~43\ & VCC))
-- \FD|Somador|saida[24]~45\ = CARRY((\FD|PC|data_s\(24) & !\FD|Somador|saida[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(24),
	datad => VCC,
	cin => \FD|Somador|saida[23]~43\,
	combout => \FD|Somador|saida[24]~44_combout\,
	cout => \FD|Somador|saida[24]~45\);

\FD|PC|data_s[24]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[24]~72_combout\ = ((\FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[24]~44_combout\ $ (!\FD|PC|data_s[23]~71\)))) # (GND)
-- \FD|PC|data_s[24]~73\ = CARRY((\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[24]~44_combout\) # (!\FD|PC|data_s[23]~71\))) # (!\FD|ROM|memROM~9_combout\ & (\FD|Somador|saida[24]~44_combout\ & !\FD|PC|data_s[23]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[24]~44_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[23]~71\,
	combout => \FD|PC|data_s[24]~72_combout\,
	cout => \FD|PC|data_s[24]~73\);

\FD|PC|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[24]~72_combout\,
	asdata => \FD|Somador|saida[24]~44_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(24));

\FD|Somador|saida[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[25]~46_combout\ = (\FD|PC|data_s\(25) & (!\FD|Somador|saida[24]~45\)) # (!\FD|PC|data_s\(25) & ((\FD|Somador|saida[24]~45\) # (GND)))
-- \FD|Somador|saida[25]~47\ = CARRY((!\FD|Somador|saida[24]~45\) # (!\FD|PC|data_s\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(25),
	datad => VCC,
	cin => \FD|Somador|saida[24]~45\,
	combout => \FD|Somador|saida[25]~46_combout\,
	cout => \FD|Somador|saida[25]~47\);

\FD|PC|data_s[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[25]~74_combout\ = (\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[25]~46_combout\ & (\FD|PC|data_s[24]~73\ & VCC)) # (!\FD|Somador|saida[25]~46_combout\ & (!\FD|PC|data_s[24]~73\)))) # (!\FD|ROM|memROM~9_combout\ & 
-- ((\FD|Somador|saida[25]~46_combout\ & (!\FD|PC|data_s[24]~73\)) # (!\FD|Somador|saida[25]~46_combout\ & ((\FD|PC|data_s[24]~73\) # (GND)))))
-- \FD|PC|data_s[25]~75\ = CARRY((\FD|ROM|memROM~9_combout\ & (!\FD|Somador|saida[25]~46_combout\ & !\FD|PC|data_s[24]~73\)) # (!\FD|ROM|memROM~9_combout\ & ((!\FD|PC|data_s[24]~73\) # (!\FD|Somador|saida[25]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[25]~46_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[24]~73\,
	combout => \FD|PC|data_s[25]~74_combout\,
	cout => \FD|PC|data_s[25]~75\);

\FD|PC|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[25]~74_combout\,
	asdata => \FD|Somador|saida[25]~46_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(25));

\FD|Somador|saida[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[26]~48_combout\ = (\FD|PC|data_s\(26) & (\FD|Somador|saida[25]~47\ $ (GND))) # (!\FD|PC|data_s\(26) & (!\FD|Somador|saida[25]~47\ & VCC))
-- \FD|Somador|saida[26]~49\ = CARRY((\FD|PC|data_s\(26) & !\FD|Somador|saida[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(26),
	datad => VCC,
	cin => \FD|Somador|saida[25]~47\,
	combout => \FD|Somador|saida[26]~48_combout\,
	cout => \FD|Somador|saida[26]~49\);

\FD|PC|data_s[26]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[26]~76_combout\ = ((\FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[26]~48_combout\ $ (!\FD|PC|data_s[25]~75\)))) # (GND)
-- \FD|PC|data_s[26]~77\ = CARRY((\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[26]~48_combout\) # (!\FD|PC|data_s[25]~75\))) # (!\FD|ROM|memROM~9_combout\ & (\FD|Somador|saida[26]~48_combout\ & !\FD|PC|data_s[25]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[26]~48_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[25]~75\,
	combout => \FD|PC|data_s[26]~76_combout\,
	cout => \FD|PC|data_s[26]~77\);

\FD|PC|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[26]~76_combout\,
	asdata => \FD|Somador|saida[26]~48_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(26));

\FD|Somador|saida[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[27]~50_combout\ = (\FD|PC|data_s\(27) & (!\FD|Somador|saida[26]~49\)) # (!\FD|PC|data_s\(27) & ((\FD|Somador|saida[26]~49\) # (GND)))
-- \FD|Somador|saida[27]~51\ = CARRY((!\FD|Somador|saida[26]~49\) # (!\FD|PC|data_s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(27),
	datad => VCC,
	cin => \FD|Somador|saida[26]~49\,
	combout => \FD|Somador|saida[27]~50_combout\,
	cout => \FD|Somador|saida[27]~51\);

\FD|PC|data_s[27]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[27]~78_combout\ = (\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[27]~50_combout\ & (\FD|PC|data_s[26]~77\ & VCC)) # (!\FD|Somador|saida[27]~50_combout\ & (!\FD|PC|data_s[26]~77\)))) # (!\FD|ROM|memROM~9_combout\ & 
-- ((\FD|Somador|saida[27]~50_combout\ & (!\FD|PC|data_s[26]~77\)) # (!\FD|Somador|saida[27]~50_combout\ & ((\FD|PC|data_s[26]~77\) # (GND)))))
-- \FD|PC|data_s[27]~79\ = CARRY((\FD|ROM|memROM~9_combout\ & (!\FD|Somador|saida[27]~50_combout\ & !\FD|PC|data_s[26]~77\)) # (!\FD|ROM|memROM~9_combout\ & ((!\FD|PC|data_s[26]~77\) # (!\FD|Somador|saida[27]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[27]~50_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[26]~77\,
	combout => \FD|PC|data_s[27]~78_combout\,
	cout => \FD|PC|data_s[27]~79\);

\FD|PC|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[27]~78_combout\,
	asdata => \FD|Somador|saida[27]~50_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(27));

\FD|Somador|saida[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[28]~52_combout\ = (\FD|PC|data_s\(28) & (\FD|Somador|saida[27]~51\ $ (GND))) # (!\FD|PC|data_s\(28) & (!\FD|Somador|saida[27]~51\ & VCC))
-- \FD|Somador|saida[28]~53\ = CARRY((\FD|PC|data_s\(28) & !\FD|Somador|saida[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(28),
	datad => VCC,
	cin => \FD|Somador|saida[27]~51\,
	combout => \FD|Somador|saida[28]~52_combout\,
	cout => \FD|Somador|saida[28]~53\);

\FD|PC|data_s[28]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[28]~80_combout\ = ((\FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[28]~52_combout\ $ (!\FD|PC|data_s[27]~79\)))) # (GND)
-- \FD|PC|data_s[28]~81\ = CARRY((\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[28]~52_combout\) # (!\FD|PC|data_s[27]~79\))) # (!\FD|ROM|memROM~9_combout\ & (\FD|Somador|saida[28]~52_combout\ & !\FD|PC|data_s[27]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[28]~52_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[27]~79\,
	combout => \FD|PC|data_s[28]~80_combout\,
	cout => \FD|PC|data_s[28]~81\);

\FD|PC|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[28]~80_combout\,
	asdata => \FD|Somador|saida[28]~52_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(28));

\FD|Somador|saida[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[29]~54_combout\ = (\FD|PC|data_s\(29) & (!\FD|Somador|saida[28]~53\)) # (!\FD|PC|data_s\(29) & ((\FD|Somador|saida[28]~53\) # (GND)))
-- \FD|Somador|saida[29]~55\ = CARRY((!\FD|Somador|saida[28]~53\) # (!\FD|PC|data_s\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(29),
	datad => VCC,
	cin => \FD|Somador|saida[28]~53\,
	combout => \FD|Somador|saida[29]~54_combout\,
	cout => \FD|Somador|saida[29]~55\);

\FD|PC|data_s[29]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[29]~82_combout\ = (\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[29]~54_combout\ & (\FD|PC|data_s[28]~81\ & VCC)) # (!\FD|Somador|saida[29]~54_combout\ & (!\FD|PC|data_s[28]~81\)))) # (!\FD|ROM|memROM~9_combout\ & 
-- ((\FD|Somador|saida[29]~54_combout\ & (!\FD|PC|data_s[28]~81\)) # (!\FD|Somador|saida[29]~54_combout\ & ((\FD|PC|data_s[28]~81\) # (GND)))))
-- \FD|PC|data_s[29]~83\ = CARRY((\FD|ROM|memROM~9_combout\ & (!\FD|Somador|saida[29]~54_combout\ & !\FD|PC|data_s[28]~81\)) # (!\FD|ROM|memROM~9_combout\ & ((!\FD|PC|data_s[28]~81\) # (!\FD|Somador|saida[29]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[29]~54_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[28]~81\,
	combout => \FD|PC|data_s[29]~82_combout\,
	cout => \FD|PC|data_s[29]~83\);

\FD|PC|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[29]~82_combout\,
	asdata => \FD|Somador|saida[29]~54_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(29));

\FD|Somador|saida[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[30]~56_combout\ = (\FD|PC|data_s\(30) & (\FD|Somador|saida[29]~55\ $ (GND))) # (!\FD|PC|data_s\(30) & (!\FD|Somador|saida[29]~55\ & VCC))
-- \FD|Somador|saida[30]~57\ = CARRY((\FD|PC|data_s\(30) & !\FD|Somador|saida[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(30),
	datad => VCC,
	cin => \FD|Somador|saida[29]~55\,
	combout => \FD|Somador|saida[30]~56_combout\,
	cout => \FD|Somador|saida[30]~57\);

\FD|PC|data_s[30]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[30]~84_combout\ = ((\FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[30]~56_combout\ $ (!\FD|PC|data_s[29]~83\)))) # (GND)
-- \FD|PC|data_s[30]~85\ = CARRY((\FD|ROM|memROM~9_combout\ & ((\FD|Somador|saida[30]~56_combout\) # (!\FD|PC|data_s[29]~83\))) # (!\FD|ROM|memROM~9_combout\ & (\FD|Somador|saida[30]~56_combout\ & !\FD|PC|data_s[29]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[30]~56_combout\,
	datad => VCC,
	cin => \FD|PC|data_s[29]~83\,
	combout => \FD|PC|data_s[30]~84_combout\,
	cout => \FD|PC|data_s[30]~85\);

\FD|PC|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[30]~84_combout\,
	asdata => \FD|Somador|saida[30]~56_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(30));

\FD|Somador|saida[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[31]~58_combout\ = \FD|PC|data_s\(31) $ (\FD|Somador|saida[30]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(31),
	cin => \FD|Somador|saida[30]~57\,
	combout => \FD|Somador|saida[31]~58_combout\);

\FD|PC|data_s[31]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[31]~86_combout\ = \FD|ROM|memROM~9_combout\ $ (\FD|Somador|saida[31]~58_combout\ $ (\FD|PC|data_s[30]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~9_combout\,
	datab => \FD|Somador|saida[31]~58_combout\,
	cin => \FD|PC|data_s[30]~85\,
	combout => \FD|PC|data_s[31]~86_combout\);

\FD|PC|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[31]~86_combout\,
	asdata => \FD|Somador|saida[31]~58_combout\,
	sload => \FD|comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(31));

ww_inst_out(0) <= \inst_out[0]~output_o\;

ww_inst_out(1) <= \inst_out[1]~output_o\;

ww_inst_out(2) <= \inst_out[2]~output_o\;

ww_inst_out(3) <= \inst_out[3]~output_o\;

ww_inst_out(4) <= \inst_out[4]~output_o\;

ww_inst_out(5) <= \inst_out[5]~output_o\;

ww_inst_out(6) <= \inst_out[6]~output_o\;

ww_inst_out(7) <= \inst_out[7]~output_o\;

ww_inst_out(8) <= \inst_out[8]~output_o\;

ww_inst_out(9) <= \inst_out[9]~output_o\;

ww_inst_out(10) <= \inst_out[10]~output_o\;

ww_inst_out(11) <= \inst_out[11]~output_o\;

ww_inst_out(12) <= \inst_out[12]~output_o\;

ww_inst_out(13) <= \inst_out[13]~output_o\;

ww_inst_out(14) <= \inst_out[14]~output_o\;

ww_inst_out(15) <= \inst_out[15]~output_o\;

ww_inst_out(16) <= \inst_out[16]~output_o\;

ww_inst_out(17) <= \inst_out[17]~output_o\;

ww_inst_out(18) <= \inst_out[18]~output_o\;

ww_inst_out(19) <= \inst_out[19]~output_o\;

ww_inst_out(20) <= \inst_out[20]~output_o\;

ww_inst_out(21) <= \inst_out[21]~output_o\;

ww_inst_out(22) <= \inst_out[22]~output_o\;

ww_inst_out(23) <= \inst_out[23]~output_o\;

ww_inst_out(24) <= \inst_out[24]~output_o\;

ww_inst_out(25) <= \inst_out[25]~output_o\;

ww_inst_out(26) <= \inst_out[26]~output_o\;

ww_inst_out(27) <= \inst_out[27]~output_o\;

ww_inst_out(28) <= \inst_out[28]~output_o\;

ww_inst_out(29) <= \inst_out[29]~output_o\;

ww_inst_out(30) <= \inst_out[30]~output_o\;

ww_inst_out(31) <= \inst_out[31]~output_o\;

ww_program_c_out(0) <= \program_c_out[0]~output_o\;

ww_program_c_out(1) <= \program_c_out[1]~output_o\;

ww_program_c_out(2) <= \program_c_out[2]~output_o\;

ww_program_c_out(3) <= \program_c_out[3]~output_o\;

ww_program_c_out(4) <= \program_c_out[4]~output_o\;

ww_program_c_out(5) <= \program_c_out[5]~output_o\;

ww_program_c_out(6) <= \program_c_out[6]~output_o\;

ww_program_c_out(7) <= \program_c_out[7]~output_o\;

ww_program_c_out(8) <= \program_c_out[8]~output_o\;

ww_program_c_out(9) <= \program_c_out[9]~output_o\;

ww_program_c_out(10) <= \program_c_out[10]~output_o\;

ww_program_c_out(11) <= \program_c_out[11]~output_o\;

ww_program_c_out(12) <= \program_c_out[12]~output_o\;

ww_program_c_out(13) <= \program_c_out[13]~output_o\;

ww_program_c_out(14) <= \program_c_out[14]~output_o\;

ww_program_c_out(15) <= \program_c_out[15]~output_o\;

ww_program_c_out(16) <= \program_c_out[16]~output_o\;

ww_program_c_out(17) <= \program_c_out[17]~output_o\;

ww_program_c_out(18) <= \program_c_out[18]~output_o\;

ww_program_c_out(19) <= \program_c_out[19]~output_o\;

ww_program_c_out(20) <= \program_c_out[20]~output_o\;

ww_program_c_out(21) <= \program_c_out[21]~output_o\;

ww_program_c_out(22) <= \program_c_out[22]~output_o\;

ww_program_c_out(23) <= \program_c_out[23]~output_o\;

ww_program_c_out(24) <= \program_c_out[24]~output_o\;

ww_program_c_out(25) <= \program_c_out[25]~output_o\;

ww_program_c_out(26) <= \program_c_out[26]~output_o\;

ww_program_c_out(27) <= \program_c_out[27]~output_o\;

ww_program_c_out(28) <= \program_c_out[28]~output_o\;

ww_program_c_out(29) <= \program_c_out[29]~output_o\;

ww_program_c_out(30) <= \program_c_out[30]~output_o\;

ww_program_c_out(31) <= \program_c_out[31]~output_o\;

ww_ula_signal_out(0) <= \ula_signal_out[0]~output_o\;

ww_ula_signal_out(1) <= \ula_signal_out[1]~output_o\;

ww_ula_signal_out(2) <= \ula_signal_out[2]~output_o\;

ww_ula_signal_out(3) <= \ula_signal_out[3]~output_o\;

ww_ula_signal_out(4) <= \ula_signal_out[4]~output_o\;

ww_ula_signal_out(5) <= \ula_signal_out[5]~output_o\;

ww_ula_signal_out(6) <= \ula_signal_out[6]~output_o\;

ww_ula_signal_out(7) <= \ula_signal_out[7]~output_o\;

ww_ula_signal_out(8) <= \ula_signal_out[8]~output_o\;

ww_ula_signal_out(9) <= \ula_signal_out[9]~output_o\;

ww_ula_signal_out(10) <= \ula_signal_out[10]~output_o\;

ww_ula_signal_out(11) <= \ula_signal_out[11]~output_o\;

ww_ula_signal_out(12) <= \ula_signal_out[12]~output_o\;

ww_ula_signal_out(13) <= \ula_signal_out[13]~output_o\;

ww_ula_signal_out(14) <= \ula_signal_out[14]~output_o\;

ww_ula_signal_out(15) <= \ula_signal_out[15]~output_o\;

ww_ula_signal_out(16) <= \ula_signal_out[16]~output_o\;

ww_ula_signal_out(17) <= \ula_signal_out[17]~output_o\;

ww_ula_signal_out(18) <= \ula_signal_out[18]~output_o\;

ww_ula_signal_out(19) <= \ula_signal_out[19]~output_o\;

ww_ula_signal_out(20) <= \ula_signal_out[20]~output_o\;

ww_ula_signal_out(21) <= \ula_signal_out[21]~output_o\;

ww_ula_signal_out(22) <= \ula_signal_out[22]~output_o\;

ww_ula_signal_out(23) <= \ula_signal_out[23]~output_o\;

ww_ula_signal_out(24) <= \ula_signal_out[24]~output_o\;

ww_ula_signal_out(25) <= \ula_signal_out[25]~output_o\;

ww_ula_signal_out(26) <= \ula_signal_out[26]~output_o\;

ww_ula_signal_out(27) <= \ula_signal_out[27]~output_o\;

ww_ula_signal_out(28) <= \ula_signal_out[28]~output_o\;

ww_ula_signal_out(29) <= \ula_signal_out[29]~output_o\;

ww_ula_signal_out(30) <= \ula_signal_out[30]~output_o\;

ww_ula_signal_out(31) <= \ula_signal_out[31]~output_o\;

ww_saidaA(0) <= \saidaA[0]~output_o\;

ww_saidaA(1) <= \saidaA[1]~output_o\;

ww_saidaA(2) <= \saidaA[2]~output_o\;

ww_saidaA(3) <= \saidaA[3]~output_o\;

ww_saidaA(4) <= \saidaA[4]~output_o\;

ww_saidaA(5) <= \saidaA[5]~output_o\;

ww_saidaA(6) <= \saidaA[6]~output_o\;

ww_saidaA(7) <= \saidaA[7]~output_o\;

ww_saidaA(8) <= \saidaA[8]~output_o\;

ww_saidaA(9) <= \saidaA[9]~output_o\;

ww_saidaA(10) <= \saidaA[10]~output_o\;

ww_saidaA(11) <= \saidaA[11]~output_o\;

ww_saidaA(12) <= \saidaA[12]~output_o\;

ww_saidaA(13) <= \saidaA[13]~output_o\;

ww_saidaA(14) <= \saidaA[14]~output_o\;

ww_saidaA(15) <= \saidaA[15]~output_o\;

ww_saidaA(16) <= \saidaA[16]~output_o\;

ww_saidaA(17) <= \saidaA[17]~output_o\;

ww_saidaA(18) <= \saidaA[18]~output_o\;

ww_saidaA(19) <= \saidaA[19]~output_o\;

ww_saidaA(20) <= \saidaA[20]~output_o\;

ww_saidaA(21) <= \saidaA[21]~output_o\;

ww_saidaA(22) <= \saidaA[22]~output_o\;

ww_saidaA(23) <= \saidaA[23]~output_o\;

ww_saidaA(24) <= \saidaA[24]~output_o\;

ww_saidaA(25) <= \saidaA[25]~output_o\;

ww_saidaA(26) <= \saidaA[26]~output_o\;

ww_saidaA(27) <= \saidaA[27]~output_o\;

ww_saidaA(28) <= \saidaA[28]~output_o\;

ww_saidaA(29) <= \saidaA[29]~output_o\;

ww_saidaA(30) <= \saidaA[30]~output_o\;

ww_saidaA(31) <= \saidaA[31]~output_o\;

ww_saidaB(0) <= \saidaB[0]~output_o\;

ww_saidaB(1) <= \saidaB[1]~output_o\;

ww_saidaB(2) <= \saidaB[2]~output_o\;

ww_saidaB(3) <= \saidaB[3]~output_o\;

ww_saidaB(4) <= \saidaB[4]~output_o\;

ww_saidaB(5) <= \saidaB[5]~output_o\;

ww_saidaB(6) <= \saidaB[6]~output_o\;

ww_saidaB(7) <= \saidaB[7]~output_o\;

ww_saidaB(8) <= \saidaB[8]~output_o\;

ww_saidaB(9) <= \saidaB[9]~output_o\;

ww_saidaB(10) <= \saidaB[10]~output_o\;

ww_saidaB(11) <= \saidaB[11]~output_o\;

ww_saidaB(12) <= \saidaB[12]~output_o\;

ww_saidaB(13) <= \saidaB[13]~output_o\;

ww_saidaB(14) <= \saidaB[14]~output_o\;

ww_saidaB(15) <= \saidaB[15]~output_o\;

ww_saidaB(16) <= \saidaB[16]~output_o\;

ww_saidaB(17) <= \saidaB[17]~output_o\;

ww_saidaB(18) <= \saidaB[18]~output_o\;

ww_saidaB(19) <= \saidaB[19]~output_o\;

ww_saidaB(20) <= \saidaB[20]~output_o\;

ww_saidaB(21) <= \saidaB[21]~output_o\;

ww_saidaB(22) <= \saidaB[22]~output_o\;

ww_saidaB(23) <= \saidaB[23]~output_o\;

ww_saidaB(24) <= \saidaB[24]~output_o\;

ww_saidaB(25) <= \saidaB[25]~output_o\;

ww_saidaB(26) <= \saidaB[26]~output_o\;

ww_saidaB(27) <= \saidaB[27]~output_o\;

ww_saidaB(28) <= \saidaB[28]~output_o\;

ww_saidaB(29) <= \saidaB[29]~output_o\;

ww_saidaB(30) <= \saidaB[30]~output_o\;

ww_saidaB(31) <= \saidaB[31]~output_o\;

ww_zout(0) <= \zout[0]~output_o\;
END structure;


