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
		signal switch_hard   : in std_logic;
		signal in_CLK				: in std_logic
	);
end react;

architecture behavior of react is

	component LFSR is
		port (enable : in std_logic;
				CLK	 : in std_logic;
				LFSR_Reg: Out std_logic_vector(16-1 downto 0)
				);
	end component;
	component PreScaler is
		port(setSpeed : in std_logic_vector(2 downto 0);
			  clkI 	  : in std_logic;
			  clkO 	  : out std_logic
			  );
	end component;
	component SegDecoder is
		port(D : in std_logic_vector( 3 downto 0 );
			  Y : out std_logic_vector( 6 downto 0 )
			  );
	end component;
	component Counter is
		port(enable, CLK: in std_logic;
			  counter_Reg: Out std_logic_vector(16-1 downto 0)
			 );
	end component
	
	signal speed : std_logic;
	signal out_CLK : std_logic;
	
	process (speed)
	begin
		if (switch_easy) then
			speed := 1;
		elsif (switch_medium) then
			speed := 2;
		elsif (switch_hard) then
			speed := 3;
		end if;
	end process
	
	begin
	
		PreScalar_instance0 : PreScaler port map (speed, in_CLK, out_CLK);
		
		
	

end behavior;