----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2022 06:59:59 PM
-- Design Name: 
-- Module Name: comprator - Behavioral
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

entity comprator is
    Port ( a : in std_logic_vector (7 downto 0);
           b : in std_logic_vector  (7 downto 0);
           aeqb : out STD_LOGIC;
           agtb : out STD_LOGIC;
           bgta : out STD_LOGIC);
end comprator;

architecture Behavioral of comprator is

Component eight_bit_equaler is
   Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           eq : out STD_LOGIC);
end component;

Component eight_bit_gt is
   Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           gt : out STD_LOGIC);
end component;

begin 

U7: eight_bit_equaler Port Map(a => std_logic_vector(a), b=> std_logic_vector(b),eq=> aeqb);
U8: eight_bit_gt Port Map(a=>std_logic_vector(a), b=>std_logic_vector(b),gt=>agtb);
U9: eight_bit_gt Port Map(a=>std_logic_vector(b), b=>std_logic_vector(a),gt=>bgta);

end Behavioral;
