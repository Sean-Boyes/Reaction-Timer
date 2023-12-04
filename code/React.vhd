LIBRARY ieee;
USE ieee.std_logic_1164.all;

Entity React IS
	port(
		signal key0  			: in std_logic;
		signal key1  			: in std_logic;
		signal key2  			: in std_logic;
		signal key3  			: in std_logic;
		signal key17 			: in std_logic;
		signal switch_easy   : in std_logic;
		signal switch_medium : in std_logic;
		signal switch_hard   : in std_logic
	);
end react;

architecture behavior of react is

	component LFSR is
		port (enable : in std_logic;
				CLK	 : in std_logic;
				LFSR_Reg: Out std_logic_vector(16-1 downto 0)
				);
	end component
	component PreScaler is
		port(setSpeed : in std_logic_vector(2 downto 0);
			  clkI 	  : in std_logic;
			  clkO 	  : out std_logic
			  );
	component SegDecoder is
		port(D : in std_logic_vector( 3 downto 0 );
			  Y : out std_logic_vector( 6 downto 0 )
			  );
	
	begin

end behavior;