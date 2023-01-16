----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2022 09:54:23 PM
-- Design Name: 
-- Module Name: eight_bit_gcd - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



entity eight_bit_gcd is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           clk : in STD_LOGIC;
           go : out std_logic;
           s : out STD_LOGIC_VECTOR (7 downto 0));
end eight_bit_gcd;

architecture Behavioral of eight_bit_gcd is

type state_type is (idle, change, subtract);
signal register_state, state_next: state_type;

signal a_reg, a_next, b_reg, b_next: unsigned(7 downto 0);



signal  subs_out: std_logic_vector(7 downto 0);
signal carry_aeqb: std_logic;
signal carry_agtb: std_logic;
signal carry_bgta: std_logic;

Component eight_bit_subtractor is
           Port ( a : in std_logic_vector (7 downto 0);
           b : in std_logic_vector (7 downto 0);
           s : out STD_LOGIC_VECTOR (7 downto 0));
end component;

Component comprator is 
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           aeqb : out STD_LOGIC;
           agtb : out STD_LOGIC;
           bgta : out STD_LOGIC);
end component;

begin

SUB1: eight_bit_subtractor Port Map(a=>std_logic_vector(a_reg),b=>std_logic_vector(b_reg),s=>subs_out);
COMPARER: comprator Port Map(a=> std_logic_vector(a_reg), b=> std_logic_vector(b_reg), aeqb=>carry_aeqb,agtb=>carry_agtb,bgta=>carry_bgta);


process(clk,reset)
   begin
      if reset='1' then
         register_state <= idle;
         a_reg <= "00000000";
         b_reg <= "00000000";
      elsif rising_edge(clk) then
         register_state <= state_next;
         a_reg <= a_next;
         b_reg <= b_next;
      end if;
 end process;
 
-- next-state logic & data path functional units/routing

process(register_state,a_reg,b_reg,enable,a,b, carry_aeqb,carry_bgta,carry_agtb,subs_out)
    begin 
    a_next <= a_reg;
    b_next <= b_reg;
    
    case register_state is 
        when idle =>
            if enable = '1' then 
                a_next <= unsigned(a);
                b_next <= unsigned(b);
                state_next <= change;
            else
                state_next <= idle;
            end if;
            
         when change => 
            if carry_aeqb = '1' then 
                state_next <= idle;
            else
                if carry_bgta = '1' then 
                  a_next <= b_reg;
                  b_next <= a_reg; 
                end if;
                 state_next <= subtract;
            end if;     
            when subtract =>
            a_next <= unsigned(subs_out);
            state_next <= change;
         end case;
   end process;
   -- output
   go <= '1' when register_state=idle else '0';
   s <= std_logic_vector(a_reg); 
            
          
                
end Behavioral;
