library ieee;
use ieee.std_logic_1164.all;

entity somador_completo_tb is end;

architecture somador_completo_tb_arch of somador_completo_tb is
    component somador_completo is
        port(
            A: in std_logic;
            B: in std_logic;
            cin: in std_logic;
            S: out std_logic;
            Cout: out std_logic
        );
    end component;

    signal A_1: std_logic;
    signal B_1: std_logic;
    signal Cin_1: std_logic;

    constant time_1: time := 4 ns;
    constant time_2: time := 8 ns;
    constant time_3: time := 16 ns;

    begin
        somador_comp_1: somador_completo port map ( A => A_1, B => B_1, Cin => Cin_1, S => open, Cout => open ); 

        clock0: process
        begin
            A_1 <= '0', '1' after time_1/2, '0' after time_1;
            wait for time_1;
        end process clock0;

        clock1: process
        begin
            B_1 <= '0', '1' after time_2/2, '0' after time_2;
            wait for time_2;
        end process clock1;

        clock2: process
        begin
            Cin_1 <= '0', '1' after time_3/2, '0' after time_3;
            wait for time_3;
        end process clock2;

end somador_completo_tb_arch;