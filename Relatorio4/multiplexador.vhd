library ieee;
use ieee.std_logic_1164.all;

entity multiplexador is
    port(
        D: in std_logic_vector (3 downto 0);
        S: in std_logic_vector (1 downto 0);
        Y: out std_logic
    );
end multiplexador;

architecture multiplexador_arch of multiplexador is
    begin
        y <= d(0) when s = "00" else
            d(1) when s = "01" else
            d(2) when s = "10" else
            d(3);
end multiplexador_arch;