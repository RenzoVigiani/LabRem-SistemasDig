library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity transmitter is
	port
	(
		clk, rst : in std_logic := '0';
		tx : out std_logic
	);
end transmitter;

architecture a_transmitter of transmitter is

signal address : std_logic_vector (8 downto 0);
signal dato : std_logic_vector (7 downto 0);
signal clk_9600, clk_dato, not_clk_dato : std_logic := '0';

begin

i_9600 : entity work.contador_div_frec generic map (5209,1) port map (clk, rst, clk_9600, open);
i_dato : entity work.contador_div_frec generic map (5209*11,5) port map (clk, rst, clk_dato, open);
not_clk_dato <= not clk_dato;
i_address : entity work.contador_div_frec generic map (80,9) port map (not_clk_dato, rst, open, address);
i_rom : entity work.ROM_Interna_Transmitter port map (address, not_clk_dato, dato);
i_trans_uart : entity work.transmitter_uart port map (clk_9600, rst, dato, tx);

end a_transmitter;