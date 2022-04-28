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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package bus_multiplexer_pkg is
        type array_std_logic is array(natural range <>) of std_logic_vector;
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.bus_multiplexer_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



entity alphabet_to_code is
    generic(
        text_length_i : in integer := 63
    );
    Port (
        text_i : in string (text_length_i-1 downto 0);
        code_o : out array_std_logic(text_length_i-1 downto 0)(5 downto 0)
    );
end alphabet_to_code;

architecture Behavioral of alphabet_to_code is

signal char : character;
signal code_char : std_logic_vector(5 downto 0);
signal code : array_std_logic(text_length_i-1 downto 0)(5 downto 0); 

begin   
    --------------------------------------------------------
    p_mux : process(text_i)
    
    begin
    
        for I in 0 to text_length_i-1 loop
            char <= text_i(I);
            code_char <= code(I);
        end loop;
        
        code_o <= code;
        
    end process p_mux;

    --------------------------------------------------------
    -- Instance (copy) of alphabet_7seg entity performs a 7-segment
    -- display decoder
    alphabet2seg : entity work.char_to_code
        port map(
            char_i => char,
            code_o => code_char
        ); 
end Behavioral;
