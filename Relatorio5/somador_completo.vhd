library ieee;
use ieee.std_logic_1164.all;

entity somador_completo is
    port(
        A: in std_logic;
        B: in std_logic;
        Cin: in std_logic;
        S: out std_logic;
        Cout: out std_logic
    );
end somador_completo;

architecture somador_completo_arch of somador_completo is
    begin
        s <= A xor B xor Cin;
        Cout <= ( A and B ) or ( A and Cin ) or ( B and Cin ); 
end somador_completo_arch;