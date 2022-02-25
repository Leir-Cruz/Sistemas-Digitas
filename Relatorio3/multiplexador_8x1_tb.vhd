library ieee;
use ieee.std_logic_1164.all;

entity multiplexador_8x1_tb is end;

architecture multiplexador_8x1_arch of multiplexador_8x1_tb is
    component multiplexador_8x1 is
        port(
            S: in std_logic_vector ( 2 downto 0 );
            D: in std_logic_vector ( 7 downto 0 );
            Y: out std_logic
        );
    end component;

    signal S_1: std_logic_vector (2 downto 0);
    signal D_1: std_logic_vector (7 downto 0);

    constant time_0: time := 2 ns;
    constant time_1: time := 4 ns;
    constant time_2: time := 8 ns;
    constant time_3: time := 16 ns;
    constant time_4: time := 32 ns;
    constant time_5: time := 64 ns;
    constant time_6: time := 128 ns;
    constant time_7: time := 256 ns;
    constant time_8: time := 512 ns;
    constant time_9: time := 1024 ns;
    constant time_10: time := 2048 ns;

    begin
        multiplexador_8x1_1: multiplexador_8x1 port map (D => D_1, S => S_1, Y => open );

        clock0: process
        begin
            D_1(0) <= '0', '1' after time_0/2, '0' after time_0;
            wait for time_0;
        end process clock0;

        clock1: process
        begin
            D_1(1) <= '0', '1' after time_1/2, '0' after time_1;
            wait for time_1;
        end process clock1;

        clock2: process
        begin
            D_1(2) <= '0', '1' after time_2/2, '0' after time_2;
            wait for time_2;
        end process clock2;

        clock3: process
        begin
            D_1(3) <= '0', '1' after time_3/2, '0' after time_3;
            wait for time_3;
        end process clock3;

        clock4: process
        begin
            D_1(4) <= '0', '1' after time_4/2, '0' after time_4;
            wait for time_4;
        end process clock4;

        clock5: process
        begin
            D_1(5) <= '0', '1' after time_5/2, '0' after time_5;
            wait for time_5;
        end process clock5;

        clock6: process
        begin
            D_1(6) <= '0', '1' after time_6/2, '0' after time_6;
            wait for time_6;
        end process clock6;

        clock7: process
        begin
            D_1(7) <= '0', '1' after time_7/2, '0' after time_7;
            wait for time_7;
        end process clock7;

        clock8: process
        begin
            S_1(0) <= '0', '1' after time_8/2, '0' after time_8;
            wait for time_8;
        end process clock8;

        clock9: process
        begin
            S_1(1) <= '0', '1' after time_9/2, '0' after time_9;
            wait for time_9;
        end process clock9;

        clock10: process
        begin
            S_1(2) <= '0', '1' after time_10/2, '0' after time_10;
            wait for time_10;
        end process clock10;

end multiplexador_8x1_arch;