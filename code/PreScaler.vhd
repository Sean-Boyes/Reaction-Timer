LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity PreScaler IS
port(
setSpeed : in std_logic_vector(2 downto 0) := "000";
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
signal clkOTemp : std_logic;
Begin
instance1 : encoder32 port map (setSpeed, speed);
process(clkI, speed, stemp, ntemp, ftemp)
Begin
if rising_edge(clkI) then
	
	
	
	iF speed = 1  then
		stemp <= stemp + 1;
			if stemp = "100110001001011010000000" Then

				stemp<=(others=>'0');

				
			end if;
		clkO <= stemp(23);
	end if;

	iF speed = 2  then
		ntemp <= ntemp + 1;
			if ntemp = "010011000100101101000000" Then

				ntemp<=(others=>'0');

				
			end if;
		clkO <= ntemp(22);

	end if;

	iF speed = 3 then
		ftemp <= ftemp + 1;
			if ftemp = "001001100010010110100000" Then

				ftemp<=(others=>'0');

				
			end if;
		clkO <= ftemp(21);

	End If;
end if;



end process;
end behavior;