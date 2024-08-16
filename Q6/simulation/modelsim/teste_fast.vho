-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/11/2024 17:55:05"

-- 
-- Device: Altera EP2C35F672C8 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	teste IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	Te : IN std_logic;
	ports : IN STD.STANDARD.bit_vector(0 TO 2);
	Ts : OUT STD.STANDARD.bit;
	S : OUT STD.STANDARD.bit
	);
END teste;

-- Design Ports Information
-- Ts	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Te	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ports[2]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ports[1]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ports[0]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF teste IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Te : std_logic;
SIGNAL ww_ports : std_logic_vector(0 TO 2);
SIGNAL ww_Ts : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \Te~combout\ : std_logic;
SIGNAL \Ts~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Ts$latch~combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \S$latch~combout\ : std_logic;
SIGNAL \ports~combout\ : std_logic_vector(0 TO 2);

BEGIN

ww_A <= A;
ww_B <= B;
ww_Te <= Te;
ww_ports <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(ports);
Ts <= IEEE.STD_LOGIC_1164.TO_BIT(ww_Ts);
S <= IEEE.STD_LOGIC_1164.TO_BIT(ww_S);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ports[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ports(2),
	combout => \ports~combout\(2));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B,
	combout => \B~combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A,
	combout => \A~combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Te~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Te,
	combout => \Te~combout\);

-- Location: LCCOMB_X34_Y1_N24
\Ts~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ts~0_combout\ = (\B~combout\ & ((\A~combout\) # (\Te~combout\))) # (!\B~combout\ & (\A~combout\ & \Te~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\,
	datac => \A~combout\,
	datad => \Te~combout\,
	combout => \Ts~0_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ports[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ports(1),
	combout => \ports~combout\(1));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ports[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ports(0),
	combout => \ports~combout\(0));

-- Location: LCCOMB_X34_Y1_N28
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\ports~combout\(2) & (!\ports~combout\(1) & !\ports~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ports~combout\(2),
	datac => \ports~combout\(1),
	datad => \ports~combout\(0),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X34_Y1_N20
\Ts$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ts$latch~combout\ = (\Equal5~0_combout\ & (\Ts~0_combout\)) # (!\Equal5~0_combout\ & ((\Ts$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ts~0_combout\,
	datac => \Ts$latch~combout\,
	datad => \Equal5~0_combout\,
	combout => \Ts$latch~combout\);

-- Location: LCCOMB_X34_Y1_N14
\S~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = (\ports~combout\(2) $ (\ports~combout\(0))) # (!\ports~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ports~combout\(2),
	datac => \ports~combout\(1),
	datad => \ports~combout\(0),
	combout => \S~4_combout\);

-- Location: LCCOMB_X34_Y1_N4
\S~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = (\ports~combout\(2) & (\ports~combout\(1) $ (((\ports~combout\(0)) # (!\B~combout\))))) # (!\ports~combout\(2) & (\ports~combout\(0) & (\B~combout\ $ (!\ports~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ports~combout\(2),
	datab => \B~combout\,
	datac => \ports~combout\(1),
	datad => \ports~combout\(0),
	combout => \S~1_combout\);

-- Location: LCCOMB_X34_Y1_N16
\S~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = (\ports~combout\(0) & (((\B~combout\ & !\ports~combout\(1))))) # (!\ports~combout\(0) & (\ports~combout\(2) & (\B~combout\ $ (\ports~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ports~combout\(2),
	datab => \B~combout\,
	datac => \ports~combout\(1),
	datad => \ports~combout\(0),
	combout => \S~2_combout\);

-- Location: LCCOMB_X34_Y1_N26
\S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \A~combout\ $ (((\Te~combout\ & !\ports~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Te~combout\,
	datac => \A~combout\,
	datad => \ports~combout\(0),
	combout => \S~0_combout\);

-- Location: LCCOMB_X34_Y1_N18
\S~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = (\S~0_combout\ & (\S~1_combout\)) # (!\S~0_combout\ & ((\S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~1_combout\,
	datac => \S~2_combout\,
	datad => \S~0_combout\,
	combout => \S~3_combout\);

-- Location: LCCOMB_X34_Y1_N12
\S$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \S$latch~combout\ = (\S~4_combout\ & ((\S~3_combout\))) # (!\S~4_combout\ & (\S$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S$latch~combout\,
	datac => \S~4_combout\,
	datad => \S~3_combout\,
	combout => \S$latch~combout\);

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Ts~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Ts$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Ts);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \S$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S);
END structure;


