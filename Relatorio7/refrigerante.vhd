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

    type estado is (init, c25, c50, c75, c100, c125, d25, d50, d75);
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
                if(A = "01") then nextState <= c25;
                elsif(A = "10") then nextState <= c50;
                elsif(A = "11") then nextState <= init;
                else nextState <= init;
                end if;
            when c25 =>
                Y <= "000";
                if(A = "01") then nextState <= c50;
                elsif(A = "10") then nextState <= c75;
                elsif(A = "11") then nextState <= d25;
                else nextState <= c25;
                end if;
            when c50 =>
                Y <= "000";
                if(A = "01") then nextState <= c75;
                elsif(A = "10") then nextState <= c100;
                elsif(A = "11") then nextState <= d50;
                else nextState <= c50;
                end if;
            when c75 =>
                Y <= "000";
                if(A = "01") then nextState <= c100;
                elsif(A = "10") then nextState <= c125;
                elsif(A = "11") then nextState <= d75;
                else nextState <= c75;
                end if;
            when c100 =>
                Y <= "100";
                if(A = "01") then nextState <= c25;
                elsif(A = "10") then nextState <= c50;
                elsif(A = "11") then nextState <= init;
                else nextState <= init;
                end if;
            when c125 =>
                Y <= "110";
                if(A = "01") then nextState <= c25;
                elsif(A = "10") then nextState <= c50;
                elsif(A = "11") then nextState <= init;
                else nextState <= init;
                end if;
            when d25 =>
                Y <= "010";
                if(A = "01") then nextState <= c25;
                elsif(A = "10") then nextState <= c50;
                elsif(A = "11") then nextState <= init;
                else nextState <= init;
                end if;
            when d50 =>
                Y <= "001";
                if(A = "01") then nextState <= c25;
                elsif(A = "10") then nextState <= c50;
                elsif(A = "11") then nextState <= init;
                else nextState <= init;
                end if;
            when d75 =>
                Y <= "011";
                if(A = "01") then nextState <= c25;
                elsif(A = "10") then nextState <= c50;
                elsif(A = "11") then nextState <= init;
                else nextState <= init;
                end if;
            when others => nextState <= nextState;
        end case;
    end process comb_proc;

end maquinaEstados_arch ; -- maquinaEstados_arch