library ieee;
use ieee.std_logic_1164.all;
entity testeo_labrem is 
	port (
		entrada : in std_logic_vector(1 downto 0);		
		salidas, leds	: out std_logic_vector(1 downto 0);
		rx, clk: in std_logic; 
		tx : out  std_logic); 
end testeo_labrem;

architecture prueba of testeo_labrem is
signal sclk: std_logic;
begin
	
	with entrada select leds <=
	"00" when "00",
	"01" when "01",
	"10" when "10",
	"11" when "11";	
	
end prueba;