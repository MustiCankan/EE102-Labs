----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/02/2022 10:41:25 AM
-- Design Name: 
-- Module Name: adder - Behavioral
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

entity adder is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0));
end adder;

architecture Behavioral of adder is

Signal c1, c2, c3, c4: std_logic;

Component full_adder is 
    Port (
        x, y, cin : IN std_logic;
        s, cin1: out std_logic
    );
    End Component;
begin

U4: full_adder Port Map(a(0), b(0), '0', s(0), c1);
U5: full_adder Port Map(a(1), b(1), c1, s(1), c2);
U6: full_adder Port Map(a(2), b(2), c2, s(2), c3);
U7: full_adder Port Map(a(3), b(3), c3 , s(3), c4);

end Behavioral;
