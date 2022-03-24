library ieee;
use ieee.std_logic_1164.all;

entity flipflopJK is
    port(
    clk, clr, pr, J, K: in std_logic;
    Q: out std_logic
    );
end flipflopJK;

architecture flipflopJK_arch of flipflopJK is
    signal Qbuf: std_logic := '0';
    signal JK: std_logic_vector (1 downto 0);
    begin
        JK <= J & K;
        process(clk, clr, pr)
        begin
            if pr = '1' then Qbuf <= '1';
            elsif pr = '0' and clr = '0' then Qbuf <= '0';
            elsif rising_edge(clk) then
                case JK is
                    when "01" => Qbuf <= '0';   
                    when "10" => Qbuf <= '1';
                    when "11" => Qbuf <= not(Qbuf);
                    when others => Qbuf <= Qbuf;  
                end case;
            end if;
            Q <= Qbuf;
            end process;
end flipflopJK_arch;