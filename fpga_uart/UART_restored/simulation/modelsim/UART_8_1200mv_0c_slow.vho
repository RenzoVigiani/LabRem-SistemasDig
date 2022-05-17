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

-- DATE "05/16/2022 16:16:58"

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

ENTITY 	uart IS
    PORT (
	clk_50Mhz : IN std_logic;
	reset : IN std_logic;
	entrada : IN std_logic_vector(1 DOWNTO 0);
	salidas : OUT std_logic_vector(1 DOWNTO 0);
	leds : OUT std_logic_vector(1 DOWNTO 0);
	rx : IN std_logic;
	tx : OUT std_logic
	);
END uart;

-- Design Ports Information
-- salidas[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50Mhz	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50Mhz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_entrada : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_salidas : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL \ut_9600|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ut_9600|Add0~0_combout\ : std_logic;
SIGNAL \ut_9600|Add0~1\ : std_logic;
SIGNAL \ut_9600|Add0~2_combout\ : std_logic;
SIGNAL \ut_9600|Add0~3\ : std_logic;
SIGNAL \ut_9600|Add0~4_combout\ : std_logic;
SIGNAL \ut_9600|Add0~5\ : std_logic;
SIGNAL \ut_9600|Add0~6_combout\ : std_logic;
SIGNAL \ut_9600|Add0~7\ : std_logic;
SIGNAL \ut_9600|Add0~8_combout\ : std_logic;
SIGNAL \ut_9600|Add0~9\ : std_logic;
SIGNAL \ut_9600|Add0~10_combout\ : std_logic;
SIGNAL \ut_9600|Add0~11\ : std_logic;
SIGNAL \ut_9600|Add0~12_combout\ : std_logic;
SIGNAL \ut_9600|Add0~13\ : std_logic;
SIGNAL \ut_9600|Add0~14_combout\ : std_logic;
SIGNAL \ut_9600|Add0~15\ : std_logic;
SIGNAL \ut_9600|Add0~16_combout\ : std_logic;
SIGNAL \ut_9600|Add0~17\ : std_logic;
SIGNAL \ut_9600|Add0~18_combout\ : std_logic;
SIGNAL \ut_9600|Add0~19\ : std_logic;
SIGNAL \ut_9600|Add0~20_combout\ : std_logic;
SIGNAL \ut_9600|Add0~21\ : std_logic;
SIGNAL \ut_9600|Add0~22_combout\ : std_logic;
SIGNAL \ut_9600|Add0~23\ : std_logic;
SIGNAL \ut_9600|Add0~24_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~15_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~43_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~53_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~64\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~65_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~66\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~67_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~68\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~83_combout\ : std_logic;
SIGNAL \ut_9600|clk_out~q\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|LessThan0~3_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Mux1~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Mux3~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Mux5~0_combout\ : std_logic;
SIGNAL \ut_9600|LessThan1~2_combout\ : std_logic;
SIGNAL \ut_9600|LessThan1~3_combout\ : std_logic;
SIGNAL \ut_9600|Equal0~0_combout\ : std_logic;
SIGNAL \ut_9600|Equal0~1_combout\ : std_logic;
SIGNAL \ut_9600|Equal0~2_combout\ : std_logic;
SIGNAL \ut_9600|clk_out~0_combout\ : std_logic;
SIGNAL \ut_9600|clk_out~1_combout\ : std_logic;
SIGNAL \ut_9600|clk_out~2_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~69_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~71_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~77_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~82_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~85_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~93_combout\ : std_logic;
SIGNAL \ut_9600|cnt~0_combout\ : std_logic;
SIGNAL \ut_9600|cnt~1_combout\ : std_logic;
SIGNAL \ut_9600|cnt~2_combout\ : std_logic;
SIGNAL \ut_9600|cnt~3_combout\ : std_logic;
SIGNAL \ut_9600|LessThan1~4_combout\ : std_logic;
SIGNAL \ut_9600|clk_out~3_combout\ : std_logic;
SIGNAL \ut_9600|clk_out~4_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \clk_50Mhz~input_o\ : std_logic;
SIGNAL \ut_9600|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \salidas[0]~output_o\ : std_logic;
SIGNAL \salidas[1]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \ut_tx_uart|estado.d5~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ut_tx_uart|estado.d5~q\ : std_logic;
SIGNAL \ut_tx_uart|estado.d6~feeder_combout\ : std_logic;
SIGNAL \ut_tx_uart|estado.d6~q\ : std_logic;
SIGNAL \ut_tx_uart|estado.d7~feeder_combout\ : std_logic;
SIGNAL \ut_tx_uart|estado.d7~q\ : std_logic;
SIGNAL \ut_tx_uart|estado.stop~feeder_combout\ : std_logic;
SIGNAL \ut_tx_uart|estado.stop~q\ : std_logic;
SIGNAL \ut_tx_uart|estado.idle~0_combout\ : std_logic;
SIGNAL \ut_tx_uart|estado.idle~q\ : std_logic;
SIGNAL \ut_tx_uart|estado.start~0_combout\ : std_logic;
SIGNAL \ut_tx_uart|estado.start~q\ : std_logic;
SIGNAL \ut_tx_uart|estado.d0~feeder_combout\ : std_logic;
SIGNAL \ut_tx_uart|estado.d0~q\ : std_logic;
SIGNAL \ut_tx_uart|estado.d1~feeder_combout\ : std_logic;
SIGNAL \ut_tx_uart|estado.d1~q\ : std_logic;
SIGNAL \ut_tx_uart|estado.d2~feeder_combout\ : std_logic;
SIGNAL \ut_tx_uart|estado.d2~q\ : std_logic;
SIGNAL \ut_tx_uart|estado.d3~feeder_combout\ : std_logic;
SIGNAL \ut_tx_uart|estado.d3~q\ : std_logic;
SIGNAL \ut_tx_uart|estado.d4~feeder_combout\ : std_logic;
SIGNAL \ut_tx_uart|estado.d4~q\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Selector31~2_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~8_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~1\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~3\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~4_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~6_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|estado.s3~q\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|estado.s0~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|estado.s0~q\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~5\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~10\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~11_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~95_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~12\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~13_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~94_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~14\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~16\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~17_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~92_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~18\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~19_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~91_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~20\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~21_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~90_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~22\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~24\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~26\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~28\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~29_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~86_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~30\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~32\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~34\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~35_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~40_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~36\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~37_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~39_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~33_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~41_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~31_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~42_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|LessThan0~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~23_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~89_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~25_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~88_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~27_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~87_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|LessThan0~6_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|LessThan0~7_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Selector31~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~38\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~44\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~46\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~47_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~80_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~48\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~49_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~79_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~45_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~81_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|LessThan0~4_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~50\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~51_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~78_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~52\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~54\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~55_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~76_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~56\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~57_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~75_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~58\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~59_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~74_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~60\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~61_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~73_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~62\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~63_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~72_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|LessThan0~2_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~9_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~70_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|LessThan0~1_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|LessThan0~5_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Selector31~1_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|tx_data[6]~1_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|estado.s2~q\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~2_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Add0~7_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Mux2~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|estado~11_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|estado.s1~q\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|tx_data[6]~0_combout\ : std_logic;
SIGNAL \ut_tx_uart|Selector0~1_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Mux0~0_combout\ : std_logic;
SIGNAL \ut_tx_uart|Selector0~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Mux6~0_combout\ : std_logic;
SIGNAL \ut_tx_uart|Selector0~3_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|Mux4~0_combout\ : std_logic;
SIGNAL \ut_tx_uart|Selector0~2_combout\ : std_logic;
SIGNAL \ut_tx_uart|Selector0~4_combout\ : std_logic;
SIGNAL \ut_logica|ut_string_tx_uart|tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ut_logica|ut_string_tx_uart|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ut_9600|cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk_50Mhz <= clk_50Mhz;
ww_reset <= reset;
ww_entrada <= entrada;
salidas <= ww_salidas;
leds <= ww_leds;
ww_rx <= rx;
tx <= ww_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ut_9600|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ut_9600|clk_out~q\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50Mhz~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: LCCOMB_X32_Y12_N4
\ut_9600|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~0_combout\ = \ut_9600|cnt\(0) $ (VCC)
-- \ut_9600|Add0~1\ = CARRY(\ut_9600|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_9600|cnt\(0),
	datad => VCC,
	combout => \ut_9600|Add0~0_combout\,
	cout => \ut_9600|Add0~1\);

-- Location: LCCOMB_X32_Y12_N6
\ut_9600|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~2_combout\ = (\ut_9600|cnt\(1) & (!\ut_9600|Add0~1\)) # (!\ut_9600|cnt\(1) & ((\ut_9600|Add0~1\) # (GND)))
-- \ut_9600|Add0~3\ = CARRY((!\ut_9600|Add0~1\) # (!\ut_9600|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|cnt\(1),
	datad => VCC,
	cin => \ut_9600|Add0~1\,
	combout => \ut_9600|Add0~2_combout\,
	cout => \ut_9600|Add0~3\);

-- Location: LCCOMB_X32_Y12_N8
\ut_9600|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~4_combout\ = (\ut_9600|cnt\(2) & (\ut_9600|Add0~3\ $ (GND))) # (!\ut_9600|cnt\(2) & (!\ut_9600|Add0~3\ & VCC))
-- \ut_9600|Add0~5\ = CARRY((\ut_9600|cnt\(2) & !\ut_9600|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_9600|cnt\(2),
	datad => VCC,
	cin => \ut_9600|Add0~3\,
	combout => \ut_9600|Add0~4_combout\,
	cout => \ut_9600|Add0~5\);

-- Location: LCCOMB_X32_Y12_N10
\ut_9600|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~6_combout\ = (\ut_9600|cnt\(3) & (!\ut_9600|Add0~5\)) # (!\ut_9600|cnt\(3) & ((\ut_9600|Add0~5\) # (GND)))
-- \ut_9600|Add0~7\ = CARRY((!\ut_9600|Add0~5\) # (!\ut_9600|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|cnt\(3),
	datad => VCC,
	cin => \ut_9600|Add0~5\,
	combout => \ut_9600|Add0~6_combout\,
	cout => \ut_9600|Add0~7\);

-- Location: LCCOMB_X32_Y12_N12
\ut_9600|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~8_combout\ = (\ut_9600|cnt\(4) & (\ut_9600|Add0~7\ $ (GND))) # (!\ut_9600|cnt\(4) & (!\ut_9600|Add0~7\ & VCC))
-- \ut_9600|Add0~9\ = CARRY((\ut_9600|cnt\(4) & !\ut_9600|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_9600|cnt\(4),
	datad => VCC,
	cin => \ut_9600|Add0~7\,
	combout => \ut_9600|Add0~8_combout\,
	cout => \ut_9600|Add0~9\);

-- Location: LCCOMB_X32_Y12_N14
\ut_9600|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~10_combout\ = (\ut_9600|cnt\(5) & (!\ut_9600|Add0~9\)) # (!\ut_9600|cnt\(5) & ((\ut_9600|Add0~9\) # (GND)))
-- \ut_9600|Add0~11\ = CARRY((!\ut_9600|Add0~9\) # (!\ut_9600|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_9600|cnt\(5),
	datad => VCC,
	cin => \ut_9600|Add0~9\,
	combout => \ut_9600|Add0~10_combout\,
	cout => \ut_9600|Add0~11\);

-- Location: LCCOMB_X32_Y12_N16
\ut_9600|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~12_combout\ = (\ut_9600|cnt\(6) & (\ut_9600|Add0~11\ $ (GND))) # (!\ut_9600|cnt\(6) & (!\ut_9600|Add0~11\ & VCC))
-- \ut_9600|Add0~13\ = CARRY((\ut_9600|cnt\(6) & !\ut_9600|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|cnt\(6),
	datad => VCC,
	cin => \ut_9600|Add0~11\,
	combout => \ut_9600|Add0~12_combout\,
	cout => \ut_9600|Add0~13\);

-- Location: LCCOMB_X32_Y12_N18
\ut_9600|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~14_combout\ = (\ut_9600|cnt\(7) & (!\ut_9600|Add0~13\)) # (!\ut_9600|cnt\(7) & ((\ut_9600|Add0~13\) # (GND)))
-- \ut_9600|Add0~15\ = CARRY((!\ut_9600|Add0~13\) # (!\ut_9600|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_9600|cnt\(7),
	datad => VCC,
	cin => \ut_9600|Add0~13\,
	combout => \ut_9600|Add0~14_combout\,
	cout => \ut_9600|Add0~15\);

-- Location: LCCOMB_X32_Y12_N20
\ut_9600|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~16_combout\ = (\ut_9600|cnt\(8) & (\ut_9600|Add0~15\ $ (GND))) # (!\ut_9600|cnt\(8) & (!\ut_9600|Add0~15\ & VCC))
-- \ut_9600|Add0~17\ = CARRY((\ut_9600|cnt\(8) & !\ut_9600|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_9600|cnt\(8),
	datad => VCC,
	cin => \ut_9600|Add0~15\,
	combout => \ut_9600|Add0~16_combout\,
	cout => \ut_9600|Add0~17\);

-- Location: LCCOMB_X32_Y12_N22
\ut_9600|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~18_combout\ = (\ut_9600|cnt\(9) & (!\ut_9600|Add0~17\)) # (!\ut_9600|cnt\(9) & ((\ut_9600|Add0~17\) # (GND)))
-- \ut_9600|Add0~19\ = CARRY((!\ut_9600|Add0~17\) # (!\ut_9600|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|cnt\(9),
	datad => VCC,
	cin => \ut_9600|Add0~17\,
	combout => \ut_9600|Add0~18_combout\,
	cout => \ut_9600|Add0~19\);

-- Location: LCCOMB_X32_Y12_N24
\ut_9600|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~20_combout\ = (\ut_9600|cnt\(10) & (\ut_9600|Add0~19\ $ (GND))) # (!\ut_9600|cnt\(10) & (!\ut_9600|Add0~19\ & VCC))
-- \ut_9600|Add0~21\ = CARRY((\ut_9600|cnt\(10) & !\ut_9600|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_9600|cnt\(10),
	datad => VCC,
	cin => \ut_9600|Add0~19\,
	combout => \ut_9600|Add0~20_combout\,
	cout => \ut_9600|Add0~21\);

-- Location: LCCOMB_X32_Y12_N26
\ut_9600|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~22_combout\ = (\ut_9600|cnt\(11) & (!\ut_9600|Add0~21\)) # (!\ut_9600|cnt\(11) & ((\ut_9600|Add0~21\) # (GND)))
-- \ut_9600|Add0~23\ = CARRY((!\ut_9600|Add0~21\) # (!\ut_9600|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|cnt\(11),
	datad => VCC,
	cin => \ut_9600|Add0~21\,
	combout => \ut_9600|Add0~22_combout\,
	cout => \ut_9600|Add0~23\);

-- Location: LCCOMB_X32_Y12_N28
\ut_9600|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Add0~24_combout\ = \ut_9600|Add0~23\ $ (!\ut_9600|cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ut_9600|cnt\(12),
	cin => \ut_9600|Add0~23\,
	combout => \ut_9600|Add0~24_combout\);

-- Location: LCCOMB_X23_Y18_N12
\ut_logica|ut_string_tx_uart|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~15_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(6) & (\ut_logica|ut_string_tx_uart|Add0~14\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(6) & (!\ut_logica|ut_string_tx_uart|Add0~14\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~16\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(6) & !\ut_logica|ut_string_tx_uart|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(6),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~14\,
	combout => \ut_logica|ut_string_tx_uart|Add0~15_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~16\);

-- Location: LCCOMB_X23_Y17_N4
\ut_logica|ut_string_tx_uart|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~43_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(18) & (\ut_logica|ut_string_tx_uart|Add0~38\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(18) & (!\ut_logica|ut_string_tx_uart|Add0~38\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~44\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(18) & !\ut_logica|ut_string_tx_uart|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(18),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~38\,
	combout => \ut_logica|ut_string_tx_uart|Add0~43_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~44\);

-- Location: LCCOMB_X23_Y17_N14
\ut_logica|ut_string_tx_uart|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~53_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(23) & (!\ut_logica|ut_string_tx_uart|Add0~52\)) # (!\ut_logica|ut_string_tx_uart|cnt\(23) & ((\ut_logica|ut_string_tx_uart|Add0~52\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~54\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~52\) # (!\ut_logica|ut_string_tx_uart|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(23),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~52\,
	combout => \ut_logica|ut_string_tx_uart|Add0~53_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~54\);

-- Location: LCCOMB_X23_Y17_N24
\ut_logica|ut_string_tx_uart|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~63_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(28) & (\ut_logica|ut_string_tx_uart|Add0~62\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(28) & (!\ut_logica|ut_string_tx_uart|Add0~62\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~64\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(28) & !\ut_logica|ut_string_tx_uart|Add0~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(28),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~62\,
	combout => \ut_logica|ut_string_tx_uart|Add0~63_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~64\);

-- Location: LCCOMB_X23_Y17_N26
\ut_logica|ut_string_tx_uart|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~65_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(29) & (!\ut_logica|ut_string_tx_uart|Add0~64\)) # (!\ut_logica|ut_string_tx_uart|cnt\(29) & ((\ut_logica|ut_string_tx_uart|Add0~64\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~66\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~64\) # (!\ut_logica|ut_string_tx_uart|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(29),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~64\,
	combout => \ut_logica|ut_string_tx_uart|Add0~65_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~66\);

-- Location: LCCOMB_X23_Y17_N28
\ut_logica|ut_string_tx_uart|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~67_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(30) & (\ut_logica|ut_string_tx_uart|Add0~66\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(30) & (!\ut_logica|ut_string_tx_uart|Add0~66\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~68\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(30) & !\ut_logica|ut_string_tx_uart|Add0~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(30),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~66\,
	combout => \ut_logica|ut_string_tx_uart|Add0~67_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~68\);

-- Location: LCCOMB_X23_Y17_N30
\ut_logica|ut_string_tx_uart|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~83_combout\ = \ut_logica|ut_string_tx_uart|cnt\(31) $ (\ut_logica|ut_string_tx_uart|Add0~68\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(31),
	cin => \ut_logica|ut_string_tx_uart|Add0~68\,
	combout => \ut_logica|ut_string_tx_uart|Add0~83_combout\);

-- Location: FF_X24_Y18_N7
\ut_logica|ut_string_tx_uart|tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Mux1~0_combout\,
	ena => \ut_logica|ut_string_tx_uart|tx_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|tx_data\(5));

-- Location: FF_X24_Y18_N27
\ut_logica|ut_string_tx_uart|tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Mux3~0_combout\,
	ena => \ut_logica|ut_string_tx_uart|tx_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|tx_data\(3));

-- Location: FF_X24_Y18_N23
\ut_logica|ut_string_tx_uart|tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Mux5~0_combout\,
	ena => \ut_logica|ut_string_tx_uart|tx_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|tx_data\(1));

-- Location: FF_X33_Y12_N25
\ut_9600|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|clk_out~4_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|clk_out~q\);

-- Location: FF_X24_Y18_N11
\ut_logica|ut_string_tx_uart|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~69_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(30));

-- Location: FF_X22_Y17_N31
\ut_logica|ut_string_tx_uart|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~71_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(29));

-- Location: FF_X22_Y17_N3
\ut_logica|ut_string_tx_uart|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~77_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(23));

-- Location: LCCOMB_X22_Y17_N22
\ut_logica|ut_string_tx_uart|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|LessThan0~3_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(25)) # ((\ut_logica|ut_string_tx_uart|cnt\(23)) # ((\ut_logica|ut_string_tx_uart|cnt\(24)) # (\ut_logica|ut_string_tx_uart|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(25),
	datab => \ut_logica|ut_string_tx_uart|cnt\(23),
	datac => \ut_logica|ut_string_tx_uart|cnt\(24),
	datad => \ut_logica|ut_string_tx_uart|cnt\(22),
	combout => \ut_logica|ut_string_tx_uart|LessThan0~3_combout\);

-- Location: FF_X24_Y17_N31
\ut_logica|ut_string_tx_uart|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~82_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(18));

-- Location: FF_X22_Y17_N27
\ut_logica|ut_string_tx_uart|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~85_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(31));

-- Location: FF_X22_Y18_N11
\ut_logica|ut_string_tx_uart|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~93_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(6));

-- Location: LCCOMB_X24_Y18_N6
\ut_logica|ut_string_tx_uart|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Mux1~0_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(1)) # ((\ut_logica|ut_string_tx_uart|cnt\(2)) # ((!\ut_logica|ut_string_tx_uart|cnt\(0) & \ut_logica|ut_string_tx_uart|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(0),
	datab => \ut_logica|ut_string_tx_uart|cnt\(1),
	datac => \ut_logica|ut_string_tx_uart|cnt\(2),
	datad => \ut_logica|ut_string_tx_uart|cnt\(3),
	combout => \ut_logica|ut_string_tx_uart|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y18_N26
\ut_logica|ut_string_tx_uart|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Mux3~0_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(0) & (!\ut_logica|ut_string_tx_uart|cnt\(1) & (\ut_logica|ut_string_tx_uart|cnt\(2) $ (\ut_logica|ut_string_tx_uart|cnt\(3))))) # (!\ut_logica|ut_string_tx_uart|cnt\(0) & 
-- (((!\ut_logica|ut_string_tx_uart|cnt\(2) & \ut_logica|ut_string_tx_uart|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(0),
	datab => \ut_logica|ut_string_tx_uart|cnt\(1),
	datac => \ut_logica|ut_string_tx_uart|cnt\(2),
	datad => \ut_logica|ut_string_tx_uart|cnt\(3),
	combout => \ut_logica|ut_string_tx_uart|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y18_N22
\ut_logica|ut_string_tx_uart|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Mux5~0_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(0) & ((\ut_logica|ut_string_tx_uart|cnt\(2) $ (\ut_logica|ut_string_tx_uart|cnt\(3))))) # (!\ut_logica|ut_string_tx_uart|cnt\(0) & (!\ut_logica|ut_string_tx_uart|cnt\(1) & 
-- ((\ut_logica|ut_string_tx_uart|cnt\(3)) # (!\ut_logica|ut_string_tx_uart|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(0),
	datab => \ut_logica|ut_string_tx_uart|cnt\(1),
	datac => \ut_logica|ut_string_tx_uart|cnt\(2),
	datad => \ut_logica|ut_string_tx_uart|cnt\(3),
	combout => \ut_logica|ut_string_tx_uart|Mux5~0_combout\);

-- Location: FF_X33_Y12_N5
\ut_9600|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|cnt~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(12));

-- Location: FF_X32_Y12_N27
\ut_9600|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|Add0~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(11));

-- Location: FF_X33_Y12_N19
\ut_9600|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|cnt~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(10));

-- Location: FF_X32_Y12_N23
\ut_9600|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|Add0~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(9));

-- Location: FF_X32_Y12_N21
\ut_9600|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|Add0~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(8));

-- Location: FF_X32_Y12_N19
\ut_9600|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(7));

-- Location: FF_X33_Y12_N7
\ut_9600|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|cnt~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(6));

-- Location: FF_X32_Y12_N15
\ut_9600|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|Add0~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(5));

-- Location: FF_X32_Y12_N1
\ut_9600|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|cnt~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(4));

-- Location: FF_X32_Y12_N11
\ut_9600|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|Add0~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(3));

-- Location: FF_X32_Y12_N9
\ut_9600|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|Add0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(2));

-- Location: FF_X32_Y12_N7
\ut_9600|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(1));

-- Location: FF_X32_Y12_N5
\ut_9600|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_9600|Add0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_9600|cnt\(0));

-- Location: LCCOMB_X33_Y12_N10
\ut_9600|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|LessThan1~2_combout\ = (!\ut_9600|Add0~14_combout\ & (!\ut_9600|Add0~16_combout\ & (!\ut_9600|Add0~22_combout\ & !\ut_9600|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|Add0~14_combout\,
	datab => \ut_9600|Add0~16_combout\,
	datac => \ut_9600|Add0~22_combout\,
	datad => \ut_9600|Add0~18_combout\,
	combout => \ut_9600|LessThan1~2_combout\);

-- Location: LCCOMB_X33_Y12_N14
\ut_9600|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|LessThan1~3_combout\ = ((!\ut_9600|Add0~8_combout\ & !\ut_9600|Add0~10_combout\)) # (!\ut_9600|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|Add0~8_combout\,
	datac => \ut_9600|Add0~12_combout\,
	datad => \ut_9600|Add0~10_combout\,
	combout => \ut_9600|LessThan1~3_combout\);

-- Location: LCCOMB_X32_Y12_N2
\ut_9600|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Equal0~0_combout\ = (((\ut_9600|Add0~6_combout\) # (\ut_9600|Add0~10_combout\)) # (!\ut_9600|Add0~12_combout\)) # (!\ut_9600|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|Add0~8_combout\,
	datab => \ut_9600|Add0~12_combout\,
	datac => \ut_9600|Add0~6_combout\,
	datad => \ut_9600|Add0~10_combout\,
	combout => \ut_9600|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y12_N26
\ut_9600|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Equal0~1_combout\ = (\ut_9600|Add0~2_combout\) # ((\ut_9600|Add0~0_combout\) # ((\ut_9600|Add0~4_combout\) # (!\ut_9600|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|Add0~2_combout\,
	datab => \ut_9600|Add0~0_combout\,
	datac => \ut_9600|Add0~4_combout\,
	datad => \ut_9600|Add0~20_combout\,
	combout => \ut_9600|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y12_N20
\ut_9600|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|Equal0~2_combout\ = (\ut_9600|Equal0~0_combout\) # (((\ut_9600|Equal0~1_combout\) # (!\ut_9600|LessThan1~2_combout\)) # (!\ut_9600|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|Equal0~0_combout\,
	datab => \ut_9600|Add0~24_combout\,
	datac => \ut_9600|Equal0~1_combout\,
	datad => \ut_9600|LessThan1~2_combout\,
	combout => \ut_9600|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y12_N28
\ut_9600|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|clk_out~0_combout\ = (\ut_9600|LessThan1~2_combout\ & ((\ut_9600|LessThan1~3_combout\) # ((\ut_9600|clk_out~q\ & \ut_9600|Equal0~2_combout\)))) # (!\ut_9600|LessThan1~2_combout\ & (\ut_9600|clk_out~q\ & ((\ut_9600|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|LessThan1~2_combout\,
	datab => \ut_9600|clk_out~q\,
	datac => \ut_9600|LessThan1~3_combout\,
	datad => \ut_9600|Equal0~2_combout\,
	combout => \ut_9600|clk_out~0_combout\);

-- Location: LCCOMB_X32_Y12_N30
\ut_9600|clk_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|clk_out~1_combout\ = (\ut_9600|Add0~12_combout\) # ((\ut_9600|Add0~10_combout\ & ((\ut_9600|Add0~8_combout\) # (\ut_9600|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|Add0~8_combout\,
	datab => \ut_9600|Add0~12_combout\,
	datac => \ut_9600|Add0~6_combout\,
	datad => \ut_9600|Add0~10_combout\,
	combout => \ut_9600|clk_out~1_combout\);

-- Location: LCCOMB_X33_Y12_N16
\ut_9600|clk_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|clk_out~2_combout\ = (\ut_9600|Add0~18_combout\ & ((\ut_9600|Add0~14_combout\) # ((\ut_9600|Add0~16_combout\) # (\ut_9600|clk_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|Add0~14_combout\,
	datab => \ut_9600|Add0~18_combout\,
	datac => \ut_9600|Add0~16_combout\,
	datad => \ut_9600|clk_out~1_combout\,
	combout => \ut_9600|clk_out~2_combout\);

-- Location: LCCOMB_X24_Y18_N10
\ut_logica|ut_string_tx_uart|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~69_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~67_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~69_combout\);

-- Location: LCCOMB_X22_Y17_N30
\ut_logica|ut_string_tx_uart|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~71_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~65_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~71_combout\);

-- Location: LCCOMB_X22_Y17_N2
\ut_logica|ut_string_tx_uart|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~77_combout\ = (\ut_logica|ut_string_tx_uart|Add0~53_combout\ & \ut_logica|ut_string_tx_uart|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|Add0~53_combout\,
	datac => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	combout => \ut_logica|ut_string_tx_uart|Add0~77_combout\);

-- Location: LCCOMB_X24_Y17_N30
\ut_logica|ut_string_tx_uart|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~82_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datac => \ut_logica|ut_string_tx_uart|Add0~43_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~82_combout\);

-- Location: LCCOMB_X22_Y17_N26
\ut_logica|ut_string_tx_uart|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~85_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datac => \ut_logica|ut_string_tx_uart|Add0~83_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~85_combout\);

-- Location: LCCOMB_X22_Y18_N10
\ut_logica|ut_string_tx_uart|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~93_combout\ = (\ut_logica|ut_string_tx_uart|Add0~15_combout\ & \ut_logica|ut_string_tx_uart|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|Add0~15_combout\,
	datad => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	combout => \ut_logica|ut_string_tx_uart|Add0~93_combout\);

-- Location: LCCOMB_X33_Y12_N4
\ut_9600|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|cnt~0_combout\ = (\ut_9600|Add0~24_combout\ & ((\ut_9600|LessThan1~4_combout\) # (\ut_9600|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_9600|Add0~24_combout\,
	datac => \ut_9600|LessThan1~4_combout\,
	datad => \ut_9600|Equal0~2_combout\,
	combout => \ut_9600|cnt~0_combout\);

-- Location: LCCOMB_X33_Y12_N18
\ut_9600|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|cnt~1_combout\ = (\ut_9600|Add0~20_combout\ & ((\ut_9600|LessThan1~4_combout\) # (\ut_9600|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_9600|Add0~20_combout\,
	datac => \ut_9600|LessThan1~4_combout\,
	datad => \ut_9600|Equal0~2_combout\,
	combout => \ut_9600|cnt~1_combout\);

-- Location: LCCOMB_X33_Y12_N6
\ut_9600|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|cnt~2_combout\ = (\ut_9600|Add0~12_combout\ & ((\ut_9600|LessThan1~4_combout\) # (\ut_9600|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|Add0~12_combout\,
	datac => \ut_9600|LessThan1~4_combout\,
	datad => \ut_9600|Equal0~2_combout\,
	combout => \ut_9600|cnt~2_combout\);

-- Location: LCCOMB_X32_Y12_N0
\ut_9600|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|cnt~3_combout\ = (\ut_9600|Add0~8_combout\ & ((\ut_9600|Equal0~2_combout\) # (\ut_9600|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|Add0~8_combout\,
	datac => \ut_9600|Equal0~2_combout\,
	datad => \ut_9600|LessThan1~4_combout\,
	combout => \ut_9600|cnt~3_combout\);

-- Location: LCCOMB_X33_Y12_N22
\ut_9600|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|LessThan1~4_combout\ = (\ut_9600|Add0~22_combout\ & (((\ut_9600|LessThan1~3_combout\ & \ut_9600|LessThan1~2_combout\)))) # (!\ut_9600|Add0~22_combout\ & (((\ut_9600|LessThan1~3_combout\ & \ut_9600|LessThan1~2_combout\)) # 
-- (!\ut_9600|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|Add0~22_combout\,
	datab => \ut_9600|Add0~20_combout\,
	datac => \ut_9600|LessThan1~3_combout\,
	datad => \ut_9600|LessThan1~2_combout\,
	combout => \ut_9600|LessThan1~4_combout\);

-- Location: LCCOMB_X33_Y12_N30
\ut_9600|clk_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|clk_out~3_combout\ = (\ut_9600|Add0~22_combout\ & (!\ut_9600|Add0~24_combout\ & ((\ut_9600|Add0~20_combout\) # (\ut_9600|clk_out~2_combout\)))) # (!\ut_9600|Add0~22_combout\ & (\ut_9600|Add0~24_combout\ & (!\ut_9600|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_9600|Add0~22_combout\,
	datab => \ut_9600|Add0~24_combout\,
	datac => \ut_9600|Add0~20_combout\,
	datad => \ut_9600|clk_out~2_combout\,
	combout => \ut_9600|clk_out~3_combout\);

-- Location: LCCOMB_X33_Y12_N24
\ut_9600|clk_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_9600|clk_out~4_combout\ = (\ut_9600|clk_out~3_combout\) # ((\ut_9600|Add0~24_combout\ & \ut_9600|clk_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_9600|Add0~24_combout\,
	datac => \ut_9600|clk_out~3_combout\,
	datad => \ut_9600|clk_out~0_combout\,
	combout => \ut_9600|clk_out~4_combout\);

-- Location: IOIBUF_X34_Y12_N1
\clk_50Mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50Mhz,
	o => \clk_50Mhz~input_o\);

-- Location: CLKCTRL_G7
\ut_9600|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ut_9600|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ut_9600|clk_out~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\clk_50Mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50Mhz~inputclkctrl_outclk\);

-- Location: IOOBUF_X34_Y17_N16
\salidas[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \salidas[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\salidas[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \salidas[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[0]~input_o\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[1]~input_o\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ut_tx_uart|Selector0~4_combout\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOIBUF_X34_Y9_N8
\entrada[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\entrada[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: LCCOMB_X24_Y16_N28
\ut_tx_uart|estado.d5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|estado.d5~feeder_combout\ = \ut_tx_uart|estado.d4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_tx_uart|estado.d4~q\,
	combout => \ut_tx_uart|estado.d5~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G0
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X24_Y16_N29
\ut_tx_uart|estado.d5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_tx_uart|estado.d5~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_tx_uart|estado.d5~q\);

-- Location: LCCOMB_X24_Y16_N14
\ut_tx_uart|estado.d6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|estado.d6~feeder_combout\ = \ut_tx_uart|estado.d5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_tx_uart|estado.d5~q\,
	combout => \ut_tx_uart|estado.d6~feeder_combout\);

-- Location: FF_X24_Y16_N15
\ut_tx_uart|estado.d6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_tx_uart|estado.d6~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_tx_uart|estado.d6~q\);

-- Location: LCCOMB_X24_Y16_N10
\ut_tx_uart|estado.d7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|estado.d7~feeder_combout\ = \ut_tx_uart|estado.d6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_tx_uart|estado.d6~q\,
	combout => \ut_tx_uart|estado.d7~feeder_combout\);

-- Location: FF_X24_Y16_N11
\ut_tx_uart|estado.d7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_tx_uart|estado.d7~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_tx_uart|estado.d7~q\);

-- Location: LCCOMB_X24_Y16_N16
\ut_tx_uart|estado.stop~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|estado.stop~feeder_combout\ = \ut_tx_uart|estado.d7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_tx_uart|estado.d7~q\,
	combout => \ut_tx_uart|estado.stop~feeder_combout\);

-- Location: FF_X24_Y16_N17
\ut_tx_uart|estado.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_tx_uart|estado.stop~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_tx_uart|estado.stop~q\);

-- Location: LCCOMB_X24_Y16_N0
\ut_tx_uart|estado.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|estado.idle~0_combout\ = !\ut_tx_uart|estado.stop~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_tx_uart|estado.stop~q\,
	combout => \ut_tx_uart|estado.idle~0_combout\);

-- Location: FF_X24_Y16_N1
\ut_tx_uart|estado.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_tx_uart|estado.idle~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_tx_uart|estado.idle~q\);

-- Location: LCCOMB_X24_Y16_N26
\ut_tx_uart|estado.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|estado.start~0_combout\ = !\ut_tx_uart|estado.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_tx_uart|estado.idle~q\,
	combout => \ut_tx_uart|estado.start~0_combout\);

-- Location: FF_X24_Y16_N27
\ut_tx_uart|estado.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_tx_uart|estado.start~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_tx_uart|estado.start~q\);

-- Location: LCCOMB_X24_Y16_N6
\ut_tx_uart|estado.d0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|estado.d0~feeder_combout\ = \ut_tx_uart|estado.start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_tx_uart|estado.start~q\,
	combout => \ut_tx_uart|estado.d0~feeder_combout\);

-- Location: FF_X24_Y16_N7
\ut_tx_uart|estado.d0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_tx_uart|estado.d0~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_tx_uart|estado.d0~q\);

-- Location: LCCOMB_X24_Y16_N24
\ut_tx_uart|estado.d1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|estado.d1~feeder_combout\ = \ut_tx_uart|estado.d0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_tx_uart|estado.d0~q\,
	combout => \ut_tx_uart|estado.d1~feeder_combout\);

-- Location: FF_X24_Y16_N25
\ut_tx_uart|estado.d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_tx_uart|estado.d1~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_tx_uart|estado.d1~q\);

-- Location: LCCOMB_X24_Y16_N2
\ut_tx_uart|estado.d2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|estado.d2~feeder_combout\ = \ut_tx_uart|estado.d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_tx_uart|estado.d1~q\,
	combout => \ut_tx_uart|estado.d2~feeder_combout\);

-- Location: FF_X24_Y16_N3
\ut_tx_uart|estado.d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_tx_uart|estado.d2~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_tx_uart|estado.d2~q\);

-- Location: LCCOMB_X24_Y16_N18
\ut_tx_uart|estado.d3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|estado.d3~feeder_combout\ = \ut_tx_uart|estado.d2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_tx_uart|estado.d2~q\,
	combout => \ut_tx_uart|estado.d3~feeder_combout\);

-- Location: FF_X24_Y16_N19
\ut_tx_uart|estado.d3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_tx_uart|estado.d3~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_tx_uart|estado.d3~q\);

-- Location: LCCOMB_X24_Y16_N20
\ut_tx_uart|estado.d4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|estado.d4~feeder_combout\ = \ut_tx_uart|estado.d3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_tx_uart|estado.d3~q\,
	combout => \ut_tx_uart|estado.d4~feeder_combout\);

-- Location: FF_X24_Y16_N21
\ut_tx_uart|estado.d4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_tx_uart|estado.d4~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_tx_uart|estado.d4~q\);

-- Location: LCCOMB_X23_Y18_N0
\ut_logica|ut_string_tx_uart|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~0_combout\ = \ut_logica|ut_string_tx_uart|cnt\(0) $ (GND)
-- \ut_logica|ut_string_tx_uart|Add0~1\ = CARRY(!\ut_logica|ut_string_tx_uart|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(0),
	datad => VCC,
	combout => \ut_logica|ut_string_tx_uart|Add0~0_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~1\);

-- Location: LCCOMB_X22_Y17_N0
\ut_logica|ut_string_tx_uart|Selector31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Selector31~2_combout\ = (\ut_logica|ut_string_tx_uart|estado.s1~q\ & \ut_logica|ut_string_tx_uart|Selector31~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|estado.s1~q\,
	datad => \ut_logica|ut_string_tx_uart|Selector31~1_combout\,
	combout => \ut_logica|ut_string_tx_uart|Selector31~2_combout\);

-- Location: LCCOMB_X22_Y18_N16
\ut_logica|ut_string_tx_uart|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~8_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & (((!\ut_logica|ut_string_tx_uart|Add0~0_combout\)))) # (!\ut_logica|ut_string_tx_uart|estado.s2~q\ & (\ut_logica|ut_string_tx_uart|cnt\(0) & 
-- ((!\ut_logica|ut_string_tx_uart|Selector31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(0),
	datab => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datac => \ut_logica|ut_string_tx_uart|Add0~0_combout\,
	datad => \ut_logica|ut_string_tx_uart|Selector31~2_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~8_combout\);

-- Location: FF_X23_Y18_N17
\ut_logica|ut_string_tx_uart|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	asdata => \ut_logica|ut_string_tx_uart|Add0~8_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(0));

-- Location: LCCOMB_X23_Y18_N2
\ut_logica|ut_string_tx_uart|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~2_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(1) & (!\ut_logica|ut_string_tx_uart|Add0~1\)) # (!\ut_logica|ut_string_tx_uart|cnt\(1) & ((\ut_logica|ut_string_tx_uart|Add0~1\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~3\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~1\) # (!\ut_logica|ut_string_tx_uart|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(1),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~1\,
	combout => \ut_logica|ut_string_tx_uart|Add0~2_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~3\);

-- Location: LCCOMB_X23_Y18_N4
\ut_logica|ut_string_tx_uart|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~4_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(2) & (\ut_logica|ut_string_tx_uart|Add0~3\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(2) & (!\ut_logica|ut_string_tx_uart|Add0~3\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~5\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(2) & !\ut_logica|ut_string_tx_uart|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(2),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~3\,
	combout => \ut_logica|ut_string_tx_uart|Add0~4_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~5\);

-- Location: LCCOMB_X24_Y18_N14
\ut_logica|ut_string_tx_uart|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~6_combout\ = (\ut_logica|ut_string_tx_uart|Add0~4_combout\ & \ut_logica|ut_string_tx_uart|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|Add0~4_combout\,
	datad => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	combout => \ut_logica|ut_string_tx_uart|Add0~6_combout\);

-- Location: FF_X22_Y17_N1
\ut_logica|ut_string_tx_uart|estado.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Selector31~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|estado.s3~q\);

-- Location: LCCOMB_X21_Y17_N16
\ut_logica|ut_string_tx_uart|estado.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|estado.s0~0_combout\ = !\ut_logica|ut_string_tx_uart|estado.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|estado.s3~q\,
	combout => \ut_logica|ut_string_tx_uart|estado.s0~0_combout\);

-- Location: FF_X21_Y17_N17
\ut_logica|ut_string_tx_uart|estado.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|estado.s0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|estado.s0~q\);

-- Location: LCCOMB_X22_Y17_N6
\ut_logica|ut_string_tx_uart|cnt[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\ = (!\reset~input_o\ & (!\ut_logica|ut_string_tx_uart|estado.s3~q\ & (\ut_logica|ut_string_tx_uart|estado.s0~q\ & !\ut_logica|ut_string_tx_uart|tx_data[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ut_logica|ut_string_tx_uart|estado.s3~q\,
	datac => \ut_logica|ut_string_tx_uart|estado.s0~q\,
	datad => \ut_logica|ut_string_tx_uart|tx_data[6]~1_combout\,
	combout => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\);

-- Location: FF_X24_Y18_N15
\ut_logica|ut_string_tx_uart|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~6_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(2));

-- Location: LCCOMB_X23_Y18_N6
\ut_logica|ut_string_tx_uart|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~9_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(3) & (!\ut_logica|ut_string_tx_uart|Add0~5\)) # (!\ut_logica|ut_string_tx_uart|cnt\(3) & ((\ut_logica|ut_string_tx_uart|Add0~5\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~10\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~5\) # (!\ut_logica|ut_string_tx_uart|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(3),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~5\,
	combout => \ut_logica|ut_string_tx_uart|Add0~9_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~10\);

-- Location: LCCOMB_X23_Y18_N8
\ut_logica|ut_string_tx_uart|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~11_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(4) & (\ut_logica|ut_string_tx_uart|Add0~10\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(4) & (!\ut_logica|ut_string_tx_uart|Add0~10\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~12\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(4) & !\ut_logica|ut_string_tx_uart|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(4),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~10\,
	combout => \ut_logica|ut_string_tx_uart|Add0~11_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~12\);

-- Location: LCCOMB_X22_Y18_N24
\ut_logica|ut_string_tx_uart|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~95_combout\ = (\ut_logica|ut_string_tx_uart|Add0~11_combout\ & \ut_logica|ut_string_tx_uart|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|Add0~11_combout\,
	datad => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	combout => \ut_logica|ut_string_tx_uart|Add0~95_combout\);

-- Location: FF_X22_Y18_N25
\ut_logica|ut_string_tx_uart|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~95_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(4));

-- Location: LCCOMB_X23_Y18_N10
\ut_logica|ut_string_tx_uart|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~13_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(5) & (!\ut_logica|ut_string_tx_uart|Add0~12\)) # (!\ut_logica|ut_string_tx_uart|cnt\(5) & ((\ut_logica|ut_string_tx_uart|Add0~12\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~14\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~12\) # (!\ut_logica|ut_string_tx_uart|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(5),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~12\,
	combout => \ut_logica|ut_string_tx_uart|Add0~13_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~14\);

-- Location: LCCOMB_X22_Y18_N22
\ut_logica|ut_string_tx_uart|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~94_combout\ = (\ut_logica|ut_string_tx_uart|Add0~13_combout\ & \ut_logica|ut_string_tx_uart|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|Add0~13_combout\,
	datad => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	combout => \ut_logica|ut_string_tx_uart|Add0~94_combout\);

-- Location: FF_X22_Y18_N23
\ut_logica|ut_string_tx_uart|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~94_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(5));

-- Location: LCCOMB_X23_Y18_N14
\ut_logica|ut_string_tx_uart|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~17_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(7) & (!\ut_logica|ut_string_tx_uart|Add0~16\)) # (!\ut_logica|ut_string_tx_uart|cnt\(7) & ((\ut_logica|ut_string_tx_uart|Add0~16\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~18\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~16\) # (!\ut_logica|ut_string_tx_uart|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(7),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~16\,
	combout => \ut_logica|ut_string_tx_uart|Add0~17_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~18\);

-- Location: LCCOMB_X22_Y18_N28
\ut_logica|ut_string_tx_uart|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~92_combout\ = (\ut_logica|ut_string_tx_uart|Add0~17_combout\ & \ut_logica|ut_string_tx_uart|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|Add0~17_combout\,
	datad => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	combout => \ut_logica|ut_string_tx_uart|Add0~92_combout\);

-- Location: FF_X22_Y18_N29
\ut_logica|ut_string_tx_uart|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~92_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(7));

-- Location: LCCOMB_X23_Y18_N16
\ut_logica|ut_string_tx_uart|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~19_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(8) & (\ut_logica|ut_string_tx_uart|Add0~18\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(8) & (!\ut_logica|ut_string_tx_uart|Add0~18\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~20\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(8) & !\ut_logica|ut_string_tx_uart|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(8),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~18\,
	combout => \ut_logica|ut_string_tx_uart|Add0~19_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~20\);

-- Location: LCCOMB_X22_Y18_N18
\ut_logica|ut_string_tx_uart|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~91_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~19_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~91_combout\);

-- Location: FF_X22_Y18_N19
\ut_logica|ut_string_tx_uart|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~91_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(8));

-- Location: LCCOMB_X23_Y18_N18
\ut_logica|ut_string_tx_uart|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~21_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(9) & (!\ut_logica|ut_string_tx_uart|Add0~20\)) # (!\ut_logica|ut_string_tx_uart|cnt\(9) & ((\ut_logica|ut_string_tx_uart|Add0~20\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~22\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~20\) # (!\ut_logica|ut_string_tx_uart|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(9),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~20\,
	combout => \ut_logica|ut_string_tx_uart|Add0~21_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~22\);

-- Location: LCCOMB_X22_Y18_N4
\ut_logica|ut_string_tx_uart|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~90_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~21_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~90_combout\);

-- Location: FF_X22_Y18_N5
\ut_logica|ut_string_tx_uart|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~90_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(9));

-- Location: LCCOMB_X23_Y18_N20
\ut_logica|ut_string_tx_uart|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~23_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(10) & (\ut_logica|ut_string_tx_uart|Add0~22\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(10) & (!\ut_logica|ut_string_tx_uart|Add0~22\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~24\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(10) & !\ut_logica|ut_string_tx_uart|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(10),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~22\,
	combout => \ut_logica|ut_string_tx_uart|Add0~23_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~24\);

-- Location: LCCOMB_X23_Y18_N22
\ut_logica|ut_string_tx_uart|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~25_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(11) & (!\ut_logica|ut_string_tx_uart|Add0~24\)) # (!\ut_logica|ut_string_tx_uart|cnt\(11) & ((\ut_logica|ut_string_tx_uart|Add0~24\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~26\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~24\) # (!\ut_logica|ut_string_tx_uart|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(11),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~24\,
	combout => \ut_logica|ut_string_tx_uart|Add0~25_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~26\);

-- Location: LCCOMB_X23_Y18_N24
\ut_logica|ut_string_tx_uart|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~27_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(12) & (\ut_logica|ut_string_tx_uart|Add0~26\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(12) & (!\ut_logica|ut_string_tx_uart|Add0~26\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~28\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(12) & !\ut_logica|ut_string_tx_uart|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(12),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~26\,
	combout => \ut_logica|ut_string_tx_uart|Add0~27_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~28\);

-- Location: LCCOMB_X23_Y18_N26
\ut_logica|ut_string_tx_uart|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~29_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(13) & (!\ut_logica|ut_string_tx_uart|Add0~28\)) # (!\ut_logica|ut_string_tx_uart|cnt\(13) & ((\ut_logica|ut_string_tx_uart|Add0~28\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~30\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~28\) # (!\ut_logica|ut_string_tx_uart|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(13),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~28\,
	combout => \ut_logica|ut_string_tx_uart|Add0~29_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~30\);

-- Location: LCCOMB_X22_Y18_N6
\ut_logica|ut_string_tx_uart|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~86_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~29_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~86_combout\);

-- Location: FF_X22_Y18_N7
\ut_logica|ut_string_tx_uart|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~86_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(13));

-- Location: LCCOMB_X23_Y18_N28
\ut_logica|ut_string_tx_uart|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~31_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(14) & (\ut_logica|ut_string_tx_uart|Add0~30\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(14) & (!\ut_logica|ut_string_tx_uart|Add0~30\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~32\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(14) & !\ut_logica|ut_string_tx_uart|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(14),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~30\,
	combout => \ut_logica|ut_string_tx_uart|Add0~31_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~32\);

-- Location: LCCOMB_X23_Y18_N30
\ut_logica|ut_string_tx_uart|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~33_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(15) & (!\ut_logica|ut_string_tx_uart|Add0~32\)) # (!\ut_logica|ut_string_tx_uart|cnt\(15) & ((\ut_logica|ut_string_tx_uart|Add0~32\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~34\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~32\) # (!\ut_logica|ut_string_tx_uart|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(15),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~32\,
	combout => \ut_logica|ut_string_tx_uart|Add0~33_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~34\);

-- Location: LCCOMB_X23_Y17_N0
\ut_logica|ut_string_tx_uart|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~35_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(16) & (\ut_logica|ut_string_tx_uart|Add0~34\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(16) & (!\ut_logica|ut_string_tx_uart|Add0~34\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~36\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(16) & !\ut_logica|ut_string_tx_uart|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(16),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~34\,
	combout => \ut_logica|ut_string_tx_uart|Add0~35_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~36\);

-- Location: LCCOMB_X21_Y17_N2
\ut_logica|ut_string_tx_uart|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~40_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datac => \ut_logica|ut_string_tx_uart|Add0~35_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~40_combout\);

-- Location: FF_X21_Y17_N3
\ut_logica|ut_string_tx_uart|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~40_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(16));

-- Location: LCCOMB_X23_Y17_N2
\ut_logica|ut_string_tx_uart|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~37_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(17) & (!\ut_logica|ut_string_tx_uart|Add0~36\)) # (!\ut_logica|ut_string_tx_uart|cnt\(17) & ((\ut_logica|ut_string_tx_uart|Add0~36\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~38\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~36\) # (!\ut_logica|ut_string_tx_uart|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(17),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~36\,
	combout => \ut_logica|ut_string_tx_uart|Add0~37_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~38\);

-- Location: LCCOMB_X24_Y17_N24
\ut_logica|ut_string_tx_uart|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~39_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~37_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~39_combout\);

-- Location: FF_X24_Y17_N25
\ut_logica|ut_string_tx_uart|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~39_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(17));

-- Location: LCCOMB_X22_Y18_N12
\ut_logica|ut_string_tx_uart|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~41_combout\ = (\ut_logica|ut_string_tx_uart|Add0~33_combout\ & \ut_logica|ut_string_tx_uart|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|Add0~33_combout\,
	datad => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	combout => \ut_logica|ut_string_tx_uart|Add0~41_combout\);

-- Location: FF_X22_Y18_N13
\ut_logica|ut_string_tx_uart|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~41_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(15));

-- Location: LCCOMB_X24_Y18_N30
\ut_logica|ut_string_tx_uart|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~42_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~31_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~42_combout\);

-- Location: FF_X23_Y18_N11
\ut_logica|ut_string_tx_uart|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	asdata => \ut_logica|ut_string_tx_uart|Add0~42_combout\,
	sload => VCC,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(14));

-- Location: LCCOMB_X22_Y17_N20
\ut_logica|ut_string_tx_uart|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|LessThan0~0_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(16)) # ((\ut_logica|ut_string_tx_uart|cnt\(17)) # ((\ut_logica|ut_string_tx_uart|cnt\(15)) # (\ut_logica|ut_string_tx_uart|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(16),
	datab => \ut_logica|ut_string_tx_uart|cnt\(17),
	datac => \ut_logica|ut_string_tx_uart|cnt\(15),
	datad => \ut_logica|ut_string_tx_uart|cnt\(14),
	combout => \ut_logica|ut_string_tx_uart|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y18_N8
\ut_logica|ut_string_tx_uart|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~89_combout\ = (\ut_logica|ut_string_tx_uart|Add0~23_combout\ & \ut_logica|ut_string_tx_uart|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|Add0~23_combout\,
	datad => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	combout => \ut_logica|ut_string_tx_uart|Add0~89_combout\);

-- Location: FF_X22_Y18_N9
\ut_logica|ut_string_tx_uart|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~89_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(10));

-- Location: LCCOMB_X22_Y18_N26
\ut_logica|ut_string_tx_uart|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~88_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~25_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~88_combout\);

-- Location: FF_X22_Y18_N27
\ut_logica|ut_string_tx_uart|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~88_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(11));

-- Location: LCCOMB_X22_Y18_N0
\ut_logica|ut_string_tx_uart|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~87_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~27_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~87_combout\);

-- Location: FF_X22_Y18_N1
\ut_logica|ut_string_tx_uart|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~87_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(12));

-- Location: LCCOMB_X22_Y18_N14
\ut_logica|ut_string_tx_uart|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|LessThan0~6_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(13)) # ((\ut_logica|ut_string_tx_uart|cnt\(10)) # ((\ut_logica|ut_string_tx_uart|cnt\(11)) # (\ut_logica|ut_string_tx_uart|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(13),
	datab => \ut_logica|ut_string_tx_uart|cnt\(10),
	datac => \ut_logica|ut_string_tx_uart|cnt\(11),
	datad => \ut_logica|ut_string_tx_uart|cnt\(12),
	combout => \ut_logica|ut_string_tx_uart|LessThan0~6_combout\);

-- Location: LCCOMB_X22_Y18_N20
\ut_logica|ut_string_tx_uart|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|LessThan0~7_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(6)) # ((\ut_logica|ut_string_tx_uart|cnt\(7)) # ((\ut_logica|ut_string_tx_uart|cnt\(9)) # (\ut_logica|ut_string_tx_uart|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(6),
	datab => \ut_logica|ut_string_tx_uart|cnt\(7),
	datac => \ut_logica|ut_string_tx_uart|cnt\(9),
	datad => \ut_logica|ut_string_tx_uart|cnt\(8),
	combout => \ut_logica|ut_string_tx_uart|LessThan0~7_combout\);

-- Location: LCCOMB_X22_Y18_N30
\ut_logica|ut_string_tx_uart|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Selector31~0_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(5)) # ((\ut_logica|ut_string_tx_uart|cnt\(4)) # ((\ut_logica|ut_string_tx_uart|LessThan0~6_combout\) # (\ut_logica|ut_string_tx_uart|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(5),
	datab => \ut_logica|ut_string_tx_uart|cnt\(4),
	datac => \ut_logica|ut_string_tx_uart|LessThan0~6_combout\,
	datad => \ut_logica|ut_string_tx_uart|LessThan0~7_combout\,
	combout => \ut_logica|ut_string_tx_uart|Selector31~0_combout\);

-- Location: LCCOMB_X23_Y17_N6
\ut_logica|ut_string_tx_uart|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~45_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(19) & (!\ut_logica|ut_string_tx_uart|Add0~44\)) # (!\ut_logica|ut_string_tx_uart|cnt\(19) & ((\ut_logica|ut_string_tx_uart|Add0~44\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~46\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~44\) # (!\ut_logica|ut_string_tx_uart|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(19),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~44\,
	combout => \ut_logica|ut_string_tx_uart|Add0~45_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~46\);

-- Location: LCCOMB_X23_Y17_N8
\ut_logica|ut_string_tx_uart|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~47_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(20) & (\ut_logica|ut_string_tx_uart|Add0~46\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(20) & (!\ut_logica|ut_string_tx_uart|Add0~46\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~48\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(20) & !\ut_logica|ut_string_tx_uart|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(20),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~46\,
	combout => \ut_logica|ut_string_tx_uart|Add0~47_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~48\);

-- Location: LCCOMB_X24_Y17_N18
\ut_logica|ut_string_tx_uart|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~80_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~47_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~80_combout\);

-- Location: FF_X24_Y17_N19
\ut_logica|ut_string_tx_uart|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~80_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(20));

-- Location: LCCOMB_X23_Y17_N10
\ut_logica|ut_string_tx_uart|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~49_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(21) & (!\ut_logica|ut_string_tx_uart|Add0~48\)) # (!\ut_logica|ut_string_tx_uart|cnt\(21) & ((\ut_logica|ut_string_tx_uart|Add0~48\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~50\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~48\) # (!\ut_logica|ut_string_tx_uart|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(21),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~48\,
	combout => \ut_logica|ut_string_tx_uart|Add0~49_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~50\);

-- Location: LCCOMB_X24_Y17_N16
\ut_logica|ut_string_tx_uart|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~79_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~49_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~79_combout\);

-- Location: FF_X24_Y17_N17
\ut_logica|ut_string_tx_uart|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~79_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(21));

-- Location: LCCOMB_X24_Y17_N4
\ut_logica|ut_string_tx_uart|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~81_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datac => \ut_logica|ut_string_tx_uart|Add0~45_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~81_combout\);

-- Location: FF_X24_Y17_N5
\ut_logica|ut_string_tx_uart|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~81_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(19));

-- Location: LCCOMB_X24_Y17_N12
\ut_logica|ut_string_tx_uart|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|LessThan0~4_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(18)) # ((\ut_logica|ut_string_tx_uart|cnt\(21)) # ((\ut_logica|ut_string_tx_uart|cnt\(19)) # (\ut_logica|ut_string_tx_uart|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(18),
	datab => \ut_logica|ut_string_tx_uart|cnt\(21),
	datac => \ut_logica|ut_string_tx_uart|cnt\(19),
	datad => \ut_logica|ut_string_tx_uart|cnt\(20),
	combout => \ut_logica|ut_string_tx_uart|LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y17_N12
\ut_logica|ut_string_tx_uart|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~51_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(22) & (\ut_logica|ut_string_tx_uart|Add0~50\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(22) & (!\ut_logica|ut_string_tx_uart|Add0~50\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~52\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(22) & !\ut_logica|ut_string_tx_uart|Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(22),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~50\,
	combout => \ut_logica|ut_string_tx_uart|Add0~51_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~52\);

-- Location: LCCOMB_X22_Y17_N24
\ut_logica|ut_string_tx_uart|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~78_combout\ = (\ut_logica|ut_string_tx_uart|Add0~51_combout\ & \ut_logica|ut_string_tx_uart|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|Add0~51_combout\,
	datac => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	combout => \ut_logica|ut_string_tx_uart|Add0~78_combout\);

-- Location: FF_X22_Y17_N25
\ut_logica|ut_string_tx_uart|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~78_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(22));

-- Location: LCCOMB_X23_Y17_N16
\ut_logica|ut_string_tx_uart|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~55_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(24) & (\ut_logica|ut_string_tx_uart|Add0~54\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(24) & (!\ut_logica|ut_string_tx_uart|Add0~54\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~56\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(24) & !\ut_logica|ut_string_tx_uart|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(24),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~54\,
	combout => \ut_logica|ut_string_tx_uart|Add0~55_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~56\);

-- Location: LCCOMB_X22_Y17_N4
\ut_logica|ut_string_tx_uart|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~76_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~55_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~76_combout\);

-- Location: FF_X22_Y17_N5
\ut_logica|ut_string_tx_uart|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~76_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(24));

-- Location: LCCOMB_X23_Y17_N18
\ut_logica|ut_string_tx_uart|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~57_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(25) & (!\ut_logica|ut_string_tx_uart|Add0~56\)) # (!\ut_logica|ut_string_tx_uart|cnt\(25) & ((\ut_logica|ut_string_tx_uart|Add0~56\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~58\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~56\) # (!\ut_logica|ut_string_tx_uart|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(25),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~56\,
	combout => \ut_logica|ut_string_tx_uart|Add0~57_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~58\);

-- Location: LCCOMB_X22_Y17_N10
\ut_logica|ut_string_tx_uart|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~75_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~57_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~75_combout\);

-- Location: FF_X22_Y17_N11
\ut_logica|ut_string_tx_uart|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~75_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(25));

-- Location: LCCOMB_X23_Y17_N20
\ut_logica|ut_string_tx_uart|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~59_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(26) & (\ut_logica|ut_string_tx_uart|Add0~58\ $ (GND))) # (!\ut_logica|ut_string_tx_uart|cnt\(26) & (!\ut_logica|ut_string_tx_uart|Add0~58\ & VCC))
-- \ut_logica|ut_string_tx_uart|Add0~60\ = CARRY((\ut_logica|ut_string_tx_uart|cnt\(26) & !\ut_logica|ut_string_tx_uart|Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(26),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~58\,
	combout => \ut_logica|ut_string_tx_uart|Add0~59_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~60\);

-- Location: LCCOMB_X22_Y17_N14
\ut_logica|ut_string_tx_uart|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~74_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~59_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~74_combout\);

-- Location: FF_X22_Y17_N15
\ut_logica|ut_string_tx_uart|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~74_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(26));

-- Location: LCCOMB_X23_Y17_N22
\ut_logica|ut_string_tx_uart|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~61_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(27) & (!\ut_logica|ut_string_tx_uart|Add0~60\)) # (!\ut_logica|ut_string_tx_uart|cnt\(27) & ((\ut_logica|ut_string_tx_uart|Add0~60\) # (GND)))
-- \ut_logica|ut_string_tx_uart|Add0~62\ = CARRY((!\ut_logica|ut_string_tx_uart|Add0~60\) # (!\ut_logica|ut_string_tx_uart|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|cnt\(27),
	datad => VCC,
	cin => \ut_logica|ut_string_tx_uart|Add0~60\,
	combout => \ut_logica|ut_string_tx_uart|Add0~61_combout\,
	cout => \ut_logica|ut_string_tx_uart|Add0~62\);

-- Location: LCCOMB_X22_Y17_N28
\ut_logica|ut_string_tx_uart|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~73_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~61_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~73_combout\);

-- Location: FF_X22_Y17_N29
\ut_logica|ut_string_tx_uart|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~73_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(27));

-- Location: LCCOMB_X24_Y17_N10
\ut_logica|ut_string_tx_uart|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~72_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~63_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~72_combout\);

-- Location: FF_X24_Y17_N11
\ut_logica|ut_string_tx_uart|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~72_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(28));

-- Location: LCCOMB_X22_Y17_N8
\ut_logica|ut_string_tx_uart|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|LessThan0~2_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(29)) # ((\ut_logica|ut_string_tx_uart|cnt\(26)) # ((\ut_logica|ut_string_tx_uart|cnt\(28)) # (\ut_logica|ut_string_tx_uart|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(29),
	datab => \ut_logica|ut_string_tx_uart|cnt\(26),
	datac => \ut_logica|ut_string_tx_uart|cnt\(28),
	datad => \ut_logica|ut_string_tx_uart|cnt\(27),
	combout => \ut_logica|ut_string_tx_uart|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y18_N4
\ut_logica|ut_string_tx_uart|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~70_combout\ = (\ut_logica|ut_string_tx_uart|Add0~9_combout\ & \ut_logica|ut_string_tx_uart|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|ut_string_tx_uart|Add0~9_combout\,
	datad => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	combout => \ut_logica|ut_string_tx_uart|Add0~70_combout\);

-- Location: FF_X24_Y18_N5
\ut_logica|ut_string_tx_uart|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~70_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(3));

-- Location: LCCOMB_X24_Y18_N18
\ut_logica|ut_string_tx_uart|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|LessThan0~1_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(30)) # ((\ut_logica|ut_string_tx_uart|cnt\(2) & (\ut_logica|ut_string_tx_uart|cnt\(3) & \ut_logica|ut_string_tx_uart|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(30),
	datab => \ut_logica|ut_string_tx_uart|cnt\(2),
	datac => \ut_logica|ut_string_tx_uart|cnt\(3),
	datad => \ut_logica|ut_string_tx_uart|cnt\(1),
	combout => \ut_logica|ut_string_tx_uart|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y17_N16
\ut_logica|ut_string_tx_uart|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|LessThan0~5_combout\ = (\ut_logica|ut_string_tx_uart|LessThan0~3_combout\) # ((\ut_logica|ut_string_tx_uart|LessThan0~4_combout\) # ((\ut_logica|ut_string_tx_uart|LessThan0~2_combout\) # 
-- (\ut_logica|ut_string_tx_uart|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|LessThan0~3_combout\,
	datab => \ut_logica|ut_string_tx_uart|LessThan0~4_combout\,
	datac => \ut_logica|ut_string_tx_uart|LessThan0~2_combout\,
	datad => \ut_logica|ut_string_tx_uart|LessThan0~1_combout\,
	combout => \ut_logica|ut_string_tx_uart|LessThan0~5_combout\);

-- Location: LCCOMB_X22_Y17_N12
\ut_logica|ut_string_tx_uart|Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Selector31~1_combout\ = (!\ut_logica|ut_string_tx_uart|cnt\(31) & ((\ut_logica|ut_string_tx_uart|LessThan0~0_combout\) # ((\ut_logica|ut_string_tx_uart|Selector31~0_combout\) # 
-- (\ut_logica|ut_string_tx_uart|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(31),
	datab => \ut_logica|ut_string_tx_uart|LessThan0~0_combout\,
	datac => \ut_logica|ut_string_tx_uart|Selector31~0_combout\,
	datad => \ut_logica|ut_string_tx_uart|LessThan0~5_combout\,
	combout => \ut_logica|ut_string_tx_uart|Selector31~1_combout\);

-- Location: LCCOMB_X22_Y17_N18
\ut_logica|ut_string_tx_uart|tx_data[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|tx_data[6]~1_combout\ = (\ut_logica|ut_string_tx_uart|estado.s1~q\ & !\ut_logica|ut_string_tx_uart|Selector31~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|estado.s1~q\,
	datad => \ut_logica|ut_string_tx_uart|Selector31~1_combout\,
	combout => \ut_logica|ut_string_tx_uart|tx_data[6]~1_combout\);

-- Location: FF_X22_Y17_N19
\ut_logica|ut_string_tx_uart|estado.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|tx_data[6]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|estado.s2~q\);

-- Location: LCCOMB_X24_Y18_N28
\ut_logica|ut_string_tx_uart|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Add0~7_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\ & \ut_logica|ut_string_tx_uart|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	datad => \ut_logica|ut_string_tx_uart|Add0~2_combout\,
	combout => \ut_logica|ut_string_tx_uart|Add0~7_combout\);

-- Location: FF_X24_Y18_N29
\ut_logica|ut_string_tx_uart|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Add0~7_combout\,
	ena => \ut_logica|ut_string_tx_uart|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|cnt\(1));

-- Location: LCCOMB_X24_Y18_N20
\ut_logica|ut_string_tx_uart|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Mux2~0_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(0) & (\ut_logica|ut_string_tx_uart|cnt\(1) & ((!\ut_logica|ut_string_tx_uart|cnt\(3))))) # (!\ut_logica|ut_string_tx_uart|cnt\(0) & (!\ut_logica|ut_string_tx_uart|cnt\(1) & 
-- (\ut_logica|ut_string_tx_uart|cnt\(2) & \ut_logica|ut_string_tx_uart|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(0),
	datab => \ut_logica|ut_string_tx_uart|cnt\(1),
	datac => \ut_logica|ut_string_tx_uart|cnt\(2),
	datad => \ut_logica|ut_string_tx_uart|cnt\(3),
	combout => \ut_logica|ut_string_tx_uart|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y17_N8
\ut_logica|ut_string_tx_uart|estado~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|estado~11_combout\ = (\ut_logica|ut_string_tx_uart|estado.s2~q\) # (!\ut_logica|ut_string_tx_uart|estado.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_string_tx_uart|estado.s0~q\,
	datad => \ut_logica|ut_string_tx_uart|estado.s2~q\,
	combout => \ut_logica|ut_string_tx_uart|estado~11_combout\);

-- Location: FF_X21_Y17_N9
\ut_logica|ut_string_tx_uart|estado.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|estado~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|estado.s1~q\);

-- Location: LCCOMB_X24_Y18_N8
\ut_logica|ut_string_tx_uart|tx_data[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|tx_data[6]~0_combout\ = (!\reset~input_o\ & (\ut_logica|ut_string_tx_uart|estado.s1~q\ & !\ut_logica|ut_string_tx_uart|Selector31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \ut_logica|ut_string_tx_uart|estado.s1~q\,
	datad => \ut_logica|ut_string_tx_uart|Selector31~1_combout\,
	combout => \ut_logica|ut_string_tx_uart|tx_data[6]~0_combout\);

-- Location: FF_X24_Y18_N21
\ut_logica|ut_string_tx_uart|tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Mux2~0_combout\,
	ena => \ut_logica|ut_string_tx_uart|tx_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|tx_data\(4));

-- Location: LCCOMB_X24_Y16_N30
\ut_tx_uart|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|Selector0~1_combout\ = (\ut_logica|ut_string_tx_uart|tx_data\(3) & ((\ut_tx_uart|estado.d3~q\) # ((\ut_tx_uart|estado.d4~q\ & \ut_logica|ut_string_tx_uart|tx_data\(4))))) # (!\ut_logica|ut_string_tx_uart|tx_data\(3) & (\ut_tx_uart|estado.d4~q\ 
-- & ((\ut_logica|ut_string_tx_uart|tx_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|tx_data\(3),
	datab => \ut_tx_uart|estado.d4~q\,
	datac => \ut_tx_uart|estado.d3~q\,
	datad => \ut_logica|ut_string_tx_uart|tx_data\(4),
	combout => \ut_tx_uart|Selector0~1_combout\);

-- Location: LCCOMB_X24_Y18_N12
\ut_logica|ut_string_tx_uart|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Mux0~0_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(0)) # ((!\ut_logica|ut_string_tx_uart|cnt\(1)) # (!\ut_logica|ut_string_tx_uart|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(0),
	datac => \ut_logica|ut_string_tx_uart|cnt\(2),
	datad => \ut_logica|ut_string_tx_uart|cnt\(1),
	combout => \ut_logica|ut_string_tx_uart|Mux0~0_combout\);

-- Location: FF_X24_Y18_N13
\ut_logica|ut_string_tx_uart|tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Mux0~0_combout\,
	ena => \ut_logica|ut_string_tx_uart|tx_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|tx_data\(6));

-- Location: LCCOMB_X24_Y16_N8
\ut_tx_uart|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|Selector0~0_combout\ = (\ut_logica|ut_string_tx_uart|tx_data\(5) & ((\ut_tx_uart|estado.d5~q\) # ((\ut_tx_uart|estado.d6~q\ & \ut_logica|ut_string_tx_uart|tx_data\(6))))) # (!\ut_logica|ut_string_tx_uart|tx_data\(5) & 
-- (((\ut_tx_uart|estado.d6~q\ & \ut_logica|ut_string_tx_uart|tx_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|tx_data\(5),
	datab => \ut_tx_uart|estado.d5~q\,
	datac => \ut_tx_uart|estado.d6~q\,
	datad => \ut_logica|ut_string_tx_uart|tx_data\(6),
	combout => \ut_tx_uart|Selector0~0_combout\);

-- Location: LCCOMB_X24_Y18_N24
\ut_logica|ut_string_tx_uart|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Mux6~0_combout\ = \ut_logica|ut_string_tx_uart|cnt\(1) $ (((\ut_logica|ut_string_tx_uart|cnt\(0) & (\ut_logica|ut_string_tx_uart|cnt\(2) & \ut_logica|ut_string_tx_uart|cnt\(3))) # (!\ut_logica|ut_string_tx_uart|cnt\(0) & 
-- ((\ut_logica|ut_string_tx_uart|cnt\(2)) # (\ut_logica|ut_string_tx_uart|cnt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(0),
	datab => \ut_logica|ut_string_tx_uart|cnt\(1),
	datac => \ut_logica|ut_string_tx_uart|cnt\(2),
	datad => \ut_logica|ut_string_tx_uart|cnt\(3),
	combout => \ut_logica|ut_string_tx_uart|Mux6~0_combout\);

-- Location: FF_X24_Y18_N25
\ut_logica|ut_string_tx_uart|tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Mux6~0_combout\,
	ena => \ut_logica|ut_string_tx_uart|tx_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|tx_data\(0));

-- Location: LCCOMB_X24_Y16_N22
\ut_tx_uart|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|Selector0~3_combout\ = ((\ut_logica|ut_string_tx_uart|tx_data\(0) & \ut_tx_uart|estado.d0~q\)) # (!\ut_tx_uart|estado.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_tx_uart|estado.idle~q\,
	datab => \ut_logica|ut_string_tx_uart|tx_data\(0),
	datac => \ut_tx_uart|estado.d0~q\,
	combout => \ut_tx_uart|Selector0~3_combout\);

-- Location: LCCOMB_X24_Y18_N16
\ut_logica|ut_string_tx_uart|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_string_tx_uart|Mux4~0_combout\ = (\ut_logica|ut_string_tx_uart|cnt\(2) & (\ut_logica|ut_string_tx_uart|cnt\(0) & (!\ut_logica|ut_string_tx_uart|cnt\(1)))) # (!\ut_logica|ut_string_tx_uart|cnt\(2) & ((\ut_logica|ut_string_tx_uart|cnt\(1) $ 
-- (\ut_logica|ut_string_tx_uart|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|cnt\(0),
	datab => \ut_logica|ut_string_tx_uart|cnt\(1),
	datac => \ut_logica|ut_string_tx_uart|cnt\(2),
	datad => \ut_logica|ut_string_tx_uart|cnt\(3),
	combout => \ut_logica|ut_string_tx_uart|Mux4~0_combout\);

-- Location: FF_X24_Y18_N17
\ut_logica|ut_string_tx_uart|tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_9600|clk_out~clkctrl_outclk\,
	d => \ut_logica|ut_string_tx_uart|Mux4~0_combout\,
	ena => \ut_logica|ut_string_tx_uart|tx_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_string_tx_uart|tx_data\(2));

-- Location: LCCOMB_X24_Y16_N12
\ut_tx_uart|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|Selector0~2_combout\ = (\ut_logica|ut_string_tx_uart|tx_data\(1) & ((\ut_tx_uart|estado.d1~q\) # ((\ut_tx_uart|estado.d2~q\ & \ut_logica|ut_string_tx_uart|tx_data\(2))))) # (!\ut_logica|ut_string_tx_uart|tx_data\(1) & (\ut_tx_uart|estado.d2~q\ 
-- & ((\ut_logica|ut_string_tx_uart|tx_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_string_tx_uart|tx_data\(1),
	datab => \ut_tx_uart|estado.d2~q\,
	datac => \ut_tx_uart|estado.d1~q\,
	datad => \ut_logica|ut_string_tx_uart|tx_data\(2),
	combout => \ut_tx_uart|Selector0~2_combout\);

-- Location: LCCOMB_X24_Y16_N4
\ut_tx_uart|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_tx_uart|Selector0~4_combout\ = (\ut_tx_uart|Selector0~1_combout\) # ((\ut_tx_uart|Selector0~0_combout\) # ((\ut_tx_uart|Selector0~3_combout\) # (\ut_tx_uart|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_tx_uart|Selector0~1_combout\,
	datab => \ut_tx_uart|Selector0~0_combout\,
	datac => \ut_tx_uart|Selector0~3_combout\,
	datad => \ut_tx_uart|Selector0~2_combout\,
	combout => \ut_tx_uart|Selector0~4_combout\);

-- Location: IOIBUF_X34_Y17_N1
\rx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

ww_salidas(0) <= \salidas[0]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_tx <= \tx~output_o\;
END structure;


