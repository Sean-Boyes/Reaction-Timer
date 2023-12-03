LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity T_FF IS
port(
	signal T : in std_logic;
	clock : in std_logic;
	Q : out std_logic
);
end T_FF;

Architecture behavior of T_FF is
	signal Q_temp : std_logic;
	begin
		process(clock)
		begin
			if rising_edge(clock) and (T = '1') then
				Q_temp <= Q_temp xor T;
				Q <= Q_temp;
		end if;
	end process;
end behavior;