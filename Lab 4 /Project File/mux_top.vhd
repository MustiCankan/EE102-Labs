----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/02/2022 04:12:05 PM
-- Design Name: 
-- Module Name: mux_top - Behavioral
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

entity mux_top is
    Port ( s0, s1, s2 : in STD_LOGIC;
           b0,b1,b2,b3 : in STD_LOGIC;
           a0, a1,a2,a3 : in STD_LOGIC;
           out1: out STD_LOGIC_vector(3 downto 0));
end mux_top;

architecture Behavioral of mux_top is

signal s : std_logic_vector(2 downto 0);
signal a : std_logic_vector(3 downto 0);
signal b : std_logic_vector(3 downto 0);



Signal out_adder : std_logic_vector(3 downto 0);
Signal out_subtracter: std_logic_vector(3 downto 0);
Signal out_shifter: std_logic_vector(3 downto 0);
Signal out_topcomprator : std_logic_vector(3 downto 0);
Signal out_equaler : std_logic_vector(3 downto 0);
Signal out_and_gate: std_logic_vector(3 downto 0);
Signal out_or_gate: std_logic_vector(3 downto 0);
Signal out_xor_gate: std_logic_vector(3 downto 0);

Component adder is 
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0));
End Component;

Component subtracter is 
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0)
           );
 End Component;

Component shifter is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           shift : in STD_LOGIC;
           res : out STD_LOGIC_VECTOR (3 downto 0));
End Component;

Component topcomprator is 
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           f : out STD_LOGIC_VECTOR (3 downto 0));
End Component;

Component equaler is
        Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           f : out STD_LOGIC_Vector (3 downto 0));
End Component;

Component and_gate is 
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           f : out STD_LOGIC_VECTOR (3 downto 0)
           );
End Component;

Component or_gate is 
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           f : out STD_LOGIC_VECTOR (3 downto 0)
           );
End Component;

Component xor_gate is
    Port ( x1 : in STD_LOGIC_VECTOR (3 downto 0);
           x2 : in STD_LOGIC_VECTOR (3 downto 0);
           f : out STD_LOGIC_VECTOR (3 downto 0));
End Component;

begin
a(3)<= a3;
a(2)<= a2;
a(1)<= a1; 
a(0)<= a0;
 
b(3)<= b3;
b(2)<= b2;
b(1)<= b1; 
b(0)<= b0;



s(2)<= s2;
s(1)<= s1; 
s(0)<= s0;
 
M1: adder Port Map(a, b, out_adder);
M2: subtracter Port Map(a,b, out_subtracter);
M3: shifter Port Map(a, '1', out_shifter);
M4: topcomprator Port Map(a, b, out_topcomprator);
M5: equaler Port Map(a,b,out_equaler);
M6: and_gate Port Map(a,b,out_and_gate);
M7: or_gate Port Map(a,b,out_or_gate);
M8: xor_gate Port Map(a,b,out_xor_gate);

Process(s, out_adder, out_subtracter, out_shifter, out_topcomprator, out_equaler, out_and_gate, out_or_gate, out_xor_gate)
begin 

If s(2) = '0' Then
    If s(1) = '0' Then 
        If s(0) = '0' Then 
            out1 <= out_adder;
        Else
            out1 <= out_subtracter;
        End If;
    Elsif s(1) = '1' Then
        If s(0) = '0' Then 
            out1 <= out_shifter;
        Else
            out1 <= out_topcomprator;
        End If;
     End If;
Elsif s(2) = '1' Then
    If s(1) = '0' Then 
        If s(0) = '0' Then 
            out1 <= out_equaler ;
        Else
            out1 <= out_and_gate ;
        End If;
    Elsif s(1) = '1' Then
        If s(0) = '0' Then 
            out1 <= out_or_gate;
        Else
            out1 <= out_xor_gate;
        End If;
     End If;
End If;
end Process;


end Behavioral;
