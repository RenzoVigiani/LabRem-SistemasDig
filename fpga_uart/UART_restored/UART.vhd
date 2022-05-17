library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE WORK.mi_paquete.ALL;
USE work.paquete_uart.all;
entity uart is -- tx uart con rom_lcd	
port
	(
		clk_50Mhz,reset	: in  std_logic:='0';	
		entrada : in std_logic_vector(1 downto 0);		
		salidas, leds	: out std_logic_vector(1 downto 0);
		rx	: in std_logic;
		tx : out std_logic
	);
end uart;

architecture a_uart of uart is
-- Declaracion componentes
component logica is 	-- Actualizar Logica segun lo necesario
port
	(
		clk_50Mhz,reset	: in  std_logic:='0';
		entrada : in std_logic_vector(1 downto 0);		
		salidas, leds	: out std_logic_vector(1 downto 0);
		rx	: in  STD_LOGIC_VECTOR (7 DOWNTO 0);
		tx : out STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;
-- Declaración señales
signal address : STD_LOGIC_VECTOR (6 DOWNTO 0);
signal dato,dato_log: STD_LOGIC_VECTOR (7 DOWNTO 0);
signal clk_9600,clk_dato,no_clk_dato	: std_logic:='0';
signal rx_done,clk_rx: std_logic;
signal dato_1:  STD_LOGIC_VECTOR (7 DOWNTO 0):= "01100010";

Begin


-- Instanciación de componentes
	ut_9600: contador generic map (5200,1) port map (clk_50Mhz,reset,clk_9600,open); -- cnt max = 325*16 = 5200
	ut_clk_rx: contador generic map (325,1) port map (clk_50Mhz,reset,clk_rx,open);-- cnt max = 325
	ut_logica:	logica port map (clk_9600,reset,entrada,salidas,leds,dato_log,dato);
	ut_tx_uart: tx_uart port map (clk_9600,reset,dato,tx);
	ut_rx_uart: rx_uart port map (rx,reset,clk_rx,rx_done,dato_log);
end a_uart;