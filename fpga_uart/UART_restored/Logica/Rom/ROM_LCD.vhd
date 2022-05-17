library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE WORK.mi_paquete.ALL;

entity rom_lcd is	
	port
	(
		clk_50Mhz,reset	: in  std_logic:='0';
		lcd_data	: out std_logic_vector (7 downto 0);
		lcd_enable, lcd_rw, lcd_rs : out std_logic
	);
end rom_lcd;

architecture a_rom_lcd of rom_lcd is
signal clk: std_logic:='0';
signal address : STD_LOGIC_VECTOR (6 DOWNTO 0):="0000000";
signal caracter: STD_LOGIC_VECTOR (7 DOWNTO 0);
Begin
	uut_conta: contador generic map (200000,18) port map (clk_50Mhz,reset,clk,open);
	uut_rom: rom_interna_ascii port map (address,clk,caracter);
	uut_lcd: lcd_ctrl port map (caracter,clk,reset,lcd_data,lcd_enable,lcd_rw,lcd_rs,address(6 downto 0));
end a_rom_lcd;