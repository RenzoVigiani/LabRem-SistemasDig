 -- Libreria
 Library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 -- Entidad 
 Entity rx_uart is
 port 
	(	
		rx : 			in std_logic;
		reset,clk: 	in std_logic:='1';
		rx_done:		out std_logic:='1';
		dato:			out std_logic_vector (7 downto 0):=x"00"
	);
end rx_uart;
-- Arquitectura
Architecture a_rx_uart of rx_uart is
-- Declaración de señales
type mef is (idle, start, data, stop, stop2);
signal estado: mef;
signal temp : std_logic_vector(7 downto 0):=x"00";
signal n:	natural range 0 to 7;
signal cnt: natural range 0 to 15;
-- Logica --
begin 
	process (clk,reset,rx) is
	begin 
		if reset='1' then estado <= idle; rx_done <= '0';
		elsif rising_edge (clk) then
			case estado is
				when idle => 
					if rx='0' then cnt<=0; estado <= start; else estado <= idle; rx_done <= '0'; end if;
				when start=>
					if cnt=7 then cnt<=0; n<=0; estado<=data; else cnt<=cnt+1; estado<=start; end if;
				when data =>
					if cnt=15 then cnt<=0; temp(n)<=rx; 
						if n=7 then estado <= stop; else n<=n+1; estado <= data; end if;
					else cnt<=cnt+1; estado<=data; end if;
				when stop =>
					if cnt=15 then rx_done<='1'; dato<=temp; estado<=stop2; cnt<=0; else cnt<=cnt+1; estado<=stop; end if;
				when stop2=>
					if cnt=7 then cnt<=0; n<=0; estado <= idle; else cnt<=cnt+1; estado <= stop2; end if;
			end case;
		end if;
	end process;
end a_rx_uart;
