-- Design de Computadores
-- file: mips.vhd
-- date: 18/10/2019

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.constantesMIPS.ALL;

ENTITY mips IS
    PORT (
        clk : IN STD_LOGIC;

        program_c_out : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        ula_signal_out : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE estrutural OF mips IS

    -- Declaração de sinais auxiliares
    SIGNAL pontosDeControle : STD_LOGIC_VECTOR(CONTROLWORD_WIDTH - 1 DOWNTO 0);
    SIGNAL instrucao : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL ALUop : STD_LOGIC_VECTOR(ALU_OP_WIDTH - 1 DOWNTO 0);
    SIGNAL ALUctr : STD_LOGIC_VECTOR(CTRL_ALU_WIDTH - 1 DOWNTO 0);

    SIGNAL ulaOut : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL pcOut : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
    -- Sinal de clock auxiliar para simulação
    -- signal clk  : STD_LOGIC;

    ALIAS opcode : std_logic_vector(OPCODE_WIDTH - 1 DOWNTO 0) IS instrucao(31 DOWNTO 26);
    ALIAS funct  : std_logic_vector(FUNCT_WIDTH - 1 DOWNTO 0) IS instrucao(5 DOWNTO 0);
BEGIN

    -- CLOCK generator auxiliar para simulação
    -- CG : entity work.clock_generator port map (clk	=> clk);

    FD : ENTITY work.fluxo_dados
        PORT MAP
        (
            clk => clk,
            pontosDeControle => pontosDeControle,
            instrucao => instrucao,

            pc_out => pcOut,
            ula_out => ulaOut
        );

    UC : ENTITY work.uc
        PORT MAP
        (
            opcode => opcode,
            pontosDeControle => pontosDeControle,
            funct => funct
        );

    program_c_out <= pcOut;
    ula_signal_out <= ulaOut;

END ARCHITECTURE;