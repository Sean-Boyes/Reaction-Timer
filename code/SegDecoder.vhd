LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

ENTITY SegDecoder IS
Port ( D : in std_logic_vector( 3 downto 0 );
	Y : out std_logic_vector( 6 downto 0 ) );
END SegDecoder;

ARCHITECTURE SegLogic OF SegDecoder IS
SIGNAL a,b,c,z : std_logic;

BEGIN

a <= D(3);
b <= D(2);
c <= D(1);
z <= D(0);

Y(0) <= not ((not b and not z) or (b and c) or (not a and c) or (not a and b and z) or (a and not b and not c));
Y(1) <= not ((not b and not z) or (not b and not c) or (not a and c and z) or (a and not c and z) or (not a and not c and not z));
Y(2) <= not ((a and not b) or (not c and z) or (not a and b) or (not a and z) or (not b and not c));
Y(3) <= not ((b and c and not z) or (a and b and not c) or (not b and not c and not z) or (b and not c and z) or (not a and not b and c) or (not b and c and z));
Y(4) <= not ((not b and not z) or (c and not z) or (a and b) or (a and c));
Y(5) <= not ((a and not b) or (a and c) or (b and c and not z) or (not a and b and not c) or (not a and not c and not z));
Y(6) <= not (a or (not b and c) or (b and not z) or (b and not c));
END SegLogic;