library ieee;
use ieee.std_logic_1164.all;

entity funcao_booleana_tb is end;

architecture funcao_booleana_arch of funcao_booleana_arch_tb is
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
    signal entracce: in std_logic_vector (2 downto 0) := "000";

    constant time_0: time := 2ns;
    constant time_1: time := 4ns;
    constant time_2: time := 8ns;

    begin
        funcao_booleana_1: funcao_booleana port ( A => entrace(2), B => entrace(1), C => entrace(0), X => open, Y => open );

        entrance(2) <= not entrance(2) after time_2/2;
        entrance(1) <= not entrance(1) after time_1/2;
        entrance(0) <= not entrance(0) after time_0/2;

end funcao_booleana_arch
