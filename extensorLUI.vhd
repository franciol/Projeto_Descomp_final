library ieee;
use ieee.std_logic_1164.all;

entity extensorLUI is
    generic
    (
        larguraDadoEntrada : natural  :=    8;
        larguraDadoSaida   : natural  :=    16
    );
    port
    (
        -- Input ports
        estendeSinal_IN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
        -- Output ports
        estendeSinal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of extensorLUI is
begin
    estendeSinal_OUT <= estendeSinal_IN & "0000000000000000";
end architecture;