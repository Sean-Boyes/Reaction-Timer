LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity BCDCount2 is
    Port(
			enable : in std_logic;
			clk : in STD_LOGIC;
         rst : in STD_LOGIC;
         BCD_ones : out STD_LOGIC_VECTOR(3 downto 0);
         BCD_tens : out STD_LOGIC_VECTOR(3 downto 0)
    );
end BCDCount2;

architecture Behavioral of BCDCount2 is
    signal counter1 : unsigned(3 downto 0) := "0000";
     signal counter2 : unsigned(3 downto 0) := "0000";

begin
    process(enable, clk, rst)
    begin
        if rst = '1' then
            counter1 <= "0000";
                counter2 <= "0000";
        elsif rising_edge(clk) and enable ='1' then
                counter1 <= counter1 + 1;
            if counter1 = "1001" then
                counter2 <= counter2 + 1;
                     counter1 <= "0000";
            end if;
                
                if counter2 = "1001" AND counter1 = "1001" then
                    counter2 <="0000";
						  counter1 <="0000";
                end if;
        end if;
    end process;

    BCD_ones <= STD_LOGIC_VECTOR(counter1);
    BCD_tens <= STD_LOGIC_VECTOR(counter2);

end Behavioral;