----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2022 11:31:21 AM
-- Design Name: 
-- Module Name: fourbitcounter - Behavioral
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
use IEEE.std_logic_unsigned.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fourbitcounter is
    Port ( clock_100 : in STD_LOGIC;
           reset : in STD_LOGIC;
           anode_activated : out STD_LOGIC_VECTOR (3 downto 0);
           led_out_final : out STD_LOGIC_VECTOR (6 downto 0));
end fourbitcounter;

architecture Behavioral of fourbitcounter is
-- counter for generating 1-second clock enable
signal second_number_out : std_logic_vector(27 downto 0);


-- one second enable for counting numbers
signal s_enable : std_logic;

-- counting number 
signal count_number: std_logic_vector(15 downto 0);


signal Led_activating_counter: std_logic_vector(1 downto 0);

Component fourBitSevenSegmentDisplay is 
    Port ( 
           number : in std_logic_vector(15 downto 0);
           reset: in std_logic;
           anode_active : out STD_LOGIC_VECTOR (3 downto 0);
           clock_count: in std_logic;
           led_bit : out STD_LOGIC_VECTOR (6 downto 0)
           );
 end Component;

begin
Display: fourBitSevenSegmentDisplay 
    Port Map(
        number => count_number, 
        reset => reset, 
        anode_active => anode_activated, 
        clock_count => clock_100, 
        led_bit => led_out_final);

--Counting Process 
process(clock_100, reset)
begin 
    if(reset='1') Then 
        second_number_out <= (others => '0');
    elsif(rising_edge(clock_100)) Then
        if(second_number_out>=x"5F5E0FF") then
                second_number_out <= (others => '0');
            else
                second_number_out<= second_number_out + "0000001";
            end if;
         end if;
end Process; 
s_enable <= '1' when second_number_out=x"5F5E0FF" else '0';

process(clock_100, reset)
begin 
    if(reset='1') Then 
        count_number <= (others => '0');
    elsif(rising_edge(clock_100)) Then
        if(s_enable = '1') then
                count_number <= count_number + x"0001";
         end if;
    end if;
end process;
end Behavioral;
