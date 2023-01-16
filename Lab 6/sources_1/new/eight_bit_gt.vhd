----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2022 07:53:59 PM
-- Design Name: 
-- Module Name: eight_bit_gt - Behavioral
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

entity eight_bit_gt is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           gt: out STD_LOGIC);
end eight_bit_gt;

architecture Behavioral of eight_bit_gt is

signal keep: std_logic_vector(2 downto 0);

signal hold: std_logic;


Component four_bit_eq is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           eq : out STD_LOGIC);
 end component;
 
Component four_bit_gt is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           gt : out STD_LOGIC);
 end component;
 
begin
U4: four_bit_gt Port Map(a(7 downto 4), b(7 downto 4), keep(0));
U5: four_bit_eq Port Map(a(7 downto 4), b(7 downto 4), keep(1));
U6: four_bit_gt Port Map(a(3 downto 0), b(3 downto 0), keep(2));

hold <= keep(1) and keep(2);
gt <= hold or keep(0);

end Behavioral;
