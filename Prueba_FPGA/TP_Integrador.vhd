-- Vigiani Renzo Lautaro
-- TP INTEGRADOR

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE WORK.mi_paquete.ALL;
USE work.paquete_uart.all;
entity TP_integrador is 	
	port	
		(
			clk_50Mhz  :	in std_logic; --50mhz
			reset      :	in std_logic;
			entradas	  :	in std_logic_vector(1 downto 0);
			rx			  :	in std_logic; -- uart --- arduino
			leds,salidas :	out std_logic_vector(1 downto 0);
			tx			  :	out std_logic -- uart --- arduino			
		);
end entity;
--AT+CWJAP_DEF="WiFi_Fibertel_f85_2.4GHz","s4r44abg2d"
architecture a_TP_integrador of TP_integrador is
-- Declaracion componentes
component logica is
	port	
	(
		clk_50Mhz  : 	in std_logic; --50mhz
		reset      : 	in std_logic;
		entradas	  :	in std_logic_vector(1 downto 0);
		data_rx	  :	in std_logic_vector(7 downto 0);
		done_char_tx		:	in std_logic;
		enable_tx  	: 	out std_logic:='0';
		send_tx	  	: 	out std_logic:='0';
		leds		  	: 	out std_logic_vector(1 downto 0):="00";-- leds
		salidas     :	out std_logic_vector(1 downto 0):="00";-- salidas - arduino
		data_tx   	: 	out std_logic_vector(7 downto 0):=x"00"-- que se envía al arduino
	);
end component;
-- UARt
component UART is
  port(
		clk_50MHz	:	in std_logic;
		reset			:	in std_logic;
		enable_tx	:	in std_logic;
		send_tx		:	in std_logic;
		rx_uart_ent	:	in std_logic;
		dato_tx		:	in std_logic_vector(7 downto 0);
		tx_uart_sal	:	out std_logic;
		dato_rx		:	out std_logic_vector(7 downto 0);
		done_char_tx:	out std_logic
		);
end component;
-- Declaración señales
signal dato_rx,dato_tx: STD_LOGIC_VECTOR (7 DOWNTO 0);
signal clk_tx: std_logic:='0';
signal rx_done,clk_rx,tx_rx,done_char,done_string: std_logic;
-- señales de la logica
signal enable,done,send:std_logic;
Begin
-- instancio tx y rx
	ut_uart	:	uart  port map(clk_50MHz,reset,enable,send,rx,dato_tx,tx,dato_rx,done_char);
	ut_logica: logica port map (clk_50MHz,reset,entradas,dato_rx,done_char,enable,send,leds,salidas,dato_tx);
end architecture;