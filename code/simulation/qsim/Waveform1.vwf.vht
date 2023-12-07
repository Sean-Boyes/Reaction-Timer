-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/05/2023 00:41:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LFSR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LFSR_vhd_vec_tst IS
END LFSR_vhd_vec_tst;
ARCHITECTURE LFSR_arch OF LFSR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL LFSR_Reg : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT LFSR
	PORT (
	CLK : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	LFSR_Reg : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LFSR
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	enable => enable,
	LFSR_Reg => LFSR_Reg
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
END LFSR_arch;
