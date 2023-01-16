----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/02/2022 02:57:24 PM
-- Design Name: 
-- Module Name: topcomprator - Behavioral
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

entity topcomprator is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           f : out STD_LOGIC_VECTOR (3 downto 0));
end topcomprator;

architecture Behavioral of topcomprator is

Signal s0, s1, s2 : std_logic;

Component comprator is 
    Port(
        a, b : in std_logic_vector(1 downto 0);
        f: out std_logic
    );
    End Component;
  
Component same is 
    Port(
        a, b : in std_logic_vector(1 downto 0);
        s: out std_logic
    );
    End Component;

begin

U12: comprator Port Map(a(1 downto 0), b(1 downto 0), s0);
U13: same Port Map(a(3 downto 2), b(3 downto 2), s1);
U14: comprator Port Map (a(3 downto 2), b(3 downto 2), s2);
f(0) <= (s0 and s1) or s2;
f(1) <= (s0 and s1) or s2;
f(2) <= (s0 and s1) or s2;
f(3) <= (s0 and s1) or s2;
end Behavioral;
