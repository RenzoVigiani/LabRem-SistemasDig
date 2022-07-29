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

-- DATE "07/29/2022 15:53:35"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	transmitter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	tx : OUT std_logic
	);
END transmitter;

-- Design Ports Information
-- tx	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- rst	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \i_dato|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_9600|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_address|Add0~11\ : std_logic;
SIGNAL \i_address|Add0~12_combout\ : std_logic;
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
SIGNAL \i_9600|clk_out~q\ : std_logic;
SIGNAL \i_9600|LessThan1~0_combout\ : std_logic;
SIGNAL \i_9600|LessThan1~1_combout\ : std_logic;
SIGNAL \i_9600|LessThan1~2_combout\ : std_logic;
SIGNAL \i_9600|LessThan1~3_combout\ : std_logic;
SIGNAL \i_9600|Equal0~0_combout\ : std_logic;
SIGNAL \i_9600|Equal0~1_combout\ : std_logic;
SIGNAL \i_9600|Equal0~2_combout\ : std_logic;
SIGNAL \i_9600|Equal0~3_combout\ : std_logic;
SIGNAL \i_9600|clk_out~0_combout\ : std_logic;
SIGNAL \i_9600|clk_out~1_combout\ : std_logic;
SIGNAL \i_9600|clk_out~2_combout\ : std_logic;
SIGNAL \i_9600|clk_out~3_combout\ : std_logic;
SIGNAL \i_9600|clk_out~4_combout\ : std_logic;
SIGNAL \i_dato|cnt~1_combout\ : std_logic;
SIGNAL \i_dato|cnt~6_combout\ : std_logic;
SIGNAL \i_dato|cnt~11_combout\ : std_logic;
SIGNAL \i_9600|cnt[3]~0_combout\ : std_logic;
SIGNAL \i_9600|cnt~1_combout\ : std_logic;
SIGNAL \i_9600|cnt~2_combout\ : std_logic;
SIGNAL \i_9600|cnt~3_combout\ : std_logic;
SIGNAL \i_9600|cnt~4_combout\ : std_logic;
SIGNAL \i_9600|cnt~5_combout\ : std_logic;
SIGNAL \i_9600|cnt~6_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \i_9600|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \i_trans_uart|estado.start~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_trans_uart|estado.start~q\ : std_logic;
SIGNAL \i_trans_uart|estado.d0~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d0~q\ : std_logic;
SIGNAL \i_trans_uart|estado.d1~q\ : std_logic;
SIGNAL \i_trans_uart|estado.d2~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d2~q\ : std_logic;
SIGNAL \i_trans_uart|estado.d3~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d3~q\ : std_logic;
SIGNAL \i_trans_uart|estado.d4~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d4~q\ : std_logic;
SIGNAL \i_trans_uart|estado.d5~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d5~q\ : std_logic;
SIGNAL \i_trans_uart|estado.d6~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d6~q\ : std_logic;
SIGNAL \i_trans_uart|estado.d7~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.d7~q\ : std_logic;
SIGNAL \i_trans_uart|estado.stop~feeder_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.stop~q\ : std_logic;
SIGNAL \i_trans_uart|estado.idle~0_combout\ : std_logic;
SIGNAL \i_trans_uart|estado.idle~q\ : std_logic;
SIGNAL \i_dato|Add0~26_combout\ : std_logic;
SIGNAL \i_dato|cnt~0_combout\ : std_logic;
SIGNAL \i_dato|Add0~29\ : std_logic;
SIGNAL \i_dato|Add0~30_combout\ : std_logic;
SIGNAL \i_dato|Add0~16_combout\ : std_logic;
SIGNAL \i_dato|clk_out~0_combout\ : std_logic;
SIGNAL \i_dato|Equal0~2_combout\ : std_logic;
SIGNAL \i_dato|Add0~0_combout\ : std_logic;
SIGNAL \i_dato|Add0~10_combout\ : std_logic;
SIGNAL \i_dato|Add0~6_combout\ : std_logic;
SIGNAL \i_dato|Equal0~3_combout\ : std_logic;
SIGNAL \i_dato|Equal0~5_combout\ : std_logic;
SIGNAL \i_dato|Equal0~4_combout\ : std_logic;
SIGNAL \i_dato|Add0~1\ : std_logic;
SIGNAL \i_dato|Add0~2_combout\ : std_logic;
SIGNAL \i_dato|LessThan1~0_combout\ : std_logic;
SIGNAL \i_dato|LessThan1~1_combout\ : std_logic;
SIGNAL \i_dato|cnt~10_combout\ : std_logic;
SIGNAL \i_dato|Add0~3\ : std_logic;
SIGNAL \i_dato|Add0~4_combout\ : std_logic;
SIGNAL \i_dato|Add0~5\ : std_logic;
SIGNAL \i_dato|Add0~7\ : std_logic;
SIGNAL \i_dato|Add0~8_combout\ : std_logic;
SIGNAL \i_dato|cnt~9_combout\ : std_logic;
SIGNAL \i_dato|Add0~9\ : std_logic;
SIGNAL \i_dato|Add0~11\ : std_logic;
SIGNAL \i_dato|Add0~12_combout\ : std_logic;
SIGNAL \i_dato|cnt~8_combout\ : std_logic;
SIGNAL \i_dato|Add0~13\ : std_logic;
SIGNAL \i_dato|Add0~14_combout\ : std_logic;
SIGNAL \i_dato|cnt~7_combout\ : std_logic;
SIGNAL \i_dato|Add0~15\ : std_logic;
SIGNAL \i_dato|Add0~17\ : std_logic;
SIGNAL \i_dato|Add0~18_combout\ : std_logic;
SIGNAL \i_dato|cnt~5_combout\ : std_logic;
SIGNAL \i_dato|Add0~19\ : std_logic;
SIGNAL \i_dato|Add0~20_combout\ : std_logic;
SIGNAL \i_dato|cnt~4_combout\ : std_logic;
SIGNAL \i_dato|Add0~21\ : std_logic;
SIGNAL \i_dato|Add0~22_combout\ : std_logic;
SIGNAL \i_dato|cnt~3_combout\ : std_logic;
SIGNAL \i_dato|Add0~23\ : std_logic;
SIGNAL \i_dato|Add0~24_combout\ : std_logic;
SIGNAL \i_dato|cnt~2_combout\ : std_logic;
SIGNAL \i_dato|Add0~25\ : std_logic;
SIGNAL \i_dato|Add0~27\ : std_logic;
SIGNAL \i_dato|Add0~28_combout\ : std_logic;
SIGNAL \i_dato|clk_out~1_combout\ : std_logic;
SIGNAL \i_dato|clk_out~2_combout\ : std_logic;
SIGNAL \i_dato|clk_out~3_combout\ : std_logic;
SIGNAL \i_dato|clk_out~4_combout\ : std_logic;
SIGNAL \i_dato|clk_out~5_combout\ : std_logic;
SIGNAL \i_dato|clk_out~6_combout\ : std_logic;
SIGNAL \i_dato|clk_out~q\ : std_logic;
SIGNAL \i_dato|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \i_address|Add0~0_combout\ : std_logic;
SIGNAL \i_address|cnt[0]~feeder_combout\ : std_logic;
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
SIGNAL \i_address|Add0~8_combout\ : std_logic;
SIGNAL \i_address|cnt[5]~feeder_combout\ : std_logic;
SIGNAL \i_address|Add0~9\ : std_logic;
SIGNAL \i_address|Add0~10_combout\ : std_logic;
SIGNAL \i_address|Equal0~0_combout\ : std_logic;
SIGNAL \i_address|cnt~0_combout\ : std_logic;
SIGNAL \i_address|cnt~1_combout\ : std_logic;
SIGNAL \i_trans_uart|Selector0~1_combout\ : std_logic;
SIGNAL \i_trans_uart|Selector0~0_combout\ : std_logic;
SIGNAL \i_trans_uart|Selector0~3_combout\ : std_logic;
SIGNAL \i_trans_uart|Selector0~2_combout\ : std_logic;
SIGNAL \i_trans_uart|Selector0~4_combout\ : std_logic;
SIGNAL \i_trans_uart|Selector0~5_combout\ : std_logic;
SIGNAL \i_9600|cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \i_dato|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_address|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_rom|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
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

\i_dato|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_dato|clk_out~q\);

\i_9600|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_9600|clk_out~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\i_dato|ALT_INV_clk_out~clkctrl_outclk\ <= NOT \i_dato|clk_out~clkctrl_outclk\;

-- Location: M9K_X27_Y9_N0
\i_rom|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080002000080004F0012400430013800410014C00200013000450011000200013C004400148004100138004F00114004C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM_Interna_Transmitter.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM_Interna_Transmitter:i_rom|altsyncram:altsyncram_component|altsyncram_jo91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	portaaddr => \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \i_rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X28_Y9_N10
\i_address|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_address|Add0~10_combout\ = (\i_address|cnt\(5) & (!\i_address|Add0~9\)) # (!\i_address|cnt\(5) & ((\i_address|Add0~9\) # (GND)))
-- \i_address|Add0~11\ = CARRY((!\i_address|Add0~9\) # (!\i_address|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_address|cnt\(5),
	datad => VCC,
	cin => \i_address|Add0~9\,
	combout => \i_address|Add0~10_combout\,
	cout => \i_address|Add0~11\);

-- Location: LCCOMB_X28_Y9_N12
\i_address|Add0~12\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X18_Y19_N0
\i_9600|Add0~0\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X18_Y19_N2
\i_9600|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|Add0~2_combout\ = (\i_9600|cnt\(1) & (!\i_9600|Add0~1\)) # (!\i_9600|cnt\(1) & ((\i_9600|Add0~1\) # (GND)))
-- \i_9600|Add0~3\ = CARRY((!\i_9600|Add0~1\) # (!\i_9600|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|cnt\(1),
	datad => VCC,
	cin => \i_9600|Add0~1\,
	combout => \i_9600|Add0~2_combout\,
	cout => \i_9600|Add0~3\);

-- Location: LCCOMB_X18_Y19_N4
\i_9600|Add0~4\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X18_Y19_N6
\i_9600|Add0~6\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X18_Y19_N8
\i_9600|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|Add0~8_combout\ = (\i_9600|cnt\(4) & (\i_9600|Add0~7\ $ (GND))) # (!\i_9600|cnt\(4) & (!\i_9600|Add0~7\ & VCC))
-- \i_9600|Add0~9\ = CARRY((\i_9600|cnt\(4) & !\i_9600|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|cnt\(4),
	datad => VCC,
	cin => \i_9600|Add0~7\,
	combout => \i_9600|Add0~8_combout\,
	cout => \i_9600|Add0~9\);

-- Location: LCCOMB_X18_Y19_N10
\i_9600|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|Add0~10_combout\ = (\i_9600|cnt\(5) & (!\i_9600|Add0~9\)) # (!\i_9600|cnt\(5) & ((\i_9600|Add0~9\) # (GND)))
-- \i_9600|Add0~11\ = CARRY((!\i_9600|Add0~9\) # (!\i_9600|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|cnt\(5),
	datad => VCC,
	cin => \i_9600|Add0~9\,
	combout => \i_9600|Add0~10_combout\,
	cout => \i_9600|Add0~11\);

-- Location: LCCOMB_X18_Y19_N12
\i_9600|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|Add0~12_combout\ = (\i_9600|cnt\(6) & (\i_9600|Add0~11\ $ (GND))) # (!\i_9600|cnt\(6) & (!\i_9600|Add0~11\ & VCC))
-- \i_9600|Add0~13\ = CARRY((\i_9600|cnt\(6) & !\i_9600|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|cnt\(6),
	datad => VCC,
	cin => \i_9600|Add0~11\,
	combout => \i_9600|Add0~12_combout\,
	cout => \i_9600|Add0~13\);

-- Location: LCCOMB_X18_Y19_N14
\i_9600|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|Add0~14_combout\ = (\i_9600|cnt\(7) & (!\i_9600|Add0~13\)) # (!\i_9600|cnt\(7) & ((\i_9600|Add0~13\) # (GND)))
-- \i_9600|Add0~15\ = CARRY((!\i_9600|Add0~13\) # (!\i_9600|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|cnt\(7),
	datad => VCC,
	cin => \i_9600|Add0~13\,
	combout => \i_9600|Add0~14_combout\,
	cout => \i_9600|Add0~15\);

-- Location: LCCOMB_X18_Y19_N16
\i_9600|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|Add0~16_combout\ = (\i_9600|cnt\(8) & (\i_9600|Add0~15\ $ (GND))) # (!\i_9600|cnt\(8) & (!\i_9600|Add0~15\ & VCC))
-- \i_9600|Add0~17\ = CARRY((\i_9600|cnt\(8) & !\i_9600|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|cnt\(8),
	datad => VCC,
	cin => \i_9600|Add0~15\,
	combout => \i_9600|Add0~16_combout\,
	cout => \i_9600|Add0~17\);

-- Location: LCCOMB_X18_Y19_N18
\i_9600|Add0~18\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X18_Y19_N20
\i_9600|Add0~20\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X18_Y19_N22
\i_9600|Add0~22\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X18_Y19_N24
\i_9600|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|Add0~24_combout\ = \i_9600|Add0~23\ $ (!\i_9600|cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_9600|cnt\(12),
	cin => \i_9600|Add0~23\,
	combout => \i_9600|Add0~24_combout\);

-- Location: FF_X19_Y19_N23
\i_9600|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|clk_out~4_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|clk_out~q\);

-- Location: FF_X33_Y12_N23
\i_dato|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|cnt~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(14));

-- Location: FF_X31_Y12_N27
\i_dato|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|Add0~26_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(13));

-- Location: FF_X32_Y12_N31
\i_dato|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|cnt~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(8));

-- Location: FF_X31_Y12_N11
\i_dato|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|Add0~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(5));

-- Location: FF_X31_Y12_N7
\i_dato|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|Add0~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(3));

-- Location: FF_X32_Y12_N3
\i_dato|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|cnt~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(0));

-- Location: FF_X19_Y19_N29
\i_9600|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|cnt~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(12));

-- Location: FF_X18_Y19_N23
\i_9600|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|Add0~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(11));

-- Location: FF_X19_Y19_N9
\i_9600|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|cnt~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(10));

-- Location: FF_X18_Y19_N19
\i_9600|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|Add0~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(9));

-- Location: FF_X18_Y19_N17
\i_9600|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|Add0~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(8));

-- Location: FF_X18_Y19_N15
\i_9600|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|Add0~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(7));

-- Location: FF_X19_Y19_N5
\i_9600|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|cnt~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(6));

-- Location: FF_X18_Y19_N11
\i_9600|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|Add0~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(5));

-- Location: FF_X19_Y19_N3
\i_9600|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|cnt~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(4));

-- Location: FF_X18_Y19_N27
\i_9600|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|cnt~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(3));

-- Location: FF_X18_Y19_N5
\i_9600|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|Add0~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(2));

-- Location: FF_X18_Y19_N3
\i_9600|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|Add0~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(1));

-- Location: FF_X18_Y19_N29
\i_9600|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_9600|cnt~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_9600|cnt\(0));

-- Location: LCCOMB_X18_Y19_N30
\i_9600|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|LessThan1~0_combout\ = (!\i_9600|Add0~22_combout\ & (!\i_9600|Add0~16_combout\ & (!\i_9600|Add0~14_combout\ & !\i_9600|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~22_combout\,
	datab => \i_9600|Add0~16_combout\,
	datac => \i_9600|Add0~14_combout\,
	datad => \i_9600|Add0~18_combout\,
	combout => \i_9600|LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y19_N14
\i_9600|LessThan1~1\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y19_N30
\i_9600|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|LessThan1~2_combout\ = (!\i_9600|Add0~10_combout\ & (((\i_9600|LessThan1~1_combout\) # (!\i_9600|Add0~6_combout\)) # (!\i_9600|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~8_combout\,
	datab => \i_9600|Add0~6_combout\,
	datac => \i_9600|LessThan1~1_combout\,
	datad => \i_9600|Add0~10_combout\,
	combout => \i_9600|LessThan1~2_combout\);

-- Location: LCCOMB_X19_Y19_N26
\i_9600|LessThan1~3\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y19_N0
\i_9600|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|Equal0~0_combout\ = (((\i_9600|Add0~4_combout\) # (\i_9600|Add0~2_combout\)) # (!\i_9600|Add0~6_combout\)) # (!\i_9600|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~0_combout\,
	datab => \i_9600|Add0~6_combout\,
	datac => \i_9600|Add0~4_combout\,
	datad => \i_9600|Add0~2_combout\,
	combout => \i_9600|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y19_N6
\i_9600|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|Equal0~1_combout\ = (\i_9600|Add0~10_combout\) # (((\i_9600|Equal0~0_combout\) # (!\i_9600|Add0~12_combout\)) # (!\i_9600|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~10_combout\,
	datab => \i_9600|Add0~8_combout\,
	datac => \i_9600|Add0~12_combout\,
	datad => \i_9600|Equal0~0_combout\,
	combout => \i_9600|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y19_N12
\i_9600|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|Equal0~2_combout\ = (\i_9600|Add0~14_combout\) # ((\i_9600|Add0~18_combout\) # ((\i_9600|Add0~16_combout\) # (\i_9600|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~14_combout\,
	datab => \i_9600|Add0~18_combout\,
	datac => \i_9600|Add0~16_combout\,
	datad => \i_9600|Equal0~1_combout\,
	combout => \i_9600|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y19_N20
\i_9600|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|Equal0~3_combout\ = ((\i_9600|Add0~22_combout\) # ((\i_9600|Equal0~2_combout\) # (!\i_9600|Add0~20_combout\))) # (!\i_9600|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~24_combout\,
	datab => \i_9600|Add0~22_combout\,
	datac => \i_9600|Add0~20_combout\,
	datad => \i_9600|Equal0~2_combout\,
	combout => \i_9600|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y19_N24
\i_9600|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|clk_out~0_combout\ = (\i_9600|LessThan1~3_combout\) # ((\i_9600|clk_out~q\ & \i_9600|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|clk_out~q\,
	datac => \i_9600|LessThan1~3_combout\,
	datad => \i_9600|Equal0~3_combout\,
	combout => \i_9600|clk_out~0_combout\);

-- Location: LCCOMB_X17_Y19_N0
\i_9600|clk_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|clk_out~1_combout\ = (\i_9600|Add0~10_combout\ & ((\i_9600|Add0~8_combout\) # ((\i_9600|Add0~4_combout\ & \i_9600|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~4_combout\,
	datab => \i_9600|Add0~8_combout\,
	datac => \i_9600|Add0~10_combout\,
	datad => \i_9600|Add0~6_combout\,
	combout => \i_9600|clk_out~1_combout\);

-- Location: LCCOMB_X19_Y19_N10
\i_9600|clk_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|clk_out~2_combout\ = (\i_9600|Add0~14_combout\) # ((\i_9600|Add0~12_combout\) # ((\i_9600|Add0~16_combout\) # (\i_9600|clk_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~14_combout\,
	datab => \i_9600|Add0~12_combout\,
	datac => \i_9600|Add0~16_combout\,
	datad => \i_9600|clk_out~1_combout\,
	combout => \i_9600|clk_out~2_combout\);

-- Location: LCCOMB_X19_Y19_N18
\i_9600|clk_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|clk_out~3_combout\ = (\i_9600|Add0~20_combout\) # ((\i_9600|Add0~22_combout\ & (\i_9600|Add0~18_combout\ & \i_9600|clk_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~20_combout\,
	datab => \i_9600|Add0~22_combout\,
	datac => \i_9600|Add0~18_combout\,
	datad => \i_9600|clk_out~2_combout\,
	combout => \i_9600|clk_out~3_combout\);

-- Location: LCCOMB_X19_Y19_N22
\i_9600|clk_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|clk_out~4_combout\ = (\i_9600|Add0~24_combout\ & ((\i_9600|clk_out~0_combout\) # ((!\i_9600|Add0~22_combout\ & !\i_9600|clk_out~3_combout\)))) # (!\i_9600|Add0~24_combout\ & (\i_9600|Add0~22_combout\ & ((\i_9600|clk_out~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~24_combout\,
	datab => \i_9600|Add0~22_combout\,
	datac => \i_9600|clk_out~0_combout\,
	datad => \i_9600|clk_out~3_combout\,
	combout => \i_9600|clk_out~4_combout\);

-- Location: LCCOMB_X33_Y12_N22
\i_dato|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|cnt~1_combout\ = (\i_dato|Add0~28_combout\ & ((\i_dato|Equal0~4_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~26_combout\,
	datab => \i_dato|Add0~28_combout\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~4_combout\,
	combout => \i_dato|cnt~1_combout\);

-- Location: LCCOMB_X32_Y12_N30
\i_dato|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|cnt~6_combout\ = (\i_dato|Add0~16_combout\ & ((\i_dato|Equal0~4_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~26_combout\,
	datab => \i_dato|Add0~16_combout\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~4_combout\,
	combout => \i_dato|cnt~6_combout\);

-- Location: LCCOMB_X32_Y12_N2
\i_dato|cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|cnt~11_combout\ = (\i_dato|Add0~0_combout\ & ((\i_dato|Equal0~4_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~0_combout\,
	datab => \i_dato|Equal0~4_combout\,
	datac => \i_dato|Add0~26_combout\,
	datad => \i_dato|LessThan1~1_combout\,
	combout => \i_dato|cnt~11_combout\);

-- Location: LCCOMB_X19_Y19_N16
\i_9600|cnt[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|cnt[3]~0_combout\ = (\i_9600|LessThan1~3_combout\) # ((\i_9600|Equal0~3_combout\) # ((!\i_9600|Add0~20_combout\ & !\i_9600|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~20_combout\,
	datab => \i_9600|Add0~22_combout\,
	datac => \i_9600|LessThan1~3_combout\,
	datad => \i_9600|Equal0~3_combout\,
	combout => \i_9600|cnt[3]~0_combout\);

-- Location: LCCOMB_X19_Y19_N28
\i_9600|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|cnt~1_combout\ = (\i_9600|Add0~24_combout\ & \i_9600|cnt[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|Add0~24_combout\,
	datad => \i_9600|cnt[3]~0_combout\,
	combout => \i_9600|cnt~1_combout\);

-- Location: LCCOMB_X19_Y19_N8
\i_9600|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|cnt~2_combout\ = (\i_9600|Add0~20_combout\ & ((\i_9600|LessThan1~3_combout\) # (\i_9600|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|Add0~20_combout\,
	datac => \i_9600|LessThan1~3_combout\,
	datad => \i_9600|Equal0~3_combout\,
	combout => \i_9600|cnt~2_combout\);

-- Location: LCCOMB_X19_Y19_N4
\i_9600|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|cnt~3_combout\ = (\i_9600|Add0~12_combout\ & \i_9600|cnt[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~12_combout\,
	datad => \i_9600|cnt[3]~0_combout\,
	combout => \i_9600|cnt~3_combout\);

-- Location: LCCOMB_X19_Y19_N2
\i_9600|cnt~4\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X18_Y19_N26
\i_9600|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|cnt~5_combout\ = (\i_9600|Add0~6_combout\ & \i_9600|cnt[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_9600|Add0~6_combout\,
	datad => \i_9600|cnt[3]~0_combout\,
	combout => \i_9600|cnt~5_combout\);

-- Location: LCCOMB_X18_Y19_N28
\i_9600|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_9600|cnt~6_combout\ = (\i_9600|Add0~0_combout\ & \i_9600|cnt[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_9600|Add0~0_combout\,
	datad => \i_9600|cnt[3]~0_combout\,
	combout => \i_9600|cnt~6_combout\);

-- Location: IOIBUF_X34_Y12_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\i_9600|clk_out~clkctrl\ : cycloneive_clkctrl
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

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X34_Y17_N2
\tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_trans_uart|Selector0~5_combout\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: LCCOMB_X28_Y8_N24
\i_trans_uart|estado.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.start~0_combout\ = !\i_trans_uart|estado.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_trans_uart|estado.idle~q\,
	combout => \i_trans_uart|estado.start~0_combout\);

-- Location: IOIBUF_X34_Y12_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G7
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X28_Y8_N25
\i_trans_uart|estado.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	d => \i_trans_uart|estado.start~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_trans_uart|estado.start~q\);

-- Location: LCCOMB_X28_Y8_N8
\i_trans_uart|estado.d0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d0~feeder_combout\ = \i_trans_uart|estado.start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.start~q\,
	combout => \i_trans_uart|estado.d0~feeder_combout\);

-- Location: FF_X28_Y8_N9
\i_trans_uart|estado.d0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	d => \i_trans_uart|estado.d0~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_trans_uart|estado.d0~q\);

-- Location: FF_X28_Y8_N27
\i_trans_uart|estado.d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	asdata => \i_trans_uart|estado.d0~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_trans_uart|estado.d1~q\);

-- Location: LCCOMB_X28_Y8_N18
\i_trans_uart|estado.d2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d2~feeder_combout\ = \i_trans_uart|estado.d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_trans_uart|estado.d1~q\,
	combout => \i_trans_uart|estado.d2~feeder_combout\);

-- Location: FF_X28_Y8_N19
\i_trans_uart|estado.d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	d => \i_trans_uart|estado.d2~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_trans_uart|estado.d2~q\);

-- Location: LCCOMB_X28_Y8_N28
\i_trans_uart|estado.d3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d3~feeder_combout\ = \i_trans_uart|estado.d2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d2~q\,
	combout => \i_trans_uart|estado.d3~feeder_combout\);

-- Location: FF_X28_Y8_N29
\i_trans_uart|estado.d3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	d => \i_trans_uart|estado.d3~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_trans_uart|estado.d3~q\);

-- Location: LCCOMB_X28_Y8_N16
\i_trans_uart|estado.d4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d4~feeder_combout\ = \i_trans_uart|estado.d3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d3~q\,
	combout => \i_trans_uart|estado.d4~feeder_combout\);

-- Location: FF_X28_Y8_N17
\i_trans_uart|estado.d4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	d => \i_trans_uart|estado.d4~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_trans_uart|estado.d4~q\);

-- Location: LCCOMB_X28_Y8_N6
\i_trans_uart|estado.d5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d5~feeder_combout\ = \i_trans_uart|estado.d4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d4~q\,
	combout => \i_trans_uart|estado.d5~feeder_combout\);

-- Location: FF_X28_Y8_N7
\i_trans_uart|estado.d5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	d => \i_trans_uart|estado.d5~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_trans_uart|estado.d5~q\);

-- Location: LCCOMB_X28_Y8_N2
\i_trans_uart|estado.d6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d6~feeder_combout\ = \i_trans_uart|estado.d5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d5~q\,
	combout => \i_trans_uart|estado.d6~feeder_combout\);

-- Location: FF_X28_Y8_N3
\i_trans_uart|estado.d6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	d => \i_trans_uart|estado.d6~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_trans_uart|estado.d6~q\);

-- Location: LCCOMB_X28_Y8_N10
\i_trans_uart|estado.d7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.d7~feeder_combout\ = \i_trans_uart|estado.d6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d6~q\,
	combout => \i_trans_uart|estado.d7~feeder_combout\);

-- Location: FF_X28_Y8_N11
\i_trans_uart|estado.d7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	d => \i_trans_uart|estado.d7~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_trans_uart|estado.d7~q\);

-- Location: LCCOMB_X28_Y8_N20
\i_trans_uart|estado.stop~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.stop~feeder_combout\ = \i_trans_uart|estado.d7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.d7~q\,
	combout => \i_trans_uart|estado.stop~feeder_combout\);

-- Location: FF_X28_Y8_N21
\i_trans_uart|estado.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	d => \i_trans_uart|estado.stop~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_trans_uart|estado.stop~q\);

-- Location: LCCOMB_X28_Y8_N22
\i_trans_uart|estado.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|estado.idle~0_combout\ = !\i_trans_uart|estado.stop~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_trans_uart|estado.stop~q\,
	combout => \i_trans_uart|estado.idle~0_combout\);

-- Location: FF_X28_Y8_N23
\i_trans_uart|estado.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_9600|clk_out~clkctrl_outclk\,
	d => \i_trans_uart|estado.idle~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_trans_uart|estado.idle~q\);

-- Location: LCCOMB_X31_Y12_N26
\i_dato|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|Add0~26_combout\ = (\i_dato|cnt\(13) & (!\i_dato|Add0~25\)) # (!\i_dato|cnt\(13) & ((\i_dato|Add0~25\) # (GND)))
-- \i_dato|Add0~27\ = CARRY((!\i_dato|Add0~25\) # (!\i_dato|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|cnt\(13),
	datad => VCC,
	cin => \i_dato|Add0~25\,
	combout => \i_dato|Add0~26_combout\,
	cout => \i_dato|Add0~27\);

-- Location: LCCOMB_X32_Y12_N24
\i_dato|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|cnt~0_combout\ = (\i_dato|Add0~30_combout\ & ((\i_dato|Equal0~4_combout\) # ((\i_dato|LessThan1~1_combout\ & !\i_dato|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|LessThan1~1_combout\,
	datab => \i_dato|Add0~30_combout\,
	datac => \i_dato|Add0~26_combout\,
	datad => \i_dato|Equal0~4_combout\,
	combout => \i_dato|cnt~0_combout\);

-- Location: FF_X32_Y12_N25
\i_dato|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|cnt~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(15));

-- Location: LCCOMB_X31_Y12_N28
\i_dato|Add0~28\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X31_Y12_N30
\i_dato|Add0~30\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X31_Y12_N16
\i_dato|Add0~16\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X32_Y12_N4
\i_dato|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~0_combout\ = (\i_dato|Add0~14_combout\ & (\i_dato|Add0~12_combout\ & (\i_dato|Add0~16_combout\ & \i_dato|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~14_combout\,
	datab => \i_dato|Add0~12_combout\,
	datac => \i_dato|Add0~16_combout\,
	datad => \i_dato|Add0~18_combout\,
	combout => \i_dato|clk_out~0_combout\);

-- Location: LCCOMB_X32_Y12_N26
\i_dato|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|Equal0~2_combout\ = (\i_dato|Add0~20_combout\ & (\i_dato|Add0~22_combout\ & (\i_dato|clk_out~0_combout\ & \i_dato|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~20_combout\,
	datab => \i_dato|Add0~22_combout\,
	datac => \i_dato|clk_out~0_combout\,
	datad => \i_dato|Add0~24_combout\,
	combout => \i_dato|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y12_N0
\i_dato|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|Add0~0_combout\ = \i_dato|cnt\(0) $ (VCC)
-- \i_dato|Add0~1\ = CARRY(\i_dato|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|cnt\(0),
	datad => VCC,
	combout => \i_dato|Add0~0_combout\,
	cout => \i_dato|Add0~1\);

-- Location: LCCOMB_X31_Y12_N10
\i_dato|Add0~10\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X31_Y12_N6
\i_dato|Add0~6\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X30_Y12_N16
\i_dato|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|Equal0~3_combout\ = (\i_dato|Add0~4_combout\) # (((\i_dato|Add0~10_combout\) # (\i_dato|Add0~6_combout\)) # (!\i_dato|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~4_combout\,
	datab => \i_dato|Add0~8_combout\,
	datac => \i_dato|Add0~10_combout\,
	datad => \i_dato|Add0~6_combout\,
	combout => \i_dato|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y12_N18
\i_dato|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|Equal0~5_combout\ = (((\i_dato|Add0~26_combout\) # (\i_dato|Equal0~3_combout\)) # (!\i_dato|Add0~0_combout\)) # (!\i_dato|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~2_combout\,
	datab => \i_dato|Add0~0_combout\,
	datac => \i_dato|Add0~26_combout\,
	datad => \i_dato|Equal0~3_combout\,
	combout => \i_dato|Equal0~5_combout\);

-- Location: LCCOMB_X32_Y12_N20
\i_dato|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|Equal0~4_combout\ = (((\i_dato|Equal0~5_combout\) # (!\i_dato|Equal0~2_combout\)) # (!\i_dato|Add0~30_combout\)) # (!\i_dato|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~28_combout\,
	datab => \i_dato|Add0~30_combout\,
	datac => \i_dato|Equal0~2_combout\,
	datad => \i_dato|Equal0~5_combout\,
	combout => \i_dato|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y12_N2
\i_dato|Add0~2\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X32_Y12_N8
\i_dato|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|LessThan1~0_combout\ = (!\i_dato|Add0~4_combout\ & (!\i_dato|Add0~6_combout\ & ((!\i_dato|Add0~2_combout\) # (!\i_dato|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~0_combout\,
	datab => \i_dato|Add0~4_combout\,
	datac => \i_dato|Add0~6_combout\,
	datad => \i_dato|Add0~2_combout\,
	combout => \i_dato|LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y12_N6
\i_dato|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|LessThan1~1_combout\ = ((!\i_dato|Add0~10_combout\ & ((\i_dato|LessThan1~0_combout\) # (!\i_dato|Add0~8_combout\)))) # (!\i_dato|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~8_combout\,
	datab => \i_dato|LessThan1~0_combout\,
	datac => \i_dato|Equal0~2_combout\,
	datad => \i_dato|Add0~10_combout\,
	combout => \i_dato|LessThan1~1_combout\);

-- Location: LCCOMB_X32_Y12_N16
\i_dato|cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|cnt~10_combout\ = (\i_dato|Add0~2_combout\ & ((\i_dato|Equal0~4_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~2_combout\,
	datab => \i_dato|Equal0~4_combout\,
	datac => \i_dato|Add0~26_combout\,
	datad => \i_dato|LessThan1~1_combout\,
	combout => \i_dato|cnt~10_combout\);

-- Location: FF_X32_Y12_N17
\i_dato|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|cnt~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(1));

-- Location: LCCOMB_X31_Y12_N4
\i_dato|Add0~4\ : cycloneive_lcell_comb
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

-- Location: FF_X31_Y12_N5
\i_dato|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|Add0~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(2));

-- Location: LCCOMB_X31_Y12_N8
\i_dato|Add0~8\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X33_Y12_N8
\i_dato|cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|cnt~9_combout\ = (\i_dato|Add0~8_combout\ & ((\i_dato|Equal0~4_combout\) # ((!\i_dato|Add0~26_combout\ & \i_dato|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~26_combout\,
	datab => \i_dato|Add0~8_combout\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~4_combout\,
	combout => \i_dato|cnt~9_combout\);

-- Location: FF_X33_Y12_N9
\i_dato|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|cnt~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(4));

-- Location: LCCOMB_X31_Y12_N12
\i_dato|Add0~12\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X32_Y12_N22
\i_dato|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|cnt~8_combout\ = (\i_dato|Add0~12_combout\ & ((\i_dato|Equal0~4_combout\) # ((\i_dato|LessThan1~1_combout\ & !\i_dato|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|LessThan1~1_combout\,
	datab => \i_dato|Add0~12_combout\,
	datac => \i_dato|Add0~26_combout\,
	datad => \i_dato|Equal0~4_combout\,
	combout => \i_dato|cnt~8_combout\);

-- Location: FF_X32_Y12_N23
\i_dato|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|cnt~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(6));

-- Location: LCCOMB_X31_Y12_N14
\i_dato|Add0~14\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X32_Y12_N12
\i_dato|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|cnt~7_combout\ = (\i_dato|Add0~14_combout\ & ((\i_dato|Equal0~4_combout\) # ((\i_dato|LessThan1~1_combout\ & !\i_dato|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|LessThan1~1_combout\,
	datab => \i_dato|Add0~14_combout\,
	datac => \i_dato|Add0~26_combout\,
	datad => \i_dato|Equal0~4_combout\,
	combout => \i_dato|cnt~7_combout\);

-- Location: FF_X32_Y12_N13
\i_dato|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|cnt~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(7));

-- Location: LCCOMB_X31_Y12_N18
\i_dato|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|Add0~18_combout\ = (\i_dato|cnt\(9) & (!\i_dato|Add0~17\)) # (!\i_dato|cnt\(9) & ((\i_dato|Add0~17\) # (GND)))
-- \i_dato|Add0~19\ = CARRY((!\i_dato|Add0~17\) # (!\i_dato|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_dato|cnt\(9),
	datad => VCC,
	cin => \i_dato|Add0~17\,
	combout => \i_dato|Add0~18_combout\,
	cout => \i_dato|Add0~19\);

-- Location: LCCOMB_X32_Y12_N28
\i_dato|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|cnt~5_combout\ = (\i_dato|Add0~18_combout\ & ((\i_dato|Equal0~4_combout\) # ((\i_dato|LessThan1~1_combout\ & !\i_dato|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|LessThan1~1_combout\,
	datab => \i_dato|Add0~18_combout\,
	datac => \i_dato|Add0~26_combout\,
	datad => \i_dato|Equal0~4_combout\,
	combout => \i_dato|cnt~5_combout\);

-- Location: FF_X32_Y12_N29
\i_dato|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|cnt~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(9));

-- Location: LCCOMB_X31_Y12_N20
\i_dato|Add0~20\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X32_Y12_N14
\i_dato|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|cnt~4_combout\ = (\i_dato|Add0~20_combout\ & ((\i_dato|Equal0~4_combout\) # ((\i_dato|LessThan1~1_combout\ & !\i_dato|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|LessThan1~1_combout\,
	datab => \i_dato|Add0~20_combout\,
	datac => \i_dato|Add0~26_combout\,
	datad => \i_dato|Equal0~4_combout\,
	combout => \i_dato|cnt~4_combout\);

-- Location: FF_X32_Y12_N15
\i_dato|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|cnt~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(10));

-- Location: LCCOMB_X31_Y12_N22
\i_dato|Add0~22\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X32_Y12_N0
\i_dato|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|cnt~3_combout\ = (\i_dato|Add0~22_combout\ & ((\i_dato|Equal0~4_combout\) # ((\i_dato|LessThan1~1_combout\ & !\i_dato|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|LessThan1~1_combout\,
	datab => \i_dato|Add0~22_combout\,
	datac => \i_dato|Add0~26_combout\,
	datad => \i_dato|Equal0~4_combout\,
	combout => \i_dato|cnt~3_combout\);

-- Location: FF_X32_Y12_N1
\i_dato|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|cnt~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(11));

-- Location: LCCOMB_X31_Y12_N24
\i_dato|Add0~24\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X32_Y12_N10
\i_dato|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|cnt~2_combout\ = (\i_dato|Add0~24_combout\ & ((\i_dato|Equal0~4_combout\) # ((\i_dato|LessThan1~1_combout\ & !\i_dato|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|LessThan1~1_combout\,
	datab => \i_dato|Add0~24_combout\,
	datac => \i_dato|Add0~26_combout\,
	datad => \i_dato|Equal0~4_combout\,
	combout => \i_dato|cnt~2_combout\);

-- Location: FF_X32_Y12_N11
\i_dato|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|cnt~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|cnt\(12));

-- Location: LCCOMB_X33_Y12_N0
\i_dato|clk_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~1_combout\ = (\i_dato|Add0~6_combout\ & ((\i_dato|Add0~0_combout\) # ((\i_dato|Add0~4_combout\) # (\i_dato|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~6_combout\,
	datab => \i_dato|Add0~0_combout\,
	datac => \i_dato|Add0~4_combout\,
	datad => \i_dato|Add0~2_combout\,
	combout => \i_dato|clk_out~1_combout\);

-- Location: LCCOMB_X33_Y12_N16
\i_dato|clk_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~2_combout\ = (\i_dato|Add0~10_combout\ & (\i_dato|Add0~20_combout\ & ((\i_dato|Add0~8_combout\) # (\i_dato|clk_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~8_combout\,
	datab => \i_dato|Add0~10_combout\,
	datac => \i_dato|Add0~20_combout\,
	datad => \i_dato|clk_out~1_combout\,
	combout => \i_dato|clk_out~2_combout\);

-- Location: LCCOMB_X33_Y12_N20
\i_dato|clk_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~3_combout\ = (\i_dato|Add0~24_combout\) # ((\i_dato|Add0~22_combout\ & (\i_dato|clk_out~0_combout\ & \i_dato|clk_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~24_combout\,
	datab => \i_dato|Add0~22_combout\,
	datac => \i_dato|clk_out~0_combout\,
	datad => \i_dato|clk_out~2_combout\,
	combout => \i_dato|clk_out~3_combout\);

-- Location: LCCOMB_X33_Y12_N4
\i_dato|clk_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~4_combout\ = (\i_dato|Add0~26_combout\ & (\i_dato|Add0~28_combout\ & (!\i_dato|Add0~30_combout\ & \i_dato|clk_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~26_combout\,
	datab => \i_dato|Add0~28_combout\,
	datac => \i_dato|Add0~30_combout\,
	datad => \i_dato|clk_out~3_combout\,
	combout => \i_dato|clk_out~4_combout\);

-- Location: LCCOMB_X33_Y12_N12
\i_dato|clk_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~5_combout\ = (\i_dato|Add0~26_combout\ & (\i_dato|clk_out~q\ & ((\i_dato|Equal0~4_combout\)))) # (!\i_dato|Add0~26_combout\ & ((\i_dato|LessThan1~1_combout\) # ((\i_dato|clk_out~q\ & \i_dato|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~26_combout\,
	datab => \i_dato|clk_out~q\,
	datac => \i_dato|LessThan1~1_combout\,
	datad => \i_dato|Equal0~4_combout\,
	combout => \i_dato|clk_out~5_combout\);

-- Location: LCCOMB_X33_Y12_N10
\i_dato|clk_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_dato|clk_out~6_combout\ = (\i_dato|clk_out~4_combout\) # ((\i_dato|Add0~30_combout\ & ((\i_dato|clk_out~5_combout\) # (!\i_dato|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_dato|Add0~30_combout\,
	datab => \i_dato|Add0~28_combout\,
	datac => \i_dato|clk_out~4_combout\,
	datad => \i_dato|clk_out~5_combout\,
	combout => \i_dato|clk_out~6_combout\);

-- Location: FF_X33_Y12_N11
\i_dato|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_dato|clk_out~6_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_dato|clk_out~q\);

-- Location: CLKCTRL_G6
\i_dato|clk_out~clkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X28_Y9_N0
\i_address|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_address|Add0~0_combout\ = \i_address|cnt\(0) $ (VCC)
-- \i_address|Add0~1\ = CARRY(\i_address|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address|cnt\(0),
	datad => VCC,
	combout => \i_address|Add0~0_combout\,
	cout => \i_address|Add0~1\);

-- Location: LCCOMB_X28_Y9_N30
\i_address|cnt[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_address|cnt[0]~feeder_combout\ = \i_address|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_address|Add0~0_combout\,
	combout => \i_address|cnt[0]~feeder_combout\);

-- Location: FF_X28_Y9_N31
\i_address|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	d => \i_address|cnt[0]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_address|cnt\(0));

-- Location: LCCOMB_X28_Y9_N2
\i_address|Add0~2\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X28_Y9_N16
\i_address|cnt[1]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X28_Y9_N17
\i_address|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	d => \i_address|cnt[1]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_address|cnt\(1));

-- Location: LCCOMB_X28_Y9_N4
\i_address|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_address|Add0~4_combout\ = (\i_address|cnt\(2) & (\i_address|Add0~3\ $ (GND))) # (!\i_address|cnt\(2) & (!\i_address|Add0~3\ & VCC))
-- \i_address|Add0~5\ = CARRY((\i_address|cnt\(2) & !\i_address|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_address|cnt\(2),
	datad => VCC,
	cin => \i_address|Add0~3\,
	combout => \i_address|Add0~4_combout\,
	cout => \i_address|Add0~5\);

-- Location: LCCOMB_X28_Y9_N22
\i_address|cnt[2]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X28_Y9_N23
\i_address|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	d => \i_address|cnt[2]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_address|cnt\(2));

-- Location: LCCOMB_X28_Y9_N6
\i_address|Add0~6\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X28_Y9_N28
\i_address|cnt[3]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X28_Y9_N29
\i_address|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	d => \i_address|cnt[3]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_address|cnt\(3));

-- Location: LCCOMB_X28_Y9_N8
\i_address|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_address|Add0~8_combout\ = (\i_address|cnt\(4) & (\i_address|Add0~7\ $ (GND))) # (!\i_address|cnt\(4) & (!\i_address|Add0~7\ & VCC))
-- \i_address|Add0~9\ = CARRY((\i_address|cnt\(4) & !\i_address|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_address|cnt\(4),
	datad => VCC,
	cin => \i_address|Add0~7\,
	combout => \i_address|Add0~8_combout\,
	cout => \i_address|Add0~9\);

-- Location: LCCOMB_X28_Y9_N20
\i_address|cnt[5]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X28_Y9_N21
\i_address|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	d => \i_address|cnt[5]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_address|cnt\(5));

-- Location: LCCOMB_X28_Y9_N24
\i_address|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_address|Equal0~0_combout\ = (!\i_address|Add0~0_combout\ & (!\i_address|Add0~2_combout\ & (!\i_address|Add0~4_combout\ & !\i_address|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address|Add0~0_combout\,
	datab => \i_address|Add0~2_combout\,
	datac => \i_address|Add0~4_combout\,
	datad => \i_address|Add0~6_combout\,
	combout => \i_address|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y9_N26
\i_address|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_address|cnt~0_combout\ = (\i_address|Add0~8_combout\ & (((\i_address|Add0~10_combout\) # (!\i_address|Equal0~0_combout\)) # (!\i_address|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address|Add0~12_combout\,
	datab => \i_address|Add0~8_combout\,
	datac => \i_address|Add0~10_combout\,
	datad => \i_address|Equal0~0_combout\,
	combout => \i_address|cnt~0_combout\);

-- Location: FF_X28_Y9_N27
\i_address|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	d => \i_address|cnt~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_address|cnt\(4));

-- Location: LCCOMB_X28_Y9_N18
\i_address|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_address|cnt~1_combout\ = (\i_address|Add0~12_combout\ & (((\i_address|Add0~10_combout\) # (!\i_address|Equal0~0_combout\)) # (!\i_address|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address|Add0~12_combout\,
	datab => \i_address|Add0~8_combout\,
	datac => \i_address|Add0~10_combout\,
	datad => \i_address|Equal0~0_combout\,
	combout => \i_address|cnt~1_combout\);

-- Location: FF_X28_Y9_N19
\i_address|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_dato|ALT_INV_clk_out~clkctrl_outclk\,
	d => \i_address|cnt~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_address|cnt\(6));

-- Location: LCCOMB_X28_Y8_N30
\i_trans_uart|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|Selector0~1_combout\ = (\i_trans_uart|estado.d5~q\ & ((\i_rom|altsyncram_component|auto_generated|q_a\(5)) # ((\i_rom|altsyncram_component|auto_generated|q_a\(4) & \i_trans_uart|estado.d4~q\)))) # (!\i_trans_uart|estado.d5~q\ & 
-- (((\i_rom|altsyncram_component|auto_generated|q_a\(4) & \i_trans_uart|estado.d4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_trans_uart|estado.d5~q\,
	datab => \i_rom|altsyncram_component|auto_generated|q_a\(5),
	datac => \i_rom|altsyncram_component|auto_generated|q_a\(4),
	datad => \i_trans_uart|estado.d4~q\,
	combout => \i_trans_uart|Selector0~1_combout\);

-- Location: LCCOMB_X28_Y8_N4
\i_trans_uart|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|Selector0~0_combout\ = (\i_rom|altsyncram_component|auto_generated|q_a\(7) & ((\i_trans_uart|estado.d7~q\) # ((\i_trans_uart|estado.d6~q\ & \i_rom|altsyncram_component|auto_generated|q_a\(6))))) # 
-- (!\i_rom|altsyncram_component|auto_generated|q_a\(7) & (\i_trans_uart|estado.d6~q\ & (\i_rom|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rom|altsyncram_component|auto_generated|q_a\(7),
	datab => \i_trans_uart|estado.d6~q\,
	datac => \i_rom|altsyncram_component|auto_generated|q_a\(6),
	datad => \i_trans_uart|estado.d7~q\,
	combout => \i_trans_uart|Selector0~0_combout\);

-- Location: LCCOMB_X28_Y8_N14
\i_trans_uart|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|Selector0~3_combout\ = (\i_trans_uart|estado.d0~q\ & \i_rom|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_trans_uart|estado.d0~q\,
	datad => \i_rom|altsyncram_component|auto_generated|q_a\(0),
	combout => \i_trans_uart|Selector0~3_combout\);

-- Location: LCCOMB_X28_Y8_N0
\i_trans_uart|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|Selector0~2_combout\ = (\i_rom|altsyncram_component|auto_generated|q_a\(3) & ((\i_trans_uart|estado.d3~q\) # ((\i_rom|altsyncram_component|auto_generated|q_a\(2) & \i_trans_uart|estado.d2~q\)))) # 
-- (!\i_rom|altsyncram_component|auto_generated|q_a\(3) & (((\i_rom|altsyncram_component|auto_generated|q_a\(2) & \i_trans_uart|estado.d2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rom|altsyncram_component|auto_generated|q_a\(3),
	datab => \i_trans_uart|estado.d3~q\,
	datac => \i_rom|altsyncram_component|auto_generated|q_a\(2),
	datad => \i_trans_uart|estado.d2~q\,
	combout => \i_trans_uart|Selector0~2_combout\);

-- Location: LCCOMB_X28_Y8_N26
\i_trans_uart|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|Selector0~4_combout\ = (\i_trans_uart|Selector0~3_combout\) # ((\i_trans_uart|Selector0~2_combout\) # ((\i_rom|altsyncram_component|auto_generated|q_a\(1) & \i_trans_uart|estado.d1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rom|altsyncram_component|auto_generated|q_a\(1),
	datab => \i_trans_uart|Selector0~3_combout\,
	datac => \i_trans_uart|estado.d1~q\,
	datad => \i_trans_uart|Selector0~2_combout\,
	combout => \i_trans_uart|Selector0~4_combout\);

-- Location: LCCOMB_X28_Y8_N12
\i_trans_uart|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_trans_uart|Selector0~5_combout\ = ((\i_trans_uart|Selector0~1_combout\) # ((\i_trans_uart|Selector0~0_combout\) # (\i_trans_uart|Selector0~4_combout\))) # (!\i_trans_uart|estado.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_trans_uart|estado.idle~q\,
	datab => \i_trans_uart|Selector0~1_combout\,
	datac => \i_trans_uart|Selector0~0_combout\,
	datad => \i_trans_uart|Selector0~4_combout\,
	combout => \i_trans_uart|Selector0~5_combout\);

ww_tx <= \tx~output_o\;
END structure;


