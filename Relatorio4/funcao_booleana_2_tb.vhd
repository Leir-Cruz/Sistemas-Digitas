library ieee;
use ieee.std_logic_1164.all;

entity funcao_booleana2_tb is end;

architecture funcao_booleana2_arch of funcao_booleana2_tb is
    component funcao_booleana2 is
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
    end component;

    signal entrance: std_logic_vector (6 downto 0) := "0000000";

    constant time_0: time := 2 ns;
    constant time_1: time := 4 ns;
    constant time_2: time := 8 ns;
    constant time_3: time := 16 ns;
    constant time_4: time := 32 ns;
    constant time_5: time := 64 ns;
    constant time_6: time := 128 ns;

    begin
        funcao_booleana2_1: funcao_booleana2 port map (A => entrance(6), B => entrance(5), C => entrance(4), D => entrance(3), E=> entrance(2), F => entrance(1), G => entrance(0), S => open );

        entrance(6) <= not entrance(6) after time_6/2;
        entrance(5) <= not entrance(5) after time_5/2;
        entrance(4) <= not entrance(4) after time_4/2;
        entrance(3) <= not entrance(3) after time_3/2;
        entrance(2) <= not entrance(2) after time_2/2;
        entrance(1) <= not entrance(1) after time_1/2;
        entrance(0) <= not entrance(0) after time_0/2;

end funcao_booleana2_arch;