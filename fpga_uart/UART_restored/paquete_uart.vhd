library ieee;
use ieee.std_logic_1164.all;
package paquete_uart is
	component tx_uart is
	 port 
		(
		clk,reset: 	in std_logic:='0';
			  dato:	in std_logic_vector (7 downto 0):=x"00";
				 tx: 	out std_logic:='0'
		);
	end component;
	component rx_uart is
	 port 
		(
		rx,reset,clk: 	in std_logic:='1';
			rx_done:		out std_logic:='1';
			dato:			out std_logic_vector (7 downto 0):=x"00"
		);
	end component;
end package;