 Library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 -- Entidad 
 Entity tx_uart is
	 port 
		(
		clk,reset,enable: 	in std_logic:='0';
		send 		: in std_logic;
			dato:		in std_logic_vector (7 downto 0);
		tx,done: 	out std_logic -- finaliza enviado
		);
end tx_uart;

-- Arquitectura
Architecture a_tx_uart of tx_uart is
-- Declaración de señales

type mef is (idle, start, d0,d1,d2,d3,d4,d5,d6,d7,stop);
signal estado:mef;

begin
	process(clk,reset,enable,send)
	begin
		if send = '0' then estado <= idle; done <= '0'; 
		elsif send ='1' and enable ='1' then -- cuando enable es 1 se habilita la transmisión
			if rising_edge (clk) then
				case estado is
					when idle => estado <= start; 
					when start => estado <= d0; 
					when d0 => estado <= d1; 
					when d1 => estado <= d2; 
					when d2 => estado <= d3; 
					when d3 => estado <= d4; 
					when d4 => estado <= d5; 
					when d5 => estado <= d6; 
					when d6 => estado <= d7; 
					when d7 => estado <= stop; 
					when stop => estado <= idle; done <= '1';
				end case;
			end if;
		end if;
	end process;
	process(estado,dato)
		begin
			case estado is
				when idle => tx <= '1';
				when start => tx <= '0' ;
				when d0 => tx <= dato(0);
				when d1 => tx <= dato(1);
				when d2 => tx <= dato(2);
				when d3 => tx <= dato(3);
				when d4 => tx <= dato(4);
				when d5 => tx <= dato(5);
				when d6 => tx <= dato(6);
				when d7 => tx <= dato(7);
				when stop => tx <= '0';
			end case;
	end process; 
end a_tx_uart;