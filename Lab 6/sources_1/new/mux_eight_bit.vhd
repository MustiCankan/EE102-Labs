----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2022 10:42:47 PM
-- Design Name: 
-- Module Name: mux_eight_bit - Behavioral
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

entity mux_eight_bit is
    Port ( sel : in STD_LOGIC;
           x : in STD_LOGIC_VECTOR (7 downto 0);
           y : in STD_LOGIC_VECTOR (7 downto 0);
           f : out STD_LOGIC_VECTOR (0 downto 0));
end mux_eight_bit;

architecture Behavioral of mux_eight_bit is

begin
process(sel,x,y)
begin 
if sel = '0' then 
    f <= x;
elsif sel='1' then
    f <= y;
end if;
end process;

end Behavioral;
