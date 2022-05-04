library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use work.bus_multiplexer_pkg.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_alphabet_to_code is
    -- Entity of testbench is always empty
end entity tb_alphabet_to_code;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_alphabet_to_code is

    -- Local signals
    constant base_text_length : integer := 64;
    
    signal s_text_i : string (64 downto 1);
    signal s_text_length_i : integer;
--    signal s_code_o : std_logic_vector(5 downto 0);
    signal s_data0 : std_logic_vector(5 downto 0);
    signal s_data1 : std_logic_vector(5 downto 0);
    signal s_data2 : std_logic_vector(5 downto 0);
    signal s_data3 : std_logic_vector(5 downto 0);
    signal s_data4 : std_logic_vector(5 downto 0);
    signal s_data5 : std_logic_vector(5 downto 0);
    signal s_data6 : std_logic_vector(5 downto 0);
    signal s_data7 : std_logic_vector(5 downto 0);
    
        
begin
    -- Connecting testbench signals withalphabet_to_code entity
    -- (Unit Under Test)
    uut_char : entity work.alphabet_to_code
        generic map(
            base_text_length_i  => base_text_length
        )
        port map(
            text_i          => s_text_i,
            text_length_i   => s_text_length_i,
--            code_o          => s_code_o
            data0_i => s_data0,
            data1_i => s_data1,
            data2_i => s_data2,
            data3_i => s_data3,
            data4_i => s_data4,
            data5_i => s_data5,
            data6_i => s_data6,
            data7_i => s_data7
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    -- TEST INPUT VALUES
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        
        wait for 100 ns;
        s_text_length_i <= 14;
        s_text_i(14 downto 1) <= "Tajna zprava 1"; 
        
        wait for 100 ns;
        s_text_length_i <= 14;
        s_text_i(14 downto 1) <= "Tajna zprava 2";
        
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
        

end architecture testbench;