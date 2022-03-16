library ieee;
use ieee.std_logic_1164.all;

entity somador_palavras_1 is
    port(
        A: in std_logic_vector (3 downto 0);
        B: in std_logic_vector (3 downto 0);
        S: out std_logic_vector (4 downto 0)
    );
end somador_palavras_1;

architecture somador_palavras_1_arch of somador_palavras_1 is
    component somador_completo is 
        port(
            A: in std_logic;
            B: in std_logic;
            Cin: in std_logic;
            S: out std_logic;
            Cout: out std_logic
        );
    end component;

    signal out_somador: std_logic_vector (2 downto 0);

    begin
        somador_0: somador_completo port map (A => A(0), B => B(0), Cin => '0', Cout => out_somador(0), S => S(0));
        somador_1: somador_completo port map (A => A(1), B => B(1), Cin => out_somador(0), Cout => out_somador(1), S => S(1));
        somador_2: somador_completo port map (A => A(2), B => B(2), Cin => out_somador(1),Cout => out_somador(2) , S => S(2));
        somador_3: somador_completo port map (A => A(3), B => B(3), Cin => out_somador(2), Cout => S(4), S => S(3));
end somador_palavras_1_arch;