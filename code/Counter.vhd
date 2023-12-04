library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
 
entity counter is
	PORT( enable, CLK: in std_logic;
			counter_Reg: Out std_logic_vector(16-1 downto 0)
			);
end counter;

Architecture behavioral of counter is

component T_FF is
	port ( T : in std_logic;
			 clock : in std_logic; 
			 Q : out std_logic
		  );
end component;

signal inCLK   : std_logic;
signal counter_out : std_logic_vector(16-1 downto 0);

begin
	inCLK <= CLK and enable;
	
	instance0  : T_FF port map ('1', CLK, counter_out(0));
	instance1  : T_FF port map ('1', not counter_out(0), counter_out(1));
	instance2  : T_FF port map ('1', not counter_out(1), counter_out(2));
	instance3  : T_FF port map ('1', not counter_out(2), counter_out(3));
	instance4  : T_FF port map ('1', not counter_out(3), counter_out(4));
	instance5  : T_FF port map ('1', not counter_out(4), counter_out(5));
	instance6  : T_FF port map ('1', not counter_out(5), counter_out(6));
	instance7  : T_FF port map ('1', not counter_out(6), counter_out(7));
	instance8  : T_FF port map ('1', not counter_out(7), counter_out(8));
	instance9  : T_FF port map ('1', not counter_out(8), counter_out(9));
	instance10 : T_FF port map ('1', not counter_out(9), counter_out(10));
	instance11 : T_FF port map ('1', not counter_out(10), counter_out(11));
	instance12 : T_FF port map ('1', not counter_out(11), counter_out(12));
	instance13 : T_FF port map ('1', not counter_out(12), counter_out(13));
	instance14 : T_FF port map ('1', not counter_out(13), counter_out(14));
	instance15 : T_FF port map ('1', not counter_out(14), counter_out(15));

	Counter_Reg <= counter_Out;
	
end behavioral;
