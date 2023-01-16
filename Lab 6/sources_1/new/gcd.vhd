----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2022 08:48:28 PM
-- Design Name: 
-- Module Name: gcd - Behavioral
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

entity gcd is
    Port ( clk : in STD_LOGIC;
           a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           reset : in STD_LOGIC;
           enable : in std_logic;
           final_gcd : out STD_LOGIC_VECTOR (7 downto 0));
end gcd;

architecture Behavioral of gcd is

signal carry:std_logic_vector(7 downto 0);

Component comprator is 
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           aeqb : out STD_LOGIC;
           agtb : out STD_LOGIC;
           bgta : out STD_LOGIC);
end component;
 
 
Component eight_bit_subractor is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           s : out STD_LOGIC_VECTOR (7 downto 0));
end component;


begin

SUB1: eight_bit_subtractor Port Map(a,b,carry);


process(clk,reset,enable)


end Behavioral;
