library ieee;
use ieee.std_logic_1164.all;

entity decodificar_4x16 is
    port (
        A: in std_logic_vector (3 downto 0);
        Y: out std_logic_vector (15 downto 0)
    );
end decodificar_4x16;

architecture decodificador_4x16_arch of decodificador_4x16 is
    begin
        with A select
            Y(0) <= '1' when "0000",
                '0' when others;

        with A select
            Y(1) <= '1' when "0001",
                    '0' when others;
        
        with A select
            Y(2) <= '1' when "0010",
                    '0' when others;

        with A select
            Y(3) <= '1' when "0011",
                    '0' when others;

        with A select
            Y(4) <= '1' when "0100",
                    '0' when others;

        with A select
            Y(5) <= '1' when "0101",
                    '0' when others;
                    
        with A select
            Y(6) <= '1' when "0110",
                    '0' when others;
                    
        with A select
            Y(7) <= '1' when "0111",
                    '0' when others;                   

        with A select
            Y(8) <= '1' when "1000",
                    '0' when others;

        with A select
            Y(9) <= '1' when "1001",
                    '0' when others;

        with A select
            Y(10) <= '1' when "1010",
                    '0' when others;

        with A select
            Y(11) <= '1' when "1011",
                    '0' when others;

        with A select
            Y(12) <= '1' when "1100",
                    '0' when others;

        with A select
            Y(13) <= '1' when "1101",
                    '0' when others;

        with A select
            Y(14) <= '1' when "1110",
                    '0' when others;

        with A select
            Y(15) <= '1' when "1111",
                    '0' when others;