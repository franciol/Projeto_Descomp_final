library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

package constantesMIPS is

  constant FUNCT_WIDTH : natural := 6;
  constant OPCODE_WIDTH : natural := 6;
  constant CONTROLWORD_WIDTH : natural := 15;
  constant DATA_WIDTH : natural := 32;
  constant ADDR_WIDTH : natural := 32;
  constant REGBANK_ADDR_WIDTH : natural := 5;
  constant ALU_OP_WIDTH : natural := 3;
  constant CTRL_ALU_WIDTH : natural := 4;

-- codigos das instrucoes do DLX:
   subtype opCode_t      is std_logic_vector(OPCODE_WIDTH-1 downto 0);
   subtype funct_t       is std_logic_vector(FUNCT_WIDTH-1 downto 0);
   subtype ctrlWorld_t   is std_logic_vector(CONTROLWORD_WIDTH-1 downto 0);
   subtype aluOp_t       is std_logic_vector(ALU_OP_WIDTH-1 downto 0);
   subtype ctrlALU_t     is std_logic_vector(CTRL_ALU_WIDTH-1 downto 0);

   subtype dado_t        is std_logic_vector(DATA_WIDTH-1 downto 0);
   subtype addr_t        is std_logic_vector(ADDR_WIDTH-1 downto 0);
--
    -- FUNCT 
    constant functADD : funct_t := "100000";
    constant functSUB : funct_t := "100010";
    constant functAND : funct_t := "100100";
    constant functOR  : funct_t := "100101";
    constant functSLT : funct_t := "101010";
    constant functJR  : funct_t := "001000";

    constant opCodeTipoR         : opCode_t := "000000";
--
    constant opCodeLW            : opCode_t := "100011";
    constant opCodeSW            : opCode_t := "101011";
    constant opCodeBEQ           : opCode_t := "000100";
    constant opCodeBNE           : opCode_t := "000101";
    
    constant opCodeLUI           : opCode_t := "001111";
    constant opCodeADDI          : opCode_t := "001000";
    constant opCodeANDI          : opCode_t := "001100";
    constant opCodeORI           : opCode_t := "001101";
    constant opCodeSLTI          : opCode_t := "001010";

    constant opCodeJAL           : opCode_t := "000011";
    constant opCodeJ             : opCode_t := "000010";
--
    -- ALU ---
    constant readFunctULA        : aluOp_t := "000";
    constant aluOpAdd            : aluOp_t := "001";
    constant aluOpSub            : aluOp_t := "010";
    constant aluOpAnd            : aluOp_t := "011";
    constant aluOpOr             : aluOp_t := "100";
    constant aluOpSlt            : aluOp_t := "101";
    constant aluOpDC             : aluOp_t := "XXX";

    -- ALUctr:
    -- 3: inverteA
    -- 2: inverteB
    -- 1-0: sel_mux_ula_op      0 AND 1 OR 2 ADD 3 SLT

    constant ulaCtrlAdd : ctrlALU_t := "0010";
    constant ulaCtrlSub : ctrlALU_t := "0110";
    constant ulaCtrlAnd : ctrlALU_t := "0000";
    constant ulaCtrlOr  : ctrlALU_t := "0001";
    constant ulaCtrlSlt : ctrlALU_t := "0111";

    -- Pontos de controle:
    -- 8: sel_mux_bne           0 PC+4  1 PC+4+imediato
    -- 7: escreve_RC
    -- 6: escreve_RAM
    -- 5: leitura_RAM
    -- 4: sel_mux_ula_mem:      0 ULA 1 MEM         (escrita no REG)
    -- 3: sel_mux_rd_rt:        0 RT_addr 1 RD_addr (endereço de escrita)
    -- 2: sel_mux_banco_ula:    0 REG_B 1 imediato  (ULA opera com REG ou imediato)    -- 9: sel_mux_jr            0 saida_mux_beq 1 RegistradorA

    -- 1: sel_mux_beq:          0 PC+4  1 PC+4+imediato
    -- 0: sel_mux_jump:         0 saida mux_beq 1 PC+4 & imediato

-- ControlWorld Bit:    14-12       11           10            9              8             7             5-6               3-4                 2                 1               0
--Instrução  Opcode     ALUop     JR_MUX    sel_mux_bne    escreve_RC    escreve_RAM   leitura_RAM   sel_mux_ula_mem   sel_mux_rd_rt    sel_mux_banco_ula    sel_mux_beq    sel_mux_jump
--Tipo R    |00.0000  | read  |     0     |      0      |      1       |      0      |      X      |       00        |       01       |         0         |       0       |       0       |
--BEQ       |00.0100  | sub   |     0     |      0      |      0       |      0      |      X      |       XX        |       XX       |         0         |       1       |       0       |
--BNE       |00.0101  | sub   |     0     |      1      |      0       |      0      |      X      |       XX        |       XX       |         0         |       0       |       0       | 
--LW        |10.0011  | add   |     0     |      0      |      1       |      0      |      1      |       01        |       00       |         1         |       0       |       0       |
--SW        |10.1011  | add   |     0     |      0      |      0       |      1      |      X      |       XX        |       XX       |         1         |       0       |       0       |
--LUI       |10.1011  | add   |     0     |      0      |      0       |      0      |      X      |       XX        |       XX       |         1         |       0       |       0       |
--ADDI      |00.1000  | add   |     0     |      0      |      1       |      0      |      X      |       01        |       00       |         0         |       0       |       0       |
--ANDI      |00.1100  | and   |     0     |      0      |      1       |      0      |      X      |       01        |       00       |         0         |       0       |       0       |
--ORI       |00.1101  | or    |     0     |      0      |      1       |      0      |      X      |       01        |       00       |         0         |       0       |       0       |
--SLTI      |00.1010  | sub   |     0     |      0      |      1       |      0      |      X      |       01        |       00       |         0         |       0       |       0       |
--J         |00.0010  | X     |     0     |      0      |      0       |      0      |      X      |       XX        |       XX       |         X         |       0       |       1       |
--JAL       |00.0011  | X     |     0     |      0      |      0       |      0      |      X      |       XX        |       XX       |         X         |       0       |       1       |
--JR        |00.0000  | X     |     1     |      0      |      0       |      0      |      X      |       01        |       00       |         0         |       0       |       0       |

--  Mux1: mux([PC+4, BEQ]/J);  Mux2: mux(Rt/Rd); Mux3: mux(Rt/imediato);  Mux4: mux(ULA/mem).

    constant ctrlTipoR:      ctrlWorld_t := readFunctULA &  "0010X0001000";
    constant ctrlTipoJ:      ctrlWorld_t := aluOpDC      &  "0000XXXXXX01";
    constant ctrlTipoBEQ:    ctrlWorld_t := aluOpSub     &  "0000XXXXX010";
    constant ctrlTipoBNE:    ctrlWorld_t := aluOpSub     &  "0100XXXXX000";
    constant ctrlTipoLW:     ctrlWorld_t := aluOpAdd     &  "001010100100";
    constant ctrlTipoSW:     ctrlWorld_t := aluOpAdd     &  "0001XXXXX100";
    constant ctrlTipoLUI:    ctrlWorld_t := aluOpAdd     &  "0000XXXXX100";
    constant ctrlTipoADDI:   ctrlWorld_t := aluOpAdd     &  "0010X0100000";
    constant ctrlTipoANDI:   ctrlWorld_t := aluOpAnd     &  "0010X0100000";
    constant ctrlTipoORI:    ctrlWorld_t := aluOpOr      &  "0010X0100000";
    constant ctrlTipoSLTI:   ctrlWorld_t := aluOpSub     &  "0010X0100000";
    constant ctrlTipoJAL:    ctrlWorld_t := aluOpDC      &  "0000XXXXXX01";
    constant ctrlTipoJR :    ctrlWorld_t := aluOpDC      &  "1000X0100000";

end package constantesMIPS;

