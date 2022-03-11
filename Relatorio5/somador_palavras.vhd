library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity somador_palavras_4 is
    port(
        A: in std_logic_vector (3 downto 0);
        B: in std_logic_vector (3 downto 0);
        S: out std_logic_vector (4 downto 0)
    );

end somador_palavras_4;

architecture somador_palavras_4_arch of somador_palavras_4 is
    begin
        S <= unsigned('0' & A) + unsigned('0' & B);
end somador_palavras_4_arch;