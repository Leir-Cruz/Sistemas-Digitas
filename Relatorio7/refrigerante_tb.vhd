library ieee;
use ieee.std_logic_1164.all;

entity maquinaEstados_tb is end;

architecture maquinaEstados_arch of maquinaEstados_tb is
    component maquinaEstados is
        port(
            A: in std_logic_vector (1 downto 0);
            clock, reset: in std_logic;
            Y: out std_logic_vector (2 downto 0)        
        );
    end component;

    signal entrance: std_logic_vector (3 downto 0) := "0000";
    
    constant time_0: time := 2 ns;
    constant time_1: time := 4 ns;
    constant time_2: time := 8 ns;
    constant time_3: time := 16 ns;


begin
    maquinaEstados_1: maquinaEstados port map (clock => entrance(0), A(0) => entrance(1), A(1) => entrance(2), reset => entrance(3), Y => open);

    entrance(0) <= not entrance(0) after time_0/2;
    entrance(1) <= not entrance(1) after time_1/2;
    entrance(2) <= not entrance(2) after time_2/2;
    entrance(3) <= not entrance(3) after time_3/2;
end maquinaEstados_arch ; -- maquinaEstados_arch