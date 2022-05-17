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

-- DATE "05/17/2022 16:23:33"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TP_integrador IS
    PORT (
	clk_50Mhz : IN std_logic;
	reset : IN std_logic;
	entradas : IN std_logic_vector(1 DOWNTO 0);
	rx : IN std_logic;
	leds : OUT std_logic_vector(1 DOWNTO 0);
	salidas : OUT std_logic_vector(1 DOWNTO 0);
	tx : OUT std_logic
	);
END TP_integrador;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salidas[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradas[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50Mhz	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TP_integrador IS
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
SIGNAL ww_entradas : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rx : std_logic;
SIGNAL ww_leds : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_salidas : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_tx : std_logic;
SIGNAL \ut_logica|ut_clk_tx|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ut_uart|ut_clk_tx|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ut_logica|ut_clk_tx|Add0~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~1\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~2_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~3\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~4_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~5\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~6_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~7\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~8_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~9\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~10_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~11\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~12_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~13\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~14_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~15\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~16_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~17\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~18_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~19\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~20_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~21\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~22_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~23\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~24_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~25\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~26_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~27\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~28_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~29\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Add0~30_combout\ : std_logic;
SIGNAL \ut_logica|Add0~0_combout\ : std_logic;
SIGNAL \ut_logica|Add0~8_combout\ : std_logic;
SIGNAL \ut_logica|Add0~10_combout\ : std_logic;
SIGNAL \ut_logica|Add0~12_combout\ : std_logic;
SIGNAL \ut_logica|Add0~22_combout\ : std_logic;
SIGNAL \ut_logica|Add0~30_combout\ : std_logic;
SIGNAL \ut_logica|Add0~34_combout\ : std_logic;
SIGNAL \ut_logica|Add0~38_combout\ : std_logic;
SIGNAL \ut_logica|Add0~40_combout\ : std_logic;
SIGNAL \ut_logica|Add0~54_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~0_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~1\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~2_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~3\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~4_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~5\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~6_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~7\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~8_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~9\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~10_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~11\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~12_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~13\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~14_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~15\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~16_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~17\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~18_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~19\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~20_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~21\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~22_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~23\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Add0~24_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|clk_out~q\ : std_logic;
SIGNAL \ut_logica|LessThan0~3_combout\ : std_logic;
SIGNAL \ut_logica|LessThan0~6_combout\ : std_logic;
SIGNAL \ut_logica|Mux0~0_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|clk_out~q\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Equal0~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|clk_out~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|LessThan1~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Equal0~1_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Equal0~2_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Equal0~3_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|Equal0~4_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|clk_out~1_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|clk_out~2_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|clk_out~3_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|clk_out~4_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|clk_out~5_combout\ : std_logic;
SIGNAL \ut_logica|Add0~70_combout\ : std_logic;
SIGNAL \ut_logica|Add0~77_combout\ : std_logic;
SIGNAL \ut_logica|Add0~78_combout\ : std_logic;
SIGNAL \ut_logica|Add0~80_combout\ : std_logic;
SIGNAL \ut_logica|Add0~86_combout\ : std_logic;
SIGNAL \ut_logica|Add0~91_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|LessThan1~0_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|LessThan1~1_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|clk_out~0_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|clk_out~1_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|clk_out~2_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Equal0~0_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Equal0~1_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|Equal0~2_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|clk_out~3_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|clk_out~4_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|cnt~0_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|cnt~1_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|cnt~2_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|cnt~3_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|cnt~4_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|cnt~5_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|cnt~6_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|cnt~7_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|cnt~8_combout\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|cnt~9_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|cnt[12]~0_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|cnt~1_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|cnt~2_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|cnt~3_combout\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|cnt~4_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \clk_50Mhz~input_o\ : std_logic;
SIGNAL \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \salidas[0]~output_o\ : std_logic;
SIGNAL \salidas[1]~output_o\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \entradas[0]~input_o\ : std_logic;
SIGNAL \entradas[1]~input_o\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d5~feeder_combout\ : std_logic;
SIGNAL \ut_logica|Add0~92_combout\ : std_logic;
SIGNAL \ut_logica|estado~11_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ut_logica|string_completo~0_combout\ : std_logic;
SIGNAL \ut_logica|string_completo~q\ : std_logic;
SIGNAL \ut_logica|estado.s1~q\ : std_logic;
SIGNAL \ut_logica|Selector33~0_combout\ : std_logic;
SIGNAL \ut_logica|estado.s3~feeder_combout\ : std_logic;
SIGNAL \ut_logica|estado.s3~q\ : std_logic;
SIGNAL \ut_logica|estado.s0~0_combout\ : std_logic;
SIGNAL \ut_logica|estado.s0~q\ : std_logic;
SIGNAL \ut_logica|cnt[25]~0_combout\ : std_logic;
SIGNAL \ut_logica|cnt[31]~1_combout\ : std_logic;
SIGNAL \ut_logica|Add0~1\ : std_logic;
SIGNAL \ut_logica|Add0~2_combout\ : std_logic;
SIGNAL \ut_logica|Add0~68_combout\ : std_logic;
SIGNAL \ut_logica|Add0~3\ : std_logic;
SIGNAL \ut_logica|Add0~4_combout\ : std_logic;
SIGNAL \ut_logica|Add0~67_combout\ : std_logic;
SIGNAL \ut_logica|Add0~5\ : std_logic;
SIGNAL \ut_logica|Add0~6_combout\ : std_logic;
SIGNAL \ut_logica|Add0~94_combout\ : std_logic;
SIGNAL \ut_logica|Add0~7\ : std_logic;
SIGNAL \ut_logica|Add0~9\ : std_logic;
SIGNAL \ut_logica|Add0~11\ : std_logic;
SIGNAL \ut_logica|Add0~13\ : std_logic;
SIGNAL \ut_logica|Add0~14_combout\ : std_logic;
SIGNAL \ut_logica|Add0~90_combout\ : std_logic;
SIGNAL \ut_logica|Add0~15\ : std_logic;
SIGNAL \ut_logica|Add0~17\ : std_logic;
SIGNAL \ut_logica|Add0~18_combout\ : std_logic;
SIGNAL \ut_logica|Add0~88_combout\ : std_logic;
SIGNAL \ut_logica|Add0~19\ : std_logic;
SIGNAL \ut_logica|Add0~20_combout\ : std_logic;
SIGNAL \ut_logica|Add0~87_combout\ : std_logic;
SIGNAL \ut_logica|Add0~21\ : std_logic;
SIGNAL \ut_logica|Add0~23\ : std_logic;
SIGNAL \ut_logica|Add0~24_combout\ : std_logic;
SIGNAL \ut_logica|Add0~85_combout\ : std_logic;
SIGNAL \ut_logica|Add0~25\ : std_logic;
SIGNAL \ut_logica|Add0~26_combout\ : std_logic;
SIGNAL \ut_logica|Add0~84_combout\ : std_logic;
SIGNAL \ut_logica|Add0~82_combout\ : std_logic;
SIGNAL \ut_logica|Add0~27\ : std_logic;
SIGNAL \ut_logica|Add0~28_combout\ : std_logic;
SIGNAL \ut_logica|Add0~83_combout\ : std_logic;
SIGNAL \ut_logica|LessThan0~5_combout\ : std_logic;
SIGNAL \ut_logica|Add0~29\ : std_logic;
SIGNAL \ut_logica|Add0~31\ : std_logic;
SIGNAL \ut_logica|Add0~32_combout\ : std_logic;
SIGNAL \ut_logica|Add0~81_combout\ : std_logic;
SIGNAL \ut_logica|Add0~33\ : std_logic;
SIGNAL \ut_logica|Add0~35\ : std_logic;
SIGNAL \ut_logica|Add0~36_combout\ : std_logic;
SIGNAL \ut_logica|Add0~79_combout\ : std_logic;
SIGNAL \ut_logica|Add0~37\ : std_logic;
SIGNAL \ut_logica|Add0~39\ : std_logic;
SIGNAL \ut_logica|Add0~41\ : std_logic;
SIGNAL \ut_logica|Add0~42_combout\ : std_logic;
SIGNAL \ut_logica|Add0~76_combout\ : std_logic;
SIGNAL \ut_logica|Add0~43\ : std_logic;
SIGNAL \ut_logica|Add0~45\ : std_logic;
SIGNAL \ut_logica|Add0~47\ : std_logic;
SIGNAL \ut_logica|Add0~49\ : std_logic;
SIGNAL \ut_logica|Add0~50_combout\ : std_logic;
SIGNAL \ut_logica|Add0~72_combout\ : std_logic;
SIGNAL \ut_logica|Add0~51\ : std_logic;
SIGNAL \ut_logica|Add0~52_combout\ : std_logic;
SIGNAL \ut_logica|Add0~71_combout\ : std_logic;
SIGNAL \ut_logica|Add0~53\ : std_logic;
SIGNAL \ut_logica|Add0~55\ : std_logic;
SIGNAL \ut_logica|Add0~56_combout\ : std_logic;
SIGNAL \ut_logica|Add0~69_combout\ : std_logic;
SIGNAL \ut_logica|LessThan0~1_combout\ : std_logic;
SIGNAL \ut_logica|Add0~48_combout\ : std_logic;
SIGNAL \ut_logica|Add0~73_combout\ : std_logic;
SIGNAL \ut_logica|Add0~44_combout\ : std_logic;
SIGNAL \ut_logica|Add0~75_combout\ : std_logic;
SIGNAL \ut_logica|Add0~46_combout\ : std_logic;
SIGNAL \ut_logica|Add0~74_combout\ : std_logic;
SIGNAL \ut_logica|LessThan0~2_combout\ : std_logic;
SIGNAL \ut_logica|Add0~57\ : std_logic;
SIGNAL \ut_logica|Add0~58_combout\ : std_logic;
SIGNAL \ut_logica|Add0~66_combout\ : std_logic;
SIGNAL \ut_logica|Add0~59\ : std_logic;
SIGNAL \ut_logica|Add0~60_combout\ : std_logic;
SIGNAL \ut_logica|Add0~65_combout\ : std_logic;
SIGNAL \ut_logica|LessThan0~0_combout\ : std_logic;
SIGNAL \ut_logica|LessThan0~4_combout\ : std_logic;
SIGNAL \ut_logica|Add0~93_combout\ : std_logic;
SIGNAL \ut_logica|Add0~16_combout\ : std_logic;
SIGNAL \ut_logica|Add0~89_combout\ : std_logic;
SIGNAL \ut_logica|LessThan0~7_combout\ : std_logic;
SIGNAL \ut_logica|LessThan0~8_combout\ : std_logic;
SIGNAL \ut_logica|LessThan0~9_combout\ : std_logic;
SIGNAL \ut_logica|data_tx[6]~1_combout\ : std_logic;
SIGNAL \ut_logica|estado.s2~q\ : std_logic;
SIGNAL \ut_logica|Add0~61\ : std_logic;
SIGNAL \ut_logica|Add0~62_combout\ : std_logic;
SIGNAL \ut_logica|Add0~64_combout\ : std_logic;
SIGNAL \ut_logica|Selector1~0_combout\ : std_logic;
SIGNAL \ut_logica|Selector1~1_combout\ : std_logic;
SIGNAL \ut_logica|enable_tx~q\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d5~q\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d6~feeder_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d6~q\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d7~feeder_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d7~q\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.stop~feeder_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.stop~q\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.idle~0_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.idle~q\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.start~0_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.start~q\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d0~feeder_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d0~q\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d1~feeder_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d1~q\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d2~feeder_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d2~q\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d3~feeder_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d3~q\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d4~feeder_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|estado.d4~q\ : std_logic;
SIGNAL \ut_logica|data_tx[3]~2_combout\ : std_logic;
SIGNAL \ut_logica|data_tx[6]~0_combout\ : std_logic;
SIGNAL \ut_logica|Add0~95_combout\ : std_logic;
SIGNAL \ut_logica|Mux2~0_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|Selector0~1_combout\ : std_logic;
SIGNAL \ut_logica|Mux2~1_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|Selector0~2_combout\ : std_logic;
SIGNAL \ut_logica|Mux3~0_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|Selector0~3_combout\ : std_logic;
SIGNAL \ut_logica|data_tx[6]~feeder_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|Selector0~0_combout\ : std_logic;
SIGNAL \ut_uart|ut_tx_uart|Selector0~4_combout\ : std_logic;
SIGNAL \ut_logica|data_tx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ut_logica|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ut_logica|ut_clk_tx|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ut_uart|ut_clk_tx|cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_entradas[0]~input_o\ : std_logic;
SIGNAL \ut_logica|ALT_INV_string_completo~q\ : std_logic;

BEGIN

ww_clk_50Mhz <= clk_50Mhz;
ww_reset <= reset;
ww_entradas <= entradas;
ww_rx <= rx;
leds <= ww_leds;
salidas <= ww_salidas;
tx <= ww_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ut_logica|ut_clk_tx|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ut_logica|ut_clk_tx|clk_out~q\);

\ut_uart|ut_clk_tx|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ut_uart|ut_clk_tx|clk_out~q\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50Mhz~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_entradas[0]~input_o\ <= NOT \entradas[0]~input_o\;
\ut_logica|ALT_INV_string_completo~q\ <= NOT \ut_logica|string_completo~q\;

-- Location: LCCOMB_X30_Y16_N0
\ut_logica|ut_clk_tx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~0_combout\ = \ut_uart|ut_clk_tx|cnt\(0) $ (VCC)
-- \ut_logica|ut_clk_tx|Add0~1\ = CARRY(\ut_uart|ut_clk_tx|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_uart|ut_clk_tx|cnt\(0),
	datad => VCC,
	combout => \ut_logica|ut_clk_tx|Add0~0_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~1\);

-- Location: LCCOMB_X30_Y16_N2
\ut_logica|ut_clk_tx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~2_combout\ = (\ut_uart|ut_clk_tx|cnt\(1) & (!\ut_logica|ut_clk_tx|Add0~1\)) # (!\ut_uart|ut_clk_tx|cnt\(1) & ((\ut_logica|ut_clk_tx|Add0~1\) # (GND)))
-- \ut_logica|ut_clk_tx|Add0~3\ = CARRY((!\ut_logica|ut_clk_tx|Add0~1\) # (!\ut_uart|ut_clk_tx|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|cnt\(1),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~1\,
	combout => \ut_logica|ut_clk_tx|Add0~2_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~3\);

-- Location: LCCOMB_X30_Y16_N4
\ut_logica|ut_clk_tx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~4_combout\ = (\ut_logica|ut_clk_tx|cnt\(2) & (\ut_logica|ut_clk_tx|Add0~3\ $ (GND))) # (!\ut_logica|ut_clk_tx|cnt\(2) & (!\ut_logica|ut_clk_tx|Add0~3\ & VCC))
-- \ut_logica|ut_clk_tx|Add0~5\ = CARRY((\ut_logica|ut_clk_tx|cnt\(2) & !\ut_logica|ut_clk_tx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_clk_tx|cnt\(2),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~3\,
	combout => \ut_logica|ut_clk_tx|Add0~4_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~5\);

-- Location: LCCOMB_X30_Y16_N6
\ut_logica|ut_clk_tx|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~6_combout\ = (\ut_logica|ut_clk_tx|cnt\(3) & (!\ut_logica|ut_clk_tx|Add0~5\)) # (!\ut_logica|ut_clk_tx|cnt\(3) & ((\ut_logica|ut_clk_tx|Add0~5\) # (GND)))
-- \ut_logica|ut_clk_tx|Add0~7\ = CARRY((!\ut_logica|ut_clk_tx|Add0~5\) # (!\ut_logica|ut_clk_tx|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|cnt\(3),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~5\,
	combout => \ut_logica|ut_clk_tx|Add0~6_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~7\);

-- Location: LCCOMB_X30_Y16_N8
\ut_logica|ut_clk_tx|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~8_combout\ = (\ut_logica|ut_clk_tx|cnt\(4) & (\ut_logica|ut_clk_tx|Add0~7\ $ (GND))) # (!\ut_logica|ut_clk_tx|cnt\(4) & (!\ut_logica|ut_clk_tx|Add0~7\ & VCC))
-- \ut_logica|ut_clk_tx|Add0~9\ = CARRY((\ut_logica|ut_clk_tx|cnt\(4) & !\ut_logica|ut_clk_tx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_clk_tx|cnt\(4),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~7\,
	combout => \ut_logica|ut_clk_tx|Add0~8_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~9\);

-- Location: LCCOMB_X30_Y16_N10
\ut_logica|ut_clk_tx|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~10_combout\ = (\ut_logica|ut_clk_tx|cnt\(5) & (!\ut_logica|ut_clk_tx|Add0~9\)) # (!\ut_logica|ut_clk_tx|cnt\(5) & ((\ut_logica|ut_clk_tx|Add0~9\) # (GND)))
-- \ut_logica|ut_clk_tx|Add0~11\ = CARRY((!\ut_logica|ut_clk_tx|Add0~9\) # (!\ut_logica|ut_clk_tx|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|cnt\(5),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~9\,
	combout => \ut_logica|ut_clk_tx|Add0~10_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~11\);

-- Location: LCCOMB_X30_Y16_N12
\ut_logica|ut_clk_tx|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~12_combout\ = (\ut_logica|ut_clk_tx|cnt\(6) & (\ut_logica|ut_clk_tx|Add0~11\ $ (GND))) # (!\ut_logica|ut_clk_tx|cnt\(6) & (!\ut_logica|ut_clk_tx|Add0~11\ & VCC))
-- \ut_logica|ut_clk_tx|Add0~13\ = CARRY((\ut_logica|ut_clk_tx|cnt\(6) & !\ut_logica|ut_clk_tx|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|cnt\(6),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~11\,
	combout => \ut_logica|ut_clk_tx|Add0~12_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~13\);

-- Location: LCCOMB_X30_Y16_N14
\ut_logica|ut_clk_tx|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~14_combout\ = (\ut_logica|ut_clk_tx|cnt\(7) & (!\ut_logica|ut_clk_tx|Add0~13\)) # (!\ut_logica|ut_clk_tx|cnt\(7) & ((\ut_logica|ut_clk_tx|Add0~13\) # (GND)))
-- \ut_logica|ut_clk_tx|Add0~15\ = CARRY((!\ut_logica|ut_clk_tx|Add0~13\) # (!\ut_logica|ut_clk_tx|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_clk_tx|cnt\(7),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~13\,
	combout => \ut_logica|ut_clk_tx|Add0~14_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~15\);

-- Location: LCCOMB_X30_Y16_N16
\ut_logica|ut_clk_tx|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~16_combout\ = (\ut_logica|ut_clk_tx|cnt\(8) & (\ut_logica|ut_clk_tx|Add0~15\ $ (GND))) # (!\ut_logica|ut_clk_tx|cnt\(8) & (!\ut_logica|ut_clk_tx|Add0~15\ & VCC))
-- \ut_logica|ut_clk_tx|Add0~17\ = CARRY((\ut_logica|ut_clk_tx|cnt\(8) & !\ut_logica|ut_clk_tx|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_clk_tx|cnt\(8),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~15\,
	combout => \ut_logica|ut_clk_tx|Add0~16_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~17\);

-- Location: LCCOMB_X30_Y16_N18
\ut_logica|ut_clk_tx|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~18_combout\ = (\ut_logica|ut_clk_tx|cnt\(9) & (!\ut_logica|ut_clk_tx|Add0~17\)) # (!\ut_logica|ut_clk_tx|cnt\(9) & ((\ut_logica|ut_clk_tx|Add0~17\) # (GND)))
-- \ut_logica|ut_clk_tx|Add0~19\ = CARRY((!\ut_logica|ut_clk_tx|Add0~17\) # (!\ut_logica|ut_clk_tx|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|cnt\(9),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~17\,
	combout => \ut_logica|ut_clk_tx|Add0~18_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~19\);

-- Location: LCCOMB_X30_Y16_N20
\ut_logica|ut_clk_tx|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~20_combout\ = (\ut_logica|ut_clk_tx|cnt\(10) & (\ut_logica|ut_clk_tx|Add0~19\ $ (GND))) # (!\ut_logica|ut_clk_tx|cnt\(10) & (!\ut_logica|ut_clk_tx|Add0~19\ & VCC))
-- \ut_logica|ut_clk_tx|Add0~21\ = CARRY((\ut_logica|ut_clk_tx|cnt\(10) & !\ut_logica|ut_clk_tx|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|cnt\(10),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~19\,
	combout => \ut_logica|ut_clk_tx|Add0~20_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~21\);

-- Location: LCCOMB_X30_Y16_N22
\ut_logica|ut_clk_tx|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~22_combout\ = (\ut_logica|ut_clk_tx|cnt\(11) & (!\ut_logica|ut_clk_tx|Add0~21\)) # (!\ut_logica|ut_clk_tx|cnt\(11) & ((\ut_logica|ut_clk_tx|Add0~21\) # (GND)))
-- \ut_logica|ut_clk_tx|Add0~23\ = CARRY((!\ut_logica|ut_clk_tx|Add0~21\) # (!\ut_logica|ut_clk_tx|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|cnt\(11),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~21\,
	combout => \ut_logica|ut_clk_tx|Add0~22_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~23\);

-- Location: LCCOMB_X30_Y16_N24
\ut_logica|ut_clk_tx|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~24_combout\ = (\ut_logica|ut_clk_tx|cnt\(12) & (\ut_logica|ut_clk_tx|Add0~23\ $ (GND))) # (!\ut_logica|ut_clk_tx|cnt\(12) & (!\ut_logica|ut_clk_tx|Add0~23\ & VCC))
-- \ut_logica|ut_clk_tx|Add0~25\ = CARRY((\ut_logica|ut_clk_tx|cnt\(12) & !\ut_logica|ut_clk_tx|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|cnt\(12),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~23\,
	combout => \ut_logica|ut_clk_tx|Add0~24_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~25\);

-- Location: LCCOMB_X30_Y16_N26
\ut_logica|ut_clk_tx|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~26_combout\ = (\ut_logica|ut_clk_tx|cnt\(13) & (!\ut_logica|ut_clk_tx|Add0~25\)) # (!\ut_logica|ut_clk_tx|cnt\(13) & ((\ut_logica|ut_clk_tx|Add0~25\) # (GND)))
-- \ut_logica|ut_clk_tx|Add0~27\ = CARRY((!\ut_logica|ut_clk_tx|Add0~25\) # (!\ut_logica|ut_clk_tx|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|cnt\(13),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~25\,
	combout => \ut_logica|ut_clk_tx|Add0~26_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~27\);

-- Location: LCCOMB_X30_Y16_N28
\ut_logica|ut_clk_tx|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~28_combout\ = (\ut_logica|ut_clk_tx|cnt\(14) & (\ut_logica|ut_clk_tx|Add0~27\ $ (GND))) # (!\ut_logica|ut_clk_tx|cnt\(14) & (!\ut_logica|ut_clk_tx|Add0~27\ & VCC))
-- \ut_logica|ut_clk_tx|Add0~29\ = CARRY((\ut_logica|ut_clk_tx|cnt\(14) & !\ut_logica|ut_clk_tx|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_clk_tx|cnt\(14),
	datad => VCC,
	cin => \ut_logica|ut_clk_tx|Add0~27\,
	combout => \ut_logica|ut_clk_tx|Add0~28_combout\,
	cout => \ut_logica|ut_clk_tx|Add0~29\);

-- Location: LCCOMB_X30_Y16_N30
\ut_logica|ut_clk_tx|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Add0~30_combout\ = \ut_logica|ut_clk_tx|Add0~29\ $ (\ut_logica|ut_clk_tx|cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ut_logica|ut_clk_tx|cnt\(15),
	cin => \ut_logica|ut_clk_tx|Add0~29\,
	combout => \ut_logica|ut_clk_tx|Add0~30_combout\);

-- Location: LCCOMB_X23_Y15_N0
\ut_logica|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~0_combout\ = \ut_logica|cnt\(0) $ (GND)
-- \ut_logica|Add0~1\ = CARRY(!\ut_logica|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(0),
	datad => VCC,
	combout => \ut_logica|Add0~0_combout\,
	cout => \ut_logica|Add0~1\);

-- Location: LCCOMB_X23_Y15_N8
\ut_logica|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~8_combout\ = (\ut_logica|cnt\(4) & (\ut_logica|Add0~7\ $ (GND))) # (!\ut_logica|cnt\(4) & (!\ut_logica|Add0~7\ & VCC))
-- \ut_logica|Add0~9\ = CARRY((\ut_logica|cnt\(4) & !\ut_logica|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(4),
	datad => VCC,
	cin => \ut_logica|Add0~7\,
	combout => \ut_logica|Add0~8_combout\,
	cout => \ut_logica|Add0~9\);

-- Location: LCCOMB_X23_Y15_N10
\ut_logica|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~10_combout\ = (\ut_logica|cnt\(5) & (!\ut_logica|Add0~9\)) # (!\ut_logica|cnt\(5) & ((\ut_logica|Add0~9\) # (GND)))
-- \ut_logica|Add0~11\ = CARRY((!\ut_logica|Add0~9\) # (!\ut_logica|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(5),
	datad => VCC,
	cin => \ut_logica|Add0~9\,
	combout => \ut_logica|Add0~10_combout\,
	cout => \ut_logica|Add0~11\);

-- Location: LCCOMB_X23_Y15_N12
\ut_logica|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~12_combout\ = (\ut_logica|cnt\(6) & (\ut_logica|Add0~11\ $ (GND))) # (!\ut_logica|cnt\(6) & (!\ut_logica|Add0~11\ & VCC))
-- \ut_logica|Add0~13\ = CARRY((\ut_logica|cnt\(6) & !\ut_logica|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(6),
	datad => VCC,
	cin => \ut_logica|Add0~11\,
	combout => \ut_logica|Add0~12_combout\,
	cout => \ut_logica|Add0~13\);

-- Location: LCCOMB_X23_Y15_N22
\ut_logica|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~22_combout\ = (\ut_logica|cnt\(11) & (!\ut_logica|Add0~21\)) # (!\ut_logica|cnt\(11) & ((\ut_logica|Add0~21\) # (GND)))
-- \ut_logica|Add0~23\ = CARRY((!\ut_logica|Add0~21\) # (!\ut_logica|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(11),
	datad => VCC,
	cin => \ut_logica|Add0~21\,
	combout => \ut_logica|Add0~22_combout\,
	cout => \ut_logica|Add0~23\);

-- Location: LCCOMB_X23_Y15_N30
\ut_logica|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~30_combout\ = (\ut_logica|cnt\(15) & (!\ut_logica|Add0~29\)) # (!\ut_logica|cnt\(15) & ((\ut_logica|Add0~29\) # (GND)))
-- \ut_logica|Add0~31\ = CARRY((!\ut_logica|Add0~29\) # (!\ut_logica|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(15),
	datad => VCC,
	cin => \ut_logica|Add0~29\,
	combout => \ut_logica|Add0~30_combout\,
	cout => \ut_logica|Add0~31\);

-- Location: LCCOMB_X23_Y14_N2
\ut_logica|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~34_combout\ = (\ut_logica|cnt\(17) & (!\ut_logica|Add0~33\)) # (!\ut_logica|cnt\(17) & ((\ut_logica|Add0~33\) # (GND)))
-- \ut_logica|Add0~35\ = CARRY((!\ut_logica|Add0~33\) # (!\ut_logica|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(17),
	datad => VCC,
	cin => \ut_logica|Add0~33\,
	combout => \ut_logica|Add0~34_combout\,
	cout => \ut_logica|Add0~35\);

-- Location: LCCOMB_X23_Y14_N6
\ut_logica|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~38_combout\ = (\ut_logica|cnt\(19) & (!\ut_logica|Add0~37\)) # (!\ut_logica|cnt\(19) & ((\ut_logica|Add0~37\) # (GND)))
-- \ut_logica|Add0~39\ = CARRY((!\ut_logica|Add0~37\) # (!\ut_logica|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(19),
	datad => VCC,
	cin => \ut_logica|Add0~37\,
	combout => \ut_logica|Add0~38_combout\,
	cout => \ut_logica|Add0~39\);

-- Location: LCCOMB_X23_Y14_N8
\ut_logica|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~40_combout\ = (\ut_logica|cnt\(20) & (\ut_logica|Add0~39\ $ (GND))) # (!\ut_logica|cnt\(20) & (!\ut_logica|Add0~39\ & VCC))
-- \ut_logica|Add0~41\ = CARRY((\ut_logica|cnt\(20) & !\ut_logica|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(20),
	datad => VCC,
	cin => \ut_logica|Add0~39\,
	combout => \ut_logica|Add0~40_combout\,
	cout => \ut_logica|Add0~41\);

-- Location: LCCOMB_X23_Y14_N22
\ut_logica|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~54_combout\ = (\ut_logica|cnt\(27) & (!\ut_logica|Add0~53\)) # (!\ut_logica|cnt\(27) & ((\ut_logica|Add0~53\) # (GND)))
-- \ut_logica|Add0~55\ = CARRY((!\ut_logica|Add0~53\) # (!\ut_logica|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(27),
	datad => VCC,
	cin => \ut_logica|Add0~53\,
	combout => \ut_logica|Add0~54_combout\,
	cout => \ut_logica|Add0~55\);

-- Location: LCCOMB_X31_Y16_N0
\ut_uart|ut_clk_tx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~0_combout\ = \ut_uart|ut_clk_tx|cnt\(0) $ (VCC)
-- \ut_uart|ut_clk_tx|Add0~1\ = CARRY(\ut_uart|ut_clk_tx|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_uart|ut_clk_tx|cnt\(0),
	datad => VCC,
	combout => \ut_uart|ut_clk_tx|Add0~0_combout\,
	cout => \ut_uart|ut_clk_tx|Add0~1\);

-- Location: LCCOMB_X31_Y16_N2
\ut_uart|ut_clk_tx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~2_combout\ = (\ut_uart|ut_clk_tx|cnt\(1) & (!\ut_uart|ut_clk_tx|Add0~1\)) # (!\ut_uart|ut_clk_tx|cnt\(1) & ((\ut_uart|ut_clk_tx|Add0~1\) # (GND)))
-- \ut_uart|ut_clk_tx|Add0~3\ = CARRY((!\ut_uart|ut_clk_tx|Add0~1\) # (!\ut_uart|ut_clk_tx|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|cnt\(1),
	datad => VCC,
	cin => \ut_uart|ut_clk_tx|Add0~1\,
	combout => \ut_uart|ut_clk_tx|Add0~2_combout\,
	cout => \ut_uart|ut_clk_tx|Add0~3\);

-- Location: LCCOMB_X31_Y16_N4
\ut_uart|ut_clk_tx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~4_combout\ = (\ut_uart|ut_clk_tx|cnt\(2) & (\ut_uart|ut_clk_tx|Add0~3\ $ (GND))) # (!\ut_uart|ut_clk_tx|cnt\(2) & (!\ut_uart|ut_clk_tx|Add0~3\ & VCC))
-- \ut_uart|ut_clk_tx|Add0~5\ = CARRY((\ut_uart|ut_clk_tx|cnt\(2) & !\ut_uart|ut_clk_tx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_uart|ut_clk_tx|cnt\(2),
	datad => VCC,
	cin => \ut_uart|ut_clk_tx|Add0~3\,
	combout => \ut_uart|ut_clk_tx|Add0~4_combout\,
	cout => \ut_uart|ut_clk_tx|Add0~5\);

-- Location: LCCOMB_X31_Y16_N6
\ut_uart|ut_clk_tx|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~6_combout\ = (\ut_uart|ut_clk_tx|cnt\(3) & (!\ut_uart|ut_clk_tx|Add0~5\)) # (!\ut_uart|ut_clk_tx|cnt\(3) & ((\ut_uart|ut_clk_tx|Add0~5\) # (GND)))
-- \ut_uart|ut_clk_tx|Add0~7\ = CARRY((!\ut_uart|ut_clk_tx|Add0~5\) # (!\ut_uart|ut_clk_tx|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|cnt\(3),
	datad => VCC,
	cin => \ut_uart|ut_clk_tx|Add0~5\,
	combout => \ut_uart|ut_clk_tx|Add0~6_combout\,
	cout => \ut_uart|ut_clk_tx|Add0~7\);

-- Location: LCCOMB_X31_Y16_N8
\ut_uart|ut_clk_tx|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~8_combout\ = (\ut_uart|ut_clk_tx|cnt\(4) & (\ut_uart|ut_clk_tx|Add0~7\ $ (GND))) # (!\ut_uart|ut_clk_tx|cnt\(4) & (!\ut_uart|ut_clk_tx|Add0~7\ & VCC))
-- \ut_uart|ut_clk_tx|Add0~9\ = CARRY((\ut_uart|ut_clk_tx|cnt\(4) & !\ut_uart|ut_clk_tx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_uart|ut_clk_tx|cnt\(4),
	datad => VCC,
	cin => \ut_uart|ut_clk_tx|Add0~7\,
	combout => \ut_uart|ut_clk_tx|Add0~8_combout\,
	cout => \ut_uart|ut_clk_tx|Add0~9\);

-- Location: LCCOMB_X31_Y16_N10
\ut_uart|ut_clk_tx|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~10_combout\ = (\ut_uart|ut_clk_tx|cnt\(5) & (!\ut_uart|ut_clk_tx|Add0~9\)) # (!\ut_uart|ut_clk_tx|cnt\(5) & ((\ut_uart|ut_clk_tx|Add0~9\) # (GND)))
-- \ut_uart|ut_clk_tx|Add0~11\ = CARRY((!\ut_uart|ut_clk_tx|Add0~9\) # (!\ut_uart|ut_clk_tx|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|cnt\(5),
	datad => VCC,
	cin => \ut_uart|ut_clk_tx|Add0~9\,
	combout => \ut_uart|ut_clk_tx|Add0~10_combout\,
	cout => \ut_uart|ut_clk_tx|Add0~11\);

-- Location: LCCOMB_X31_Y16_N12
\ut_uart|ut_clk_tx|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~12_combout\ = (\ut_uart|ut_clk_tx|cnt\(6) & (\ut_uart|ut_clk_tx|Add0~11\ $ (GND))) # (!\ut_uart|ut_clk_tx|cnt\(6) & (!\ut_uart|ut_clk_tx|Add0~11\ & VCC))
-- \ut_uart|ut_clk_tx|Add0~13\ = CARRY((\ut_uart|ut_clk_tx|cnt\(6) & !\ut_uart|ut_clk_tx|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|cnt\(6),
	datad => VCC,
	cin => \ut_uart|ut_clk_tx|Add0~11\,
	combout => \ut_uart|ut_clk_tx|Add0~12_combout\,
	cout => \ut_uart|ut_clk_tx|Add0~13\);

-- Location: LCCOMB_X31_Y16_N14
\ut_uart|ut_clk_tx|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~14_combout\ = (\ut_uart|ut_clk_tx|cnt\(7) & (!\ut_uart|ut_clk_tx|Add0~13\)) # (!\ut_uart|ut_clk_tx|cnt\(7) & ((\ut_uart|ut_clk_tx|Add0~13\) # (GND)))
-- \ut_uart|ut_clk_tx|Add0~15\ = CARRY((!\ut_uart|ut_clk_tx|Add0~13\) # (!\ut_uart|ut_clk_tx|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|cnt\(7),
	datad => VCC,
	cin => \ut_uart|ut_clk_tx|Add0~13\,
	combout => \ut_uart|ut_clk_tx|Add0~14_combout\,
	cout => \ut_uart|ut_clk_tx|Add0~15\);

-- Location: LCCOMB_X31_Y16_N16
\ut_uart|ut_clk_tx|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~16_combout\ = (\ut_uart|ut_clk_tx|cnt\(8) & (\ut_uart|ut_clk_tx|Add0~15\ $ (GND))) # (!\ut_uart|ut_clk_tx|cnt\(8) & (!\ut_uart|ut_clk_tx|Add0~15\ & VCC))
-- \ut_uart|ut_clk_tx|Add0~17\ = CARRY((\ut_uart|ut_clk_tx|cnt\(8) & !\ut_uart|ut_clk_tx|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|cnt\(8),
	datad => VCC,
	cin => \ut_uart|ut_clk_tx|Add0~15\,
	combout => \ut_uart|ut_clk_tx|Add0~16_combout\,
	cout => \ut_uart|ut_clk_tx|Add0~17\);

-- Location: LCCOMB_X31_Y16_N18
\ut_uart|ut_clk_tx|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~18_combout\ = (\ut_uart|ut_clk_tx|cnt\(9) & (!\ut_uart|ut_clk_tx|Add0~17\)) # (!\ut_uart|ut_clk_tx|cnt\(9) & ((\ut_uart|ut_clk_tx|Add0~17\) # (GND)))
-- \ut_uart|ut_clk_tx|Add0~19\ = CARRY((!\ut_uart|ut_clk_tx|Add0~17\) # (!\ut_uart|ut_clk_tx|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|cnt\(9),
	datad => VCC,
	cin => \ut_uart|ut_clk_tx|Add0~17\,
	combout => \ut_uart|ut_clk_tx|Add0~18_combout\,
	cout => \ut_uart|ut_clk_tx|Add0~19\);

-- Location: LCCOMB_X31_Y16_N20
\ut_uart|ut_clk_tx|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~20_combout\ = (\ut_uart|ut_clk_tx|cnt\(10) & (\ut_uart|ut_clk_tx|Add0~19\ $ (GND))) # (!\ut_uart|ut_clk_tx|cnt\(10) & (!\ut_uart|ut_clk_tx|Add0~19\ & VCC))
-- \ut_uart|ut_clk_tx|Add0~21\ = CARRY((\ut_uart|ut_clk_tx|cnt\(10) & !\ut_uart|ut_clk_tx|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|cnt\(10),
	datad => VCC,
	cin => \ut_uart|ut_clk_tx|Add0~19\,
	combout => \ut_uart|ut_clk_tx|Add0~20_combout\,
	cout => \ut_uart|ut_clk_tx|Add0~21\);

-- Location: LCCOMB_X31_Y16_N22
\ut_uart|ut_clk_tx|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~22_combout\ = (\ut_uart|ut_clk_tx|cnt\(11) & (!\ut_uart|ut_clk_tx|Add0~21\)) # (!\ut_uart|ut_clk_tx|cnt\(11) & ((\ut_uart|ut_clk_tx|Add0~21\) # (GND)))
-- \ut_uart|ut_clk_tx|Add0~23\ = CARRY((!\ut_uart|ut_clk_tx|Add0~21\) # (!\ut_uart|ut_clk_tx|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_uart|ut_clk_tx|cnt\(11),
	datad => VCC,
	cin => \ut_uart|ut_clk_tx|Add0~21\,
	combout => \ut_uart|ut_clk_tx|Add0~22_combout\,
	cout => \ut_uart|ut_clk_tx|Add0~23\);

-- Location: LCCOMB_X31_Y16_N24
\ut_uart|ut_clk_tx|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Add0~24_combout\ = \ut_uart|ut_clk_tx|Add0~23\ $ (!\ut_uart|ut_clk_tx|cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ut_uart|ut_clk_tx|cnt\(12),
	cin => \ut_uart|ut_clk_tx|Add0~23\,
	combout => \ut_uart|ut_clk_tx|Add0~24_combout\);

-- Location: FF_X21_Y15_N11
\ut_logica|data_tx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Mux0~0_combout\,
	ena => \ut_logica|data_tx[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|data_tx\(5));

-- Location: FF_X29_Y16_N5
\ut_logica|ut_clk_tx|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|clk_out~5_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|clk_out~q\);

-- Location: FF_X24_Y14_N7
\ut_logica|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~70_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(27));

-- Location: FF_X22_Y15_N25
\ut_logica|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~77_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(20));

-- Location: FF_X22_Y15_N19
\ut_logica|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~78_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(19));

-- Location: FF_X22_Y15_N11
\ut_logica|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~80_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(17));

-- Location: LCCOMB_X22_Y15_N16
\ut_logica|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|LessThan0~3_combout\ = (\ut_logica|cnt\(17)) # ((\ut_logica|cnt\(20)) # ((\ut_logica|cnt\(18)) # (\ut_logica|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(17),
	datab => \ut_logica|cnt\(20),
	datac => \ut_logica|cnt\(18),
	datad => \ut_logica|cnt\(19),
	combout => \ut_logica|LessThan0~3_combout\);

-- Location: FF_X24_Y15_N5
\ut_logica|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~86_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(11));

-- Location: LCCOMB_X24_Y15_N22
\ut_logica|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|LessThan0~6_combout\ = (\ut_logica|cnt\(9)) # ((\ut_logica|cnt\(10)) # ((\ut_logica|cnt\(11)) # (\ut_logica|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(9),
	datab => \ut_logica|cnt\(10),
	datac => \ut_logica|cnt\(11),
	datad => \ut_logica|cnt\(12),
	combout => \ut_logica|LessThan0~6_combout\);

-- Location: FF_X24_Y15_N7
\ut_logica|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~91_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(6));

-- Location: LCCOMB_X21_Y15_N10
\ut_logica|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Mux0~0_combout\ = (\ut_logica|cnt\(1)) # (\ut_logica|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(1),
	datac => \ut_logica|cnt\(2),
	combout => \ut_logica|Mux0~0_combout\);

-- Location: FF_X32_Y16_N13
\ut_uart|ut_clk_tx|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_uart|ut_clk_tx|clk_out~4_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|clk_out~q\);

-- Location: FF_X30_Y16_N15
\ut_logica|ut_clk_tx|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(7));

-- Location: FF_X29_Y16_N17
\ut_logica|ut_clk_tx|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|cnt~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(6));

-- Location: FF_X29_Y16_N3
\ut_logica|ut_clk_tx|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|cnt~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(5));

-- Location: FF_X29_Y16_N7
\ut_logica|ut_clk_tx|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|cnt~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(4));

-- Location: FF_X30_Y16_N7
\ut_logica|ut_clk_tx|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|Add0~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(3));

-- Location: FF_X30_Y16_N5
\ut_logica|ut_clk_tx|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|Add0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(2));

-- Location: FF_X31_Y16_N31
\ut_uart|ut_clk_tx|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \ut_uart|ut_clk_tx|Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(1));

-- Location: FF_X31_Y16_N29
\ut_uart|ut_clk_tx|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \ut_uart|ut_clk_tx|Add0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(0));

-- Location: LCCOMB_X31_Y16_N30
\ut_logica|ut_clk_tx|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Equal0~0_combout\ = (\ut_logica|ut_clk_tx|Add0~10_combout\ & (\ut_logica|ut_clk_tx|Add0~8_combout\ & \ut_logica|ut_clk_tx|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~10_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~8_combout\,
	datad => \ut_logica|ut_clk_tx|Add0~12_combout\,
	combout => \ut_logica|ut_clk_tx|Equal0~0_combout\);

-- Location: FF_X28_Y16_N25
\ut_logica|ut_clk_tx|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|cnt~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(12));

-- Location: FF_X29_Y16_N15
\ut_logica|ut_clk_tx|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|cnt~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(11));

-- Location: FF_X28_Y16_N11
\ut_logica|ut_clk_tx|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|cnt~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(10));

-- Location: FF_X28_Y16_N13
\ut_logica|ut_clk_tx|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|cnt~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(9));

-- Location: FF_X29_Y16_N21
\ut_logica|ut_clk_tx|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|cnt~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(8));

-- Location: LCCOMB_X29_Y16_N28
\ut_logica|ut_clk_tx|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|clk_out~0_combout\ = (\ut_logica|ut_clk_tx|Add0~16_combout\ & (\ut_logica|ut_clk_tx|Add0~18_combout\ & (\ut_logica|ut_clk_tx|Add0~20_combout\ & \ut_logica|ut_clk_tx|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~16_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~18_combout\,
	datac => \ut_logica|ut_clk_tx|Add0~20_combout\,
	datad => \ut_logica|ut_clk_tx|Add0~22_combout\,
	combout => \ut_logica|ut_clk_tx|clk_out~0_combout\);

-- Location: LCCOMB_X29_Y16_N22
\ut_logica|ut_clk_tx|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|LessThan1~0_combout\ = (((!\ut_logica|ut_clk_tx|Add0~14_combout\ & !\ut_logica|ut_clk_tx|Equal0~0_combout\)) # (!\ut_logica|ut_clk_tx|clk_out~0_combout\)) # (!\ut_logica|ut_clk_tx|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~24_combout\,
	datab => \ut_logica|ut_clk_tx|clk_out~0_combout\,
	datac => \ut_logica|ut_clk_tx|Add0~14_combout\,
	datad => \ut_logica|ut_clk_tx|Equal0~0_combout\,
	combout => \ut_logica|ut_clk_tx|LessThan1~0_combout\);

-- Location: FF_X30_Y16_N27
\ut_logica|ut_clk_tx|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|Add0~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(13));

-- Location: FF_X28_Y16_N27
\ut_logica|ut_clk_tx|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|cnt~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(15));

-- Location: FF_X28_Y16_N5
\ut_logica|ut_clk_tx|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_logica|ut_clk_tx|cnt~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|ut_clk_tx|cnt\(14));

-- Location: LCCOMB_X29_Y16_N26
\ut_logica|ut_clk_tx|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Equal0~1_combout\ = (\ut_logica|ut_clk_tx|Add0~6_combout\) # (((!\ut_logica|ut_clk_tx|Add0~10_combout\) # (!\ut_logica|ut_clk_tx|Add0~12_combout\)) # (!\ut_logica|ut_clk_tx|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~6_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~8_combout\,
	datac => \ut_logica|ut_clk_tx|Add0~12_combout\,
	datad => \ut_logica|ut_clk_tx|Add0~10_combout\,
	combout => \ut_logica|ut_clk_tx|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y16_N24
\ut_logica|ut_clk_tx|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Equal0~2_combout\ = (\ut_logica|ut_clk_tx|Add0~4_combout\) # ((\ut_logica|ut_clk_tx|Add0~0_combout\) # ((\ut_logica|ut_clk_tx|Add0~14_combout\) # (\ut_logica|ut_clk_tx|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~4_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~0_combout\,
	datac => \ut_logica|ut_clk_tx|Add0~14_combout\,
	datad => \ut_logica|ut_clk_tx|Add0~2_combout\,
	combout => \ut_logica|ut_clk_tx|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y16_N12
\ut_logica|ut_clk_tx|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Equal0~3_combout\ = (\ut_logica|ut_clk_tx|Equal0~1_combout\) # ((\ut_logica|ut_clk_tx|Add0~26_combout\) # ((\ut_logica|ut_clk_tx|Equal0~2_combout\) # (!\ut_logica|ut_clk_tx|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Equal0~1_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~26_combout\,
	datac => \ut_logica|ut_clk_tx|Add0~24_combout\,
	datad => \ut_logica|ut_clk_tx|Equal0~2_combout\,
	combout => \ut_logica|ut_clk_tx|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y16_N8
\ut_logica|ut_clk_tx|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|Equal0~4_combout\ = (((\ut_logica|ut_clk_tx|Equal0~3_combout\) # (!\ut_logica|ut_clk_tx|Add0~28_combout\)) # (!\ut_logica|ut_clk_tx|clk_out~0_combout\)) # (!\ut_logica|ut_clk_tx|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~30_combout\,
	datab => \ut_logica|ut_clk_tx|clk_out~0_combout\,
	datac => \ut_logica|ut_clk_tx|Add0~28_combout\,
	datad => \ut_logica|ut_clk_tx|Equal0~3_combout\,
	combout => \ut_logica|ut_clk_tx|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y16_N30
\ut_logica|ut_clk_tx|clk_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|clk_out~1_combout\ = (\ut_logica|ut_clk_tx|Add0~12_combout\) # ((\ut_logica|ut_clk_tx|Add0~6_combout\ & (\ut_logica|ut_clk_tx|Add0~8_combout\ & \ut_logica|ut_clk_tx|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~6_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~8_combout\,
	datac => \ut_logica|ut_clk_tx|Add0~12_combout\,
	datad => \ut_logica|ut_clk_tx|Add0~10_combout\,
	combout => \ut_logica|ut_clk_tx|clk_out~1_combout\);

-- Location: LCCOMB_X29_Y16_N10
\ut_logica|ut_clk_tx|clk_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|clk_out~2_combout\ = (\ut_logica|ut_clk_tx|Add0~24_combout\) # ((\ut_logica|ut_clk_tx|clk_out~1_combout\ & (\ut_logica|ut_clk_tx|Add0~14_combout\ & \ut_logica|ut_clk_tx|clk_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|clk_out~1_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~14_combout\,
	datac => \ut_logica|ut_clk_tx|Add0~24_combout\,
	datad => \ut_logica|ut_clk_tx|clk_out~0_combout\,
	combout => \ut_logica|ut_clk_tx|clk_out~2_combout\);

-- Location: LCCOMB_X29_Y16_N0
\ut_logica|ut_clk_tx|clk_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|clk_out~3_combout\ = (\ut_logica|ut_clk_tx|Add0~28_combout\ & ((\ut_logica|ut_clk_tx|Add0~30_combout\) # (\ut_logica|ut_clk_tx|clk_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|ut_clk_tx|Add0~28_combout\,
	datac => \ut_logica|ut_clk_tx|Add0~30_combout\,
	datad => \ut_logica|ut_clk_tx|clk_out~2_combout\,
	combout => \ut_logica|ut_clk_tx|clk_out~3_combout\);

-- Location: LCCOMB_X29_Y16_N18
\ut_logica|ut_clk_tx|clk_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|clk_out~4_combout\ = (\ut_logica|ut_clk_tx|clk_out~3_combout\ & (((!\ut_logica|ut_clk_tx|Equal0~4_combout\) # (!\ut_logica|ut_clk_tx|clk_out~q\)) # (!\ut_logica|ut_clk_tx|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~30_combout\,
	datab => \ut_logica|ut_clk_tx|clk_out~q\,
	datac => \ut_logica|ut_clk_tx|Equal0~4_combout\,
	datad => \ut_logica|ut_clk_tx|clk_out~3_combout\,
	combout => \ut_logica|ut_clk_tx|clk_out~4_combout\);

-- Location: LCCOMB_X29_Y16_N4
\ut_logica|ut_clk_tx|clk_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|clk_out~5_combout\ = (\ut_logica|ut_clk_tx|Add0~30_combout\ & (((!\ut_logica|ut_clk_tx|Add0~26_combout\ & \ut_logica|ut_clk_tx|LessThan1~0_combout\)) # (!\ut_logica|ut_clk_tx|clk_out~4_combout\))) # 
-- (!\ut_logica|ut_clk_tx|Add0~30_combout\ & (\ut_logica|ut_clk_tx|Add0~26_combout\ & ((\ut_logica|ut_clk_tx|clk_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~30_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~26_combout\,
	datac => \ut_logica|ut_clk_tx|LessThan1~0_combout\,
	datad => \ut_logica|ut_clk_tx|clk_out~4_combout\,
	combout => \ut_logica|ut_clk_tx|clk_out~5_combout\);

-- Location: LCCOMB_X24_Y14_N6
\ut_logica|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~70_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~54_combout\,
	combout => \ut_logica|Add0~70_combout\);

-- Location: LCCOMB_X22_Y15_N24
\ut_logica|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~77_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|estado.s2~q\,
	datac => \ut_logica|Add0~40_combout\,
	combout => \ut_logica|Add0~77_combout\);

-- Location: LCCOMB_X22_Y15_N18
\ut_logica|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~78_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|estado.s2~q\,
	datac => \ut_logica|Add0~38_combout\,
	combout => \ut_logica|Add0~78_combout\);

-- Location: LCCOMB_X22_Y15_N10
\ut_logica|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~80_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~34_combout\,
	combout => \ut_logica|Add0~80_combout\);

-- Location: LCCOMB_X24_Y15_N4
\ut_logica|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~86_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~22_combout\,
	combout => \ut_logica|Add0~86_combout\);

-- Location: LCCOMB_X24_Y15_N6
\ut_logica|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~91_combout\ = (\ut_logica|Add0~12_combout\ & \ut_logica|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|Add0~12_combout\,
	datac => \ut_logica|estado.s2~q\,
	combout => \ut_logica|Add0~91_combout\);

-- Location: FF_X32_Y16_N19
\ut_uart|ut_clk_tx|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_uart|ut_clk_tx|cnt~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(12));

-- Location: FF_X31_Y16_N23
\ut_uart|ut_clk_tx|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_uart|ut_clk_tx|Add0~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(11));

-- Location: FF_X32_Y16_N7
\ut_uart|ut_clk_tx|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_uart|ut_clk_tx|cnt~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(10));

-- Location: FF_X31_Y16_N19
\ut_uart|ut_clk_tx|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_uart|ut_clk_tx|Add0~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(9));

-- Location: FF_X31_Y16_N17
\ut_uart|ut_clk_tx|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_uart|ut_clk_tx|Add0~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(8));

-- Location: FF_X31_Y16_N15
\ut_uart|ut_clk_tx|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_uart|ut_clk_tx|Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(7));

-- Location: FF_X32_Y16_N31
\ut_uart|ut_clk_tx|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_uart|ut_clk_tx|cnt~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(6));

-- Location: FF_X31_Y16_N11
\ut_uart|ut_clk_tx|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_uart|ut_clk_tx|Add0~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(5));

-- Location: FF_X32_Y16_N29
\ut_uart|ut_clk_tx|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_uart|ut_clk_tx|cnt~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(4));

-- Location: FF_X31_Y16_N7
\ut_uart|ut_clk_tx|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_uart|ut_clk_tx|Add0~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(3));

-- Location: FF_X31_Y16_N5
\ut_uart|ut_clk_tx|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ut_uart|ut_clk_tx|Add0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_clk_tx|cnt\(2));

-- Location: LCCOMB_X31_Y16_N26
\ut_uart|ut_clk_tx|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|LessThan1~0_combout\ = (!\ut_uart|ut_clk_tx|Add0~22_combout\ & (!\ut_uart|ut_clk_tx|Add0~16_combout\ & (!\ut_uart|ut_clk_tx|Add0~14_combout\ & !\ut_uart|ut_clk_tx|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|Add0~22_combout\,
	datab => \ut_uart|ut_clk_tx|Add0~16_combout\,
	datac => \ut_uart|ut_clk_tx|Add0~14_combout\,
	datad => \ut_uart|ut_clk_tx|Add0~18_combout\,
	combout => \ut_uart|ut_clk_tx|LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y16_N4
\ut_uart|ut_clk_tx|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|LessThan1~1_combout\ = (\ut_uart|ut_clk_tx|LessThan1~0_combout\ & (((!\ut_uart|ut_clk_tx|Add0~8_combout\ & !\ut_uart|ut_clk_tx|Add0~10_combout\)) # (!\ut_uart|ut_clk_tx|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|Add0~8_combout\,
	datab => \ut_uart|ut_clk_tx|Add0~12_combout\,
	datac => \ut_uart|ut_clk_tx|LessThan1~0_combout\,
	datad => \ut_uart|ut_clk_tx|Add0~10_combout\,
	combout => \ut_uart|ut_clk_tx|LessThan1~1_combout\);

-- Location: LCCOMB_X32_Y16_N2
\ut_uart|ut_clk_tx|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|clk_out~0_combout\ = (\ut_uart|ut_clk_tx|Add0~12_combout\) # ((\ut_uart|ut_clk_tx|Add0~10_combout\ & ((\ut_uart|ut_clk_tx|Add0~8_combout\) # (\ut_uart|ut_clk_tx|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|Add0~8_combout\,
	datab => \ut_uart|ut_clk_tx|Add0~6_combout\,
	datac => \ut_uart|ut_clk_tx|Add0~12_combout\,
	datad => \ut_uart|ut_clk_tx|Add0~10_combout\,
	combout => \ut_uart|ut_clk_tx|clk_out~0_combout\);

-- Location: LCCOMB_X32_Y16_N26
\ut_uart|ut_clk_tx|clk_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|clk_out~1_combout\ = (\ut_uart|ut_clk_tx|Add0~18_combout\ & ((\ut_uart|ut_clk_tx|Add0~14_combout\) # ((\ut_uart|ut_clk_tx|Add0~16_combout\) # (\ut_uart|ut_clk_tx|clk_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|Add0~14_combout\,
	datab => \ut_uart|ut_clk_tx|Add0~16_combout\,
	datac => \ut_uart|ut_clk_tx|Add0~18_combout\,
	datad => \ut_uart|ut_clk_tx|clk_out~0_combout\,
	combout => \ut_uart|ut_clk_tx|clk_out~1_combout\);

-- Location: LCCOMB_X32_Y16_N10
\ut_uart|ut_clk_tx|clk_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|clk_out~2_combout\ = (\ut_uart|ut_clk_tx|Add0~22_combout\ & (!\ut_uart|ut_clk_tx|Add0~24_combout\ & ((\ut_uart|ut_clk_tx|Add0~20_combout\) # (\ut_uart|ut_clk_tx|clk_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|Add0~22_combout\,
	datab => \ut_uart|ut_clk_tx|Add0~20_combout\,
	datac => \ut_uart|ut_clk_tx|clk_out~1_combout\,
	datad => \ut_uart|ut_clk_tx|Add0~24_combout\,
	combout => \ut_uart|ut_clk_tx|clk_out~2_combout\);

-- Location: LCCOMB_X32_Y16_N22
\ut_uart|ut_clk_tx|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Equal0~0_combout\ = ((\ut_uart|ut_clk_tx|Add0~6_combout\) # ((\ut_uart|ut_clk_tx|Add0~10_combout\) # (!\ut_uart|ut_clk_tx|Add0~12_combout\))) # (!\ut_uart|ut_clk_tx|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|Add0~8_combout\,
	datab => \ut_uart|ut_clk_tx|Add0~6_combout\,
	datac => \ut_uart|ut_clk_tx|Add0~12_combout\,
	datad => \ut_uart|ut_clk_tx|Add0~10_combout\,
	combout => \ut_uart|ut_clk_tx|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y16_N28
\ut_uart|ut_clk_tx|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Equal0~1_combout\ = (\ut_uart|ut_clk_tx|Add0~4_combout\) # ((\ut_uart|ut_clk_tx|Add0~2_combout\) # ((\ut_uart|ut_clk_tx|Add0~0_combout\) # (!\ut_uart|ut_clk_tx|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|Add0~4_combout\,
	datab => \ut_uart|ut_clk_tx|Add0~2_combout\,
	datac => \ut_uart|ut_clk_tx|Add0~0_combout\,
	datad => \ut_uart|ut_clk_tx|Add0~20_combout\,
	combout => \ut_uart|ut_clk_tx|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y16_N24
\ut_uart|ut_clk_tx|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|Equal0~2_combout\ = (\ut_uart|ut_clk_tx|Equal0~0_combout\) # (((\ut_uart|ut_clk_tx|Equal0~1_combout\) # (!\ut_uart|ut_clk_tx|LessThan1~0_combout\)) # (!\ut_uart|ut_clk_tx|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|Equal0~0_combout\,
	datab => \ut_uart|ut_clk_tx|Add0~24_combout\,
	datac => \ut_uart|ut_clk_tx|LessThan1~0_combout\,
	datad => \ut_uart|ut_clk_tx|Equal0~1_combout\,
	combout => \ut_uart|ut_clk_tx|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y16_N20
\ut_uart|ut_clk_tx|clk_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|clk_out~3_combout\ = (\ut_uart|ut_clk_tx|Add0~22_combout\ & (((!\ut_uart|ut_clk_tx|Equal0~2_combout\) # (!\ut_uart|ut_clk_tx|clk_out~q\)))) # (!\ut_uart|ut_clk_tx|Add0~22_combout\ & (\ut_uart|ut_clk_tx|Add0~20_combout\ & 
-- ((!\ut_uart|ut_clk_tx|Equal0~2_combout\) # (!\ut_uart|ut_clk_tx|clk_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|Add0~22_combout\,
	datab => \ut_uart|ut_clk_tx|Add0~20_combout\,
	datac => \ut_uart|ut_clk_tx|clk_out~q\,
	datad => \ut_uart|ut_clk_tx|Equal0~2_combout\,
	combout => \ut_uart|ut_clk_tx|clk_out~3_combout\);

-- Location: LCCOMB_X32_Y16_N12
\ut_uart|ut_clk_tx|clk_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|clk_out~4_combout\ = (\ut_uart|ut_clk_tx|clk_out~2_combout\) # ((\ut_uart|ut_clk_tx|Add0~24_combout\ & ((\ut_uart|ut_clk_tx|LessThan1~1_combout\) # (!\ut_uart|ut_clk_tx|clk_out~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|clk_out~3_combout\,
	datab => \ut_uart|ut_clk_tx|Add0~24_combout\,
	datac => \ut_uart|ut_clk_tx|LessThan1~1_combout\,
	datad => \ut_uart|ut_clk_tx|clk_out~2_combout\,
	combout => \ut_uart|ut_clk_tx|clk_out~4_combout\);

-- Location: LCCOMB_X29_Y16_N16
\ut_logica|ut_clk_tx|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|cnt~0_combout\ = (\ut_logica|ut_clk_tx|Add0~12_combout\ & ((\ut_logica|ut_clk_tx|Equal0~4_combout\) # ((!\ut_logica|ut_clk_tx|Add0~26_combout\ & \ut_logica|ut_clk_tx|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~12_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~26_combout\,
	datac => \ut_logica|ut_clk_tx|Equal0~4_combout\,
	datad => \ut_logica|ut_clk_tx|LessThan1~0_combout\,
	combout => \ut_logica|ut_clk_tx|cnt~0_combout\);

-- Location: LCCOMB_X29_Y16_N2
\ut_logica|ut_clk_tx|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|cnt~1_combout\ = (\ut_logica|ut_clk_tx|Add0~10_combout\ & ((\ut_logica|ut_clk_tx|Equal0~4_combout\) # ((!\ut_logica|ut_clk_tx|Add0~26_combout\ & \ut_logica|ut_clk_tx|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~10_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~26_combout\,
	datac => \ut_logica|ut_clk_tx|Equal0~4_combout\,
	datad => \ut_logica|ut_clk_tx|LessThan1~0_combout\,
	combout => \ut_logica|ut_clk_tx|cnt~1_combout\);

-- Location: LCCOMB_X29_Y16_N6
\ut_logica|ut_clk_tx|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|cnt~2_combout\ = (\ut_logica|ut_clk_tx|Add0~8_combout\ & ((\ut_logica|ut_clk_tx|Equal0~4_combout\) # ((!\ut_logica|ut_clk_tx|Add0~26_combout\ & \ut_logica|ut_clk_tx|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~8_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~26_combout\,
	datac => \ut_logica|ut_clk_tx|Equal0~4_combout\,
	datad => \ut_logica|ut_clk_tx|LessThan1~0_combout\,
	combout => \ut_logica|ut_clk_tx|cnt~2_combout\);

-- Location: LCCOMB_X28_Y16_N24
\ut_logica|ut_clk_tx|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|cnt~3_combout\ = (\ut_logica|ut_clk_tx|Add0~24_combout\ & ((\ut_logica|ut_clk_tx|Equal0~4_combout\) # ((\ut_logica|ut_clk_tx|LessThan1~0_combout\ & !\ut_logica|ut_clk_tx|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~24_combout\,
	datab => \ut_logica|ut_clk_tx|LessThan1~0_combout\,
	datac => \ut_logica|ut_clk_tx|Equal0~4_combout\,
	datad => \ut_logica|ut_clk_tx|Add0~26_combout\,
	combout => \ut_logica|ut_clk_tx|cnt~3_combout\);

-- Location: LCCOMB_X29_Y16_N14
\ut_logica|ut_clk_tx|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|cnt~4_combout\ = (\ut_logica|ut_clk_tx|Add0~22_combout\ & ((\ut_logica|ut_clk_tx|Equal0~4_combout\) # ((\ut_logica|ut_clk_tx|LessThan1~0_combout\ & !\ut_logica|ut_clk_tx|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|LessThan1~0_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~22_combout\,
	datac => \ut_logica|ut_clk_tx|Equal0~4_combout\,
	datad => \ut_logica|ut_clk_tx|Add0~26_combout\,
	combout => \ut_logica|ut_clk_tx|cnt~4_combout\);

-- Location: LCCOMB_X28_Y16_N10
\ut_logica|ut_clk_tx|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|cnt~5_combout\ = (\ut_logica|ut_clk_tx|Add0~20_combout\ & ((\ut_logica|ut_clk_tx|Equal0~4_combout\) # ((\ut_logica|ut_clk_tx|LessThan1~0_combout\ & !\ut_logica|ut_clk_tx|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~20_combout\,
	datab => \ut_logica|ut_clk_tx|LessThan1~0_combout\,
	datac => \ut_logica|ut_clk_tx|Equal0~4_combout\,
	datad => \ut_logica|ut_clk_tx|Add0~26_combout\,
	combout => \ut_logica|ut_clk_tx|cnt~5_combout\);

-- Location: LCCOMB_X28_Y16_N12
\ut_logica|ut_clk_tx|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|cnt~6_combout\ = (\ut_logica|ut_clk_tx|Add0~18_combout\ & ((\ut_logica|ut_clk_tx|Equal0~4_combout\) # ((\ut_logica|ut_clk_tx|LessThan1~0_combout\ & !\ut_logica|ut_clk_tx|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~18_combout\,
	datab => \ut_logica|ut_clk_tx|LessThan1~0_combout\,
	datac => \ut_logica|ut_clk_tx|Equal0~4_combout\,
	datad => \ut_logica|ut_clk_tx|Add0~26_combout\,
	combout => \ut_logica|ut_clk_tx|cnt~6_combout\);

-- Location: LCCOMB_X29_Y16_N20
\ut_logica|ut_clk_tx|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|cnt~7_combout\ = (\ut_logica|ut_clk_tx|Add0~16_combout\ & ((\ut_logica|ut_clk_tx|Equal0~4_combout\) # ((\ut_logica|ut_clk_tx|LessThan1~0_combout\ & !\ut_logica|ut_clk_tx|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|LessThan1~0_combout\,
	datab => \ut_logica|ut_clk_tx|Add0~16_combout\,
	datac => \ut_logica|ut_clk_tx|Equal0~4_combout\,
	datad => \ut_logica|ut_clk_tx|Add0~26_combout\,
	combout => \ut_logica|ut_clk_tx|cnt~7_combout\);

-- Location: LCCOMB_X28_Y16_N26
\ut_logica|ut_clk_tx|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|cnt~8_combout\ = (\ut_logica|ut_clk_tx|Add0~30_combout\ & ((\ut_logica|ut_clk_tx|Equal0~4_combout\) # ((\ut_logica|ut_clk_tx|LessThan1~0_combout\ & !\ut_logica|ut_clk_tx|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~30_combout\,
	datab => \ut_logica|ut_clk_tx|LessThan1~0_combout\,
	datac => \ut_logica|ut_clk_tx|Equal0~4_combout\,
	datad => \ut_logica|ut_clk_tx|Add0~26_combout\,
	combout => \ut_logica|ut_clk_tx|cnt~8_combout\);

-- Location: LCCOMB_X28_Y16_N4
\ut_logica|ut_clk_tx|cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|ut_clk_tx|cnt~9_combout\ = (\ut_logica|ut_clk_tx|Add0~28_combout\ & ((\ut_logica|ut_clk_tx|Equal0~4_combout\) # ((\ut_logica|ut_clk_tx|LessThan1~0_combout\ & !\ut_logica|ut_clk_tx|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|ut_clk_tx|Add0~28_combout\,
	datab => \ut_logica|ut_clk_tx|LessThan1~0_combout\,
	datac => \ut_logica|ut_clk_tx|Equal0~4_combout\,
	datad => \ut_logica|ut_clk_tx|Add0~26_combout\,
	combout => \ut_logica|ut_clk_tx|cnt~9_combout\);

-- Location: LCCOMB_X32_Y16_N16
\ut_uart|ut_clk_tx|cnt[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|cnt[12]~0_combout\ = (\ut_uart|ut_clk_tx|LessThan1~1_combout\) # ((\ut_uart|ut_clk_tx|Equal0~2_combout\) # ((!\ut_uart|ut_clk_tx|Add0~22_combout\ & !\ut_uart|ut_clk_tx|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|Add0~22_combout\,
	datab => \ut_uart|ut_clk_tx|Add0~20_combout\,
	datac => \ut_uart|ut_clk_tx|LessThan1~1_combout\,
	datad => \ut_uart|ut_clk_tx|Equal0~2_combout\,
	combout => \ut_uart|ut_clk_tx|cnt[12]~0_combout\);

-- Location: LCCOMB_X32_Y16_N18
\ut_uart|ut_clk_tx|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|cnt~1_combout\ = (\ut_uart|ut_clk_tx|Add0~24_combout\ & \ut_uart|ut_clk_tx|cnt[12]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_uart|ut_clk_tx|Add0~24_combout\,
	datad => \ut_uart|ut_clk_tx|cnt[12]~0_combout\,
	combout => \ut_uart|ut_clk_tx|cnt~1_combout\);

-- Location: LCCOMB_X32_Y16_N6
\ut_uart|ut_clk_tx|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|cnt~2_combout\ = (\ut_uart|ut_clk_tx|Add0~20_combout\ & ((\ut_uart|ut_clk_tx|LessThan1~1_combout\) # (\ut_uart|ut_clk_tx|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_uart|ut_clk_tx|Add0~20_combout\,
	datac => \ut_uart|ut_clk_tx|LessThan1~1_combout\,
	datad => \ut_uart|ut_clk_tx|Equal0~2_combout\,
	combout => \ut_uart|ut_clk_tx|cnt~2_combout\);

-- Location: LCCOMB_X32_Y16_N30
\ut_uart|ut_clk_tx|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|cnt~3_combout\ = (\ut_uart|ut_clk_tx|Add0~12_combout\ & \ut_uart|ut_clk_tx|cnt[12]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|Add0~12_combout\,
	datad => \ut_uart|ut_clk_tx|cnt[12]~0_combout\,
	combout => \ut_uart|ut_clk_tx|cnt~3_combout\);

-- Location: LCCOMB_X32_Y16_N28
\ut_uart|ut_clk_tx|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_clk_tx|cnt~4_combout\ = (\ut_uart|ut_clk_tx|Add0~8_combout\ & \ut_uart|ut_clk_tx|cnt[12]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_clk_tx|Add0~8_combout\,
	datad => \ut_uart|ut_clk_tx|cnt[12]~0_combout\,
	combout => \ut_uart|ut_clk_tx|cnt~4_combout\);

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

-- Location: CLKCTRL_G5
\ut_logica|ut_clk_tx|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ut_logica|ut_clk_tx|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\);

-- Location: CLKCTRL_G8
\ut_uart|ut_clk_tx|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ut_uart|ut_clk_tx|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\);

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

-- Location: IOOBUF_X0_Y23_N16
\leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entradas[0]~input_o\,
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
	i => \entradas[1]~input_o\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\salidas[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entradas[0]~input_o\,
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
	i => \entradas[1]~input_o\,
	devoe => ww_devoe,
	o => \salidas[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ut_uart|ut_tx_uart|Selector0~4_combout\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOIBUF_X34_Y9_N8
\entradas[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(0),
	o => \entradas[0]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\entradas[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradas(1),
	o => \entradas[1]~input_o\);

-- Location: LCCOMB_X21_Y16_N16
\ut_uart|ut_tx_uart|estado.d5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|estado.d5~feeder_combout\ = \ut_uart|ut_tx_uart|estado.d4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_uart|ut_tx_uart|estado.d4~q\,
	combout => \ut_uart|ut_tx_uart|estado.d5~feeder_combout\);

-- Location: LCCOMB_X24_Y15_N28
\ut_logica|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~92_combout\ = (\ut_logica|Add0~10_combout\ & \ut_logica|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|Add0~10_combout\,
	datac => \ut_logica|estado.s2~q\,
	combout => \ut_logica|Add0~92_combout\);

-- Location: LCCOMB_X25_Y15_N4
\ut_logica|estado~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|estado~11_combout\ = (\ut_logica|estado.s2~q\) # (!\ut_logica|estado.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|estado.s0~q\,
	datad => \ut_logica|estado.s2~q\,
	combout => \ut_logica|estado~11_combout\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X25_Y15_N2
\ut_logica|string_completo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|string_completo~0_combout\ = (\ut_logica|string_completo~q\) # ((!\reset~input_o\ & \ut_logica|estado.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \ut_logica|string_completo~q\,
	datad => \ut_logica|estado.s3~q\,
	combout => \ut_logica|string_completo~0_combout\);

-- Location: FF_X25_Y15_N3
\ut_logica|string_completo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|string_completo~0_combout\,
	clrn => \ALT_INV_entradas[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|string_completo~q\);

-- Location: FF_X25_Y15_N5
\ut_logica|estado.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|estado~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ut_logica|ALT_INV_string_completo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|estado.s1~q\);

-- Location: LCCOMB_X22_Y15_N22
\ut_logica|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Selector33~0_combout\ = (!\ut_logica|cnt\(31) & (\ut_logica|LessThan0~9_combout\ & \ut_logica|estado.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(31),
	datac => \ut_logica|LessThan0~9_combout\,
	datad => \ut_logica|estado.s1~q\,
	combout => \ut_logica|Selector33~0_combout\);

-- Location: LCCOMB_X22_Y15_N26
\ut_logica|estado.s3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|estado.s3~feeder_combout\ = \ut_logica|Selector33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|Selector33~0_combout\,
	combout => \ut_logica|estado.s3~feeder_combout\);

-- Location: FF_X22_Y15_N27
\ut_logica|estado.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|estado.s3~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ut_logica|ALT_INV_string_completo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|estado.s3~q\);

-- Location: LCCOMB_X25_Y15_N14
\ut_logica|estado.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|estado.s0~0_combout\ = !\ut_logica|estado.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_logica|estado.s3~q\,
	combout => \ut_logica|estado.s0~0_combout\);

-- Location: FF_X25_Y15_N15
\ut_logica|estado.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|estado.s0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ut_logica|ALT_INV_string_completo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|estado.s0~q\);

-- Location: LCCOMB_X25_Y15_N0
\ut_logica|cnt[25]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|cnt[25]~0_combout\ = (!\reset~input_o\ & !\ut_logica|string_completo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \ut_logica|string_completo~q\,
	combout => \ut_logica|cnt[25]~0_combout\);

-- Location: LCCOMB_X24_Y15_N30
\ut_logica|cnt[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|cnt[31]~1_combout\ = (!\ut_logica|estado.s3~q\ & (\ut_logica|estado.s0~q\ & (\ut_logica|cnt[25]~0_combout\ & !\ut_logica|data_tx[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|estado.s3~q\,
	datab => \ut_logica|estado.s0~q\,
	datac => \ut_logica|cnt[25]~0_combout\,
	datad => \ut_logica|data_tx[6]~1_combout\,
	combout => \ut_logica|cnt[31]~1_combout\);

-- Location: FF_X24_Y15_N29
\ut_logica|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~92_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(5));

-- Location: LCCOMB_X23_Y15_N2
\ut_logica|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~2_combout\ = (\ut_logica|cnt\(1) & (!\ut_logica|Add0~1\)) # (!\ut_logica|cnt\(1) & ((\ut_logica|Add0~1\) # (GND)))
-- \ut_logica|Add0~3\ = CARRY((!\ut_logica|Add0~1\) # (!\ut_logica|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(1),
	datad => VCC,
	cin => \ut_logica|Add0~1\,
	combout => \ut_logica|Add0~2_combout\,
	cout => \ut_logica|Add0~3\);

-- Location: LCCOMB_X24_Y14_N28
\ut_logica|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~68_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~2_combout\,
	combout => \ut_logica|Add0~68_combout\);

-- Location: FF_X24_Y14_N29
\ut_logica|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~68_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(1));

-- Location: LCCOMB_X23_Y15_N4
\ut_logica|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~4_combout\ = (\ut_logica|cnt\(2) & (\ut_logica|Add0~3\ $ (GND))) # (!\ut_logica|cnt\(2) & (!\ut_logica|Add0~3\ & VCC))
-- \ut_logica|Add0~5\ = CARRY((\ut_logica|cnt\(2) & !\ut_logica|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(2),
	datad => VCC,
	cin => \ut_logica|Add0~3\,
	combout => \ut_logica|Add0~4_combout\,
	cout => \ut_logica|Add0~5\);

-- Location: LCCOMB_X24_Y14_N10
\ut_logica|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~67_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|estado.s2~q\,
	datac => \ut_logica|Add0~4_combout\,
	combout => \ut_logica|Add0~67_combout\);

-- Location: FF_X24_Y14_N11
\ut_logica|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~67_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(2));

-- Location: LCCOMB_X23_Y15_N6
\ut_logica|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~6_combout\ = (\ut_logica|cnt\(3) & (!\ut_logica|Add0~5\)) # (!\ut_logica|cnt\(3) & ((\ut_logica|Add0~5\) # (GND)))
-- \ut_logica|Add0~7\ = CARRY((!\ut_logica|Add0~5\) # (!\ut_logica|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(3),
	datad => VCC,
	cin => \ut_logica|Add0~5\,
	combout => \ut_logica|Add0~6_combout\,
	cout => \ut_logica|Add0~7\);

-- Location: LCCOMB_X24_Y15_N26
\ut_logica|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~94_combout\ = (\ut_logica|Add0~6_combout\ & \ut_logica|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|Add0~6_combout\,
	datac => \ut_logica|estado.s2~q\,
	combout => \ut_logica|Add0~94_combout\);

-- Location: FF_X24_Y15_N27
\ut_logica|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~94_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(3));

-- Location: LCCOMB_X23_Y15_N14
\ut_logica|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~14_combout\ = (\ut_logica|cnt\(7) & (!\ut_logica|Add0~13\)) # (!\ut_logica|cnt\(7) & ((\ut_logica|Add0~13\) # (GND)))
-- \ut_logica|Add0~15\ = CARRY((!\ut_logica|Add0~13\) # (!\ut_logica|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(7),
	datad => VCC,
	cin => \ut_logica|Add0~13\,
	combout => \ut_logica|Add0~14_combout\,
	cout => \ut_logica|Add0~15\);

-- Location: LCCOMB_X24_Y15_N16
\ut_logica|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~90_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~14_combout\,
	combout => \ut_logica|Add0~90_combout\);

-- Location: FF_X24_Y15_N17
\ut_logica|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~90_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(7));

-- Location: LCCOMB_X23_Y15_N16
\ut_logica|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~16_combout\ = (\ut_logica|cnt\(8) & (\ut_logica|Add0~15\ $ (GND))) # (!\ut_logica|cnt\(8) & (!\ut_logica|Add0~15\ & VCC))
-- \ut_logica|Add0~17\ = CARRY((\ut_logica|cnt\(8) & !\ut_logica|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(8),
	datad => VCC,
	cin => \ut_logica|Add0~15\,
	combout => \ut_logica|Add0~16_combout\,
	cout => \ut_logica|Add0~17\);

-- Location: LCCOMB_X23_Y15_N18
\ut_logica|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~18_combout\ = (\ut_logica|cnt\(9) & (!\ut_logica|Add0~17\)) # (!\ut_logica|cnt\(9) & ((\ut_logica|Add0~17\) # (GND)))
-- \ut_logica|Add0~19\ = CARRY((!\ut_logica|Add0~17\) # (!\ut_logica|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(9),
	datad => VCC,
	cin => \ut_logica|Add0~17\,
	combout => \ut_logica|Add0~18_combout\,
	cout => \ut_logica|Add0~19\);

-- Location: LCCOMB_X24_Y15_N12
\ut_logica|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~88_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~18_combout\,
	combout => \ut_logica|Add0~88_combout\);

-- Location: FF_X24_Y15_N13
\ut_logica|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~88_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(9));

-- Location: LCCOMB_X23_Y15_N20
\ut_logica|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~20_combout\ = (\ut_logica|cnt\(10) & (\ut_logica|Add0~19\ $ (GND))) # (!\ut_logica|cnt\(10) & (!\ut_logica|Add0~19\ & VCC))
-- \ut_logica|Add0~21\ = CARRY((\ut_logica|cnt\(10) & !\ut_logica|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(10),
	datad => VCC,
	cin => \ut_logica|Add0~19\,
	combout => \ut_logica|Add0~20_combout\,
	cout => \ut_logica|Add0~21\);

-- Location: LCCOMB_X24_Y15_N18
\ut_logica|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~87_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~20_combout\,
	combout => \ut_logica|Add0~87_combout\);

-- Location: FF_X24_Y15_N19
\ut_logica|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~87_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(10));

-- Location: LCCOMB_X23_Y15_N24
\ut_logica|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~24_combout\ = (\ut_logica|cnt\(12) & (\ut_logica|Add0~23\ $ (GND))) # (!\ut_logica|cnt\(12) & (!\ut_logica|Add0~23\ & VCC))
-- \ut_logica|Add0~25\ = CARRY((\ut_logica|cnt\(12) & !\ut_logica|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(12),
	datad => VCC,
	cin => \ut_logica|Add0~23\,
	combout => \ut_logica|Add0~24_combout\,
	cout => \ut_logica|Add0~25\);

-- Location: LCCOMB_X22_Y15_N6
\ut_logica|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~85_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~24_combout\,
	combout => \ut_logica|Add0~85_combout\);

-- Location: FF_X22_Y15_N7
\ut_logica|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~85_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(12));

-- Location: LCCOMB_X23_Y15_N26
\ut_logica|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~26_combout\ = (\ut_logica|cnt\(13) & (!\ut_logica|Add0~25\)) # (!\ut_logica|cnt\(13) & ((\ut_logica|Add0~25\) # (GND)))
-- \ut_logica|Add0~27\ = CARRY((!\ut_logica|Add0~25\) # (!\ut_logica|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(13),
	datad => VCC,
	cin => \ut_logica|Add0~25\,
	combout => \ut_logica|Add0~26_combout\,
	cout => \ut_logica|Add0~27\);

-- Location: LCCOMB_X22_Y15_N14
\ut_logica|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~84_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~26_combout\,
	combout => \ut_logica|Add0~84_combout\);

-- Location: FF_X22_Y15_N15
\ut_logica|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~84_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(13));

-- Location: LCCOMB_X24_Y15_N14
\ut_logica|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~82_combout\ = (\ut_logica|Add0~30_combout\ & \ut_logica|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|Add0~30_combout\,
	datac => \ut_logica|estado.s2~q\,
	combout => \ut_logica|Add0~82_combout\);

-- Location: FF_X24_Y15_N15
\ut_logica|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~82_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(15));

-- Location: LCCOMB_X23_Y15_N28
\ut_logica|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~28_combout\ = (\ut_logica|cnt\(14) & (\ut_logica|Add0~27\ $ (GND))) # (!\ut_logica|cnt\(14) & (!\ut_logica|Add0~27\ & VCC))
-- \ut_logica|Add0~29\ = CARRY((\ut_logica|cnt\(14) & !\ut_logica|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(14),
	datad => VCC,
	cin => \ut_logica|Add0~27\,
	combout => \ut_logica|Add0~28_combout\,
	cout => \ut_logica|Add0~29\);

-- Location: LCCOMB_X22_Y15_N28
\ut_logica|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~83_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~28_combout\,
	combout => \ut_logica|Add0~83_combout\);

-- Location: FF_X22_Y15_N29
\ut_logica|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~83_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(14));

-- Location: LCCOMB_X22_Y15_N4
\ut_logica|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|LessThan0~5_combout\ = (\ut_logica|cnt\(16)) # ((\ut_logica|cnt\(13)) # ((\ut_logica|cnt\(15)) # (\ut_logica|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(16),
	datab => \ut_logica|cnt\(13),
	datac => \ut_logica|cnt\(15),
	datad => \ut_logica|cnt\(14),
	combout => \ut_logica|LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y14_N0
\ut_logica|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~32_combout\ = (\ut_logica|cnt\(16) & (\ut_logica|Add0~31\ $ (GND))) # (!\ut_logica|cnt\(16) & (!\ut_logica|Add0~31\ & VCC))
-- \ut_logica|Add0~33\ = CARRY((\ut_logica|cnt\(16) & !\ut_logica|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(16),
	datad => VCC,
	cin => \ut_logica|Add0~31\,
	combout => \ut_logica|Add0~32_combout\,
	cout => \ut_logica|Add0~33\);

-- Location: LCCOMB_X22_Y15_N30
\ut_logica|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~81_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~32_combout\,
	combout => \ut_logica|Add0~81_combout\);

-- Location: FF_X22_Y15_N31
\ut_logica|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~81_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(16));

-- Location: LCCOMB_X23_Y14_N4
\ut_logica|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~36_combout\ = (\ut_logica|cnt\(18) & (\ut_logica|Add0~35\ $ (GND))) # (!\ut_logica|cnt\(18) & (!\ut_logica|Add0~35\ & VCC))
-- \ut_logica|Add0~37\ = CARRY((\ut_logica|cnt\(18) & !\ut_logica|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(18),
	datad => VCC,
	cin => \ut_logica|Add0~35\,
	combout => \ut_logica|Add0~36_combout\,
	cout => \ut_logica|Add0~37\);

-- Location: LCCOMB_X22_Y15_N8
\ut_logica|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~79_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~36_combout\,
	combout => \ut_logica|Add0~79_combout\);

-- Location: FF_X22_Y15_N9
\ut_logica|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~79_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(18));

-- Location: LCCOMB_X23_Y14_N10
\ut_logica|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~42_combout\ = (\ut_logica|cnt\(21) & (!\ut_logica|Add0~41\)) # (!\ut_logica|cnt\(21) & ((\ut_logica|Add0~41\) # (GND)))
-- \ut_logica|Add0~43\ = CARRY((!\ut_logica|Add0~41\) # (!\ut_logica|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(21),
	datad => VCC,
	cin => \ut_logica|Add0~41\,
	combout => \ut_logica|Add0~42_combout\,
	cout => \ut_logica|Add0~43\);

-- Location: LCCOMB_X24_Y14_N12
\ut_logica|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~76_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~42_combout\,
	combout => \ut_logica|Add0~76_combout\);

-- Location: FF_X24_Y14_N13
\ut_logica|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~76_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(21));

-- Location: LCCOMB_X23_Y14_N12
\ut_logica|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~44_combout\ = (\ut_logica|cnt\(22) & (\ut_logica|Add0~43\ $ (GND))) # (!\ut_logica|cnt\(22) & (!\ut_logica|Add0~43\ & VCC))
-- \ut_logica|Add0~45\ = CARRY((\ut_logica|cnt\(22) & !\ut_logica|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(22),
	datad => VCC,
	cin => \ut_logica|Add0~43\,
	combout => \ut_logica|Add0~44_combout\,
	cout => \ut_logica|Add0~45\);

-- Location: LCCOMB_X23_Y14_N14
\ut_logica|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~46_combout\ = (\ut_logica|cnt\(23) & (!\ut_logica|Add0~45\)) # (!\ut_logica|cnt\(23) & ((\ut_logica|Add0~45\) # (GND)))
-- \ut_logica|Add0~47\ = CARRY((!\ut_logica|Add0~45\) # (!\ut_logica|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(23),
	datad => VCC,
	cin => \ut_logica|Add0~45\,
	combout => \ut_logica|Add0~46_combout\,
	cout => \ut_logica|Add0~47\);

-- Location: LCCOMB_X23_Y14_N16
\ut_logica|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~48_combout\ = (\ut_logica|cnt\(24) & (\ut_logica|Add0~47\ $ (GND))) # (!\ut_logica|cnt\(24) & (!\ut_logica|Add0~47\ & VCC))
-- \ut_logica|Add0~49\ = CARRY((\ut_logica|cnt\(24) & !\ut_logica|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(24),
	datad => VCC,
	cin => \ut_logica|Add0~47\,
	combout => \ut_logica|Add0~48_combout\,
	cout => \ut_logica|Add0~49\);

-- Location: LCCOMB_X23_Y14_N18
\ut_logica|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~50_combout\ = (\ut_logica|cnt\(25) & (!\ut_logica|Add0~49\)) # (!\ut_logica|cnt\(25) & ((\ut_logica|Add0~49\) # (GND)))
-- \ut_logica|Add0~51\ = CARRY((!\ut_logica|Add0~49\) # (!\ut_logica|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(25),
	datad => VCC,
	cin => \ut_logica|Add0~49\,
	combout => \ut_logica|Add0~50_combout\,
	cout => \ut_logica|Add0~51\);

-- Location: LCCOMB_X24_Y14_N18
\ut_logica|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~72_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~50_combout\,
	combout => \ut_logica|Add0~72_combout\);

-- Location: FF_X24_Y14_N19
\ut_logica|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~72_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(25));

-- Location: LCCOMB_X23_Y14_N20
\ut_logica|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~52_combout\ = (\ut_logica|cnt\(26) & (\ut_logica|Add0~51\ $ (GND))) # (!\ut_logica|cnt\(26) & (!\ut_logica|Add0~51\ & VCC))
-- \ut_logica|Add0~53\ = CARRY((\ut_logica|cnt\(26) & !\ut_logica|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(26),
	datad => VCC,
	cin => \ut_logica|Add0~51\,
	combout => \ut_logica|Add0~52_combout\,
	cout => \ut_logica|Add0~53\);

-- Location: LCCOMB_X24_Y14_N16
\ut_logica|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~71_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~52_combout\,
	combout => \ut_logica|Add0~71_combout\);

-- Location: FF_X24_Y14_N17
\ut_logica|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~71_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(26));

-- Location: LCCOMB_X23_Y14_N24
\ut_logica|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~56_combout\ = (\ut_logica|cnt\(28) & (\ut_logica|Add0~55\ $ (GND))) # (!\ut_logica|cnt\(28) & (!\ut_logica|Add0~55\ & VCC))
-- \ut_logica|Add0~57\ = CARRY((\ut_logica|cnt\(28) & !\ut_logica|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(28),
	datad => VCC,
	cin => \ut_logica|Add0~55\,
	combout => \ut_logica|Add0~56_combout\,
	cout => \ut_logica|Add0~57\);

-- Location: LCCOMB_X24_Y14_N4
\ut_logica|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~69_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~56_combout\,
	combout => \ut_logica|Add0~69_combout\);

-- Location: FF_X24_Y14_N5
\ut_logica|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~69_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(28));

-- Location: LCCOMB_X24_Y14_N0
\ut_logica|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|LessThan0~1_combout\ = (\ut_logica|cnt\(27)) # ((\ut_logica|cnt\(26)) # ((\ut_logica|cnt\(28)) # (\ut_logica|cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(27),
	datab => \ut_logica|cnt\(26),
	datac => \ut_logica|cnt\(28),
	datad => \ut_logica|cnt\(25),
	combout => \ut_logica|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y14_N2
\ut_logica|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~73_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|estado.s2~q\,
	datac => \ut_logica|Add0~48_combout\,
	combout => \ut_logica|Add0~73_combout\);

-- Location: FF_X24_Y14_N3
\ut_logica|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~73_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(24));

-- Location: LCCOMB_X24_Y14_N30
\ut_logica|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~75_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~44_combout\,
	combout => \ut_logica|Add0~75_combout\);

-- Location: FF_X24_Y14_N31
\ut_logica|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~75_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(22));

-- Location: LCCOMB_X24_Y14_N20
\ut_logica|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~74_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~46_combout\,
	combout => \ut_logica|Add0~74_combout\);

-- Location: FF_X24_Y14_N21
\ut_logica|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~74_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(23));

-- Location: LCCOMB_X24_Y14_N14
\ut_logica|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|LessThan0~2_combout\ = (\ut_logica|cnt\(21)) # ((\ut_logica|cnt\(24)) # ((\ut_logica|cnt\(22)) # (\ut_logica|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(21),
	datab => \ut_logica|cnt\(24),
	datac => \ut_logica|cnt\(22),
	datad => \ut_logica|cnt\(23),
	combout => \ut_logica|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y14_N26
\ut_logica|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~58_combout\ = (\ut_logica|cnt\(29) & (!\ut_logica|Add0~57\)) # (!\ut_logica|cnt\(29) & ((\ut_logica|Add0~57\) # (GND)))
-- \ut_logica|Add0~59\ = CARRY((!\ut_logica|Add0~57\) # (!\ut_logica|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(29),
	datad => VCC,
	cin => \ut_logica|Add0~57\,
	combout => \ut_logica|Add0~58_combout\,
	cout => \ut_logica|Add0~59\);

-- Location: LCCOMB_X24_Y14_N24
\ut_logica|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~66_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|estado.s2~q\,
	datac => \ut_logica|Add0~58_combout\,
	combout => \ut_logica|Add0~66_combout\);

-- Location: FF_X24_Y14_N25
\ut_logica|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~66_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(29));

-- Location: LCCOMB_X23_Y14_N28
\ut_logica|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~60_combout\ = (\ut_logica|cnt\(30) & (\ut_logica|Add0~59\ $ (GND))) # (!\ut_logica|cnt\(30) & (!\ut_logica|Add0~59\ & VCC))
-- \ut_logica|Add0~61\ = CARRY((\ut_logica|cnt\(30) & !\ut_logica|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(30),
	datad => VCC,
	cin => \ut_logica|Add0~59\,
	combout => \ut_logica|Add0~60_combout\,
	cout => \ut_logica|Add0~61\);

-- Location: LCCOMB_X24_Y14_N26
\ut_logica|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~65_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~60_combout\,
	combout => \ut_logica|Add0~65_combout\);

-- Location: FF_X24_Y14_N27
\ut_logica|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~65_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(30));

-- Location: LCCOMB_X24_Y14_N22
\ut_logica|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|LessThan0~0_combout\ = (\ut_logica|cnt\(29)) # ((\ut_logica|cnt\(30)) # ((\ut_logica|cnt\(2) & \ut_logica|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(2),
	datab => \ut_logica|cnt\(29),
	datac => \ut_logica|cnt\(30),
	datad => \ut_logica|cnt\(1),
	combout => \ut_logica|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y15_N8
\ut_logica|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|LessThan0~4_combout\ = (\ut_logica|LessThan0~3_combout\) # ((\ut_logica|LessThan0~1_combout\) # ((\ut_logica|LessThan0~2_combout\) # (\ut_logica|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|LessThan0~3_combout\,
	datab => \ut_logica|LessThan0~1_combout\,
	datac => \ut_logica|LessThan0~2_combout\,
	datad => \ut_logica|LessThan0~0_combout\,
	combout => \ut_logica|LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y15_N20
\ut_logica|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~93_combout\ = (\ut_logica|Add0~8_combout\ & \ut_logica|estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|Add0~8_combout\,
	datac => \ut_logica|estado.s2~q\,
	combout => \ut_logica|Add0~93_combout\);

-- Location: FF_X24_Y15_N21
\ut_logica|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~93_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(4));

-- Location: LCCOMB_X22_Y15_N12
\ut_logica|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~89_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~16_combout\,
	combout => \ut_logica|Add0~89_combout\);

-- Location: FF_X22_Y15_N13
\ut_logica|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~89_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(8));

-- Location: LCCOMB_X24_Y15_N10
\ut_logica|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|LessThan0~7_combout\ = (\ut_logica|cnt\(6)) # ((\ut_logica|cnt\(5)) # ((\ut_logica|cnt\(8)) # (\ut_logica|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(6),
	datab => \ut_logica|cnt\(5),
	datac => \ut_logica|cnt\(8),
	datad => \ut_logica|cnt\(7),
	combout => \ut_logica|LessThan0~7_combout\);

-- Location: LCCOMB_X24_Y15_N0
\ut_logica|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|LessThan0~8_combout\ = (\ut_logica|cnt\(3)) # ((\ut_logica|cnt\(4)) # (\ut_logica|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(3),
	datac => \ut_logica|cnt\(4),
	datad => \ut_logica|LessThan0~7_combout\,
	combout => \ut_logica|LessThan0~8_combout\);

-- Location: LCCOMB_X24_Y15_N2
\ut_logica|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|LessThan0~9_combout\ = (\ut_logica|LessThan0~6_combout\) # ((\ut_logica|LessThan0~5_combout\) # ((\ut_logica|LessThan0~4_combout\) # (\ut_logica|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|LessThan0~6_combout\,
	datab => \ut_logica|LessThan0~5_combout\,
	datac => \ut_logica|LessThan0~4_combout\,
	datad => \ut_logica|LessThan0~8_combout\,
	combout => \ut_logica|LessThan0~9_combout\);

-- Location: LCCOMB_X24_Y15_N24
\ut_logica|data_tx[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|data_tx[6]~1_combout\ = (\ut_logica|estado.s1~q\ & ((\ut_logica|cnt\(31)) # (!\ut_logica|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|estado.s1~q\,
	datac => \ut_logica|cnt\(31),
	datad => \ut_logica|LessThan0~9_combout\,
	combout => \ut_logica|data_tx[6]~1_combout\);

-- Location: FF_X24_Y15_N25
\ut_logica|estado.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|data_tx[6]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ut_logica|ALT_INV_string_completo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|estado.s2~q\);

-- Location: LCCOMB_X23_Y14_N30
\ut_logica|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~62_combout\ = \ut_logica|cnt\(31) $ (\ut_logica|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|cnt\(31),
	cin => \ut_logica|Add0~61\,
	combout => \ut_logica|Add0~62_combout\);

-- Location: LCCOMB_X24_Y14_N8
\ut_logica|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~64_combout\ = (\ut_logica|estado.s2~q\ & \ut_logica|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|estado.s2~q\,
	datad => \ut_logica|Add0~62_combout\,
	combout => \ut_logica|Add0~64_combout\);

-- Location: FF_X24_Y14_N9
\ut_logica|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~64_combout\,
	ena => \ut_logica|cnt[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(31));

-- Location: LCCOMB_X22_Y15_N0
\ut_logica|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Selector1~0_combout\ = (\ut_logica|enable_tx~q\ & ((\ut_logica|estado.s1~q\) # ((\ut_logica|estado.s3~q\) # (!\ut_logica|estado.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|estado.s1~q\,
	datab => \ut_logica|enable_tx~q\,
	datac => \ut_logica|estado.s3~q\,
	datad => \ut_logica|estado.s0~q\,
	combout => \ut_logica|Selector1~0_combout\);

-- Location: LCCOMB_X21_Y16_N4
\ut_logica|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Selector1~1_combout\ = (\ut_logica|Selector1~0_combout\) # ((\ut_logica|estado.s1~q\ & ((\ut_logica|cnt\(31)) # (!\ut_logica|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|estado.s1~q\,
	datab => \ut_logica|cnt\(31),
	datac => \ut_logica|Selector1~0_combout\,
	datad => \ut_logica|LessThan0~9_combout\,
	combout => \ut_logica|Selector1~1_combout\);

-- Location: FF_X21_Y16_N5
\ut_logica|enable_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Selector1~1_combout\,
	ena => \ut_logica|cnt[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|enable_tx~q\);

-- Location: FF_X21_Y16_N17
\ut_uart|ut_tx_uart|estado.d5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_uart|ut_tx_uart|estado.d5~feeder_combout\,
	clrn => \ut_logica|enable_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_tx_uart|estado.d5~q\);

-- Location: LCCOMB_X21_Y16_N26
\ut_uart|ut_tx_uart|estado.d6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|estado.d6~feeder_combout\ = \ut_uart|ut_tx_uart|estado.d5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_uart|ut_tx_uart|estado.d5~q\,
	combout => \ut_uart|ut_tx_uart|estado.d6~feeder_combout\);

-- Location: FF_X21_Y16_N27
\ut_uart|ut_tx_uart|estado.d6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_uart|ut_tx_uart|estado.d6~feeder_combout\,
	clrn => \ut_logica|enable_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_tx_uart|estado.d6~q\);

-- Location: LCCOMB_X21_Y16_N18
\ut_uart|ut_tx_uart|estado.d7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|estado.d7~feeder_combout\ = \ut_uart|ut_tx_uart|estado.d6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_uart|ut_tx_uart|estado.d6~q\,
	combout => \ut_uart|ut_tx_uart|estado.d7~feeder_combout\);

-- Location: FF_X21_Y16_N19
\ut_uart|ut_tx_uart|estado.d7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_uart|ut_tx_uart|estado.d7~feeder_combout\,
	clrn => \ut_logica|enable_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_tx_uart|estado.d7~q\);

-- Location: LCCOMB_X21_Y16_N20
\ut_uart|ut_tx_uart|estado.stop~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|estado.stop~feeder_combout\ = \ut_uart|ut_tx_uart|estado.d7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_uart|ut_tx_uart|estado.d7~q\,
	combout => \ut_uart|ut_tx_uart|estado.stop~feeder_combout\);

-- Location: FF_X21_Y16_N21
\ut_uart|ut_tx_uart|estado.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_uart|ut_tx_uart|estado.stop~feeder_combout\,
	clrn => \ut_logica|enable_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_tx_uart|estado.stop~q\);

-- Location: LCCOMB_X21_Y16_N2
\ut_uart|ut_tx_uart|estado.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|estado.idle~0_combout\ = !\ut_uart|ut_tx_uart|estado.stop~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_uart|ut_tx_uart|estado.stop~q\,
	combout => \ut_uart|ut_tx_uart|estado.idle~0_combout\);

-- Location: FF_X21_Y16_N3
\ut_uart|ut_tx_uart|estado.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_uart|ut_tx_uart|estado.idle~0_combout\,
	clrn => \ut_logica|enable_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_tx_uart|estado.idle~q\);

-- Location: LCCOMB_X21_Y16_N10
\ut_uart|ut_tx_uart|estado.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|estado.start~0_combout\ = !\ut_uart|ut_tx_uart|estado.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_uart|ut_tx_uart|estado.idle~q\,
	combout => \ut_uart|ut_tx_uart|estado.start~0_combout\);

-- Location: FF_X21_Y16_N11
\ut_uart|ut_tx_uart|estado.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_uart|ut_tx_uart|estado.start~0_combout\,
	clrn => \ut_logica|enable_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_tx_uart|estado.start~q\);

-- Location: LCCOMB_X21_Y16_N24
\ut_uart|ut_tx_uart|estado.d0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|estado.d0~feeder_combout\ = \ut_uart|ut_tx_uart|estado.start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_uart|ut_tx_uart|estado.start~q\,
	combout => \ut_uart|ut_tx_uart|estado.d0~feeder_combout\);

-- Location: FF_X21_Y16_N25
\ut_uart|ut_tx_uart|estado.d0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_uart|ut_tx_uart|estado.d0~feeder_combout\,
	clrn => \ut_logica|enable_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_tx_uart|estado.d0~q\);

-- Location: LCCOMB_X21_Y16_N0
\ut_uart|ut_tx_uart|estado.d1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|estado.d1~feeder_combout\ = \ut_uart|ut_tx_uart|estado.d0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_uart|ut_tx_uart|estado.d0~q\,
	combout => \ut_uart|ut_tx_uart|estado.d1~feeder_combout\);

-- Location: FF_X21_Y16_N1
\ut_uart|ut_tx_uart|estado.d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_uart|ut_tx_uart|estado.d1~feeder_combout\,
	clrn => \ut_logica|enable_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_tx_uart|estado.d1~q\);

-- Location: LCCOMB_X21_Y16_N6
\ut_uart|ut_tx_uart|estado.d2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|estado.d2~feeder_combout\ = \ut_uart|ut_tx_uart|estado.d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_uart|ut_tx_uart|estado.d1~q\,
	combout => \ut_uart|ut_tx_uart|estado.d2~feeder_combout\);

-- Location: FF_X21_Y16_N7
\ut_uart|ut_tx_uart|estado.d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_uart|ut_tx_uart|estado.d2~feeder_combout\,
	clrn => \ut_logica|enable_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_tx_uart|estado.d2~q\);

-- Location: LCCOMB_X21_Y16_N30
\ut_uart|ut_tx_uart|estado.d3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|estado.d3~feeder_combout\ = \ut_uart|ut_tx_uart|estado.d2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ut_uart|ut_tx_uart|estado.d2~q\,
	combout => \ut_uart|ut_tx_uart|estado.d3~feeder_combout\);

-- Location: FF_X21_Y16_N31
\ut_uart|ut_tx_uart|estado.d3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_uart|ut_tx_uart|estado.d3~feeder_combout\,
	clrn => \ut_logica|enable_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_tx_uart|estado.d3~q\);

-- Location: LCCOMB_X21_Y16_N12
\ut_uart|ut_tx_uart|estado.d4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|estado.d4~feeder_combout\ = \ut_uart|ut_tx_uart|estado.d3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_uart|ut_tx_uart|estado.d3~q\,
	combout => \ut_uart|ut_tx_uart|estado.d4~feeder_combout\);

-- Location: FF_X21_Y16_N13
\ut_uart|ut_tx_uart|estado.d4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_uart|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_uart|ut_tx_uart|estado.d4~feeder_combout\,
	clrn => \ut_logica|enable_tx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_uart|ut_tx_uart|estado.d4~q\);

-- Location: LCCOMB_X21_Y15_N2
\ut_logica|data_tx[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|data_tx[3]~2_combout\ = !\ut_logica|cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ut_logica|cnt\(2),
	combout => \ut_logica|data_tx[3]~2_combout\);

-- Location: LCCOMB_X21_Y15_N22
\ut_logica|data_tx[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|data_tx[6]~0_combout\ = (\ut_logica|estado.s1~q\ & (\ut_logica|cnt[25]~0_combout\ & ((\ut_logica|cnt\(31)) # (!\ut_logica|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|estado.s1~q\,
	datab => \ut_logica|cnt\(31),
	datac => \ut_logica|LessThan0~9_combout\,
	datad => \ut_logica|cnt[25]~0_combout\,
	combout => \ut_logica|data_tx[6]~0_combout\);

-- Location: FF_X21_Y15_N3
\ut_logica|data_tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|data_tx[3]~2_combout\,
	ena => \ut_logica|data_tx[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|data_tx\(3));

-- Location: LCCOMB_X21_Y15_N4
\ut_logica|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Add0~95_combout\ = (\ut_logica|estado.s2~q\ & (!\ut_logica|Add0~0_combout\)) # (!\ut_logica|estado.s2~q\ & (((\ut_logica|cnt\(0) & !\ut_logica|Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|Add0~0_combout\,
	datab => \ut_logica|estado.s2~q\,
	datac => \ut_logica|cnt\(0),
	datad => \ut_logica|Selector33~0_combout\,
	combout => \ut_logica|Add0~95_combout\);

-- Location: FF_X21_Y15_N5
\ut_logica|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Add0~95_combout\,
	ena => \ut_logica|cnt[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|cnt\(0));

-- Location: LCCOMB_X21_Y15_N20
\ut_logica|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Mux2~0_combout\ = (!\ut_logica|cnt\(0) & \ut_logica|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(0),
	datac => \ut_logica|cnt\(2),
	combout => \ut_logica|Mux2~0_combout\);

-- Location: FF_X21_Y15_N21
\ut_logica|data_tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Mux2~0_combout\,
	ena => \ut_logica|data_tx[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|data_tx\(4));

-- Location: LCCOMB_X21_Y16_N22
\ut_uart|ut_tx_uart|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|Selector0~1_combout\ = (\ut_uart|ut_tx_uart|estado.d3~q\ & ((\ut_logica|data_tx\(3)) # ((\ut_uart|ut_tx_uart|estado.d4~q\ & \ut_logica|data_tx\(4))))) # (!\ut_uart|ut_tx_uart|estado.d3~q\ & (\ut_uart|ut_tx_uart|estado.d4~q\ & 
-- ((\ut_logica|data_tx\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_tx_uart|estado.d3~q\,
	datab => \ut_uart|ut_tx_uart|estado.d4~q\,
	datac => \ut_logica|data_tx\(3),
	datad => \ut_logica|data_tx\(4),
	combout => \ut_uart|ut_tx_uart|Selector0~1_combout\);

-- Location: FF_X21_Y15_N1
\ut_logica|data_tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	asdata => \ut_logica|cnt\(1),
	sload => VCC,
	ena => \ut_logica|data_tx[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|data_tx\(2));

-- Location: LCCOMB_X21_Y15_N18
\ut_logica|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Mux2~1_combout\ = \ut_logica|cnt\(2) $ (\ut_logica|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(2),
	datac => \ut_logica|cnt\(0),
	combout => \ut_logica|Mux2~1_combout\);

-- Location: FF_X21_Y15_N19
\ut_logica|data_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Mux2~1_combout\,
	ena => \ut_logica|data_tx[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|data_tx\(1));

-- Location: LCCOMB_X21_Y15_N0
\ut_uart|ut_tx_uart|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|Selector0~2_combout\ = (\ut_uart|ut_tx_uart|estado.d2~q\ & ((\ut_logica|data_tx\(2)) # ((\ut_uart|ut_tx_uart|estado.d1~q\ & \ut_logica|data_tx\(1))))) # (!\ut_uart|ut_tx_uart|estado.d2~q\ & (\ut_uart|ut_tx_uart|estado.d1~q\ & 
-- ((\ut_logica|data_tx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_tx_uart|estado.d2~q\,
	datab => \ut_uart|ut_tx_uart|estado.d1~q\,
	datac => \ut_logica|data_tx\(2),
	datad => \ut_logica|data_tx\(1),
	combout => \ut_uart|ut_tx_uart|Selector0~2_combout\);

-- Location: LCCOMB_X21_Y15_N24
\ut_logica|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|Mux3~0_combout\ = (\ut_logica|cnt\(2)) # (\ut_logica|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|cnt\(2),
	datac => \ut_logica|cnt\(0),
	combout => \ut_logica|Mux3~0_combout\);

-- Location: FF_X21_Y15_N25
\ut_logica|data_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|Mux3~0_combout\,
	ena => \ut_logica|data_tx[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|data_tx\(0));

-- Location: LCCOMB_X21_Y16_N8
\ut_uart|ut_tx_uart|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|Selector0~3_combout\ = ((\ut_logica|data_tx\(0) & \ut_uart|ut_tx_uart|estado.d0~q\)) # (!\ut_uart|ut_tx_uart|estado.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ut_logica|data_tx\(0),
	datac => \ut_uart|ut_tx_uart|estado.idle~q\,
	datad => \ut_uart|ut_tx_uart|estado.d0~q\,
	combout => \ut_uart|ut_tx_uart|Selector0~3_combout\);

-- Location: LCCOMB_X21_Y15_N12
\ut_logica|data_tx[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_logica|data_tx[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \ut_logica|data_tx[6]~feeder_combout\);

-- Location: FF_X21_Y15_N13
\ut_logica|data_tx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ut_logica|ut_clk_tx|clk_out~clkctrl_outclk\,
	d => \ut_logica|data_tx[6]~feeder_combout\,
	ena => \ut_logica|data_tx[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ut_logica|data_tx\(6));

-- Location: LCCOMB_X21_Y16_N28
\ut_uart|ut_tx_uart|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|Selector0~0_combout\ = (\ut_logica|data_tx\(5) & ((\ut_uart|ut_tx_uart|estado.d5~q\) # ((\ut_uart|ut_tx_uart|estado.d6~q\ & \ut_logica|data_tx\(6))))) # (!\ut_logica|data_tx\(5) & (((\ut_uart|ut_tx_uart|estado.d6~q\ & 
-- \ut_logica|data_tx\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_logica|data_tx\(5),
	datab => \ut_uart|ut_tx_uart|estado.d5~q\,
	datac => \ut_uart|ut_tx_uart|estado.d6~q\,
	datad => \ut_logica|data_tx\(6),
	combout => \ut_uart|ut_tx_uart|Selector0~0_combout\);

-- Location: LCCOMB_X21_Y16_N14
\ut_uart|ut_tx_uart|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ut_uart|ut_tx_uart|Selector0~4_combout\ = (\ut_uart|ut_tx_uart|Selector0~1_combout\) # ((\ut_uart|ut_tx_uart|Selector0~2_combout\) # ((\ut_uart|ut_tx_uart|Selector0~3_combout\) # (\ut_uart|ut_tx_uart|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ut_uart|ut_tx_uart|Selector0~1_combout\,
	datab => \ut_uart|ut_tx_uart|Selector0~2_combout\,
	datac => \ut_uart|ut_tx_uart|Selector0~3_combout\,
	datad => \ut_uart|ut_tx_uart|Selector0~0_combout\,
	combout => \ut_uart|ut_tx_uart|Selector0~4_combout\);

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

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_salidas(0) <= \salidas[0]~output_o\;

ww_salidas(1) <= \salidas[1]~output_o\;

ww_tx <= \tx~output_o\;
END structure;


