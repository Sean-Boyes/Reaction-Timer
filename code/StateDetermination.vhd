library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

Entity StateDetermination IS
port(
Input : in std_logic_vector(4 downto 0);
State : out std_logic_Vector(2 downto 0)
);
end StateDetermination;

Architecture behavior of StateDetermination IS
signal StateTemp : std_logic_Vector(2 downto 0) := "000";
Begin
	process(Input)
	begin
	if Input = "11000" then
		StateTemp <= "000";
	end if;
	if StateTemp = "000" then
		If Input = "00001" then
		stateTemp <= "001";
		end if;
		if Input = "00010" or Input = "00100" or Input = "01000" then
		stateTemp <= StateTemp;
		end If;
	end if;
		
	if StateTemp = "001" then
		If Input = "00010" then
		stateTemp <= "010";
		end if;
		if Input = "00001" or Input = "00100" or Input = "01000" then
		stateTemp <= StateTemp;
		end If;
	end if;
		
	if StateTemp = "010" then
		If Input = "00010" then
		stateTemp <= "011";
		end if;
		if Input = "00010" or Input = "00100" or Input = "01000" then
		stateTemp <= StateTemp;
		end If;
	end if;
	
	if StateTemp = "011" then
		If Input = "01000" then
		stateTemp <= "100";
		end if;
		if Input = "00010" or Input = "00100" or Input = "00001" then
		stateTemp <= StateTemp;
		end If;
	end if;
	
	if StateTemp = "100" then
		If Input = "00100" then
		stateTemp <= "101";
		end if;
		if Input = "00010" or Input = "01000" or Input = "00001" then
		stateTemp <= StateTemp;
		end If;
	end if;
	
	if StateTemp = "101" then
		If Input = "00100" then
		stateTemp <= "110";
		end if;
		if Input = "00010" or Input = "01000" or Input = "00001" then
		stateTemp <= StateTemp;
		end If;
	end if;

	if StateTemp = "110" then
		If Input = "01000" then
		stateTemp <= "000";
		end if;
		if Input = "00010" or Input = "00100" or Input = "00001" then
		stateTemp <= StateTemp;
		end If;
	end if;
	end process;
	state <= stateTemp;
end behavior;
	
	
