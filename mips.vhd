-- Design de Computadores
-- file: mips.vhd
-- date: 18/10/2019

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.constantesMIPS.ALL;

ENTITY mips IS
    PORT (
        
		  KEY : IN STD_LOGIC_VECTOR(0 downto 0);
		  CLOCK_50 : IN STD_LOGIC;
		  
        inst_out : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        program_c_out : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        ula_signal_out : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);

		  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT std_logic_vector(6 DOWNTO 0) := "1111111";
        saidaA : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        saidaB : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        zout   : OUT STD_LOGIC_VECTOR(0 downto 0)
    );
END ENTITY;

ARCHITECTURE estrutural OF mips IS

    -- Declaração de sinais auxiliares
    SIGNAL pontosDeControle : STD_LOGIC_VECTOR(CONTROLWORD_WIDTH - 1 DOWNTO 0);
    SIGNAL instrucao : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL ALUop : STD_LOGIC_VECTOR(ALU_OP_WIDTH - 1 DOWNTO 0);
    SIGNAL ALUctr : STD_LOGIC_VECTOR(CTRL_ALU_WIDTH - 1 DOWNTO 0);
    SIGNAL saida_ula : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
	 SIGNAL pc_out : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
	 SIGNAL clk : STD_LOGIC;

	 
    -- Sinal de clock auxiliar para simulação
    -- signal clk  : STD_LOGIC;

    ALIAS opcode : std_logic_vector(OPCODE_WIDTH - 1 DOWNTO 0) IS instrucao(31 DOWNTO 26);
    ALIAS funct : std_logic_vector(FUNCT_WIDTH - 1 DOWNTO 0) IS instrucao(5 DOWNTO 0);
BEGIN

    -- CLOCK generator auxiliar para simulação
    -- CG : entity work.clock_generator port map (clk	=> clk);
	EDGE : ENTITY work.edgeDetector
	PORT MAP (
	clk => CLOCK_50,
	entrada => not(KEY(0)),
	saida => clk
	);
	
	
    FD : ENTITY work.fluxo_dados
        PORT MAP
        (
            clk => clk,
            pontosDeControle => pontosDeControle,
            instrucao => instrucao,

            pc_out => pc_out,
            ula_out => saida_ula
        );

    UC : ENTITY work.uc
        PORT MAP
        (
            opcode => opcode,
            pontosDeControle => pontosDeControle,
            funct => funct
        );

	 SEG7_0 : ENTITY work.seg7
        PORT MAP(
            dadoHex => saida_ula(3 downto 0),
            apaga => '0',
            negativo => '0',
            overFlow => '0',
            saida7seg => HEX0
        );
	 SEG7_1 : ENTITY work.seg7
        PORT MAP(
            dadoHex => saida_ula(7 downto 4),
            apaga => '0',
            negativo => '0',
            overFlow => '0',
            saida7seg => HEX1
        );
	 SEG7_2 : ENTITY work.seg7
        PORT MAP(
            dadoHex => saida_ula(11 downto 8),
            apaga => '0',
            negativo => '0',
            overFlow => '0',
            saida7seg => HEX2
        );
	  SEG7_3 : ENTITY work.seg7
        PORT MAP(
            dadoHex => saida_ula(15 downto 12),
            apaga => '0',
            negativo => '0',
            overFlow => '0',
            saida7seg => HEX3
        );
	  SEG7_4 : ENTITY work.seg7
        PORT MAP(
            dadoHex => pc_out(3 downto 0),
            apaga => '0',
            negativo => '0',
            overFlow => '0',
            saida7seg => HEX4
        );
	  SEG7_5 : ENTITY work.seg7
        PORT MAP(
            dadoHex => pc_out(7 downto 4),
            apaga => '0',
            negativo => '0',
            overFlow => '0',
            saida7seg => HEX5
        );
	  SEG7_6 : ENTITY work.seg7
        PORT MAP(
            dadoHex => pc_out(11 downto 8),
            apaga => '0',
            negativo => '0',
            overFlow => '0',
            saida7seg => HEX6
        );
	  SEG7_7 : ENTITY work.seg7
        PORT MAP(
            dadoHex => pc_out(15 downto 12),
            apaga => '0',
            negativo => '0',
            overFlow => '0',
            saida7seg => HEX7
        );
	
    inst_out <= instrucao;
	 ula_signal_out <= saida_ula;
	 program_c_out <= pc_out;
END ARCHITECTURE;