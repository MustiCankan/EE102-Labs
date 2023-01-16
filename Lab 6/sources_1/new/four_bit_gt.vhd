----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2022 07:32:33 PM
-- Design Name: 
-- Module Name: four_bit_gt - Behavioral
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

entity four_bit_gt is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           gt : out STD_LOGIC);
end four_bit_gt;

architecture Behavioral of four_bit_gt is

signal hold : std_logic_vector(2 downto 0);

signal keeper: std_logic;


Component two_bit_eq is 
Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           b : in STD_LOGIC_VECTOR (1 downto 0);
           eq : out STD_LOGIC);
end component;

Component two_bit_gt is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           b : in STD_LOGIC_VECTOR (1 downto 0);
           gt : out STD_LOGIC);
end component;

begin

U1: two_bit_gt Port Map (a(3 downto 2),b(3 downto 2),hold(0));
U2: two_bit_eq Port Map (a(3 downto 2),b(3 downto 2),hold(1));
U3: two_bit_gt Port Map (a(1 downto 0),b(1 downto 0),hold(2));

keeper <= hold(1) and hold(2);

gt <= hold(0) or keeper;

end Behavioral;
