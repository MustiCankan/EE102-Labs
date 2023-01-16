----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2022 12:35:52 PM
-- Design Name: 
-- Module Name: counter_testbench - Behavioral
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

entity counter_testbench is
--  Port ( );
end counter_testbench;

architecture Behavioral of counter_testbench is

Component fourbitcounter is 
    Port ( clock_100 : in STD_LOGIC;
           reset : in STD_LOGIC;
           anode_activated : out STD_LOGIC_VECTOR (3 downto 0);
           led_out_final : out STD_LOGIC_VECTOR (6 downto 0));
end Component;

-- Inputs
Signal clock_100: std_logic := '0' ;
Signal reset: std_logic := '0';


-- Outputs
Signal anode_activated: std_logic_vector(3 downto 0);
Signal led_out: std_logic_vector(6 downto 0);

begin

uut: fourbitcounter Port Map(
    clock_100 => clock_100,
    reset => reset,
    anode_activated => anode_activated,
    led_out_final => led_out
);

clk_process: process
begin 
    clock_100 <= '0';
        wait for 10ns;
    clock_100 <= '1';
        wait for 10ns;
end Process;


stim_proc: process
begin 
    reset <= '1';
        wait for 20ns;
    reset <= '0';
        wait;
end Process;



end Behavioral;
