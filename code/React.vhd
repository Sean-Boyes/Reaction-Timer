LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity React IS
	port(
		key  			: in std_logic_vector(3 downto 0);
		sw 			: in std_logic_vector(17 downto 0);
		clock_50				: in std_logic;
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7, HEX8 : out std_logic_vector(6 downto 0)
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
	end component;
	
	component StateDetermination IS
		port(
			Input : in std_logic_vector(4 downto 0);
			State : out std_logic_Vector(2 downto 0)
			);
	end component;
	component initialize IS
		port (
			clock : in std_logic;
			button : in std_logic;
			state : in std_logic_vector(2 downto 0);
			Target : out unsigned(6 downto 0);
			HEX4, HEX5 : out std_logic_vector(6 downto 0)
		);
	end component;

	
	signal out_CLK : std_logic;
	signal SInput : std_logic_vector(4 downto 0);
	signal state : std_logic_vector(2 downto 0);
	signal target : unsigned(6 downto 0);
	signal result : unsigned(6 downto 0);
	
	begin
		SInput <= (SW(17 downto 17) & KEY(3 downto 0));
		PreScalar_instance : PreScaler port map (SW(2 downto 0), clock_50, out_CLK);
		stateDet_instance : stateDetermination port map(sInput, state);
		initialize_instance : initialize port map(clock_50, Key(0), state, target, HEX4, HEX5);
end behavior;