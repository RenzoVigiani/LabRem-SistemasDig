 Library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 USE work.mi_paquete.all;
 USE work.paquete_uart.all;
 
 entity UART is
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
end Uart;

Architecture a_UART of UART is
signal clk_tx,clk_rx	:	std_logic;
signal rx_done : std_logic;
signal dato_tx_str : std_logic_vector(7 downto 0);
Begin
-- Instanciación
-- clk 115200  para wifi o 9600 para bt -- generic para testbench 160
	ut_clk_tx: contador generic map (5200,1) port map (clk_50MHz,reset,clk_tx,open); -- cnt max = 434 =27*16 -- 115200
-- clk 1843200 para wifi o 153600 para bt -- generic para testbench 10	
	ut_clk_rx: contador generic map (325,1) port map (clk_50MHz,reset,clk_rx,open);-- cnt max = 27 -- 153000
-- Transmisor Uart
	ut_tx_uart: tx_uart port map (clk_tx,reset,enable_tx,send_tx,dato_tx,tx_uart_sal,done_char_tx);
-- Receptor Uart
	ut_rx_uart: rx_uart port map (rx_uart_ent,reset,clk_rx,rx_done,dato_rx);
End a_uART;
