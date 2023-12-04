library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
 
entity LFSR is
	PORT( enable, CLK: in std_logic;
			LFSR_Reg: Out std_logic_vector(16-1 downto 0)
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
signal LFSR_Out : std_logic_vector(16-1 downto 0);

begin
	inCLK <= CLK and enable;

		
	instance0  : D_FF port map ((LFSR_Out(10) xor LFSR_Out(12) xor LFSR_Out(13) xor LFSR_Out(15) xor inCLK), inCLK, LFSR_Out(0));
	instance1  : D_FF port map (LFSR_Out(0),  inCLK, LFSR_Out(1));
	instance2  : D_FF port map (LFSR_Out(1),  inCLK, LFSR_Out(2));
	instance3  : D_FF port map (LFSR_Out(2),  inCLK, LFSR_Out(3));
	instance4  : D_FF port map (LFSR_Out(3),  inCLK, LFSR_Out(4));
	instance5  : D_FF port map (LFSR_Out(4),  inCLK, LFSR_Out(5));
	instance6  : D_FF port map (LFSR_Out(5),  inCLK, LFSR_Out(6));
	instance7  : D_FF port map (LFSR_Out(6),  inCLK, LFSR_Out(7));
	instance8  : D_FF port map (LFSR_Out(7),  inCLK, LFSR_Out(8));
	instance9  : D_FF port map (LFSR_Out(8),  inCLK, LFSR_Out(9));
	instance10 : D_FF port map (LFSR_Out(9),  inCLK, LFSR_Out(10));
	instance11 : D_FF port map (LFSR_Out(10), inCLK, LFSR_Out(11));
	instance12 : D_FF port map (LFSR_Out(11), inCLK, LFSR_Out(12));
	instance13 : D_FF port map (LFSR_Out(12), inCLK, LFSR_Out(13));
	instance14 : D_FF port map (LFSR_Out(13), inCLK, LFSR_Out(14));
	instance15 : D_FF port map (LFSR_Out(14), inCLK, LFSR_Out(15));

	LFSR_Reg <= LFSR_Out;
	
end behavioral;
