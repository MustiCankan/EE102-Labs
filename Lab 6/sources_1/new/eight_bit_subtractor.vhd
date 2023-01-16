----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2022 08:24:12 PM
-- Design Name: 
-- Module Name: eight_bit_subtractor - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eight_bit_subtractor is
    Port ( a : in std_logic_vector (7 downto 0);
           b : in std_logic_vector (7 downto 0);
           s : out STD_LOGIC_VECTOR (7 downto 0));
end eight_bit_subtractor;

architecture Behavioral of eight_bit_subtractor is

signal c: std_logic_vector(8 downto 0);
signal h: std_logic_vector(7 downto 0);


Component full_adder is 
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;

begin

c(0) <= '1';
h <= not b;

S0: full_adder Port Map(x=> a(0), y=> h(0), cin => c(0),s=> s(0),cout => c(1));
S1: full_adder Port Map(x=> a(1), y=>h(1), cin => c(1),s=> s(1),cout => c(2));
S2: full_adder Port Map(x=> a(2), y=> h(2), cin => c(2),s=> s(2),cout => c(3));
S3: full_adder Port Map(x=> a(3), y=>h(3), cin => c(3),s=> s(3),cout => c(4));
S4: full_adder Port Map(x=> a(4), y=> h(4), cin => c(4),s=> s(4),cout => c(5));
S5: full_adder Port Map(x=> a(5), y=>h(5), cin => c(5),s=> s(5),cout => c(6));
S6: full_adder Port Map(x=> a(6), y=> h(6), cin => c(6),s=> s(6),cout => c(7));
S7: full_adder Port Map(x=> a(7), y=>h(7), cin => c(7),s=> s(7),cout => c(8));

end Behavioral;
