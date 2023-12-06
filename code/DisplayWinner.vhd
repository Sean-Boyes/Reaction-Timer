library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity displayWinner is
port(
	state : in std_logic_vector(2 downto 0);
	target : in unsigned(6 downto 0);
	result1 : in unsigned(6 downto 0);
	result2 : in unsigned(6 downto 0);
	HEX2, HEX3 : out std_logic_vector(6 downto 0)
);
end displayWinner;

architecture behavior of displayWinner IS
signal diff1 : unsigned(6 downto 0);
signal diff2 : unsigned(6 downto 0);
begin
process(result1, result2, target, state)
begin
if result1 > target and result1 = target then
	diff1 <= result1 - target;
end if;
if target > result1 then
	diff1 <= target - result1;
end if;
if result2 > target and result2 = target then
	diff2 <= result2 - target;
end if;
if target > result2 then
	diff2 <= target - result2;
end if;
if state = "110" then
	if diff1 > diff2 then
		HEX3 <= "1100111";
		HEX2 <= "1101101";
	end if;
	if diff2 > diff1 then
		HEX3 <= "1100111";
		HEX2 <= "0110000";
	end if;
end if;
end process;
end behavior;