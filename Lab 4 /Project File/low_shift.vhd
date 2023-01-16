----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/02/2022 03:51:41 PM
-- Design Name: 
-- Module Name: low_shift - Behavioral
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

entity low_shift is
    Port ( x2 : in STD_LOGIC;
           shift : in STD_LOGIC;
           x1 : in STD_LOGIC;
           fs : out STD_LOGIC);
end low_shift;

architecture Behavioral of low_shift is
Signal s0 , s1 : std_logic;

begin
s0 <= (not shift) and x2;
s1 <= shift and x1;
fs <= s0 or s1;

end Behavioral;
