-- Design de Computadores
-- file: uc.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity uc is
	port
    (
        opcode              	: IN STD_LOGIC_VECTOR(OPCODE_WIDTH-1 DOWNTO 0);
        pontosDeControle    	: OUT STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0)
    );
end entity;

architecture bhv of uc is
begin

    pontosDeControle <= ctrlTipoR WHEN opcode=opCodeTipoR ELSE
    ctrlTipoLW WHEN opcode=opCodeLW ELSE
    ctrlTipoSW WHEN opcode=opCodeSW ELSE
    ctrlTipoBEQ WHEN opcode=opCodeBEQ ELSE
    ctrlTipoJ WHEN opcode=opCodeTipoJ ELSE
        ("00000000000");

end bhv;