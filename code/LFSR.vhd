library ieee;
use ieee.std_logic_1164.all;

Use ieee.numeric_std.all;
 
entity LFSR is
	PORT( enable, CLK: in std_logic;
			LFSR_Reg: Out std_logic_vector(7 downto 0)
			);
end LFSR;

Architecture behavioral of LFSR is

component D_FF is
	port ( D : in std_logic;
			 clock : in std_logic; 
			 Q : out std_logic
		  );
end component;

signal inCLK   : std_logic;
signal LFSR_Out : std_logic_vector(7 downto 0);

begin
	inCLK <= CLK and enable;

		
	instance0  : D_FF port map ((LFSR_Out(2) xor LFSR_Out(3) xor LFSR_Out(5) xor LFSR_Out(6) xor inCLK), inCLK, LFSR_Out(0));
	instance1  : D_FF port map (LFSR_Out(0),  inCLK, LFSR_Out(1));
	instance2  : D_FF port map (LFSR_Out(1),  inCLK, LFSR_Out(2));
	instance3  : D_FF port map (LFSR_Out(2),  inCLK, LFSR_Out(3));
	instance4  : D_FF port map (LFSR_Out(3),  inCLK, LFSR_Out(4));
	instance5  : D_FF port map (LFSR_Out(4),  inCLK, LFSR_Out(5));
	instance6  : D_FF port map (LFSR_Out(5),  inCLK, LFSR_Out(6));
	instance7  : D_FF port map (LFSR_Out(6),  inCLK, LFSR_Out(7));


	process(LFSR_OUT)
	begin
	if LFSR_OUT(3 downto 0) /= "1111" and LFSR_OUT(3 downto 0) /= "1101" and LFSR_OUT(3 downto 0) /= "1011" then
	LFSR_Reg(3 downto 0) <= LFSR_Out(3 downto 0);
	end if;
	if LFSR_OUT(7 downto 4) /= "1111" and LFSR_OUT(7 downto 4) /= "1101" and LFSR_OUT(7 downto 4) /= "1011" then
	LFSR_Reg(7 downto 4) <= LFSR_Out(7 downto 4);
	end if;
	end process;
end behavioral;
