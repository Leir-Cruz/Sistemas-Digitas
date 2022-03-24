library ieee;
use ieee.std_logic_1164.all;

entity flipflopJK_tb is end;

architecture flipflopJK_arch of flipflopJK_tb is
    component flipflopJK is
        port(
            clk, clr, pr, J, K: in std_logic;
            Q: out std_logic
        );    
    end component;

    signal entrance: std_logic_vector (4 downto 0) := "00000";

    constant time_0: time := 2 ns;
    constant time_1: time := 4 ns;
    constant time_2: time := 8 ns;
    constant time_3: time := 16 ns;
    constant time_4: time := 32 ns;

    begin
        flipflopJK_1: flipflopJK port map (clk =>  entrance(0), J => entrance(1), K => entrance(2), clr => entrance(3), pr => entrance(4), Q => open);
        
        entrance(0) <= not entrance(0) after time_0/2;
        entrance(1) <= not entrance(1) after time_1/2;
        entrance(2) <= not entrance(2) after time_2/2;
        entrance(3) <= not entrance(3) after time_3/2;
        entrance(4) <= not entrance(4) after time_4/2;

end flipflopJK_arch;
