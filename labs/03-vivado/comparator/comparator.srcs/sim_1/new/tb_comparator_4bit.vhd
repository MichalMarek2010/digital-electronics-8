----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2022 09:29:54 AM
-- Design Name: 
-- Module Name: tb_comparator_4bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


------------------------------------------------------------
--
-- Testbench for 4-bit binary comparator.
-- EDA Playground
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
entity tb_comparator_4bit is
    -- Entity of testbench is always empty
end entity tb_comparator_4bit;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of tb_comparator_4bit is

    -- Local signals
  
    signal s_c           : std_logic_vector(4 - 1 downto 0);
    signal s_d           : std_logic_vector(4 - 1 downto 0);
    signal s_D_greater_C : std_logic;
    signal s_D_equals_C  : std_logic;
    signal s_D_less_C    : std_logic;

begin
    
	-- Connecting testbench signals with comparator_4bit
    -- entity (Unit Under Test)
    uut_comparator_4bit : entity work.comparator_4bit
        port map(            
            c_i           => s_c,
            d_i           => s_d,
            D_greater_C_o => s_D_greater_C,
            D_equals_C_o  => s_D_equals_C,
            D_less_C_o    => s_D_less_C
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
       	-- Report a note at the beginning of stimulus process
        report "Stimulus process for 4-bit binary comparator started" severity note;
		------------------------------------------------------------
        
        -- First test case ...
        s_d <= "0000"; s_c <= "0000"; wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_D_greater_C = '0') and
                (s_D_equals_C  = '1') and
                (s_D_less_C    = '0'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0000, 0000 FAILED" severity error;
        
        -- 2. test case ...
        s_d <= "0000"; s_c <= "0001"; wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_D_greater_C = '0') and
                (s_D_equals_C  = '0') and
                (s_D_less_C    = '1'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0000, 0001 FAILED" severity error;

		
         report "Test case with intentional error: 0010   0001";
        -- 3. test case ...
        s_d <= "0010"; s_c <= "0001"; wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_D_greater_C = '0') and
                (s_D_equals_C  = '0') and
                (s_D_less_C    = '0'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0010, 0001 FAILED" severity error;
        
        
        report "Test case for ID input: xxxx71";
        
        -- 4. test case for last 2 ID digits --> xxxx71...
        s_d <= "0111"; s_c <= "0001"; wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_D_greater_C = '1') and
                (s_D_equals_C  = '0') and
                (s_D_less_C    = '0'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Id input combination 0111, 0001 FAILED" severity error; 
        
       
        -- WRITE OTHER TEST CASES HERE



        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait; -- Data generation process is suspended forever
    end process p_stimulus;

end architecture testbench;