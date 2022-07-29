library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ROM_Interna_Transmitter is
end tb_ROM_Interna_Transmitter;

architecture a_tb_ROM_Interna_Transmitter of tb_ROM_Interna_Transmitter is

component ROM_Interna_Transmitter is
	port
	(
		address		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;

signal s_clock : std_logic := '1';
signal s_address : std_logic_vector (8 downto 0);
signal s_q : std_logic_vector (7 downto 0);

begin
uut : ROM_Interna_Transmitter port map (clock => s_clock, address => s_address, q => s_q);

process
	begin
		s_clock <= '0';
		wait for 2.5 ns;
	
		s_clock <= '1';
		wait for 2.5 ns;
end process;
	
end a_tb_ROM_Interna_Transmitter;