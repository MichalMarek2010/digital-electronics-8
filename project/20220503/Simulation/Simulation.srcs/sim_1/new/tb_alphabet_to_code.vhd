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
    constant base_text_length : integer := 32;
    
    signal s_text_i : string (32 downto 1);
    signal s_text_length_i : integer;

    type TEST_ARRAY is array (natural range <>) of std_logic_vector; 
    signal s_code_o : TEST_ARRAY(32 downto 1) (5 downto 0);
    
        
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
            code_1_o        => s_code_o(1),
            code_2_o        => s_code_o(2),
            code_3_o        => s_code_o(3),
            code_4_o        => s_code_o(4),
            code_5_o        => s_code_o(5),
            code_6_o        => s_code_o(6),
            code_7_o        => s_code_o(7),
            code_8_o        => s_code_o(8),
            code_9_o        => s_code_o(9),
            code_10_o       => s_code_o(10),
            code_11_o       => s_code_o(11),
            code_12_o       => s_code_o(12),
            code_13_o       => s_code_o(13),
            code_14_o       => s_code_o(14),
            code_15_o       => s_code_o(15),
            code_16_o       => s_code_o(16),
            code_17_o       => s_code_o(17),
            code_18_o       => s_code_o(18),
            code_19_o       => s_code_o(19),
            code_20_o       => s_code_o(20),
            code_21_o       => s_code_o(21),
            code_22_o       => s_code_o(22),
            code_23_o       => s_code_o(23),
            code_24_o       => s_code_o(24),
            code_25_o       => s_code_o(25),
            code_26_o       => s_code_o(26),
            code_27_o       => s_code_o(27),
            code_28_o       => s_code_o(28),
            code_29_o       => s_code_o(29),
            code_30_o       => s_code_o(30),
            code_31_o       => s_code_o(31),
            code_32_o       => s_code_o(32)
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