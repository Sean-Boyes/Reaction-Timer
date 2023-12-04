library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity initialize is
port (
clock : in std_logic;
button : in std_logic;
state : in std_logic_vector(2 downto 0);
Target : out unsigned(6 downto 0);
HEX4, HEX5 : out std_logic_vector(6 downto 0)
);
end initialize;

architecture behavior of initialize is
signal LFSROut : std_logic_vector(7 downto 0);
signal HEXTemp4 : std_logic_vector(6 downto 0);
signal HEXTemp5 : std_logic_vector(6 downto 0);
signal NumOut : integer;

component segdecoder is
Port ( D : in std_logic_vector( 3 downto 0 );
	Y : out std_logic_vector( 6 downto 0 ) );
END component;

component LFSR is
PORT( enable, CLK: in std_logic;
			LFSR_Reg: Out std_logic_vector(7 downto 0)
			);
end component;

component BCDNum is
port(
	BCD : in std_logic_vector(7 downto 0);
	Num : out integer
);
end component;

begin
instance1 : LFSR port map ('1', clock, LFSROUT);
instance2 : segdecoder port map (LFSROUT(3 downto 0), HEXTemp4);
instance3 : segdecoder port map (LFSROUT(7 downto 4), HEXTemp5);
instance4 : bcdNum port map (LFSROUT, NUMOUT);

target <= to_unsigned(NumOut, 7);

process(state)
begin
if state = "001" then
	if button = '0' then
		Hex4 <= HexTemp4;
		Hex5 <= HexTemp5;
	end if;
end if;
end process;
end behavior;