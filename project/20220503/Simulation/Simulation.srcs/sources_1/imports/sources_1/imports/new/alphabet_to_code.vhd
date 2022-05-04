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
--        code_o : out array_std_logic(base_text_length_i downto 1)(5 downto 0)
--        code_o : out std_logic_vector (5 downto 0);
        data0_i : out  std_logic_vector(5 downto 0);
        data1_i : out  std_logic_vector(5 downto 0);
        data2_i : out  std_logic_vector(5 downto 0);
        data3_i : out  std_logic_vector(5 downto 0);
        data4_i : out  std_logic_vector(5 downto 0);
        data5_i : out  std_logic_vector(5 downto 0);
        data6_i : out  std_logic_vector(5 downto 0);
        data7_i : out  std_logic_vector(5 downto 0)
    );
end alphabet_to_code;

architecture Behavioral of alphabet_to_code is

signal char : character;
signal code_char : std_logic_vector(5 downto 0);
--signal code : array_std_logic(text_length_i downto 1)(5 downto 0);
type TEST_ARRAY is array (integer range <>) of std_logic_vector ; 
signal code : TEST_ARRAY(text_length_i downto 1) (5 downto 0);

begin   
    --------------------------------------------------------
    p_mux : process(text_i)
    
    begin
    
        for I in 0 to text_length_i loop
            char <= text_i(I);
            code_char <= code(I);
        end loop;
        
--        code_o(text_length_i downto 1) <= code;
        data0_i <= code(1);
        data1_i <= code(2);
        data2_i <= code(3);
        data3_i <= code(4);
        data4_i <= code(5);
        data5_i <= code(6);
        data6_i <= code(7);
        data7_i <= code(8);    
        
            
    end process p_mux;

    --------------------------------------------------------
    -- Instance (copy) of char_to_code entity
    char_to_code : entity work.char_to_code
        port map(
            char_i => char,
            code_o => code_char
        ); 
end Behavioral;
