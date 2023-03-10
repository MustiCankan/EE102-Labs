----------------------------------------------------------------------------------
-- Company: Rift App Dev 
-- Engineer: Mustafa Cankan BALCI
-- 
-- Create Date: 11/18/2022 09:47:37 PM
-- Design Name: 4-bit seven sege
-- Module Name: sevensegment - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevensegment is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (6 downto 0));
end sevensegment;

architecture Behavioral of sevensegment is

begin
process(x) 
begin 
    case x is 
        when "0000" => s <= "0000001";
        when "0001" => s <= "1001111";
        when "0010" => s <= "0010010";
        when "0011" => s <= "0000110";
        when "0100" => s <= "1001100";
        when "0101" => s <= "0100100";
        when "0110" => s <= "0100000";
        when "0111" => s <= "0001111";
        when "1000" => s <= "0000000";
        when "1001" => s <= "0000100";
        when "1010" => s <= "0000010";
        when "1011" => s <= "1100000";
        when "1100" => s <= "0110001";
        when "1101" => s <= "1000010";
        when "1110" => s <= "0110000";
        when others => s <= "0111000";
     end case;
 end process;
 
end Behavioral;
