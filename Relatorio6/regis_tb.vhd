library ieee;
use ieee.std_logic_1164.all;

entity regis_tb is end;

architecture regis_arch of regis_tb is
    component regis is
        port(
            D: in std_logic_vector (3 downto 0);
            clock, load, reset, dir, L, R : in std_logic;
            Q: out std_logic_vector (3 downto 0)
        );
    end component;

    signal entrance: std_logic_vector (9 downto 0) := "0000000000";

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

begin
    regis_1: regis port map (clock => entrance(0), R => entrance(1), L => entrance(2), dir => entrance(3), D => entrance(7 downto 4), load => entrance(8), reset => entrance(9), Q => open);
        
    entrance(0) <= not entrance(0) after time_0/2;
    entrance(1) <= not entrance(1) after time_1/2;
    entrance(2) <= not entrance(2) after time_2/2;
    entrance(3) <= not entrance(3) after time_3/2;
    entrance(4) <= not entrance(4) after time_4/2;  
    entrance(5) <= not entrance(5) after time_5/2;
    entrance(6) <= not entrance(6) after time_6/2;
    entrance(7) <= not entrance(7) after time_7/2;
    entrance(8) <= not entrance(8) after time_8/2;
    entrance(9) <= not entrance(9) after time_9/2;
end regis_arch ; -- regis_tb
