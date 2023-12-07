library ieee;
use ieee.std_logic_1164.all;

Use ieee.numeric_std.all;
 
entity LFSR is
	PORT( CLK, rst: in std_logic;
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
component TT1MUX is
POrt(
signal X1 : IN std_logic;
X2 : In Std_logic;
S1 : In std_logic;
signal Y1 : Out std_logic
);
End component;


signal LFSR_Out : std_logic_vector(15 downto 0);
signal muxOut : std_logic_vector(15 downto 0);
signal feedback : std_logic;
signal D : std_logic_Vector(15 downto 0) := "0000000000000001";
begin
	feedback <= LFSR_out(7) xor LFSR_out(5) xor LFSR_out(4) xor LFSR_out(15);
	instance0  : D_FF port map (muxout(0), CLK, LFSR_Out(0));
	instance1  : D_FF port map (muxout(1),  CLK, LFSR_Out(1));
	instance2  : D_FF port map (muxout(2),  CLK, LFSR_Out(2));
	instance3  : D_FF port map (muxout(3),  CLK, LFSR_Out(3));
	instance4  : D_FF port map (muxout(4),  CLK, LFSR_Out(4));
	instance5  : D_FF port map (muxout(5),  CLK, LFSR_Out(5));
	instance6  : D_FF port map (muxout(6),  CLK, LFSR_Out(6));
	instance7  : D_FF port map (muxout(7),  CLK, LFSR_Out(7));
	instance8  : TT1MUX port map (feedback, D(0), rst, MUXOUT(0));
	instance9  : TT1MUX port map (LFSR_OUT(0), D(1), rst, MUXOUT(1));
	instance10  : TT1MUX port map (LFSR_OUT(1), D(2), rst, MUXOUT(2));
	instance11  : TT1MUX port map (LFSR_OUT(2), D(3), rst, MUXOUT(3));
	instance12  : TT1MUX port map (LFSR_OUT(3), D(4), rst, MUXOUT(4));
	instance13  : TT1MUX port map (LFSR_OUT(4), D(5), rst, MUXOUT(5));
	instance14  : TT1MUX port map (LFSR_OUT(5), D(6), rst, MUXOUT(6));
	instance15  : TT1MUX port map (LFSR_OUT(6), D(7), rst, MUXOUT(7));
	instance16  : D_FF port map (muxout(8), CLK, LFSR_Out(8));
	instance17  : D_FF port map (muxout(9),  CLK, LFSR_Out(9));
	instance18  : D_FF port map (muxout(10),  CLK, LFSR_Out(10));
	instance19  : D_FF port map (muxout(11),  CLK, LFSR_Out(11));
	instance20  : D_FF port map (muxout(12),  CLK, LFSR_Out(12));
	instance21  : D_FF port map (muxout(13),  CLK, LFSR_Out(13));
	instance22  : D_FF port map (muxout(14),  CLK, LFSR_Out(14));
	instance23  : D_FF port map (muxout(15),  CLK, LFSR_Out(15));
	instance24  : TT1MUX port map (LFSR_OUT(7), D(8), rst, MUXOUT(8));
	instance25  : TT1MUX port map (LFSR_OUT(8), D(9), rst, MUXOUT(9));
	instance26  : TT1MUX port map (LFSR_OUT(9), D(10), rst, MUXOUT(10));
	instance27  : TT1MUX port map (LFSR_OUT(10), D(11), rst, MUXOUT(11));
	instance28  : TT1MUX port map (LFSR_OUT(11), D(12), rst, MUXOUT(12));
	instance29  : TT1MUX port map (LFSR_OUT(12), D(13), rst, MUXOUT(13));
	instance30  : TT1MUX port map (LFSR_OUT(13), D(14), rst, MUXOUT(14));
	instance31  : TT1MUX port map (LFSR_OUT(14), D(15), rst, MUXOUT(15));
	process(clk, LFSR_OUT)
	begin
	if rising_edge(clk) then
		if unsigned(LFSR_out(3 downto 0)) <= 9 then
		LFSR_reg(3 downto 0) <= LFSR_OUT(3 downto 0);
		end if;
		if unsigned(LFSR_out(7 downto 4)) <= 9 then
		LFSR_reg(7 downto 4) <= LFSR_OUT(7 downto 4);
		end if;
	end if;
	end process;

end behavioral;
