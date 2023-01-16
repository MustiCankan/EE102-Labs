----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/02/2022 01:28:32 PM
-- Design Name: 
-- Module Name: subtracter - Behavioral
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

entity subtracter is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0)
          );
end subtracter;

architecture Behavioral of subtracter is

Signal c0,c1, c2, c3, c4: std_logic;
Signal h : std_logic_vector(3 downto 0);
 
Component full_adder is 
    Port (
        x, y, cin : IN std_logic;
        s, cin1: out std_logic
    );
    End Component;

begin

c0 <= '1';
h <= not b;

U8: full_adder Port Map(a(0), h(0), c0, s(0), c1);
U9: full_adder Port Map(a(1), h(1), c1, s(1), c2);
U10: full_adder Port Map(a(2), h(2), c2, s(2), c3);
U11: full_adder Port Map(a(3), h(3), c3 , s(3), c4);

end Behavioral;
