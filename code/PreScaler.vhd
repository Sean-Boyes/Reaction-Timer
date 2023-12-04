LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity PreScaler IS
port(
setSpeed : in std_logic_vector(2 downto 0);
clkI : in std_logic;
clkO : out std_logic
);
END PreSCalEr;

Architecture behavior of PreScaler IS
component encoder32 is
port(
eIn : in std_logic_vector(2 downto 0);
eout : out unsigned(1 downto 0)
);
end component;
signal fTemp : unsigned(23 downto 0):= (others =>'0');
signal nTemp : unsigned(23 downto 0):= (others =>'0');
signal sTemp : unsigned(23 downto 0):= (others =>'0');
signal speed : unsigned(1 downto 0):= (others =>'0');
Begin
instance1 : encoder32 port map (setSpeed, speed);
process(clkI, speed)
Begin
iF rising_edge(clkI) and ntemp = "100110001001011010000000" AND speed = 1 Then
stemp<=(others=>'0');
clkO <= std_logic(stemp(23));
elsif rising_edge(clkI) and speed = 1 Then
stemp <= stemp + 1;
clkO <= std_logic(stemp(23));
End if;

iF rising_edge(clkI) and ntemp = "010011000100101101000000" AND speed = 2 Then
stemp<=(others=>'0');
clkO <= std_logic(stemp(23));
elsif rising_edge(clkI) and speed = 1 Then
stemp <= stemp + 1;
clkO <= std_logic(stemp(23));
End if;

iF rising_edge(clkI) and ntemp = "001001100010010110100000" AND speed = 3 Then
stemp<=(others=>'0');
clkO <= std_logic(stemp(23));
elsif rising_edge(clkI) and speed = 1 Then
stemp <= stemp + 1;
clkO <= std_logic(stemp(23));
End if;
end process;
end behavior;