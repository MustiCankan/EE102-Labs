----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2022 07:10:16 PM
-- Design Name: 
-- Module Name: eight_bit_equaler - Behavioral
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

entity eight_bit_equaler is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           eq : out STD_LOGIC);
end eight_bit_equaler;

architecture Behavioral of eight_bit_equaler is

signal hold: std_logic_vector(7 downto 0);

begin

hold(7) <= a(7) xnor b(7);
hold(6) <= a(6) xnor b(6);
hold(5) <= a(5) xnor b(5);
hold(4) <= a(4) xnor b(4);
hold(3) <= a(3) xnor b(3);
hold(2) <= a(2) xnor b(2);
hold(1) <= a(1) xnor b(1);
hold(0) <= a(0) xnor b(0);

eq <= hold(7) and hold(6) and hold(5) and hold(4) and hold(3) and hold(2) and hold(1) and hold(0);

end Behavioral;
