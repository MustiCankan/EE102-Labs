----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2022 11:15:54 AM
-- Design Name: 
-- Module Name: fourBitSevenSegmentDisplay - Behavioral
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

entity fourBitSevenSegmentDisplay is
    Port ( 
           number : in std_logic_vector(15 downto 0);
           reset: in std_logic;
           anode_active : out STD_LOGIC_VECTOR (3 downto 0);
           clock_count: in std_logic;
           led_bit : out STD_LOGIC_VECTOR (6 downto 0)
           );
end fourBitSevenSegmentDisplay;

architecture Behavioral of fourBitSevenSegmentDisplay is

signal Led_Bcd : STD_LOGIC_VECTOR(3 downto 0);

Component sevensegment is 
    Port(
    x : in STD_LOGIC_VECTOR (3 downto 0);
    s : out STD_LOGIC_VECTOR (6 downto 0)
    );
    end Component;
    
-- creating 10.5ms refresh period
signal refresh_counter: STD_LOGIC_VECTOR (19 downto 0);


-- the other 2-bit for creating 4 LED-activating signals
-- count         0    ->  1  ->  2  ->  3
-- activates    LED1    LED2   LED3   LED4
-- and repeat
Signal sel : STD_LOGIC_VECTOR (1 downto 0); 
  
begin

--generate refresh period of 10.5 ms
process(clock_count, reset)
begin 
    if(reset = '1') Then
        refresh_counter <= (others => '0' );
     elsif(rising_edge(clock_count)) then 
        refresh_counter <= refresh_counter + 1;
      end if;
end process;
sel <= refresh_counter(19 downto 18);

process(sel)
begin
    case sel is
        when "00" => anode_active <= "1110";
        -- activate first bit 
        Led_Bcd <= number(15 downto 12);
        when "01" => anode_active <= "1101";
        -- activate seconde bit 
        Led_Bcd <= number(11 downto 8);
        when "10" => anode_active <= "1011";
        -- activate first bit 
        Led_Bcd <= number(7 downto 4);
        when "11" => anode_active <= "0111";
        -- activate first bit 
        Led_Bcd <= number(3 downto 0);
        when others => anode_active <= "1111";
    end case;         
 end process;

OneBitSevenSegment: sevensegment Port Map(Led_Bcd,led_bit);    

end Behavioral;
