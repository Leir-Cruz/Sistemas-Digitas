library ieee;
use ieee.std_logic_1164.all;

entity funcao_booleana_tb is end;

architecture funcao_booleana_arch of funcao_booleana_tb is
    component funcao_booleana is
        port (
            A: in std_logic;
            B: in std_logic;
            C: in std_logic;
            X: out std_logic;
            Y: out std_logic
        );
    end component;
    
    --quanto mais significativo maior o tempo
    signal entrance: std_logic_vector (2 downto 0) := "000";

    constant time_0: time := 2 ns;
    constant time_1: time := 4 ns;
    constant time_2: time := 8 ns;

    begin
        funcao_booleana_1: funcao_booleana port map ( A => entrance(2), B => entrance(1), C => entrance(0), X => open, Y => open );

        entrance(2) <= not entrance(2) after time_2/2;
        entrance(1) <= not entrance(1) after time_1/2;
        entrance(0) <= not entrance(0) after time_0/2;

end funcao_booleana_arch;
