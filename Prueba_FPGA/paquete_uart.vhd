library ieee;
use ieee.std_logic_1164.all;
package paquete_uart is
	component tx_uart is
	 port 
		(
		clk,reset,enable: 	in std_logic:='0';
		send 		: in std_logic;
			dato:		in std_logic_vector (7 downto 0);
		tx,done: 	out std_logic -- finaliza enviado
		);
	end component;
	component rx_uart is
 port 
	(	
		rx : 			in std_logic:='0';
		reset,clk: 	in std_logic:='1';
		rx_done:		out std_logic:='1';
		dato:			out std_logic_vector (7 downto 0):=x"00"
	);
	end component;

end package;