----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/27/2022 03:20:37 PM
-- Design Name: 
-- Module Name: testbench - Behavioral
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

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is


    Component eight_bit_gcd is 
         Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           clk : in STD_LOGIC;
           go : out std_logic;
           s : out STD_LOGIC_VECTOR (7 downto 0));
     end component;
     
     
        
    
    signal clk, reset, enable,ready: std_logic;
    signal a, b,output: std_logic_vector(7 downto 0);
    
    type state_type is (hold, replace, subtract);
    signal register_state,next_state: state_type ;
    
begin
    uut: eight_bit_gcd Port Map(a => a, b=> b, reset => reset,enable=> enable,clk => clk, go => ready, s=> output);
    
    clk_process: process
    begin
    clk <= '0';
    wait for 10ns;
    clk  <= '1';
    wait for 10ns;
    end Process;
    
    
stim_proc: process
begin
 enable <= '1';
 a <= "10001100";
 b <= "00001100";
 reset <= '0';
 wait for 100ns;
 enable <= '0';
end process;

end Behavioral;
