LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity D_FF IS
port(
	signal D : in std_logic;
	clock : in std_logic;
	Q : out std_logic
);
end D_FF;

Architecture behavior of D_FF is
	begin
		process(clock)
		begin
			if rising_edge(clock) then
				Q <= D;
		end if;
	end process;
end behavior;