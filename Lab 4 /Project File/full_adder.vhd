----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2022 10:31:03 PM
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cin1 : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

Signal s0, c0, c1 : std_logic;

Component half_adder is 
    PORT(
        x, y: in std_logic;
        s, c: out std_logic
    );
 End Component;
begin
U1: half_adder PORT MAP (x,y,s0,c0);
U2: half_adder PORT MAP (s0,cin, s, c1);
cin1 <= c0 or c1;

end Behavioral;
