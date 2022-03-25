library ieee;
use ieee.std_logic_1164.all;

entity maquinaEstados is 
    port(
        A: in std_logic_vector (1 downto 0);
        clock, reset: in std_logic;
        Y: out std_logic_vector (2 downto 0)
    );

end maquinaEstados;

architecture maquinaEstados_arch of maquinaEstados is

    type estado is (init, 25c, 50c, 75c, 100c, 125c, d25, d50, d75);
    signal currentState, nextState : estado;

begin

    sync_proc: process(clock, reset)
    begin
        if reset = '1' then
            currentState <= init;
        elsif rising_edge(clock) then
            currentState <= nextState;
        end if;
    end process sync_proc;

    comb_proc: process(currentState, A)
    begin
        case currentState is
            when init =>
                Y <= "000";
                if(A = "01") then nextState <= 25c;
                elsif(A = "10") then nextState <= 50c;
                elsif(A = "11") then nextState <= init;
                else nextState <= init;
                end if;
        end case;
    end process comb_proc;

end maquinaEstados_arch ; -- maquinaEstados_arch