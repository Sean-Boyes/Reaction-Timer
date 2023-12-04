LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity encoder32 IS
port(
eIn : in std_logic_vector(2 downto 0);
eout : out unsigned(1 downto 0)
);
end encoder32;

architecture behavior of encoder32 is
begin
process(eIN)
begin
if eIN(0) = '1' then
eout <= "01";
elsif eIN(1) = '1' then
eout <= "10";
elsif eIN(2) = '1' then
eout <= "11";
end if;
end process;
end behavior;