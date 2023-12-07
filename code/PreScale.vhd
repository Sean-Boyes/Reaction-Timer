LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity PreScale IS
port(
clkI : in std_logic;
signal clkO : out std_logic
);
END PreSCalE;

Architecture behavior of PreScale IS
signal f_temp : unsigned(23 downto 0):= (others =>'0');

Begin
process(clkI)
Begin
iF clkI'event AND clkI = '1' Then
f_temp <= f_temp + 1;
clkO <= std_logic(f_temp(23));
End if;
end process;
end behavior;