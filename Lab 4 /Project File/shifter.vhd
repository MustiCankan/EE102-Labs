----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/02/2022 03:54:25 PM
-- Design Name: 
-- Module Name: shifter - Behavioral
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

entity shifter is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           shift : in STD_LOGIC;
           res : out STD_LOGIC_VECTOR (3 downto 0));
end shifter;

architecture Behavioral of shifter is

Component low_shift is 
Port(
    x2 : in STD_LOGIC;
    shift : in STD_LOGIC;
    x1 : in STD_LOGIC;
    fs : out STD_LOGIC
    );
End Component;

begin

U15: low_shift Port Map(a(3), shift, a(2), res(3));
U16: low_shift Port Map(a(2), shift, a(1), res(2));
U17: low_shift Port Map(a(1), shift, a(0), res(1));
U18: low_shift Port Map(a(0), shift, a(3), res(0));
end Behavioral;
