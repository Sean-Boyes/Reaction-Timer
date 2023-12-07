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
-- Generated on "12/05/2023 00:30:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          debouncerTest
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY debouncerTest_vhd_vec_tst IS
END debouncerTest_vhd_vec_tst;
ARCHITECTURE debouncerTest_arch OF debouncerTest_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock_50 : STD_LOGIC;
SIGNAL Hex0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hex1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Key : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT debouncerTest
	PORT (
	clock_50 : IN STD_LOGIC;
	Hex0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	hex1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	Key : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : debouncerTest
	PORT MAP (
-- list connections between master ports and signals
	clock_50 => clock_50,
	Hex0 => Hex0,
	hex1 => hex1,
	Key => Key,
	LEDR => LEDR,
	sw => sw
	);

-- Key[1]
t_prcs_Key_1: PROCESS
BEGIN
	Key(1) <= '0';
WAIT;
END PROCESS t_prcs_Key_1;

-- sw[1]
t_prcs_sw_1: PROCESS
BEGIN
	sw(1) <= '1';
WAIT;
END PROCESS t_prcs_sw_1;

-- sw[2]
t_prcs_sw_2: PROCESS
BEGIN
	sw(2) <= '0';
WAIT;
END PROCESS t_prcs_sw_2;

-- sw[3]
t_prcs_sw_3: PROCESS
BEGIN
	sw(3) <= '0';
WAIT;
END PROCESS t_prcs_sw_3;

-- clock_50
t_prcs_clock_50: PROCESS
BEGIN
LOOP
	clock_50 <= '0';
	WAIT FOR 5000 ps;
	clock_50 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_50;
END debouncerTest_arch;
