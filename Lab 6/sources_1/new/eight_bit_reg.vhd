----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2022 12:17:47 PM
-- Design Name: 
-- Module Name: eight_bit_reg - Behavioral
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

entity eight_bit_reg is
    Port ( clk : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR(7 downto 0);
           Q : out STD_LOGIC_VECTOR(7 downto 0));
end eight_bit_reg;

architecture Behavioral of eight_bit_reg is

begin
process(D,clk)
begin 
    if rising_edge(clk) then 
        Q <= D;
     end if;
end Process;

end Behavioral;
