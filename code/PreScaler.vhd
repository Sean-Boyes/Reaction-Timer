LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity PreScaler IS
port(
setSpeed : in std_logic_vector(2 downto 0);
clkI : in std_logic;
signal clkO : out std_logic
);
END PreSCalEr;

Architecture behavior of PreScaler IS
component encoder32 is
port(
eIn : in std_logic_vector(2 downto 0);
eout : out unsigned(1 downto 0)
);
end component;
signal fTemp : unsigned(2499999 downto 0):= (others =>'0');
signal nTemp : unsigned(4999999 downto 0):= (others =>'0');
signal sTemp : unsigned(9999999 downto 0):= (others =>'0');
signal speed : unsigned(1 downto 0):= (others =>'0');
Begin
instance1 : encoder32 port map (setSpeed, speed);
process(clkI, speed)
Begin
iF rising_edge(clkI) and speed = 1 Then
stemp <= stemp + 1;
clkO <= std_logic(stemp(9999999));
End if;
iF rising_edge(clkI) and speed = 2 Then
ntemp <= ntemp + 1;
clkO <= std_logic(stemp(4999999));
End if;
iF rising_edge(clkI) and speed = 3 Then
ftemp <= ftemp + 1;
clkO <= std_logic(stemp(2499999));
End if;
end process;
end behavior;