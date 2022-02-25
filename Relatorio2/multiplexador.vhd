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
        Y <= ( D(0) and not(S(1)) and not(S(0)) ) or ( D(1) and not(S(1)) and S(0) ) or ( D(2) and S(1) and not(S(0)) ) or ( D(3) and S(1) and S(0) );
end multiplexador_arch;