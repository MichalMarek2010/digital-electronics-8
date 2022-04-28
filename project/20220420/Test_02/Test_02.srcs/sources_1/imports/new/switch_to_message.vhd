----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2022 09:11:44 AM
-- Design Name: 
-- Module Name: switch_to_message - Behavioral
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
        type array_string is array(natural range <>) of string;
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

entity switch_to_message is
    generic(
        default_length : natural := 63
    );
    port(
        clk     : in  std_logic;
        reset   : in  std_logic;
        sw_state_i : in  std_logic_vector (15 downto 0);
        text_o : out array_string;
        text_length : out Integer
    );
end switch_to_message;

architecture Behavioral of switch_to_message  is

begin

    p_switch_to_message : process(sw_state_i )
    
        constant Message1 : String:= "Zprava 1 ";
        constant Message2 : String:= "Tajna zprava 2 ";
        constant Message3 : String:= "Message 3 ";
        constant Message4 : String:= "Pozdrav 4 ";
        constant Message5 : String:= "Ahoj 5 ";
        constant Message6 : String := "Jak se mas 6 ";
        constant Message7 : String:= "Ja se mam dobre 7 ";
        
    begin
   
        case sw_state_i  is          
            
            when "0000000000000001" =>
                text_o(0) <= Message1;
                text_length <= Message1'length;
           
            when "0000000000000010" =>
                text_o(0) <= Message2;
                text_length <= Message2'length;
                
            when "0000000000000100" =>
                text_o(0) <= Message3;
                text_length <= Message3'length; 
                
            when "0000000000001000" =>
                text_o(0) <= Message4;
                text_length <= Message4'length;                 
                
            when "0000000000010000" =>
                text_o(0) <= Message5;
                text_length <= Message5'length;                 
                
            when "0000000000100000" =>
                text_o(0) <= Message6;
                text_length <= Message6'length;                 
                
            when "0000000001000000" =>
                text_o(0) <= Message7;
                text_length <= Message7'length;
                
            when others =>
                text_o(0)  <= "Neplatna volba";
                text_length <= 14;                                                     
                           
        end case;    
    end process p_switch_to_message;

end architecture Behavioral;
