LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

ENtity TT1MUX IS
POrt(
signal X1 : IN std_logic;
X2 : In Std_logic;
S1 : In std_logic;
signal Y1 : Out std_logic
);
End TT1MUX;

Architecture behavior of TT1MUX IS
Begin
y1<=x1 when s1 = '0' else x2;
End behavior;