----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2022 01:03:27 AM
-- Design Name: 
-- Module Name: eight_bit_register - Behavioral
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

entity eight_bit_register is
    Port ( clk : in STD_LOGIC;
           a : in STD_LOGIC_VECTOR (7 downto 0);
           Q : out STD_LOGIC_VECTOR (7 downto 0));
end eight_bit_register;

architecture Behavioral of eight_bit_register is

begin


process (clk) begin
 if rising_edge(clk) then
 Q <= a;
 end if;
end process; 


end Behavioral;
