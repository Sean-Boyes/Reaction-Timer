LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity RandomNumGen IS
port(
RandOut : out std_logic
);
end RandomNumberGen;

architecture behavior of RandomNumGen IS
signal Dout : std_logic;