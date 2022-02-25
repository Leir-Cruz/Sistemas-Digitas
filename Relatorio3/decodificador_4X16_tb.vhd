library ieee;
use ieee.std_logic_1164.all;

entity decodificador_4x16_tb is end;

architecture decodificador_4x16_arch of decodificador_4x16_tb is
    component decodificador_4x16 is
        port(
            A: in std_logic_vector ( 3 downto 0 );
            Y: out std_logic
        );
    end component;

    signal A_1: std_logic_vector (3 downto 0);

    constant time_0: time := 2 ns;
    constant time_1: time := 4 ns;
    constant time_2: time := 8 ns;
    constant time_3: time := 16 ns;

    begin
        decodificador_4x16_1: decodificador_4x16 port map (A => A_1, Y => open);

        clock0: process
        begin
            A_1(0) <= '0', '1' after time_0/2, '0' after time_0;
            wait for time_0;
        end process clock0;

        clock1: process
        begin
            A_1(1) <= '0', '1' after time_1/2, '0' after time_1;
            wait for time_0;
        end process clock1;

        clock2: process
        begin
            A_1(2) <= '0', '1' after time_2/2, '0' after time_2;
            wait for time_0;
        end process clock2;

        clock3: process
        begin
            A_1(3) <= '0', '1' after time_3/2, '0' after time_3;
            wait for time_0;
        end process clock3;

end decodificador_4x16_arch;
