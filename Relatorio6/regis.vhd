library ieee;
use ieee.std_logic_1164.all;

entity regis is
    port(
        D: in std_logic_vector (3 downto 0);
        clock, load, reset, dir, L, R : in std_logic;
        Q: out std_logic_vector (3 downto 0)
    );
end regis;

architecture regis_arch of regis is

    signal Qbuf: std_logic_vector (3 downto 0);

begin
    process(clock)
    begin
        if rising_edge(clock) then
            if reset = '1' then Qbuf <= "0000";
            elsif load = '1' then Qbuf <= D;
            elsif dir = '0' then
                Qbuf <= Qbuf(2) & Qbuf(1) & Qbuf(0) & L;
            elsif dir = '1' then
                Qbuf <= R & Qbuf(3) & Qbuf(2) & Qbuf(1);
            end if;
        end if;
    end process;
        Q <= Qbuf;

end regis_arch;