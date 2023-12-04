-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/03/2023 16:01:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          T_FF
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY T_FF_vhd_vec_tst IS
END T_FF_vhd_vec_tst;
ARCHITECTURE T_FF_arch OF T_FF_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL T : STD_LOGIC;
COMPONENT T_FF
	PORT (
	clock : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC;
	T : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : T_FF
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	Q => Q,
	T => T
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 50000 ps;
	clock <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- T
t_prcs_T: PROCESS
BEGIN
	T <= '0';
	WAIT FOR 40000 ps;
	T <= '1';
	WAIT FOR 40000 ps;
	T <= '0';
	WAIT FOR 40000 ps;
	T <= '1';
	WAIT FOR 20000 ps;
	T <= '0';
	WAIT FOR 80000 ps;
	T <= '1';
	WAIT FOR 80000 ps;
	T <= '0';
	WAIT FOR 60000 ps;
	T <= '1';
	WAIT FOR 20000 ps;
	T <= '0';
WAIT;
END PROCESS t_prcs_T;
END T_FF_arch;
