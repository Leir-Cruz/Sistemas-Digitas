library ieee;
use ieee.std_logic_1164.all;

entity somador_palavras_1_tb is end;

architecture somador_palavras_1_arch of somador_palavras_1_tb is
    component somador_palavras_1 is
        port(
            A: in std_logic_vector (3 downto 0);
            B: in std_logic_vector (3 downto 0);
            S: out std_logic_vector (4 downto 0)
        );
    end component;

    signal entrance_i: std_logic_vector (3 downto 0) := "0000";
    signal entrance_j: std_logic_vector (3 downto 0) := "0000";

    constant time_0: time := 2 ns;
    constant time_1: time := 4 ns;
    constant time_2: time := 8 ns;
    constant time_3: time := 16 ns;
    constant time_4: time := 32 ns;
    constant time_5: time := 64 ns;
    constant time_6: time := 128 ns;
    constant time_7: time := 256 ns;

    begin
        obj: somador_palavras_1 port map (A => entrance_i, B => entrance_j, S => open);

        entrance_j(3) <= not entrance_j(3) after time_7/2;
        entrance_j(2) <= not entrance_j(2) after time_6/2;
        entrance_j(1) <= not entrance_j(1) after time_5/2;
        entrance_j(0) <= not entrance_j(0) after time_4/2;
        entrance_i(3) <= not entrance_i(3) after time_3/2;
        entrance_i(2) <= not entrance_i(2) after time_2/2;
        entrance_i(1) <= not entrance_i(1) after time_1/2;
        entrance_i(0) <= not entrance_i(0) after time_0/2;

end somador_palavras_1_arch;

