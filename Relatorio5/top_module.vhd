library ieee;
use ieee.std_logic_1164.all;

entity top_module is end top_module;

architecture top_module_arch of top_module is
    component somador_palavras_1 is
        port(
            A: in std_logic_vector (3 downto 0);
            B: in std_logic_vector (3 downto 0);
            S: out std_logic_vector (4 downto 0)
        );
    end component;

    component somador_palavras_2 is
        port(
        A: in std_logic_vector (3 downto 0);
        B: in std_logic_vector (3 downto 0);
        S: out std_logic_vector (4 downto 0)
    );    
    end component;

    component testbench is
        port(
            f_dut: in std_logic_vector (4 downto 0);
            f_gm: in std_logic_vector (4 downto 0);
            A: out std_logic_vector (3 downto 0);
            B: out std_logic_vector (3 downto 0)
        );
    end component;

    signal A_1, B_1: std_logic_vector (3 downto 0);
    signal f_dut_1, f_gm_1: std_logic_vector (4 downto 0);

    begin
        obj_0: somador_palavras_1 port map (A => A_1,B => B_1, S => f_dut_1);
        obj_1: somador_palavras_2 port map (A => A_1,B => B_1, S => f_gm_1);
        obj_2: testbench port map (f_dut => f_dut_1, f_gm => f_gm_1, A => A_1, B => B_1);

end top_module_arch;