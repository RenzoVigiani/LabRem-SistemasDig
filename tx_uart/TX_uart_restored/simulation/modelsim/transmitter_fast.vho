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

-- DATE "07/29/2022 12:12:05"

-- 
-- Device: Altera EP2C8Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	transmitter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	tx : OUT std_logic
	);
END transmitter;

-- Design Ports Information
-- tx	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rst	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF transmitter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_9600|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_dato|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_dato|Add0~14_combout\ : std_logic;
SIGNAL \i_address|Add0~8_combout\ : std_logic;
SIGNAL \i_9600|Add0~0_combout\ : std_logic;
SIGNAL \i_9600|Add0~1\ : std_logic;
SIGNAL \i_9600|Add0~2_combout\ : std_logic;
SIGNAL \i_9600|Add0~3\ : std_logic;
SIGNAL \i_9600|Add0~4_combout\ : std_logic;
SIGNAL \i_9600|Add0~5\ : std_logic;
SIGNAL \i_9600|Add0~6_combout\ : std_logic;
SIGNAL \i_9600|Add0~7\ : std_logic;
SIGNAL \i_9600|Add0~8_combout\ : std_logic;
SIGNAL \i_9600|Add0~9\ : std_logic;
SIGNAL \i_9600|Add0~10_combout\ : std_logic;
SIGNAL \i_9600|Add0~11\ : std_logic;
SIGNAL \i_9600|Add0~12_combout\ : std_logic;
SIGNAL \i_9600|Add0~13\ : std_logic;
SIGNAL \i_9600|Add0~14_combout\ : std_logic;
SIGNAL \i_9600|Add0~15\ : std_logic;
SIGNAL \i_9600|Add0~16_combout\ : std_logic;
SIGNAL \i_9600|Add0~17\ : std_logic;
SIGNAL \i_9600|Add0~18_combout\ : std_logic;
SIGNAL \i_9600|Add0~19\ : std_logic;
SIGNAL \i_9600|Add0~20_combout\ : std_logic;
SIGNAL \i_9600|Add0~21\ : std_logic;
SIGNAL \i_9600|Add0~22_combout\ : std_logic;
SIGNAL \i_9600|Add0~23\ : std_logic;
SIGNAL \i_9600|Add0~24_combout\ : std_logic;
SIGNAL \i_trans_uart|Selector0~2_combout\ : std_logic;
SIGNAL \i_9600|clk_out~regout\ : std_logic;
SIGNAL \i_dato|Equal0~4_combout\ : std_logic;
SIGNAL \i_dato|clk_out~7_combout\ : std_logic;
SIGNAL \i_9600|LessThan1~0_combout\ : std_logic;
SIGNAL \i_9600|LessThan1~1_combout\ : std_logic;
SIGNAL \i_9600|LessThan1~2_combout\ : std_logic;
SIGNAL \i_9600|LessThan1~3_combout\ : std_logic;
SIGNAL \i_9600|Equal0~0_combout\ : std_logic;
SIGNAL \i_9600|Equal0~1_combout\ : std_logic;
SIGNAL \i_9600|Equal0~2_combout\ : std_logic;
SIGNAL \i_9600|clk_out~0_combout\ : std_logic;
SIGNAL \i_9600|clk_out~1_combout\ : std_logic;
SIGNAL \i_9600|clk_out~2_combout\ : std_logic;
SIGNAL \i_9600|clk_out~3_combout\ : std_logic;
SIGNAL \i_9600|clk_out~4_combout\ : std_logic;
SIGNAL \i_dato|cnt~3_combout\ : std_logic;
SIGNAL \i_dato|cnt~4_combout\ : std_logic;
SIGNAL \i_dato|cnt~10_combout\ : std_logic;
SIGNAL \i_9600|cnt[3]~0_combout\ : std_logic;
SIGNAL \i_9600|cnt~1_combout\ : std_logic;
SIGNAL \i_9600|cnt~2_combout\ : std_logic;
SIGNAL \i_9600|cnt~3_combout\ : std_logic;
SIGNAL \i_9600|cnt~4_combout\ : std_logic;
SIGNAL \i_9600|cnt~5_combout\ : std_logic;
SIGNAL \i_9600|cnt~6_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \i_9600|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \i_trans_uart|estado.d5~feeder_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \i_trans_uart|estado.d5~regout\ : std_logic;
SIGNAL \i_trans_uart|estado.d6~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d6~regout\ : std_logic;
SIGNAL \i_trans_uart|estado.d7~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d7~regout\ : std_logic;
SIGNAL \i_trans_uart|estado.stop~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.stop~regout\ : std_logic;
SIGNAL \i_trans_uart|estado.idle~0_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.idle~regout\ : std_logic;
SIGNAL \i_trans_uart|estado.start~0_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.start~regout\ : std_logic;
SIGNAL \i_trans_uart|estado.d0~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d0~regout\ : std_logic;
SIGNAL \i_trans_uart|estado.d1~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d1~regout\ : std_logic;
SIGNAL \i_trans_uart|estado.d2~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d2~regout\ : std_logic;
SIGNAL \i_trans_uart|estado.d3~regout\ : std_logic;
SIGNAL \i_trans_uart|estado.d4~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d4~regout\ : std_logic;
SIGNAL \i_dato|cnt~7_combout\ : std_logic;
SIGNAL \i_dato|cnt~8_combout\ : std_logic;
SIGNAL \i_dato|cnt~9_combout\ : std_logic;
SIGNAL \i_dato|Add0~1\ : std_logic;
SIGNAL \i_dato|Add0~3\ : std_logic;
SIGNAL \i_dato|Add0~4_combout\ : std_logic;
SIGNAL \i_dato|Add0~5\ : std_logic;
SIGNAL \i_dato|Add0~7\ : std_logic;
SIGNAL \i_dato|Add0~9\ : std_logic;
SIGNAL \i_dato|Add0~10_combout\ : std_logic;
SIGNAL \i_dato|cnt~1_combout\ : std_logic;
SIGNAL \i_dato|cnt~2_combout\ : std_logic;
SIGNAL \i_dato|cnt~5_combout\ : std_logic;
SIGNAL \i_dato|cnt~6_combout\ : std_logic;
SIGNAL \i_dato|Add0~11\ : std_logic;
SIGNAL \i_dato|Add0~13\ : std_logic;
SIGNAL \i_dato|Add0~15\ : std_logic;
SIGNAL \i_dato|Add0~17\ : std_logic;
SIGNAL \i_dato|Add0~19\ : std_logic;
SIGNAL \i_dato|Add0~21\ : std_logic;
SIGNAL \i_dato|Add0~23\ : std_logic;
SIGNAL \i_dato|Add0~24_combout\ : std_logic;
SIGNAL \i_dato|Add0~22_combout\ : std_logic;
SIGNAL \i_dato|Add0~16_combout\ : std_logic;
SIGNAL \i_dato|Add0~12_combout\ : std_logic;
SIGNAL \i_dato|Add0~18_combout\ : std_logic;
SIGNAL \i_dato|clk_out~0_combout\ : std_logic;
SIGNAL \i_dato|Equal0~3_combout\ : std_logic;
SIGNAL \i_dato|Add0~6_combout\ : std_logic;
SIGNAL \i_dato|Add0~0_combout\ : std_logic;
SIGNAL \i_dato|Add0~2_combout\ : std_logic;
SIGNAL \i_dato|Equal0~2_combout\ : std_logic;
SIGNAL \i_dato|LessThan1~0_combout\ : std_logic;
SIGNAL \i_dato|LessThan1~1_combout\ : std_logic;
SIGNAL \i_dato|cnt~0_combout\ : std_logic;
SIGNAL \i_dato|Add0~25\ : std_logic;
SIGNAL \i_dato|Add0~26_combout\ : std_logic;
SIGNAL \i_dato|Add0~27\ : std_logic;
SIGNAL \i_dato|Add0~28_combout\ : std_logic;
SIGNAL \i_dato|cnt~11_combout\ : std_logic;
SIGNAL \i_dato|Add0~29\ : std_logic;
SIGNAL \i_dato|Add0~30_combout\ : std_logic;
SIGNAL \i_dato|Equal0~6_combout\ : std_logic;
SIGNAL \i_dato|Equal0~5_combout\ : std_logic;
SIGNAL \i_dato|Add0~20_combout\ : std_logic;
SIGNAL \i_dato|clk_out~1_combout\ : std_logic;
SIGNAL \i_dato|clk_out~2_combout\ : std_logic;
SIGNAL \i_dato|clk_out~3_combout\ : std_logic;
SIGNAL \i_dato|clk_out~4_combout\ : std_logic;
SIGNAL \i_dato|Add0~8_combout\ : std_logic;
SIGNAL \i_dato|clk_out~5_combout\ : std_logic;
SIGNAL \i_dato|clk_out~6_combout\ : std_logic;
SIGNAL \i_dato|clk_out~8_combout\ : std_logic;
SIGNAL \i_dato|clk_out~regout\ : std_logic;
SIGNAL \i_dato|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \i_address|Add0~0_combout\ : std_logic;
SIGNAL \i_address|Add0~1\ : std_logic;
SIGNAL \i_address|Add0~2_combout\ : std_logic;
SIGNAL \i_address|cnt[1]~feeder_combout\ : std_logic;
SIGNAL \i_address|Add0~3\ : std_logic;
SIGNAL \i_address|Add0~4_combout\ : std_logic;
SIGNAL \i_address|cnt[2]~feeder_combout\ : std_logic;
SIGNAL \i_address|Add0~5\ : std_logic;
SIGNAL \i_address|Add0~6_combout\ : std_logic;
SIGNAL \i_address|cnt[3]~feeder_combout\ : std_logic;
SIGNAL \i_address|Add0~7\ : std_logic;
SIGNAL \i_address|Add0~9\ : std_logic;
SIGNAL \i_address|Add0~10_combout\ : std_logic;
SIGNAL \i_address|Equal0~0_combout\ : std_logic;
SIGNAL \i_address|cnt~1_combout\ : std_logic;
SIGNAL \i_address|Add0~11\ : std_logic;
SIGNAL \i_address|Add0~12_combout\ : std_logic;
SIGNAL \i_address|cnt~0_combout\ : std_logic;
SIGNAL \i_address|cnt[5]~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|Selector0~1_combout\ : std_logic;
SIGNAL \i_trans_uart|Selector0~3_combout\ : std_logic;
SIGNAL \i_trans_uart|Selector0~4_combout\ : std_logic;
SIGNAL \i_trans_uart|Selector0~0_combout\ : std_logic;
SIGNAL \i_trans_uart|Selector0~5_combout\ : std_logic;
SIGNAL \i_9600|cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \i_dato|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_address|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_rom|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~clkctrl_outclk\ : std_logic;
SIGNAL \i_dato|ALT_INV_clk_out~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
tx <= ww_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\i_address|cnt\(6) & \i_address|cnt\(5) & \i_address|cnt\(4) & \i_address|cnt\(3) & \i_address|cnt\(2) & \i_address|cnt\(1) & \i_address|cnt\(0));

\i_rom|altsyncram_component|auto_generated|q_a\(0) <= \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\i_rom|altsyncram_component|auto_generated|q_a\(1) <= \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\i_rom|altsyncram_component|auto_generated|q_a\(2) <= \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\i_rom|altsyncram_component|auto_generated|q_a\(3) <= \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\i_rom|altsyncram_component|auto_generated|q_a\(4) <= \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\i_rom|altsyncram_component|auto_generated|q_a\(5) <= \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\i_rom|altsyncram_component|auto_generated|q_a\(6) <= \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\i_rom|altsyncram_component|auto_generated|q_a\(7) <= \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\i_9600|clk_out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i_9600|clk_out~regout\);

\i_dato|clk_out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i_dato|clk_out~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_rst~clkctrl_outclk\ <= NOT \rst~clkctrl_outclk\;
\i_dato|ALT_INV_clk_out~clkctrl_outclk\ <= NOT \i_dato|clk_out~clkctrl_outclk\;

-- Location: M4K_X27_Y13
\i_rom|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020204F49434E4153204C4544204F4452414E4F454C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM_Interna_Transmitter.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM_Interna_Transmitter:i_rom|altsyncram:altsyncram_component|altsyncram_1k91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	portaaddr => \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y14_N14
\i_dato|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~14_combout\ = (\i_dato|cnt\(7) & (!\i_dato|Add0~13\)) # (!\i_dato|cnt\(7) & ((\i_dato|Add0~13\) # (GND)))
-- \i_dato|Add0~15\ = CARRY((!\i_dato|Add0~13\) # (!\i_dato|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_dato|cnt\(7),
	datad => VCC,
	cin => \i_dato|Add0~13\,
	combout => \i_dato|Add0~14_combout\,
	cout => \i_dato|Add0~15\);

-- Location: LCCOMB_X28_Y13_N16
\i_address|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|Add0~8_combout\ = (\i_address|cnt\(4) & (\i_address|Add0~7\ $ (GND))) # (!\i_address|cnt\(4) & (!\i_address|Add0~7\ & VCC))
-- \i_address|Add0~9\ = CARRY((\i_address|cnt\(4) & !\i_address|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_address|cnt\(4),
	datad => VCC,
	cin => \i_address|Add0~7\,
	combout => \i_address|Add0~8_combout\,
	cout => \i_address|Add0~9\);

-- Location: LCCOMB_X19_Y8_N4
\i_9600|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~0_combout\ = \i_9600|cnt\(0) $ (VCC)
-- \i_9600|Add0~1\ = CARRY(\i_9600|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|cnt\(0),
	datad => VCC,
	combout => \i_9600|Add0~0_combout\,
	cout => \i_9600|Add0~1\);

-- Location: LCCOMB_X19_Y8_N6
\i_9600|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~2_combout\ = (\i_9600|cnt\(1) & (!\i_9600|Add0~1\)) # (!\i_9600|cnt\(1) & ((\i_9600|Add0~1\) # (GND)))
-- \i_9600|Add0~3\ = CARRY((!\i_9600|Add0~1\) # (!\i_9600|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|cnt\(1),
	datad => VCC,
	cin => \i_9600|Add0~1\,
	combout => \i_9600|Add0~2_combout\,
	cout => \i_9600|Add0~3\);

-- Location: LCCOMB_X19_Y8_N8
\i_9600|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~4_combout\ = (\i_9600|cnt\(2) & (\i_9600|Add0~3\ $ (GND))) # (!\i_9600|cnt\(2) & (!\i_9600|Add0~3\ & VCC))
-- \i_9600|Add0~5\ = CARRY((\i_9600|cnt\(2) & !\i_9600|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|cnt\(2),
	datad => VCC,
	cin => \i_9600|Add0~3\,
	combout => \i_9600|Add0~4_combout\,
	cout => \i_9600|Add0~5\);

-- Location: LCCOMB_X19_Y8_N10
\i_9600|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~6_combout\ = (\i_9600|cnt\(3) & (!\i_9600|Add0~5\)) # (!\i_9600|cnt\(3) & ((\i_9600|Add0~5\) # (GND)))
-- \i_9600|Add0~7\ = CARRY((!\i_9600|Add0~5\) # (!\i_9600|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|cnt\(3),
	datad => VCC,
	cin => \i_9600|Add0~5\,
	combout => \i_9600|Add0~6_combout\,
	cout => \i_9600|Add0~7\);

-- Location: LCCOMB_X19_Y8_N12
\i_9600|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~8_combout\ = (\i_9600|cnt\(4) & (\i_9600|Add0~7\ $ (GND))) # (!\i_9600|cnt\(4) & (!\i_9600|Add0~7\ & VCC))
-- \i_9600|Add0~9\ = CARRY((\i_9600|cnt\(4) & !\i_9600|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|cnt\(4),
	datad => VCC,
	cin => \i_9600|Add0~7\,
	combout => \i_9600|Add0~8_combout\,
	cout => \i_9600|Add0~9\);

-- Location: LCCOMB_X19_Y8_N14
\i_9600|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~10_combout\ = (\i_9600|cnt\(5) & (!\i_9600|Add0~9\)) # (!\i_9600|cnt\(5) & ((\i_9600|Add0~9\) # (GND)))
-- \i_9600|Add0~11\ = CARRY((!\i_9600|Add0~9\) # (!\i_9600|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|cnt\(5),
	datad => VCC,
	cin => \i_9600|Add0~9\,
	combout => \i_9600|Add0~10_combout\,
	cout => \i_9600|Add0~11\);

-- Location: LCCOMB_X19_Y8_N16
\i_9600|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~12_combout\ = (\i_9600|cnt\(6) & (\i_9600|Add0~11\ $ (GND))) # (!\i_9600|cnt\(6) & (!\i_9600|Add0~11\ & VCC))
-- \i_9600|Add0~13\ = CARRY((\i_9600|cnt\(6) & !\i_9600|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|cnt\(6),
	datad => VCC,
	cin => \i_9600|Add0~11\,
	combout => \i_9600|Add0~12_combout\,
	cout => \i_9600|Add0~13\);

-- Location: LCCOMB_X19_Y8_N18
\i_9600|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~14_combout\ = (\i_9600|cnt\(7) & (!\i_9600|Add0~13\)) # (!\i_9600|cnt\(7) & ((\i_9600|Add0~13\) # (GND)))
-- \i_9600|Add0~15\ = CARRY((!\i_9600|Add0~13\) # (!\i_9600|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|cnt\(7),
	datad => VCC,
	cin => \i_9600|Add0~13\,
	combout => \i_9600|Add0~14_combout\,
	cout => \i_9600|Add0~15\);

-- Location: LCCOMB_X19_Y8_N20
\i_9600|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~16_combout\ = (\i_9600|cnt\(8) & (\i_9600|Add0~15\ $ (GND))) # (!\i_9600|cnt\(8) & (!\i_9600|Add0~15\ & VCC))
-- \i_9600|Add0~17\ = CARRY((\i_9600|cnt\(8) & !\i_9600|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|cnt\(8),
	datad => VCC,
	cin => \i_9600|Add0~15\,
	combout => \i_9600|Add0~16_combout\,
	cout => \i_9600|Add0~17\);

-- Location: LCCOMB_X19_Y8_N22
\i_9600|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~18_combout\ = (\i_9600|cnt\(9) & (!\i_9600|Add0~17\)) # (!\i_9600|cnt\(9) & ((\i_9600|Add0~17\) # (GND)))
-- \i_9600|Add0~19\ = CARRY((!\i_9600|Add0~17\) # (!\i_9600|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|cnt\(9),
	datad => VCC,
	cin => \i_9600|Add0~17\,
	combout => \i_9600|Add0~18_combout\,
	cout => \i_9600|Add0~19\);

-- Location: LCCOMB_X19_Y8_N24
\i_9600|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~20_combout\ = (\i_9600|cnt\(10) & (\i_9600|Add0~19\ $ (GND))) # (!\i_9600|cnt\(10) & (!\i_9600|Add0~19\ & VCC))
-- \i_9600|Add0~21\ = CARRY((\i_9600|cnt\(10) & !\i_9600|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|cnt\(10),
	datad => VCC,
	cin => \i_9600|Add0~19\,
	combout => \i_9600|Add0~20_combout\,
	cout => \i_9600|Add0~21\);

-- Location: LCCOMB_X19_Y8_N26
\i_9600|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~22_combout\ = (\i_9600|cnt\(11) & (!\i_9600|Add0~21\)) # (!\i_9600|cnt\(11) & ((\i_9600|Add0~21\) # (GND)))
-- \i_9600|Add0~23\ = CARRY((!\i_9600|Add0~21\) # (!\i_9600|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|cnt\(11),
	datad => VCC,
	cin => \i_9600|Add0~21\,
	combout => \i_9600|Add0~22_combout\,
	cout => \i_9600|Add0~23\);

-- Location: LCCOMB_X19_Y8_N28
\i_9600|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Add0~24_combout\ = \i_9600|cnt\(12) $ (!\i_9600|Add0~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|cnt\(12),
	cin => \i_9600|Add0~23\,
	combout => \i_9600|Add0~24_combout\);

-- Location: LCCOMB_X26_Y13_N12
\i_trans_uart|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|Selector0~2_combout\ = (\i_trans_uart|estado.d2~regout\ & ((\i_rom|altsyncram_component|auto_generated|q_a\(2)) # ((\i_trans_uart|estado.d3~regout\ & \i_rom|altsyncram_component|auto_generated|q_a\(3))))) # (!\i_trans_uart|estado.d2~regout\ 
-- & (\i_trans_uart|estado.d3~regout\ & ((\i_rom|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_trans_uart|estado.d2~regout\,
	datab => \i_trans_uart|estado.d3~regout\,
	datac => \i_rom|altsyncram_component|auto_generated|q_a\(2),
	datad => \i_rom|altsyncram_component|auto_generated|q_a\(3),
	combout => \i_trans_uart|Selector0~2_combout\);

-- Location: LCFF_X18_Y8_N29
\i_9600|clk_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|clk_out~4_combout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|clk_out~regout\);

-- Location: LCFF_X30_Y14_N5
\i_dato|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|cnt~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(9));

-- Location: LCFF_X30_Y14_N27
\i_dato|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|cnt~4_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(8));

-- Location: LCFF_X29_Y14_N11
\i_dato|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|Add0~10_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(5));

-- Location: LCFF_X29_Y14_N7
\i_dato|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|Add0~6_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(3));

-- Location: LCFF_X31_Y14_N17
\i_dato|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|cnt~10_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(14));

-- Location: LCCOMB_X28_Y14_N28
\i_dato|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Equal0~4_combout\ = (\i_dato|Add0~4_combout\) # ((\i_dato|Add0~10_combout\) # ((\i_dato|Add0~6_combout\) # (!\i_dato|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~4_combout\,
	datab => \i_dato|Add0~10_combout\,
	datac => \i_dato|Add0~8_combout\,
	datad => \i_dato|Add0~6_combout\,
	combout => \i_dato|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y14_N20
\i_dato|clk_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~7_combout\ = (\i_dato|clk_out~regout\ & \i_dato|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|clk_out~regout\,
	datad => \i_dato|Add0~30_combout\,
	combout => \i_dato|clk_out~7_combout\);

-- Location: LCFF_X18_Y8_N7
\i_9600|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|cnt~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(12));

-- Location: LCFF_X19_Y8_N27
\i_9600|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|Add0~22_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(11));

-- Location: LCFF_X18_Y8_N23
\i_9600|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|cnt~2_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(10));

-- Location: LCFF_X19_Y8_N23
\i_9600|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|Add0~18_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(9));

-- Location: LCFF_X19_Y8_N21
\i_9600|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|Add0~16_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(8));

-- Location: LCFF_X19_Y8_N19
\i_9600|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|Add0~14_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(7));

-- Location: LCFF_X19_Y8_N1
\i_9600|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|cnt~3_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(6));

-- Location: LCFF_X19_Y8_N15
\i_9600|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|Add0~10_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(5));

-- Location: LCFF_X19_Y8_N31
\i_9600|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|cnt~4_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(4));

-- Location: LCFF_X18_Y8_N31
\i_9600|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|cnt~5_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(3));

-- Location: LCFF_X19_Y8_N9
\i_9600|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|Add0~4_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(2));

-- Location: LCFF_X19_Y8_N7
\i_9600|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|Add0~2_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(1));

-- Location: LCFF_X19_Y8_N3
\i_9600|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_9600|cnt~6_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_9600|cnt\(0));

-- Location: LCCOMB_X18_Y8_N12
\i_9600|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|LessThan1~0_combout\ = (!\i_9600|Add0~16_combout\ & (!\i_9600|Add0~14_combout\ & (!\i_9600|Add0~22_combout\ & !\i_9600|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~16_combout\,
	datab => \i_9600|Add0~14_combout\,
	datac => \i_9600|Add0~22_combout\,
	datad => \i_9600|Add0~18_combout\,
	combout => \i_9600|LessThan1~0_combout\);

-- Location: LCCOMB_X18_Y8_N0
\i_9600|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|LessThan1~1_combout\ = (!\i_9600|Add0~0_combout\ & (!\i_9600|Add0~4_combout\ & !\i_9600|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~0_combout\,
	datac => \i_9600|Add0~4_combout\,
	datad => \i_9600|Add0~2_combout\,
	combout => \i_9600|LessThan1~1_combout\);

-- Location: LCCOMB_X18_Y8_N16
\i_9600|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|LessThan1~2_combout\ = (!\i_9600|Add0~10_combout\ & (((\i_9600|LessThan1~1_combout\) # (!\i_9600|Add0~8_combout\)) # (!\i_9600|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~6_combout\,
	datab => \i_9600|Add0~10_combout\,
	datac => \i_9600|Add0~8_combout\,
	datad => \i_9600|LessThan1~1_combout\,
	combout => \i_9600|LessThan1~2_combout\);

-- Location: LCCOMB_X18_Y8_N20
\i_9600|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|LessThan1~3_combout\ = (\i_9600|LessThan1~0_combout\ & ((\i_9600|LessThan1~2_combout\) # (!\i_9600|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~12_combout\,
	datac => \i_9600|LessThan1~2_combout\,
	datad => \i_9600|LessThan1~0_combout\,
	combout => \i_9600|LessThan1~3_combout\);

-- Location: LCCOMB_X18_Y8_N10
\i_9600|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Equal0~0_combout\ = (\i_9600|Add0~2_combout\) # (((\i_9600|Add0~4_combout\) # (!\i_9600|Add0~8_combout\)) # (!\i_9600|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~2_combout\,
	datab => \i_9600|Add0~6_combout\,
	datac => \i_9600|Add0~8_combout\,
	datad => \i_9600|Add0~4_combout\,
	combout => \i_9600|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y8_N4
\i_9600|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Equal0~1_combout\ = ((\i_9600|Add0~10_combout\) # ((!\i_9600|Add0~20_combout\) # (!\i_9600|Add0~12_combout\))) # (!\i_9600|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~0_combout\,
	datab => \i_9600|Add0~10_combout\,
	datac => \i_9600|Add0~12_combout\,
	datad => \i_9600|Add0~20_combout\,
	combout => \i_9600|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y8_N26
\i_9600|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|Equal0~2_combout\ = (\i_9600|Equal0~0_combout\) # (((\i_9600|Equal0~1_combout\) # (!\i_9600|LessThan1~0_combout\)) # (!\i_9600|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Equal0~0_combout\,
	datab => \i_9600|Add0~24_combout\,
	datac => \i_9600|Equal0~1_combout\,
	datad => \i_9600|LessThan1~0_combout\,
	combout => \i_9600|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y8_N2
\i_9600|clk_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|clk_out~0_combout\ = (\i_9600|LessThan1~3_combout\) # ((\i_9600|clk_out~regout\ & \i_9600|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|clk_out~regout\,
	datac => \i_9600|LessThan1~3_combout\,
	datad => \i_9600|Equal0~2_combout\,
	combout => \i_9600|clk_out~0_combout\);

-- Location: LCCOMB_X18_Y8_N24
\i_9600|clk_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|clk_out~1_combout\ = (\i_9600|Add0~10_combout\ & ((\i_9600|Add0~8_combout\) # ((\i_9600|Add0~4_combout\ & \i_9600|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~4_combout\,
	datab => \i_9600|Add0~6_combout\,
	datac => \i_9600|Add0~8_combout\,
	datad => \i_9600|Add0~10_combout\,
	combout => \i_9600|clk_out~1_combout\);

-- Location: LCCOMB_X18_Y8_N18
\i_9600|clk_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|clk_out~2_combout\ = (\i_9600|Add0~12_combout\) # ((\i_9600|Add0~16_combout\) # ((\i_9600|clk_out~1_combout\) # (\i_9600|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~12_combout\,
	datab => \i_9600|Add0~16_combout\,
	datac => \i_9600|clk_out~1_combout\,
	datad => \i_9600|Add0~14_combout\,
	combout => \i_9600|clk_out~2_combout\);

-- Location: LCCOMB_X18_Y8_N8
\i_9600|clk_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|clk_out~3_combout\ = (\i_9600|Add0~20_combout\) # ((\i_9600|Add0~22_combout\ & (\i_9600|Add0~18_combout\ & \i_9600|clk_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~22_combout\,
	datab => \i_9600|Add0~18_combout\,
	datac => \i_9600|Add0~20_combout\,
	datad => \i_9600|clk_out~2_combout\,
	combout => \i_9600|clk_out~3_combout\);

-- Location: LCCOMB_X18_Y8_N28
\i_9600|clk_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|clk_out~4_combout\ = (\i_9600|Add0~24_combout\ & ((\i_9600|clk_out~0_combout\) # ((!\i_9600|Add0~22_combout\ & !\i_9600|clk_out~3_combout\)))) # (!\i_9600|Add0~24_combout\ & (\i_9600|Add0~22_combout\ & (\i_9600|clk_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~22_combout\,
	datab => \i_9600|Add0~24_combout\,
	datac => \i_9600|clk_out~3_combout\,
	datad => \i_9600|clk_out~0_combout\,
	combout => \i_9600|clk_out~4_combout\);

-- Location: LCCOMB_X30_Y14_N4
\i_dato|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|cnt~3_combout\ = (\i_dato|Add0~18_combout\ & ((\i_dato|Equal0~5_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~18_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~5_combout\,
	combout => \i_dato|cnt~3_combout\);

-- Location: LCCOMB_X30_Y14_N26
\i_dato|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|cnt~4_combout\ = (\i_dato|Add0~16_combout\ & ((\i_dato|Equal0~5_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~26_combout\,
	datab => \i_dato|Add0~16_combout\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~5_combout\,
	combout => \i_dato|cnt~4_combout\);

-- Location: LCCOMB_X31_Y14_N16
\i_dato|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|cnt~10_combout\ = (\i_dato|Add0~28_combout\ & ((\i_dato|Equal0~5_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~28_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|Equal0~5_combout\,
	datad => \i_dato|LessThan1~1_combout\,
	combout => \i_dato|cnt~10_combout\);

-- Location: LCCOMB_X18_Y8_N14
\i_9600|cnt[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|cnt[3]~0_combout\ = (\i_9600|LessThan1~3_combout\) # ((\i_9600|Equal0~2_combout\) # ((!\i_9600|Add0~22_combout\ & !\i_9600|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~22_combout\,
	datab => \i_9600|Add0~20_combout\,
	datac => \i_9600|LessThan1~3_combout\,
	datad => \i_9600|Equal0~2_combout\,
	combout => \i_9600|cnt[3]~0_combout\);

-- Location: LCCOMB_X18_Y8_N6
\i_9600|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|cnt~1_combout\ = (\i_9600|Add0~24_combout\ & \i_9600|cnt[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|Add0~24_combout\,
	datac => \i_9600|cnt[3]~0_combout\,
	combout => \i_9600|cnt~1_combout\);

-- Location: LCCOMB_X18_Y8_N22
\i_9600|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|cnt~2_combout\ = (\i_9600|Add0~20_combout\ & ((\i_9600|LessThan1~3_combout\) # (\i_9600|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|LessThan1~3_combout\,
	datac => \i_9600|Add0~20_combout\,
	datad => \i_9600|Equal0~2_combout\,
	combout => \i_9600|cnt~2_combout\);

-- Location: LCCOMB_X19_Y8_N0
\i_9600|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|cnt~3_combout\ = (\i_9600|Add0~12_combout\ & \i_9600|cnt[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_9600|Add0~12_combout\,
	datad => \i_9600|cnt[3]~0_combout\,
	combout => \i_9600|cnt~3_combout\);

-- Location: LCCOMB_X19_Y8_N30
\i_9600|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|cnt~4_combout\ = (\i_9600|Add0~8_combout\ & \i_9600|cnt[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~8_combout\,
	datad => \i_9600|cnt[3]~0_combout\,
	combout => \i_9600|cnt~4_combout\);

-- Location: LCCOMB_X18_Y8_N30
\i_9600|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|cnt~5_combout\ = (\i_9600|Add0~6_combout\ & \i_9600|cnt[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|Add0~6_combout\,
	datac => \i_9600|cnt[3]~0_combout\,
	combout => \i_9600|cnt~5_combout\);

-- Location: LCCOMB_X19_Y8_N2
\i_9600|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_9600|cnt~6_combout\ = (\i_9600|Add0~0_combout\ & \i_9600|cnt[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_9600|Add0~0_combout\,
	datad => \i_9600|cnt[3]~0_combout\,
	combout => \i_9600|cnt~6_combout\);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G6
\i_9600|clk_out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_9600|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_9600|clk_out~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y13_N10
\i_trans_uart|estado.d5~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d5~feeder_combout\ = \i_trans_uart|estado.d4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d4~regout\,
	combout => \i_trans_uart|estado.d5~feeder_combout\);

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G7
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X25_Y13_N11
\i_trans_uart|estado.d5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	datain => \i_trans_uart|estado.d5~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_trans_uart|estado.d5~regout\);

-- Location: LCCOMB_X25_Y13_N0
\i_trans_uart|estado.d6~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d6~feeder_combout\ = \i_trans_uart|estado.d5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d5~regout\,
	combout => \i_trans_uart|estado.d6~feeder_combout\);

-- Location: LCFF_X25_Y13_N1
\i_trans_uart|estado.d6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	datain => \i_trans_uart|estado.d6~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_trans_uart|estado.d6~regout\);

-- Location: LCCOMB_X25_Y13_N26
\i_trans_uart|estado.d7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d7~feeder_combout\ = \i_trans_uart|estado.d6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d6~regout\,
	combout => \i_trans_uart|estado.d7~feeder_combout\);

-- Location: LCFF_X25_Y13_N27
\i_trans_uart|estado.d7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	datain => \i_trans_uart|estado.d7~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_trans_uart|estado.d7~regout\);

-- Location: LCCOMB_X25_Y13_N20
\i_trans_uart|estado.stop~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.stop~feeder_combout\ = \i_trans_uart|estado.d7~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d7~regout\,
	combout => \i_trans_uart|estado.stop~feeder_combout\);

-- Location: LCFF_X25_Y13_N21
\i_trans_uart|estado.stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	datain => \i_trans_uart|estado.stop~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_trans_uart|estado.stop~regout\);

-- Location: LCCOMB_X25_Y13_N16
\i_trans_uart|estado.idle~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.idle~0_combout\ = !\i_trans_uart|estado.stop~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_trans_uart|estado.stop~regout\,
	combout => \i_trans_uart|estado.idle~0_combout\);

-- Location: LCFF_X25_Y13_N17
\i_trans_uart|estado.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	datain => \i_trans_uart|estado.idle~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_trans_uart|estado.idle~regout\);

-- Location: LCCOMB_X25_Y13_N30
\i_trans_uart|estado.start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.start~0_combout\ = !\i_trans_uart|estado.idle~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_trans_uart|estado.idle~regout\,
	combout => \i_trans_uart|estado.start~0_combout\);

-- Location: LCFF_X25_Y13_N31
\i_trans_uart|estado.start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	datain => \i_trans_uart|estado.start~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_trans_uart|estado.start~regout\);

-- Location: LCCOMB_X25_Y13_N28
\i_trans_uart|estado.d0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d0~feeder_combout\ = \i_trans_uart|estado.start~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.start~regout\,
	combout => \i_trans_uart|estado.d0~feeder_combout\);

-- Location: LCFF_X25_Y13_N29
\i_trans_uart|estado.d0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	datain => \i_trans_uart|estado.d0~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_trans_uart|estado.d0~regout\);

-- Location: LCCOMB_X25_Y13_N22
\i_trans_uart|estado.d1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d1~feeder_combout\ = \i_trans_uart|estado.d0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d0~regout\,
	combout => \i_trans_uart|estado.d1~feeder_combout\);

-- Location: LCFF_X25_Y13_N23
\i_trans_uart|estado.d1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	datain => \i_trans_uart|estado.d1~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_trans_uart|estado.d1~regout\);

-- Location: LCCOMB_X25_Y13_N24
\i_trans_uart|estado.d2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d2~feeder_combout\ = \i_trans_uart|estado.d1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d1~regout\,
	combout => \i_trans_uart|estado.d2~feeder_combout\);

-- Location: LCFF_X25_Y13_N25
\i_trans_uart|estado.d2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	datain => \i_trans_uart|estado.d2~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_trans_uart|estado.d2~regout\);

-- Location: LCFF_X25_Y13_N19
\i_trans_uart|estado.d3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	sdata => \i_trans_uart|estado.d2~regout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_trans_uart|estado.d3~regout\);

-- Location: LCCOMB_X25_Y13_N12
\i_trans_uart|estado.d4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d4~feeder_combout\ = \i_trans_uart|estado.d3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d3~regout\,
	combout => \i_trans_uart|estado.d4~feeder_combout\);

-- Location: LCFF_X25_Y13_N13
\i_trans_uart|estado.d4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	datain => \i_trans_uart|estado.d4~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_trans_uart|estado.d4~regout\);

-- Location: LCCOMB_X30_Y14_N28
\i_dato|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|cnt~7_combout\ = (\i_dato|Add0~8_combout\ & ((\i_dato|Equal0~5_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~8_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~5_combout\,
	combout => \i_dato|cnt~7_combout\);

-- Location: LCFF_X30_Y14_N29
\i_dato|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|cnt~7_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(4));

-- Location: LCCOMB_X30_Y14_N14
\i_dato|cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|cnt~8_combout\ = (\i_dato|Add0~2_combout\ & ((\i_dato|Equal0~5_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~2_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~5_combout\,
	combout => \i_dato|cnt~8_combout\);

-- Location: LCFF_X30_Y14_N15
\i_dato|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|cnt~8_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(1));

-- Location: LCCOMB_X30_Y14_N0
\i_dato|cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|cnt~9_combout\ = (\i_dato|Add0~0_combout\ & ((\i_dato|Equal0~5_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~0_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~5_combout\,
	combout => \i_dato|cnt~9_combout\);

-- Location: LCFF_X30_Y14_N1
\i_dato|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|cnt~9_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(0));

-- Location: LCCOMB_X29_Y14_N0
\i_dato|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~0_combout\ = \i_dato|cnt\(0) $ (VCC)
-- \i_dato|Add0~1\ = CARRY(\i_dato|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_dato|cnt\(0),
	datad => VCC,
	combout => \i_dato|Add0~0_combout\,
	cout => \i_dato|Add0~1\);

-- Location: LCCOMB_X29_Y14_N2
\i_dato|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~2_combout\ = (\i_dato|cnt\(1) & (!\i_dato|Add0~1\)) # (!\i_dato|cnt\(1) & ((\i_dato|Add0~1\) # (GND)))
-- \i_dato|Add0~3\ = CARRY((!\i_dato|Add0~1\) # (!\i_dato|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_dato|cnt\(1),
	datad => VCC,
	cin => \i_dato|Add0~1\,
	combout => \i_dato|Add0~2_combout\,
	cout => \i_dato|Add0~3\);

-- Location: LCCOMB_X29_Y14_N4
\i_dato|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~4_combout\ = (\i_dato|cnt\(2) & (\i_dato|Add0~3\ $ (GND))) # (!\i_dato|cnt\(2) & (!\i_dato|Add0~3\ & VCC))
-- \i_dato|Add0~5\ = CARRY((\i_dato|cnt\(2) & !\i_dato|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_dato|cnt\(2),
	datad => VCC,
	cin => \i_dato|Add0~3\,
	combout => \i_dato|Add0~4_combout\,
	cout => \i_dato|Add0~5\);

-- Location: LCFF_X29_Y14_N5
\i_dato|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|Add0~4_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(2));

-- Location: LCCOMB_X29_Y14_N6
\i_dato|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~6_combout\ = (\i_dato|cnt\(3) & (!\i_dato|Add0~5\)) # (!\i_dato|cnt\(3) & ((\i_dato|Add0~5\) # (GND)))
-- \i_dato|Add0~7\ = CARRY((!\i_dato|Add0~5\) # (!\i_dato|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|cnt\(3),
	datad => VCC,
	cin => \i_dato|Add0~5\,
	combout => \i_dato|Add0~6_combout\,
	cout => \i_dato|Add0~7\);

-- Location: LCCOMB_X29_Y14_N8
\i_dato|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~8_combout\ = (\i_dato|cnt\(4) & (\i_dato|Add0~7\ $ (GND))) # (!\i_dato|cnt\(4) & (!\i_dato|Add0~7\ & VCC))
-- \i_dato|Add0~9\ = CARRY((\i_dato|cnt\(4) & !\i_dato|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_dato|cnt\(4),
	datad => VCC,
	cin => \i_dato|Add0~7\,
	combout => \i_dato|Add0~8_combout\,
	cout => \i_dato|Add0~9\);

-- Location: LCCOMB_X29_Y14_N10
\i_dato|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~10_combout\ = (\i_dato|cnt\(5) & (!\i_dato|Add0~9\)) # (!\i_dato|cnt\(5) & ((\i_dato|Add0~9\) # (GND)))
-- \i_dato|Add0~11\ = CARRY((!\i_dato|Add0~9\) # (!\i_dato|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|cnt\(5),
	datad => VCC,
	cin => \i_dato|Add0~9\,
	combout => \i_dato|Add0~10_combout\,
	cout => \i_dato|Add0~11\);

-- Location: LCCOMB_X30_Y14_N24
\i_dato|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|cnt~1_combout\ = (\i_dato|Add0~22_combout\ & ((\i_dato|Equal0~5_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~22_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~5_combout\,
	combout => \i_dato|cnt~1_combout\);

-- Location: LCFF_X30_Y14_N25
\i_dato|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|cnt~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(11));

-- Location: LCCOMB_X30_Y14_N18
\i_dato|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|cnt~2_combout\ = (\i_dato|Add0~20_combout\ & ((\i_dato|Equal0~5_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~20_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~5_combout\,
	combout => \i_dato|cnt~2_combout\);

-- Location: LCFF_X30_Y14_N19
\i_dato|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|cnt~2_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(10));

-- Location: LCCOMB_X30_Y14_N12
\i_dato|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|cnt~5_combout\ = (\i_dato|Add0~14_combout\ & ((\i_dato|Equal0~5_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~14_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~5_combout\,
	combout => \i_dato|cnt~5_combout\);

-- Location: LCFF_X30_Y14_N13
\i_dato|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|cnt~5_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(7));

-- Location: LCCOMB_X30_Y14_N10
\i_dato|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|cnt~6_combout\ = (\i_dato|Add0~12_combout\ & ((\i_dato|Equal0~5_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~12_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~5_combout\,
	combout => \i_dato|cnt~6_combout\);

-- Location: LCFF_X30_Y14_N11
\i_dato|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|cnt~6_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(6));

-- Location: LCCOMB_X29_Y14_N12
\i_dato|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~12_combout\ = (\i_dato|cnt\(6) & (\i_dato|Add0~11\ $ (GND))) # (!\i_dato|cnt\(6) & (!\i_dato|Add0~11\ & VCC))
-- \i_dato|Add0~13\ = CARRY((\i_dato|cnt\(6) & !\i_dato|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_dato|cnt\(6),
	datad => VCC,
	cin => \i_dato|Add0~11\,
	combout => \i_dato|Add0~12_combout\,
	cout => \i_dato|Add0~13\);

-- Location: LCCOMB_X29_Y14_N16
\i_dato|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~16_combout\ = (\i_dato|cnt\(8) & (\i_dato|Add0~15\ $ (GND))) # (!\i_dato|cnt\(8) & (!\i_dato|Add0~15\ & VCC))
-- \i_dato|Add0~17\ = CARRY((\i_dato|cnt\(8) & !\i_dato|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|cnt\(8),
	datad => VCC,
	cin => \i_dato|Add0~15\,
	combout => \i_dato|Add0~16_combout\,
	cout => \i_dato|Add0~17\);

-- Location: LCCOMB_X29_Y14_N18
\i_dato|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~18_combout\ = (\i_dato|cnt\(9) & (!\i_dato|Add0~17\)) # (!\i_dato|cnt\(9) & ((\i_dato|Add0~17\) # (GND)))
-- \i_dato|Add0~19\ = CARRY((!\i_dato|Add0~17\) # (!\i_dato|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|cnt\(9),
	datad => VCC,
	cin => \i_dato|Add0~17\,
	combout => \i_dato|Add0~18_combout\,
	cout => \i_dato|Add0~19\);

-- Location: LCCOMB_X29_Y14_N20
\i_dato|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~20_combout\ = (\i_dato|cnt\(10) & (\i_dato|Add0~19\ $ (GND))) # (!\i_dato|cnt\(10) & (!\i_dato|Add0~19\ & VCC))
-- \i_dato|Add0~21\ = CARRY((\i_dato|cnt\(10) & !\i_dato|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_dato|cnt\(10),
	datad => VCC,
	cin => \i_dato|Add0~19\,
	combout => \i_dato|Add0~20_combout\,
	cout => \i_dato|Add0~21\);

-- Location: LCCOMB_X29_Y14_N22
\i_dato|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~22_combout\ = (\i_dato|cnt\(11) & (!\i_dato|Add0~21\)) # (!\i_dato|cnt\(11) & ((\i_dato|Add0~21\) # (GND)))
-- \i_dato|Add0~23\ = CARRY((!\i_dato|Add0~21\) # (!\i_dato|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_dato|cnt\(11),
	datad => VCC,
	cin => \i_dato|Add0~21\,
	combout => \i_dato|Add0~22_combout\,
	cout => \i_dato|Add0~23\);

-- Location: LCCOMB_X29_Y14_N24
\i_dato|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~24_combout\ = (\i_dato|cnt\(12) & (\i_dato|Add0~23\ $ (GND))) # (!\i_dato|cnt\(12) & (!\i_dato|Add0~23\ & VCC))
-- \i_dato|Add0~25\ = CARRY((\i_dato|cnt\(12) & !\i_dato|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_dato|cnt\(12),
	datad => VCC,
	cin => \i_dato|Add0~23\,
	combout => \i_dato|Add0~24_combout\,
	cout => \i_dato|Add0~25\);

-- Location: LCCOMB_X30_Y14_N22
\i_dato|clk_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~0_combout\ = (\i_dato|Add0~14_combout\ & (\i_dato|Add0~16_combout\ & (\i_dato|Add0~12_combout\ & \i_dato|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~14_combout\,
	datab => \i_dato|Add0~16_combout\,
	datac => \i_dato|Add0~12_combout\,
	datad => \i_dato|Add0~18_combout\,
	combout => \i_dato|clk_out~0_combout\);

-- Location: LCCOMB_X30_Y14_N8
\i_dato|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Equal0~3_combout\ = (\i_dato|Add0~20_combout\ & (\i_dato|Add0~24_combout\ & (\i_dato|Add0~22_combout\ & \i_dato|clk_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~20_combout\,
	datab => \i_dato|Add0~24_combout\,
	datac => \i_dato|Add0~22_combout\,
	datad => \i_dato|clk_out~0_combout\,
	combout => \i_dato|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y14_N2
\i_dato|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Equal0~2_combout\ = (\i_dato|Add0~0_combout\ & \i_dato|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_dato|Add0~0_combout\,
	datad => \i_dato|Add0~2_combout\,
	combout => \i_dato|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y14_N30
\i_dato|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|LessThan1~0_combout\ = (!\i_dato|Add0~4_combout\ & (!\i_dato|Add0~6_combout\ & (!\i_dato|Add0~10_combout\ & !\i_dato|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~4_combout\,
	datab => \i_dato|Add0~6_combout\,
	datac => \i_dato|Add0~10_combout\,
	datad => \i_dato|Equal0~2_combout\,
	combout => \i_dato|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y14_N16
\i_dato|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|LessThan1~1_combout\ = ((\i_dato|LessThan1~0_combout\) # ((!\i_dato|Add0~8_combout\ & !\i_dato|Add0~10_combout\))) # (!\i_dato|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~8_combout\,
	datab => \i_dato|Add0~10_combout\,
	datac => \i_dato|Equal0~3_combout\,
	datad => \i_dato|LessThan1~0_combout\,
	combout => \i_dato|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y14_N2
\i_dato|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|cnt~0_combout\ = (\i_dato|Add0~24_combout\ & ((\i_dato|Equal0~5_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~24_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|Equal0~5_combout\,
	datad => \i_dato|LessThan1~1_combout\,
	combout => \i_dato|cnt~0_combout\);

-- Location: LCFF_X31_Y14_N3
\i_dato|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|cnt~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(12));

-- Location: LCCOMB_X29_Y14_N26
\i_dato|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~26_combout\ = (\i_dato|cnt\(13) & (!\i_dato|Add0~25\)) # (!\i_dato|cnt\(13) & ((\i_dato|Add0~25\) # (GND)))
-- \i_dato|Add0~27\ = CARRY((!\i_dato|Add0~25\) # (!\i_dato|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_dato|cnt\(13),
	datad => VCC,
	cin => \i_dato|Add0~25\,
	combout => \i_dato|Add0~26_combout\,
	cout => \i_dato|Add0~27\);

-- Location: LCFF_X29_Y14_N27
\i_dato|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|Add0~26_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(13));

-- Location: LCCOMB_X29_Y14_N28
\i_dato|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~28_combout\ = (\i_dato|cnt\(14) & (\i_dato|Add0~27\ $ (GND))) # (!\i_dato|cnt\(14) & (!\i_dato|Add0~27\ & VCC))
-- \i_dato|Add0~29\ = CARRY((\i_dato|cnt\(14) & !\i_dato|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|cnt\(14),
	datad => VCC,
	cin => \i_dato|Add0~27\,
	combout => \i_dato|Add0~28_combout\,
	cout => \i_dato|Add0~29\);

-- Location: LCCOMB_X31_Y14_N22
\i_dato|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|cnt~11_combout\ = (\i_dato|Add0~30_combout\ & ((\i_dato|Equal0~5_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~30_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|Equal0~5_combout\,
	datad => \i_dato|LessThan1~1_combout\,
	combout => \i_dato|cnt~11_combout\);

-- Location: LCFF_X31_Y14_N23
\i_dato|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|cnt~11_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|cnt\(15));

-- Location: LCCOMB_X29_Y14_N30
\i_dato|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Add0~30_combout\ = \i_dato|Add0~29\ $ (\i_dato|cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_dato|cnt\(15),
	cin => \i_dato|Add0~29\,
	combout => \i_dato|Add0~30_combout\);

-- Location: LCCOMB_X30_Y14_N30
\i_dato|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Equal0~6_combout\ = (((\i_dato|Add0~26_combout\) # (!\i_dato|Add0~30_combout\)) # (!\i_dato|Add0~0_combout\)) # (!\i_dato|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~2_combout\,
	datab => \i_dato|Add0~0_combout\,
	datac => \i_dato|Add0~30_combout\,
	datad => \i_dato|Add0~26_combout\,
	combout => \i_dato|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y14_N6
\i_dato|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|Equal0~5_combout\ = (\i_dato|Equal0~4_combout\) # (((\i_dato|Equal0~6_combout\) # (!\i_dato|Equal0~3_combout\)) # (!\i_dato|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Equal0~4_combout\,
	datab => \i_dato|Add0~28_combout\,
	datac => \i_dato|Equal0~3_combout\,
	datad => \i_dato|Equal0~6_combout\,
	combout => \i_dato|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y14_N20
\i_dato|clk_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~1_combout\ = (\i_dato|Add0~6_combout\ & ((\i_dato|Add0~0_combout\) # ((\i_dato|Add0~4_combout\) # (\i_dato|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~0_combout\,
	datab => \i_dato|Add0~4_combout\,
	datac => \i_dato|Add0~6_combout\,
	datad => \i_dato|Add0~2_combout\,
	combout => \i_dato|clk_out~1_combout\);

-- Location: LCCOMB_X31_Y14_N6
\i_dato|clk_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~2_combout\ = (\i_dato|Add0~22_combout\ & (\i_dato|clk_out~0_combout\ & ((\i_dato|Add0~8_combout\) # (\i_dato|clk_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~8_combout\,
	datab => \i_dato|Add0~22_combout\,
	datac => \i_dato|clk_out~1_combout\,
	datad => \i_dato|clk_out~0_combout\,
	combout => \i_dato|clk_out~2_combout\);

-- Location: LCCOMB_X31_Y14_N10
\i_dato|clk_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~3_combout\ = (\i_dato|Add0~24_combout\) # ((\i_dato|Add0~10_combout\ & (\i_dato|Add0~20_combout\ & \i_dato|clk_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~10_combout\,
	datab => \i_dato|Add0~20_combout\,
	datac => \i_dato|Add0~24_combout\,
	datad => \i_dato|clk_out~2_combout\,
	combout => \i_dato|clk_out~3_combout\);

-- Location: LCCOMB_X31_Y14_N8
\i_dato|clk_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~4_combout\ = (\i_dato|Add0~28_combout\ & (\i_dato|Add0~26_combout\ & (!\i_dato|Add0~30_combout\ & \i_dato|clk_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~28_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|Add0~30_combout\,
	datad => \i_dato|clk_out~3_combout\,
	combout => \i_dato|clk_out~4_combout\);

-- Location: LCCOMB_X31_Y14_N18
\i_dato|clk_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~5_combout\ = (!\i_dato|LessThan1~0_combout\ & (\i_dato|Equal0~3_combout\ & ((\i_dato|Add0~10_combout\) # (\i_dato|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~10_combout\,
	datab => \i_dato|LessThan1~0_combout\,
	datac => \i_dato|Add0~8_combout\,
	datad => \i_dato|Equal0~3_combout\,
	combout => \i_dato|clk_out~5_combout\);

-- Location: LCCOMB_X31_Y14_N26
\i_dato|clk_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~6_combout\ = (\i_dato|Add0~30_combout\ & (((!\i_dato|Add0~26_combout\ & !\i_dato|clk_out~5_combout\)) # (!\i_dato|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~28_combout\,
	datab => \i_dato|Add0~26_combout\,
	datac => \i_dato|Add0~30_combout\,
	datad => \i_dato|clk_out~5_combout\,
	combout => \i_dato|clk_out~6_combout\);

-- Location: LCCOMB_X31_Y14_N24
\i_dato|clk_out~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~8_combout\ = (\i_dato|clk_out~4_combout\) # ((\i_dato|clk_out~6_combout\) # ((\i_dato|clk_out~7_combout\ & \i_dato|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|clk_out~7_combout\,
	datab => \i_dato|Equal0~5_combout\,
	datac => \i_dato|clk_out~4_combout\,
	datad => \i_dato|clk_out~6_combout\,
	combout => \i_dato|clk_out~8_combout\);

-- Location: LCFF_X31_Y14_N25
\i_dato|clk_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_dato|clk_out~8_combout\,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_dato|clk_out~regout\);

-- Location: CLKCTRL_G4
\i_dato|clk_out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_dato|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_dato|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y13_N8
\i_address|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|Add0~0_combout\ = \i_address|cnt\(0) $ (VCC)
-- \i_address|Add0~1\ = CARRY(\i_address|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_address|cnt\(0),
	datad => VCC,
	combout => \i_address|Add0~0_combout\,
	cout => \i_address|Add0~1\);

-- Location: LCFF_X28_Y13_N29
\i_address|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	sdata => \i_address|Add0~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_address|cnt\(0));

-- Location: LCCOMB_X28_Y13_N10
\i_address|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|Add0~2_combout\ = (\i_address|cnt\(1) & (!\i_address|Add0~1\)) # (!\i_address|cnt\(1) & ((\i_address|Add0~1\) # (GND)))
-- \i_address|Add0~3\ = CARRY((!\i_address|Add0~1\) # (!\i_address|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_address|cnt\(1),
	datad => VCC,
	cin => \i_address|Add0~1\,
	combout => \i_address|Add0~2_combout\,
	cout => \i_address|Add0~3\);

-- Location: LCCOMB_X28_Y13_N2
\i_address|cnt[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|cnt[1]~feeder_combout\ = \i_address|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_address|Add0~2_combout\,
	combout => \i_address|cnt[1]~feeder_combout\);

-- Location: LCFF_X28_Y13_N3
\i_address|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	datain => \i_address|cnt[1]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_address|cnt\(1));

-- Location: LCCOMB_X28_Y13_N12
\i_address|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|Add0~4_combout\ = (\i_address|cnt\(2) & (\i_address|Add0~3\ $ (GND))) # (!\i_address|cnt\(2) & (!\i_address|Add0~3\ & VCC))
-- \i_address|Add0~5\ = CARRY((\i_address|cnt\(2) & !\i_address|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_address|cnt\(2),
	datad => VCC,
	cin => \i_address|Add0~3\,
	combout => \i_address|Add0~4_combout\,
	cout => \i_address|Add0~5\);

-- Location: LCCOMB_X28_Y13_N4
\i_address|cnt[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|cnt[2]~feeder_combout\ = \i_address|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_address|Add0~4_combout\,
	combout => \i_address|cnt[2]~feeder_combout\);

-- Location: LCFF_X28_Y13_N5
\i_address|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	datain => \i_address|cnt[2]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_address|cnt\(2));

-- Location: LCCOMB_X28_Y13_N14
\i_address|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|Add0~6_combout\ = (\i_address|cnt\(3) & (!\i_address|Add0~5\)) # (!\i_address|cnt\(3) & ((\i_address|Add0~5\) # (GND)))
-- \i_address|Add0~7\ = CARRY((!\i_address|Add0~5\) # (!\i_address|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_address|cnt\(3),
	datad => VCC,
	cin => \i_address|Add0~5\,
	combout => \i_address|Add0~6_combout\,
	cout => \i_address|Add0~7\);

-- Location: LCCOMB_X28_Y13_N30
\i_address|cnt[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|cnt[3]~feeder_combout\ = \i_address|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_address|Add0~6_combout\,
	combout => \i_address|cnt[3]~feeder_combout\);

-- Location: LCFF_X28_Y13_N31
\i_address|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	datain => \i_address|cnt[3]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_address|cnt\(3));

-- Location: LCCOMB_X28_Y13_N18
\i_address|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|Add0~10_combout\ = (\i_address|cnt\(5) & (!\i_address|Add0~9\)) # (!\i_address|cnt\(5) & ((\i_address|Add0~9\) # (GND)))
-- \i_address|Add0~11\ = CARRY((!\i_address|Add0~9\) # (!\i_address|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_address|cnt\(5),
	datad => VCC,
	cin => \i_address|Add0~9\,
	combout => \i_address|Add0~10_combout\,
	cout => \i_address|Add0~11\);

-- Location: LCCOMB_X28_Y13_N0
\i_address|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|Equal0~0_combout\ = (!\i_address|Add0~2_combout\ & (!\i_address|Add0~0_combout\ & (!\i_address|Add0~6_combout\ & !\i_address|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address|Add0~2_combout\,
	datab => \i_address|Add0~0_combout\,
	datac => \i_address|Add0~6_combout\,
	datad => \i_address|Add0~4_combout\,
	combout => \i_address|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y13_N6
\i_address|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|cnt~1_combout\ = (\i_address|Add0~12_combout\ & (((\i_address|Add0~10_combout\) # (!\i_address|Equal0~0_combout\)) # (!\i_address|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address|Add0~8_combout\,
	datab => \i_address|Add0~10_combout\,
	datac => \i_address|Add0~12_combout\,
	datad => \i_address|Equal0~0_combout\,
	combout => \i_address|cnt~1_combout\);

-- Location: LCFF_X28_Y13_N7
\i_address|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	datain => \i_address|cnt~1_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_address|cnt\(6));

-- Location: LCCOMB_X28_Y13_N20
\i_address|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|Add0~12_combout\ = \i_address|Add0~11\ $ (!\i_address|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_address|cnt\(6),
	cin => \i_address|Add0~11\,
	combout => \i_address|Add0~12_combout\);

-- Location: LCCOMB_X28_Y13_N22
\i_address|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|cnt~0_combout\ = (\i_address|Add0~8_combout\ & ((\i_address|Add0~10_combout\) # ((!\i_address|Equal0~0_combout\) # (!\i_address|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address|Add0~8_combout\,
	datab => \i_address|Add0~10_combout\,
	datac => \i_address|Add0~12_combout\,
	datad => \i_address|Equal0~0_combout\,
	combout => \i_address|cnt~0_combout\);

-- Location: LCFF_X28_Y13_N23
\i_address|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	datain => \i_address|cnt~0_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_address|cnt\(4));

-- Location: LCCOMB_X28_Y13_N24
\i_address|cnt[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_address|cnt[5]~feeder_combout\ = \i_address|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_address|Add0~10_combout\,
	combout => \i_address|cnt[5]~feeder_combout\);

-- Location: LCFF_X28_Y13_N25
\i_address|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	datain => \i_address|cnt[5]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_address|cnt\(5));

-- Location: LCCOMB_X26_Y13_N10
\i_trans_uart|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|Selector0~1_combout\ = (\i_rom|altsyncram_component|auto_generated|q_a\(4) & ((\i_trans_uart|estado.d4~regout\) # ((\i_trans_uart|estado.d5~regout\ & \i_rom|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\i_rom|altsyncram_component|auto_generated|q_a\(4) & (((\i_trans_uart|estado.d5~regout\ & \i_rom|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rom|altsyncram_component|auto_generated|q_a\(4),
	datab => \i_trans_uart|estado.d4~regout\,
	datac => \i_trans_uart|estado.d5~regout\,
	datad => \i_rom|altsyncram_component|auto_generated|q_a\(5),
	combout => \i_trans_uart|Selector0~1_combout\);

-- Location: LCCOMB_X26_Y13_N26
\i_trans_uart|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|Selector0~3_combout\ = (\i_trans_uart|estado.d0~regout\ & \i_rom|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_trans_uart|estado.d0~regout\,
	datad => \i_rom|altsyncram_component|auto_generated|q_a\(0),
	combout => \i_trans_uart|Selector0~3_combout\);

-- Location: LCCOMB_X26_Y13_N0
\i_trans_uart|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|Selector0~4_combout\ = (\i_trans_uart|Selector0~2_combout\) # ((\i_trans_uart|Selector0~3_combout\) # ((\i_trans_uart|estado.d1~regout\ & \i_rom|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_trans_uart|Selector0~2_combout\,
	datab => \i_trans_uart|Selector0~3_combout\,
	datac => \i_trans_uart|estado.d1~regout\,
	datad => \i_rom|altsyncram_component|auto_generated|q_a\(1),
	combout => \i_trans_uart|Selector0~4_combout\);

-- Location: LCCOMB_X26_Y13_N28
\i_trans_uart|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|Selector0~0_combout\ = (\i_rom|altsyncram_component|auto_generated|q_a\(7) & ((\i_trans_uart|estado.d7~regout\) # ((\i_trans_uart|estado.d6~regout\ & \i_rom|altsyncram_component|auto_generated|q_a\(6))))) # 
-- (!\i_rom|altsyncram_component|auto_generated|q_a\(7) & (\i_trans_uart|estado.d6~regout\ & (\i_rom|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rom|altsyncram_component|auto_generated|q_a\(7),
	datab => \i_trans_uart|estado.d6~regout\,
	datac => \i_rom|altsyncram_component|auto_generated|q_a\(6),
	datad => \i_trans_uart|estado.d7~regout\,
	combout => \i_trans_uart|Selector0~0_combout\);

-- Location: LCCOMB_X26_Y13_N30
\i_trans_uart|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_trans_uart|Selector0~5_combout\ = (\i_trans_uart|Selector0~1_combout\) # ((\i_trans_uart|Selector0~4_combout\) # ((\i_trans_uart|Selector0~0_combout\) # (!\i_trans_uart|estado.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_trans_uart|Selector0~1_combout\,
	datab => \i_trans_uart|Selector0~4_combout\,
	datac => \i_trans_uart|estado.idle~regout\,
	datad => \i_trans_uart|Selector0~0_combout\,
	combout => \i_trans_uart|Selector0~5_combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tx~I\ : cycloneii_io
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
	datain => \i_trans_uart|Selector0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tx);
END structure;


