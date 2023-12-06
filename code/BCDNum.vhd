LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity BCDNum is
port(
	BCD : in std_logic_vector(7 downto 0);
	Num : out integer
);
end BCDNum;

architecture behavior of BCDNum is
signal num1 : integer;
signal num2 : integer;

begin
process(BCD)
begin
	if BCD(3 downto 0) = "0000" then
		num1 <= 0;
	end if;
	if BCD(3 downto 0) = "0001" then
		num1 <= 1;
	end if;
	if BCD(3 downto 0) = "0010" then
		num1 <= 2;
	end if;
	if BCD(3 downto 0) = "0011" then
		num1 <= 3;
	end if;
	if BCD(3 downto 0) = "0100" then
		num1 <= 4;
	end if;
	if BCD(3 downto 0) = "0101" then
		num1 <= 5;
	end if;
	if BCD(3 downto 0) = "0110" then
		num1 <= 6;
	end if;
	if BCD(3 downto 0) = "0111" then
		num1 <= 7;
	end if;
	if BCD(3 downto 0) = "1000" then
		num1 <= 8;
	end if;
	if BCD(3 downto 0) = "1001" then
		num1 <= 9;
	end if;
	if BCD(7 downto 4) = "0000" then
		num2 <= 0;
	end if;
	if BCD(7 downto 4) = "0001" then
		num2 <= 10;
	end if;
	if BCD(7 downto 4) = "0010" then
		num2 <= 20;
	end if;
	if BCD(7 downto 4) = "0011" then
		num2 <= 30;
	end if;
	if BCD(7 downto 4) = "0100" then
		num2 <= 40;
	end if;
	if BCD(7 downto 4) = "0101" then
		num2 <= 50;
	end if;
	if BCD(7 downto 4) = "0110" then
		num2 <= 60;
	end if;
	if BCD(7 downto 4) = "0111" then
		num2 <= 70;
	end if;
	if BCD(7 downto 4) = "1000" then
		num2 <= 80;
	end if;
	if BCD(7 downto 4) = "1001" then
		num2 <= 90;
	end if;
end process;
Num <= num1 + num2;
end behavior;