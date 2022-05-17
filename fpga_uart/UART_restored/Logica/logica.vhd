--Logica
-- Librerias
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE WORK.mi_paquete.ALL;
USE work.paquete_uart.all;
-- Entidad
entity logica is -- tx uart con rom_lcd	
port
	(
		clk_50Mhz,reset	: in  std_logic:='0';
		entrada : in std_logic_vector(1 downto 0);		
		salidas, leds	: out std_logic_vector(1 downto 0);
		rx	: in  STD_LOGIC_VECTOR (7 DOWNTO 0);
		tx : out STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end logica;
-- Arquitectura
Architecture a_logica of logica is
-- Agrego componente para convertir de string a tx
component string_tx_uart is
	generic
	(
	cadena	:string 
	);
	port
	(
		clk,reset	: in  std_logic:='0';
		tx_data	: out std_logic_vector (7 downto 0)
	);
end component;

constant mensaje: string:="Buenas Noches";


begin

ut_string_tx_uart: string_tx_uart generic map(mensaje) port map (clk_50Mhz,reset,tx);

	with entrada select leds <=
	"00" when "00",
	"01" when "01",
	"10" when "10",
	"11" when "11";
end a_logica;