library ieee;
use ieee.std_logic_1164.all;

entity funcao_booleana2 is
    --Dica usar EFG como seletores para o multiplexador 8x1
    port(
        A: in std_logic;
        B: in std_logic;
        C: in std_logic;
        D: in std_logic;
        E: in std_logic;
        F: in std_logic;
        G: in std_logic;
        S: out std_logic 
    );

end funcao_booleana2;

architecture funcao_booleana2_arch of funcao_booleana2 is
    component decodificador_4x16 is
        port (
            A: in std_logic_vector (3 downto 0); -- A, B, C, D
            Y: out std_logic_vector (15 downto 0) -- 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
        );
    end component;

    component multiplexador_8x1 is
        port(
            S: in std_logic_vector ( 2 downto 0 ); --S(0), S(1), S(2)
            D: in std_logic_vector ( 7 downto 0 ); -- 000 001 010 011 100 101 110 111
            Y: out std_logic
        );
    end component;

    signal out_decodificador: std_logic_vector (15 downto 0);
    signal in_multiplexador: std_logic_vector (7 downto 0);

    begin

        decodificador: decodificador_4x16 port map ( A(3) => A, A(2) => B, A(1) => C, A(0) => D, Y => out_decodificador );

        in_multiplexador(7) <= '1';
        in_multiplexador(6) <= out_decodificador(10) or out_decodificador(11);
        in_multiplexador(5) <= '0';
        in_multiplexador(4) <= out_decodificador(15) or out_decodificador(9);
        in_multiplexador(3) <= '1';
        in_multiplexador(2) <= out_decodificador(7);
        in_multiplexador(1) <= out_decodificador(15) or out_decodificador(0);
        in_multiplexador(0) <= '0';

        multiplexador: multiplexador_8x1 port map ( S(2) => E, S(1) => F, S(0) => G,D => in_multiplexador, y => S );

    
end funcao_booleana2_arch;