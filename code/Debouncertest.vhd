LIBRARY ieee;

USE ieee.std_logic_1164.all;

Use ieee.numeric_std.all;

entity debouncerTest is
port(
clock_50 : std_logic;
Key : in std_logic_vector(3 downto 0);
LEDR : out std_logic_vector(17 downto 0);
Hex0, hex1 : out std_logic_vector(6 downto 0);
sw : in std_logic_vector(3 downto 0)
);
end debouncertest;

architecture behavior of debouncertest is 

component prescaler is
port(
setSpeed : in std_logic_vector(2 downto 0);

clkI : in std_logic;
clkO : out std_logic
);
END component;

component BCDCOunt2 is
Port(
		enable : in std_logic;
		clk : in STD_LOGIC;
      rst : in STD_LOGIC;
      BCD_ones : out STD_LOGIC_VECTOR(3 downto 0);
      BCD_tens : out STD_LOGIC_VECTOR(3 downto 0)
    );
end component;

component segdecoder is
Port ( D : in std_logic_vector( 3 downto 0 );
	Y : out std_logic_vector( 6 downto 0 ) );
END component;


component LFSR is
	PORT( Clk, Rst: IN std_logic;
        LFSR_Reg: OUT std_logic_vector (7 DOWNTO 0)
			);
end component;

signal clockOut : std_logic;
signal BCD0OUT : std_logic_vector(3 downto 0);
signal BCD1OUT : std_logic_vector(3 downto 0);
signal LFSROUT : std_logic_vector(7 downto 0);

begin
LEDR(0) <= clockOUT;
instance0 : prescaler port map(sw(2 downto 0), clock_50, clockOut);
--instance2 : BCDCOunt2 port map(enable, clockOut, not(enable), BCD0out, BCD1out);
instance5 : LFSR port map (clockout, not(key(0)), LFSROUT);
instance3 : segdecoder port map (LFSROUT(7 downto 4), HEx0);
instance4 : segdecoder port map (LFSROUT(3 downto 0), HEx1);



end behavior;