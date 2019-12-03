-- Design de Computadores
-- file: UC_ULA.vhd
-- date: 18/10/2019

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.constantesMIPS.ALL;

ENTITY UC_ULA IS
    PORT (
        funct : IN STD_LOGIC_VECTOR(FUNCT_WIDTH - 1 DOWNTO 0);
        ALUop : IN STD_LOGIC_VECTOR(ALU_OP_WIDTH - 1 DOWNTO 0);
        ALUctr : OUT STD_LOGIC_VECTOR(CTRL_ALU_WIDTH - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE bhv OF UC_ULA IS
    CONSTANT zero : std_logic_vector(CTRL_ALU_WIDTH - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL ALUop_s : STD_LOGIC_VECTOR(ALU_OP_WIDTH - 1 DOWNTO 0);
    SIGNAL funct_res : STD_LOGIC_VECTOR(CTRL_ALU_WIDTH - 1 DOWNTO 0);
BEGIN
    funct_res <= ulaCtrlAdd WHEN funct = functADD ELSE
        ulaCtrlSub WHEN funct = functSUB ELSE
        ulaCtrlAnd WHEN funct = functAND ELSE
        ulaCtrlOr  WHEN funct = functOR  ELSE
        ulaCtrlSlt WHEN funct = functSLT ELSE
        ("0000");

    ALUctr <= funct_res WHEN ALUop = readFunctULA ELSE
        ulaCtrlAdd WHEN ALUop = aluOpAdd ELSE
        ulaCtrlSub WHEN ALUop = aluOpSub ELSE
        ulaCtrlAnd WHEN ALUop = aluOpAnd ELSE
        ulaCtrlOr WHEN ALUop = aluOpOr ELSE
        ulaCtrlSlt WHEN ALUop = aluOpSlt ELSE
        zero WHEN ALUop = aluOpDC ELSE
        (zero);

    --process(ALL)
    --begin
    --    case ALUop is
    --        WHEN readFunctULA => ALUctr <= funct_res;
    --        WHEN aluOpAdd => ALUctr <= ulaCtrlAdd;
    --        WHEN aluOpSub => ALUctr <= ulaCtrlSub;
    --        WHEN aluOpAnd => ALUctr <= ulaCtrlAnd;
    --        WHEN aluOpOr => ALUctr <= ulaCtrlOr;
    --        WHEN aluOpSlt => ALUctr <= ulaCtrlSlt;
    --        WHEN aluOpDC => ALUctr <= zero;
    --        WHEN others => ALUctr <= zero;
    --    end case;
    --end process;
END bhv;