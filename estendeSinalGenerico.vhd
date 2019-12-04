LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY estendeSinalGenerico IS
    GENERIC (
        larguraDadoEntrada : NATURAL := 8;
        larguraDadoSaida : NATURAL := 8
    );
    PORT (
        -- Input ports
        estendeSinal_IN : IN std_logic_vector(larguraDadoEntrada - 1 DOWNTO 0);
        sel_ext_in : IN std_logic;

        -- Output ports
        estendeSinal_OUT : OUT std_logic_vector(larguraDadoSaida - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF estendeSinalGenerico IS
BEGIN
    PROCESS (estendeSinal_IN, sel_ext_in) IS
    BEGIN

        IF (sel_ext_in = '0') THEN
            IF (estendeSinal_IN(larguraDadoEntrada - 1) = '1') THEN
                estendeSinal_OUT <= (larguraDadoSaida - 1 DOWNTO larguraDadoEntrada => '1') & estendeSinal_IN;
            ELSE
                estendeSinal_OUT <= (larguraDadoSaida - 1 DOWNTO larguraDadoEntrada => '0') & estendeSinal_IN;
            END IF;
        ELSE
            estendeSinal_OUT <= (larguraDadoSaida - 1 DOWNTO larguraDadoEntrada => '0') & estendeSinal_IN;
        END IF;
    END PROCESS;
END ARCHITECTURE;