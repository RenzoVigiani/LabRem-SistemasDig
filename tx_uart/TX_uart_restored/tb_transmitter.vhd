library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_transmitter is
end tb_transmitter;

architecture a_tb_transmitter of tb_transmitter is

component transmitter is
	port
	(
		clk, rst : in std_logic := '0';
		tx : out std_logic
	);
end component;

signal s_clk, s_rst : std_logic := '0';
signal s_tx : std_logic := '0';


begin
uut : transmitter port map (clk => s_clk, rst => s_rst, tx => s_tx);

s_rst <= '1',
			'0' after 20 ns,
			'1' after 30 ns;
		  
process
	begin
		s_clk <= '0';
		wait for 2.5 ns;
	
		s_clk <= '1';
		wait for 2.5 ns;
end process;
	
end a_tb_transmitter;