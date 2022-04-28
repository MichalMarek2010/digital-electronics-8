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
            default_length : in integer := 63 
        );
        Port(
            clk     : in  std_logic;
            reset   : in  std_logic; 
            sw_state_i : in std_logic_vector; 
            text_o : out string;
            text_length : out integer
        );
end switch_to_message;

architecture Behavioral of switch_to_message  is

subtype t_INST_TYPE is std_logic_vector(15 downto 0);
begin

    p_switch_to_message : process(sw_state_i )
    
        constant Message1 : String:= "Zprava 1 ";
        constant Message2 : String:= "Tajna zprava 2 ";
        constant Message3 : String:= "Message 3 ";
        constant Message4 : String:= "Pozdrav 4 ";
        constant Message5 : String:= "Ahoj 5 ";
        constant Message6 : String := "Jak se mas 6 ";
        constant Message7 : String:= "Ja se mam dobre 7 ";
        
--        function to_string(Instr:  t_INST_TYPE) return String is
--            begin
--                case Instr is 
--                    when "0000000000000001" =>  return(Message1);
--                    when "0000000000000010" =>  return(Message2);
--                    when "0000000000000100" =>  return(Message3);
--                    when "0000000000001000" =>  return(Message4);
--                    when "0000000000010000" =>  return(Message5);
--                    when "0000000000100000" =>  return(Message6);
--                    when "0000000001000000" =>  return(Message7);
--                    when others => return("Neplatna volba");
--                end case;
--            end function to_string;

    begin
   
   
        case sw_state_i  is          
            
            when "0000000000000001" =>
                text_o(Message1'length-1 downto 0) <= Message1;
--                text_o <= to_string(sw_state_i);
--                text_o <= "" & Message1;
                text_length <= Message1'length;
           
            when "0000000000000010" =>
                text_o(Message2'length-1 downto 0) <= Message2;
--                text_o <= Message2;
                text_length <= Message2'length;
                
--            when "0000000000000100" =>
--                text_o <= to_string(sw_state_i);   
----                text_o <= Message3;
--                text_length <= Message3'length; 
                
--            when "0000000000001000" =>
--                text_o <= to_string(sw_state_i);
----                text_o <= Message4;
--                text_length <= Message4'length;                 
                
--            when "0000000000010000" =>
--                text_o <= to_string(sw_state_i);
----                text_o <= Message5;
--                text_length <= Message5'length;                 
                
--            when "0000000000100000" =>         
--                text_o <= to_string(sw_state_i);
----                text_o <= Message6;
--                text_length <= Message6'length;                 
                
--            when "0000000001000000" =>
--                text_o <= to_string(sw_state_i);
----                text_o <= Message7;
--                text_length <= Message7'length;
                
            when others =>
                text_o(13 downto 0) <= "Neplatna volba";
                text_length <= 14;                                                     
                           
        end case;    
    end process p_switch_to_message;

end architecture Behavioral;
