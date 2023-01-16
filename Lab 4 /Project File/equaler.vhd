----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/02/2022 01:49:21 PM
-- Design Name: 
-- Module Name: equaler - Behavioral
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

entity equaler is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           f : out STD_LOGIC_Vector (3 downto 0));
end equaler;

architecture Behavioral of equaler is

Signal c: std_logic_vector(3 downto 0);

begin
c(0) <= a(0) xnor b(0);
c(1) <= a(1) xnor b(1);
c(2) <= a(2) xnor b(2);
c(3) <= a(3) xnor b(3);

f(0) <= c(0) and c(1) and c(2) and c(3);
f(1) <= c(0) and c(1) and c(2) and c(3);
f(2) <= c(0) and c(1) and c(2) and c(3);
f(3) <= c(0) and c(1) and c(2) and c(3);
end Behavioral;
