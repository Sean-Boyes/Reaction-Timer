library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity player1Start is
port (
clock : in std_logic;
button0 : in std_logic;
reset : in std_logic;
state : in std_logic_vector(2 downto 0);
result1 : out unsigned(6 downto 0);
result2 : out unsigned(6 downto 0);
HEX0, HEX1 : out std_logic_vector(6 downto 0)
);
end PLayer1Start;

architecture behavior of player1start is
	signal BCDOUT : std_logic_vector(7 downto 0);
	component BCDCount2 is
	Port(
			enable : in std_logic;
			clk : in STD_LOGIC;
			rst : in STD_LOGIC;
			BCD_ones : out STD_LOGIC_VECTOR(3 downto 0);
			BCD_tens : out STD_LOGIC_VECTOR(3 downto 0)
	);
end component;

component BCDNum is
port(
	BCD : in std_logic_vector(7 downto 0);
	Num : out integer
);
end component;

component segdecoder is
Port ( D : in std_logic_vector( 3 downto 0 );
	Y : out std_logic_vector( 6 downto 0 ) );
END component;

signal BToggle : std_logic:='0';
signal HexOut0 : std_logic_vector(6 downto 0);
signal HexOut1 : std_logic_vector(6 downto 0);
signal numOUT : integer;
begin
	BToggle <= (not(button0) xor Btoggle) and ((not state(2) and not state(1) and state(0)) or ( state(2) and not state(1) and not state(0)) or ( not state(2) and state(1) and not state(0)) or ( state(2) and not state(1) and state(0)));
	instance1 : BCDCOunt2 port map (Btoggle, clock, reset, BCDOUT(3 downto 0), BCDOUT(7 downto 4));
	instance2 : segdecoder port map (BCDOUT(3 downto 0), Hexout0);
	instance3 : segdecoder port map (BCDOUT(7 downto 4), Hexout1);
	instance4 : BCDNum port map (BCDOUT, NumOut);

process(state)
begin
if state = "010" or state = "011" or state = "100" or state = "101" or state = "110" then
HEX0 <= HexOUT0;
HEx1 <= HEXOUT1;
	if state = "011" then
		result1 <= to_unsigned(numOut, 7);
	end if;
	if state = "110" then
		result2 <= to_unsigned(numOut, 7);
	end if;
end if;
end process;
end behavior;