-- Design de Computadores
-- file: fluxo_dados.vhd
-- date: 18/10/2019

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.constantesMIPS.ALL;

ENTITY fluxo_dados IS
    GENERIC (
        larguraROM : NATURAL := 8 -- deve ser menor ou igual a 32
    );
    PORT (
        clk : IN STD_LOGIC;
        pontosDeControle : IN STD_LOGIC_VECTOR(CONTROLWORD_WIDTH - 1 DOWNTO 0);
        instrucao : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);

        pc_out : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        ula_out : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        saidaA1 : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        saidaB1,saidaMUXBRANCH : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        zout,selbeq,saidaZOUT : OUT std_logic
    );
END ENTITY;

ARCHITECTURE estrutural OF fluxo_dados IS

    -- Declaração de sinais auxiliares

    -- Sinais auxiliar da instrução
    SIGNAL instrucao_s : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

    -- Sinais auxiliares para o banco de registradores
    SIGNAL RA, RB : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

    -- Sinais auxiliares para a ULA
    SIGNAL saida_ula : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL Z_out : std_logic;

    -- Sinais auxiliares para a lógica do PC
    SIGNAL PC_s, PC_mais_4, PC_mais_4_mais_imediato, entrada_somador_beq : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

    -- Sinais auxiliares para a RAM
    SIGNAL dado_lido_mem : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

    -- Sinais auxiliares para os componentes manipuladores do imediato
    SIGNAL sinal_ext : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

    -- Sinais auxiliares para os componentes manipuladores do endereço de jump
    SIGNAL PC_4_concat_imed : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL saida_shift_jump : std_logic_vector(27 DOWNTO 0);

    -- Sinais auxiliares dos MUXs
    SIGNAL beq_or_bne : std_logic;
    SIGNAL saida_mux_zout : std_logic;
    SIGNAL saida_mux_ula_mem, saida_mux_banco_ula, saida_mux_beq, saida_mux_jump, saida_mux_jr : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL saida_mux_rd_rt : std_logic_vector(REGBANK_ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL lui_out : std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
    -- Controle da ULA
    SIGNAL ULActr : std_logic_vector(CTRL_ALU_WIDTH - 1 DOWNTO 0);

    -- Codigos da palavra de controle:
    ALIAS ULAop : std_logic_vector(ALU_OP_WIDTH - 1 DOWNTO 0) IS pontosDeControle(15 DOWNTO 13);
    ALIAS sel_ext : std_logic IS pontosDeControle(12);
    ALIAS sel_mux_jr : std_logic IS pontosDeControle(11);
    ALIAS sel_bne : std_logic IS pontosDeControle(10);
    ALIAS escreve_RC : std_logic IS pontosDeControle(9);
    ALIAS escreve_RAM : std_logic IS pontosDeControle(8);
    ALIAS leitura_RAM : std_logic IS pontosDeControle(7);
    ALIAS sel_mux_ula_mem : std_logic_vector IS pontosDeControle(6 DOWNTO 5);
    ALIAS sel_mux_rd_rt : std_logic_vector IS pontosDeControle(4 DOWNTO 3);
    ALIAS sel_mux_banco_ula : std_logic IS pontosDeControle(2);
    ALIAS sel_beq : std_logic IS pontosDeControle(1);
    ALIAS sel_mux_jump : std_logic IS pontosDeControle(0);

    -- Parsing da instrucao
    ALIAS RS_addr : std_logic_vector(REGBANK_ADDR_WIDTH - 1 DOWNTO 0) IS instrucao_s(25 DOWNTO 21);
    ALIAS RT_addr : std_logic_vector(REGBANK_ADDR_WIDTH - 1 DOWNTO 0) IS instrucao_s(20 DOWNTO 16);
    ALIAS RD_addr : std_logic_vector(REGBANK_ADDR_WIDTH - 1 DOWNTO 0) IS instrucao_s(15 DOWNTO 11);
    ALIAS funct : std_logic_vector(FUNCT_WIDTH - 1 DOWNTO 0) IS instrucao_s(5 DOWNTO 0);
    ALIAS imediato : std_logic_vector(15 DOWNTO 0) IS instrucao_s(15 DOWNTO 0);

BEGIN

    instrucao <= instrucao_s;

    beq_or_bne <= sel_beq OR sel_bne;

    -- Ajuste do PC para jump (concatena com imediato multiplicado por 4)
    PC_4_concat_imed <= PC_mais_4(31 DOWNTO 28) & saida_shift_jump;

    -- Banco de registradores
    BR : ENTITY work.bancoRegistradores
        GENERIC MAP(
            larguraDados => DATA_WIDTH,
            larguraEndBancoRegs => 5
        )
        PORT MAP(
            enderecoA => RS_addr,
            enderecoB => RT_addr,
            enderecoC => saida_mux_rd_rt,
            clk => clk,
            dadoEscritaC => saida_mux_ula_mem,
            escreveC => escreve_RC,
            saidaA => RA,
            saidaB => RB
        );

    -- ULA
    ULA : ENTITY work.ULA
        GENERIC MAP(
            NUM_BITS => DATA_WIDTH
        )
        PORT MAP(
            A => RA,
            B => saida_mux_banco_ula,
            ctr => ULActr,
            C => saida_ula,
            Z => Z_out
        );

    UCULA : ENTITY work.uc_ula
        PORT MAP
        (
            funct => funct,
            ALUop => ULAop,
            ALUctr => ULActr
        );

    -- PC e somadores
    PC : ENTITY work.Registrador
        GENERIC MAP(
            NUM_BITS => DATA_WIDTH
        )
        PORT MAP(
            data_out => PC_s,
            data_in => saida_mux_jump,
            clk => clk,
            enable => '1',
            reset => '1' -- reset negado
        );

    Somador_imediato : ENTITY work.somador
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA => entrada_somador_beq,
            entradaB => PC_mais_4,
            saida => PC_mais_4_mais_imediato
        );

    Somador : ENTITY work.soma4
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entrada => PC_s,
            saida => PC_mais_4
        );

    -- ROM
    ROM : ENTITY work.ROM
        GENERIC MAP(
            dataWidth => DATA_WIDTH,
            addrWidth => larguraROM
        )
        PORT MAP(
            endereco => PC_s(larguraROM - 1 DOWNTO 0),
            dado => instrucao_s
        );

    -- RAM: escreve valor lido no registrador B no endereço de memória de acordo com a saída da ULA
    RAM : ENTITY work.single_port_RAM
        GENERIC MAP(
            dataWidth => DATA_WIDTH,
            addrWidth => ADDR_WIDTH
        )
        PORT MAP(
            endereco => saida_ula,
            we => escreve_RAM,
            re => leitura_RAM,
            clk => clk,
            dado_write => RB,
            dado_read => dado_lido_mem
        );

    -- Componentes manipuladores do imediato
    extensor : ENTITY work.estendeSinalGenerico
        GENERIC MAP(
            larguraDadoEntrada => 16,
            larguraDadoSaida => DATA_WIDTH
        )
        PORT MAP(
            estendeSinal_IN => imediato,
            estendeSinal_OUT => sinal_ext,
            sel_ext_in => sel_ext
        );
    extensorLUI : ENTITY work.extensorLUI
        GENERIC MAP(
            larguraDadoEntrada => 16,
            larguraDadoSaida => DATA_WIDTH
        )
        PORT MAP(
            estendeSinal_IN => imediato,
            estendeSinal_OUT => lui_out
        );
    shift : ENTITY work.shift2_imediato
        GENERIC MAP(
            larguraDado => DATA_WIDTH
        )
        PORT MAP(
            shift_IN => sinal_ext,
            shift_OUT => entrada_somador_beq
        );

    -- Componentes manipuladores do endereço de jump
    shift_jump : ENTITY work.shift2
        GENERIC MAP(
            larguraDado => 26
        )
        PORT MAP(
            shift_IN => instrucao_s(25 DOWNTO 0),
            shift_OUT => saida_shift_jump
        );

    -- MUXs
    mux_Ula_Memoria : ENTITY work.muxGenerico4
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA => saida_ula,
            entradaB => dado_lido_mem,
            entradaC => PC_mais_4,
            entradaD => lui_out,
            seletor => sel_mux_ula_mem,
            saida => saida_mux_ula_mem
        );

    mux_Rd_Rt : ENTITY work.muxGenerico4
        GENERIC MAP(
            larguraDados => REGBANK_ADDR_WIDTH
        )
        PORT MAP(
            entradaA => RT_addr,
            entradaB => RD_addr,
            entradaC => "11111",
            seletor => sel_mux_rd_rt,
            saida => saida_mux_rd_rt
    );

    mux_jr : ENTITY work.muxGenerico2
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA => saida_mux_beq,
            entradaB => RA,
            seletor => sel_mux_jr,
            saida => saida_mux_jr
        );

    mux_Banco_Ula : ENTITY work.muxGenerico2
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA => RB,
            entradaB => sinal_ext,
            seletor => sel_mux_banco_ula,
            saida => saida_mux_banco_ula
        );

    mux_beq : ENTITY work.muxGenerico2
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA => PC_mais_4,
            entradaB => PC_mais_4_mais_imediato,
            seletor =>  beq_or_bne AND saida_mux_zout,
            saida => saida_mux_beq
        );

    mux_zout : ENTITY work.muxGenerico2
        GENERIC MAP(
            larguraDados => 1
        )
        PORT MAP(
            entradaA(0) => NOT(Z_out),
            entradaB(0) => Z_out,
            seletor => sel_beq,
            saida(0) => saida_mux_zout
        );

    mux_jump : ENTITY work.muxGenerico2
        GENERIC MAP(
            larguraDados => DATA_WIDTH
        )
        PORT MAP(
            entradaA => saida_mux_jr,
            entradaB => PC_4_concat_imed,
            seletor => sel_mux_jump,
            saida => saida_mux_jump
        );

    pc_out <= PC_s;
    ula_out <= saida_ula;
    saidaA1 <= RA;
    saidaB1 <= saida_mux_banco_ula;
    zout <= Z_out;
    selbeq <= sel_beq;
    saidaZOUT <= saida_mux_zout;
    saidaMUXBRANCH <= saida_mux_beq;
END ARCHITECTURE;