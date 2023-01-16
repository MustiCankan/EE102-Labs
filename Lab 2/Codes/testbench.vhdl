library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testBench is -- Port();
end testBench;


architecture Behavioral of testBench is
-- Component Declaration for Unit Under Test 
COMPONENT test1 PORT(
    x1 : IN STD_LOGIC; 
    x2 : IN STD_LOGIC; 
    x3 : IN STD_LOGIC; 
    x4 : IN STD_LOGIC; 
    s1 : IN STD_LOGIC;
    s2 : IN STD_LOGIC;
    f : OUT STD_LOGIC); 
    END COMPONENT;
-- Inputs
SIGNAL s1: STD_LOGIC SIGNAL s2: STD_LOGIC SIGNAL x1: STD_LOGIC SIGNAL x2: STD_LOGIC SIGNAL x3: STD_LOGIC SIGNAL x4: STD_LOGIC
-- Outputs
SIGNAL f: STD_LOGIC;
:= '0'; := '0'; := '0'; := '0'; := '0'; := '0';
-- Constant Times of Inputs constant x1_period : time := 150ns; constant x2_period : time := 100ns; constant x3_period : time := 150ns; constant x4_period : time := 100ns; constant s1_period : time := 200ns; constant s2_period : time := 300ns; begin
-- Instantiate the Unit Under Test uut: test1 PORT MAP(
x1 => x1, x2 => x2, x3 => x3, x4 => x4, s1 => s1, s2 => s2, f => f );
s1_process: process begin
s1 <= '0';
wait for s1_period/2; s1 <= '1';
wait for s1_period/2;
end process;
s2_process : process begin
s2 <= '0';

wait for s2_period/2; s2 <= '1';
wait for s2_period/2;
end process;
x1_process : process begin
x1 <= '0';
wait for x1_period/2; x1 <= '1';
wait for x1_period/2;
end process;
x2_process : process begin
x2 <= '0';
wait for x2_period/2; x2 <= '1';
wait for x2_period/2;
end process;
x3_process : process begin
x3 <= '0';
wait for x3_period/2; x3 <= '1';
wait for x3_period/2;
end process;
x4_process: process begin
x4 <= '0';
wait for x4_period/2; x4 <= '1';
wait for x4_period/2;
end process;
-- Stimulus process stim_proc: process begin
-- hold reset state for 100 ms wait for 100 ms;
wait for s1_period*10;
-- insert stimulus here

wait;
end process; END;