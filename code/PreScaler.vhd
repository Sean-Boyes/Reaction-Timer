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
process(clkI, speed, stemp, ntemp, ftemp)
Begin
iF speed = 1  then
		ntemp<=(others=>'0');
		ftemp<=(others=>'0');
	if rising_edge(clkI) and stemp = "100110001001011010000000" Then
		stemp<=(others=>'0');
	end if;
	if rising_edge(clkI) Then
		stemp <= stemp + 1;
	End if;

elsiF speed = 2  then
		stemp<=(others=>'0');
		ftemp<=(others=>'0');
	if rising_edge(clkI) and ntemp = "010011000100101101000000" Then
		ntemp<=(others=>'0');
	end if;
	if rising_edge(clkI) Then
		
		ntemp <= ntemp + 1;
	End if;

elsiF speed = 1 then
		stemp<=(others=>'0');
		ntemp<=(others=>'0');
	if rising_edge(clkI) and ftemp = "001001100010010110100000" Then
		ftemp<=(others=>'0');
	end if;
	if rising_edge(clkI) Then
		
		ftemp <= ftemp + 1;
	End if;
End If;

if speed = 1 then
	clkO <= std_logic(stemp(23));
elsif speed = 2 then 
	clkO <= std_logic(ntemp(23));
elsif speed = 3 then
	clkO <= std_logic(ftemp(23));
End If;

end process;
end behavior;