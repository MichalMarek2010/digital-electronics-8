----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2022 10:09:07 AM
-- Design Name: 
-- Module Name: alphabet_to_code - Behavioral
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

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

--package bus_multiplexer_pkg2 is
--        type array_std_logic is array(natural range <>) of std_logic_vector;
--end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use work.bus_multiplexer_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



entity alphabet_to_code is
    generic(
        base_text_length_i : in integer := 64
    );
    Port (
        text_i : in string (base_text_length_i downto 1);
        text_length_i : integer;
        code_1_o : out std_logic_vector(5 downto 0);
        code_2_o : out std_logic_vector(5 downto 0);
        code_3_o : out std_logic_vector(5 downto 0);
        code_4_o : out std_logic_vector(5 downto 0);
        code_5_o : out std_logic_vector(5 downto 0);
        code_6_o : out std_logic_vector(5 downto 0);
        code_7_o : out std_logic_vector(5 downto 0);
        code_8_o : out std_logic_vector(5 downto 0);
        code_9_o : out std_logic_vector(5 downto 0);
        code_10_o : out std_logic_vector(5 downto 0);
        code_11_o : out std_logic_vector(5 downto 0);
        code_12_o : out std_logic_vector(5 downto 0);
        code_13_o : out std_logic_vector(5 downto 0);
        code_14_o : out std_logic_vector(5 downto 0);
        code_15_o : out std_logic_vector(5 downto 0);
        code_16_o : out std_logic_vector(5 downto 0);
        code_17_o : out std_logic_vector(5 downto 0);
        code_18_o : out std_logic_vector(5 downto 0);
        code_19_o : out std_logic_vector(5 downto 0);
        code_20_o : out std_logic_vector(5 downto 0);
        code_21_o : out std_logic_vector(5 downto 0);
        code_22_o : out std_logic_vector(5 downto 0);
        code_23_o : out std_logic_vector(5 downto 0);
        code_24_o : out std_logic_vector(5 downto 0);
        code_25_o : out std_logic_vector(5 downto 0);
        code_26_o : out std_logic_vector(5 downto 0);
        code_27_o : out std_logic_vector(5 downto 0);
        code_28_o : out std_logic_vector(5 downto 0);
        code_29_o : out std_logic_vector(5 downto 0);
        code_30_o : out std_logic_vector(5 downto 0);
        code_31_o : out std_logic_vector(5 downto 0);
        code_32_o : out std_logic_vector(5 downto 0)
    );
end alphabet_to_code;

architecture Behavioral of alphabet_to_code is

signal char : character;
signal code_char : std_logic_vector(5 downto 0);
signal code_1 : std_logic_vector(5 downto 0);
signal code_2 : std_logic_vector(5 downto 0);

begin   
    --------------------------------------------------------
    p_mux : process(text_i)
    
    begin
    
        for I in 1 to text_length_i loop
            char <= text_i(I);
            code(I) <= code_char;
        end loop;        
          code_1 <= code_1_o;
          code_2_o <= code(2);
--          code_3_o <= code(3);
--          code_4_o <= code(4);
--          code_5_o <= code(5);
--          code_6_o <= code(6);
--          code_7_o <= code(7);
--          code_8_o <= code(8);
--          code_9_o <= code(9);
--          code_10_o <= code(10);
--          code_11_o <= code(11);
--          code_12_o <= code(12);
--          code_13_o <= code(13);
--          code_14_o <= code(14);
--          code_15_o <= code(15);
--          code_16_o <= code(16);
--          code_17_o <= code(17);
--          code_18_o <= code(18);
--          code_19_o <= code(19);
--          code_20_o <= code(20);
--          code_21_o <= code(21);
--          code_22_o <= code(22);
--          code_23_o <= code(23);
--          code_24_o <= code(24);
--          code_25_o <= code(25);
--          code_26_o <= code(26);
--          code_27_o <= code(27);
--          code_28_o <= code(28);
--          code_29_o <= code(29);
--          code_30_o <= code(30);
--          code_31_o <= code(31);
--          code_32_o <= code(32);
          
      end process p_mux;

    --------------------------------------------------------
    -- Instance (copy) of char_to_code entity
    char_to_code : entity work.char_to_code
        port map(
            char_i => char,
            code_o => code_char
        ); 
end Behavioral;
