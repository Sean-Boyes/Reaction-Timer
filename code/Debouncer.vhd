LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Debouncer IS
    GENERIC (
        CLK_PERIOD : TIME := 10 ns; -- Clock period
        DEBOUNCE_TIME : TIME := 50 ns -- Debounce time
    );
    PORT (
clk : IN std_LOGIC;
        btn : IN STD_LOGIC; -- Input button signal
        debounced_btn : OUT STD_LOGIC -- Debounced button signal
    );
END ENTITY Debouncer;

ARCHITECTURE Behavioral OF Debouncer IS
    SIGNAL btn_reg : STD_LOGIC := '0'; -- Registered button signal
    SIGNAL btn_sync : STD_LOGIC := '0'; -- Synchronized button signal
    SIGNAL btn_debounced : STD_LOGIC := '0'; -- Debounced button signal
 

BEGIN
    PROCESS (clk)
VARIABLE COUNTER : UNSIGNED (31 downto 0) := (others=>'0');
 
    BEGIN
IF rising_edge(clk) then
IF btn = '1' then
btn_sync <= '1';
ELSE
btn_sync <= '0';
COUNTER := (others => '0');
END IF;
END IF;
 
IF (btn_sync = '1' and btn = '1')then
COUNTER := COUNTER + 1;
ELSE
COUNTER := (others => '0');
END IF;
 
IF (COUNTER > 2) then
btn_debounced <= '1';
ELSE
btn_debounced <= '0';
END IF;
 
    debounced_btn <= btn_debounced;
END PROCESS;
END ARCHITECTURE Behavioral;