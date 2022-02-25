library ieee;
use ieee.std_logic_1164.all;

entity multiplexador_tb is end;

architecture multiplexador_tb_arch of multiplexador_tb is
    component multiplexador is
        port(
            D: in std_logic_vector (3 downto 0);
            S: in std_logic_vector (1 downto 0);
            Y: out std_logic
        );
    end component;

    signal D_1: std_logic_vector (3 downto 0);
    signal S_1: std_logic_vector (1 downto 0);

    constant time_0: time := 2 ns;
    constant time_1: time := 4 ns;
    constant time_2: time := 8 ns;
    constant time_3: time := 16 ns;
    constant time_4: time := 32 ns;
    constant time_5: time := 64 ns;

    begin
        multiplexador_1: multiplexador port map (D => D_1, S => S_1, Y => open );
        
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
            S_1(0) <= '0', '1' after time_4/2, '0' after time_4;
            wait for time_4;
        end process clock4;

        clock5: process
        begin
            S_1(1) <= '0', '1' after time_5/2, '0' after time_5;
            wait for time_5;
        end process clock5;


end multiplexador_tb_arch; 