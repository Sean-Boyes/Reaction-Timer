LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity PRegister16 IS
port(
Enable : in std_logic;
D : in std_logic_vector(15 downto 0);
clock : in std_logic;
Q : out std_logic_vector(15 downto 0)
);
end PRegister16;

architecture behavior of PRegister16 is
signal QTemp : std_logic_vector(15 downto 0);
begin
process(clock, enable)
begin
if rising_edge(clock) and enable = '1' then
Qtemp <= D;
elsif rising_edge(clock) and enable = '0' then
Qtemp <= QTemp;
end if;
Q <= QTemp;
end process;
end behavior;