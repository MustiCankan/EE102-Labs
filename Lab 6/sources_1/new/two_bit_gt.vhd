----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2022 07:15:32 PM
-- Design Name: 
-- Module Name: two_bit_gt - Behavioral
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

entity two_bit_gt is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           b : in STD_LOGIC_VECTOR (1 downto 0);
           gt : out STD_LOGIC);
end two_bit_gt;

architecture Behavioral of two_bit_gt is
signal holder: std_logic_vector(1 downto 0);
begin
holder(1) <= a(1) and (not b(1));
holder(0) <= (a(1) xnor b(1)) and (a(0) and (not b(0)));
gt <= holder(1) or holder(0);

end Behavioral;
