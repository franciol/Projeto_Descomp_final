-- Design de Computadores
-- file: UC_ULA.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity UC_ULA is
	port
    (
        funct               : IN STD_LOGIC_VECTOR(FUNCT_WIDTH-1 DOWNTO 0);
        ALUop               : IN STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
        ALUctr              : OUT STD_LOGIC_VECTOR(CTRL_ALU_WIDTH-1 DOWNTO 0)
    );
end entity;

architecture bhv of UC_ULA is	
    constant zero : std_logic_vector(CTRL_ALU_WIDTH-1 downto 0) := (others => '0');
    signal ALUop_s : STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
    signal funct_res : STD_LOGIC_VECTOR(CTRL_ALU_WIDTH-1 DOWNTO 0);
begin
    
    funct_res <= ulaCtrlAdd WHEN funct=functADD ELSE
        ulaCtrlSub WHEN funct=functSUB ELSE
        functAND WHEN funct=ulaCtrlAnd ELSE
        functOR WHEN funct=ulaCtrlOr ELSE
        functSLT WHEN funct=ulaCtrlSlt ELSE
        ("0000");


       
    ALUctr <= funct_res WHEN ALUop=readFunctULA ELSE
    ulaCtrlAdd WHEN ALUop=aluOpAdd ELSE
    ulaCtrlSub WHEN ALUop=aluOpSub ELSE
    ulaCtrlAnd WHEN ALUop=aluOpAnd ELSE
    ulaCtrlOr WHEN ALUop=aluOpOr ELSE
    ulaCtrlSlt WHEN ALUop=aluOpSlt ELSE
    zero WHEN ALUop=aluOpDC ELSE
        (zero);


    

end bhv;