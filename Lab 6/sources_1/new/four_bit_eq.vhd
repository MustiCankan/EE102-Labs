----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2022 07:51:31 PM
-- Design Name: 
-- Module Name: four_bit_eq - Behavioral
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

entity four_bit_eq is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           eq : out STD_LOGIC);
end four_bit_eq;



architecture Behavioral of four_bit_eq is

signal hold: std_logic_vector(3 downto 0);

begin

hold(3) <= a(3) xnor b(3);
hold(2) <= a(2) xnor b(2);
hold(1) <= a(1) xnor b(1);
hold(0) <= a(0) xnor b(0);

eq <= hold(3) and hold(2) and hold(1) and hold(0);

end Behavioral;
