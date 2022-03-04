library ieee;
use ieee.std_logic_1164.all;

entity funcao_booleana is
    port(
        A: in std_logic;
        B: in std_logic;
        C: in std_logic;
        X: out std_logic;
        Y: out std_logic
    );
end funcao_booleana;

architecture funcao_booleana_arch of funcao_booleana is
    component multiplexador is
        port(
            D: in std_logic_vector (3 downto 0);
            S: in std_logic_vector (1 downto 0);
            Y: out std_logic
        );
    end component;

    signal notC: std_logic;

    begin
        notC <= not C;

        saida_1: multiplexador port map ( S(0) => B, S(1) => A, D(0) => '0', D(1) => C, D(2) => notC, D(3) => '1', y => X );
        saida_2: multiplexador port map ( S(0) => B, S(1) => A, D(0) => '1', D(1) => notC, D(2) => '0', D(3) => C, y => Y );

end funcao_booleana_arch;