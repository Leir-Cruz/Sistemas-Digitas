library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity testbench is
    port(
        f_dut: in std_logic_vector (4 downto 0);
        f_gm: in std_logic_vector (4 downto 0);
        A: out std_logic_vector (3 downto 0);
        B: out std_logic_vector (3 downto 0)
    );
end testbench;

architecture testbench_arch of testbench is
begin
    process

    begin
        report "Iniciando testebench..." severity NOTE;
        for i in 0 to 15 loop
            A <= std_logic_vector(to_unsigned(i, 4));
            for j in 0 to 15 loop
                B <= std_logic_vector(to_unsigned(j, 4));
                wait for 500 ns;
                assert (f_gm = f_dut) report "Falhou!" severity ERROR;
            end loop;
        end loop;

        report "Teste Finalizado!" severity NOTE;
        wait;
    end process;

end testbench_arch;