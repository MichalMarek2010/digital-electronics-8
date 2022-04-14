------------------------------------------------------------
--
-- Made by David Strouhal from
-- Testbench for 7-segment display decoder.
-- Nexys A7-50T, Vivado v2020.1, EDA Playground
--
-- Copyright (c) 2020-Present Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity tb_alphabet_7seg is
    -- Entity of testbench is always empty
end entity tb_alphabet_7seg;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_alphabet_7seg is

    -- Local signals
    signal s_alphabet  : std_logic_vector(6 - 1 downto 0);
    signal s_seg  : std_logic_vector(7 - 1 downto 0);

begin
    -- Connecting testbench signals with decoder entity
    -- (Unit Under Test)
    uut_hex_7seg : entity work.alphabet_7seg
        port map(
            alphabet_i => s_alphabet,
            seg_o => s_seg
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;

        -- First test case - 0
        s_alphabet <= "000000"; wait for 25 ns;
        assert (s_seg = "0000001")
        report "Input combination 000000 FAILED" severity error;

        -- Test case - 1
        s_alphabet <= "000001"; wait for 25 ns;
        assert (s_seg = "1001111")
        report "Input combination 0001 FAILED" severity error;

        -- Test case - 2
        s_alphabet <= "000010"; wait for 25 ns;
        assert (s_seg = "0010010")
        report "Input combination 000010 FAILED" severity error;

        -- Test case - 3
        s_alphabet <= "000011"; wait for 25 ns;
        assert (s_seg = "0000110")
        report "Input combination 000011 FAILED" severity error;

        -- Test case - 4
        s_alphabet <= "000100"; wait for 25 ns;
        assert (s_seg = "1001100")
        report "Input combination 000100 FAILED" severity error;
        
        -- Test case - 5
        s_alphabet <= "000101"; wait for 25 ns;
        assert (s_seg = "0100100")
        report "Input combination 000101 FAILED" severity error;

        -- Test case - 6
        s_alphabet <= "000110"; wait for 25 ns;
        assert (s_seg = "0100000")
        report "Input combination 000110 FAILED" severity error;

        -- Test case - 7
        s_alphabet <= "000111"; wait for 25 ns;
        assert (s_seg = "0001111")
        report "Input combination 000111 FAILED" severity error;

        -- Test case - 8
        s_alphabet <= "001000"; wait for 25 ns;
        assert (s_seg = "0000000")
        report "Input combination 001000 FAILED" severity error;

        -- Test case - 9
        s_alphabet <= "001001"; wait for 25 ns;
        assert (s_seg = "0000100")
        report "Input combination 001001 FAILED" severity error;

        -- Test case - A
        s_alphabet <= "001010"; wait for 25 ns;
        assert (s_seg = "0001000")
        report "Input combination 001010 FAILED" severity error;

        -- Test case - B
        s_alphabet <= "001011"; wait for 25 ns;
        assert (s_seg = "1100000")
        report "Input combination 001011 FAILED" severity error;

        -- Test case - C
        s_alphabet <= "001100"; wait for 25 ns;
        assert (s_seg = "0110001")
        report "Input combination 001100 FAILED" severity error;

        -- Test case - D
        s_alphabet <= "001101"; wait for 25 ns;
        assert (s_seg = "1000010")
        report "Input combination 001101 FAILED" severity error;

        -- Test case - E
        s_alphabet <= "001110"; wait for 25 ns;
        assert (s_seg = "0110000")
        report "Input combination 001110 FAILED" severity error;

        -- Test case - F
        s_alphabet <= "001111"; wait for 25 ns;
        assert (s_seg = "0111000")
        report "Input combination 001111 FAILED" severity error;

        -- Test case - G
        s_alphabet <= "010000"; wait for 25 ns;
        assert (s_seg = "0100001")
        report "Input combination 010000 FAILED" severity error;

        -- Test case - H
        s_alphabet <= "010001"; wait for 25 ns;
        assert (s_seg = "1101000")
        report "Input combination 010001 FAILED" severity error;

        -- Test case - I
        s_alphabet <= "010010"; wait for 25 ns;
        assert (s_seg = "1111001")
        report "Input combination 010010 FAILED" severity error;

        -- Test case - J
        s_alphabet <= "010011"; wait for 25 ns;
        assert (s_seg = "1000011")
        report "Input combination 010011 FAILED" severity error;

        -- Test case - K
        s_alphabet <= "010100"; wait for 25 ns;
        assert (s_seg = "0101000")
        report "Input combination 010100 FAILED" severity error;
        
        -- Test case - L
        s_alphabet <= "010101"; wait for 25 ns;
        assert (s_seg = "1110001")
        report "Input combination 010101 FAILED" severity error;

        -- Test case - M
        s_alphabet <= "010110"; wait for 25 ns;
        assert (s_seg = "0101011")
        report "Input combination 010110 FAILED" severity error;

        -- Test case - N
        s_alphabet <= "010111"; wait for 25 ns;
        assert (s_seg = "0001001")
        report "Input combination 010111 FAILED" severity error;

        -- Test case - O
        s_alphabet <= "011000"; wait for 25 ns;
        assert (s_seg = "0000001")
        report "Input combination 011000 FAILED" severity error;

        -- Test case - P
        s_alphabet <= "011001"; wait for 25 ns;
        assert (s_seg = "0011000")
        report "Input combination 011001 FAILED" severity error;

        -- Test case - Q
        s_alphabet <= "011010"; wait for 25 ns;
        assert (s_seg = "0001100")
        report "Input combination 011010 FAILED" severity error;

        -- Test case - R
        s_alphabet <= "011011"; wait for 25 ns;
        assert (s_seg = "0011001")
        report "Input combination 011011 FAILED" severity error;

        -- Test case - S
        s_alphabet <= "011100"; wait for 25 ns;
        assert (s_seg = "0100100")
        report "Input combination 011100 FAILED" severity error;

        -- Test case - T
        s_alphabet <= "011101"; wait for 25 ns;
        assert (s_seg = "1110000")
        report "Input combination 011101 FAILED" severity error;

        -- Test case - U
        s_alphabet <= "011110"; wait for 25 ns;
        assert (s_seg = "1000001")
        report "Input combination 011110 FAILED" severity error;

        -- Test case - V
        s_alphabet <= "011111"; wait for 25 ns;
        assert (s_seg = "1000101")
        report "Input combination 011111 FAILED" severity error;

        -- Test case - W
        s_alphabet <= "100000"; wait for 25 ns;
        assert (s_seg = "1010101")
        report "Input combination 100000 FAILED" severity error;

        -- Test case - X
        s_alphabet <= "100001"; wait for 25 ns;
        assert (s_seg = "1001000")
        report "Input combination 100001 FAILED" severity error;

        -- Test case - Y
        s_alphabet <= "100010"; wait for 25 ns;
        assert (s_seg = "1000100")
        report "Input combination 100010 FAILED" severity error;

        -- Test case - Z
        s_alphabet <= "100011"; wait for 25 ns;
        assert (s_seg = "0010110")
        report "Input combination 100011 FAILED" severity error;

        -- Test case -  (space)
        s_alphabet <= "100100"; wait for 25 ns;
        assert (s_seg = "1111111")
        report "Input combination 100100 FAILED" severity error;                
        

        -- WRITE OTHER TEST CASES HERE


        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;
