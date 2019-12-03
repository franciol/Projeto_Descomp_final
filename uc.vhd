-- Design de Computadores
-- file: uc.vhd
-- date: 18/10/2019

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.constantesMIPS.ALL;

ENTITY uc IS
    PORT (
        opcode : IN STD_LOGIC_VECTOR(OPCODE_WIDTH - 1 DOWNTO 0);
        funct : IN STD_LOGIC_VECTOR(FUNCT_WIDTH-1 DOWNTO 0);

        pontosDeControle : OUT STD_LOGIC_VECTOR(CONTROLWORD_WIDTH - 1 DOWNTO 0)
        
    );
END ENTITY;

ARCHITECTURE bhv OF uc IS
BEGIN

    pontosDeControle <= ctrlTipoJR WHEN (opcode = opCodeTipoR) AND (funct = functJR) ELSE
        ctrlTipoR    WHEN opcode = opCodeTipoR ELSE
        ctrlTipoLW   WHEN opcode = opCodeLW    ELSE
        ctrlTipoSW   WHEN opcode = opCodeSW    ELSE
        ctrlTipoBEQ  WHEN opcode = opCodeBEQ   ELSE
        ctrlTipoBNE  WHEN opcode = opCodeBNE   ELSE
        ctrlTipoJ    WHEN opcode = opCodeJ     ELSE
        ctrlTipoLUI  WHEN opcode = opCodeLUI   ELSE
        ctrlTipoADDI WHEN opcode = opCodeADDI  ELSE
        ctrlTipoANDI WHEN opcode = opCodeANDI  ELSE
        ctrlTipoORI  WHEN opcode = opCodeORI   ELSE
        ctrlTipoSLTI WHEN opcode = opCodeSLTI  ELSE
        ctrlTipoJAL  WHEN opcode = opCodeJAL   ELSE
        ("00000000000");

END bhv;