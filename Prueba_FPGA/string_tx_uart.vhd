library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity string_tx_uart is
	generic
	(
	cadena	:string 
	);

	port
	(
		clk,reset,enable	: in  std_logic:='0';
		enable_tx : out std_logic:='0';
		tx_data	: out std_logic_vector (7 downto 0)
	);
end string_tx_uart;

architecture a_string_tx_uart of string_tx_uart is
type mef is (s0,s1,s2,s3);
begin
	process(reset,enable) is 
	variable estado: mef;
	variable cnt: integer:=1;
	begin 
		if (reset='1') then estado:=s0;
		elsif (rising_edge(clk)) and enable ='1' then
			case estado is		
				when s0 => 
					estado:=s1; --seteo del dysplay
				when s1 => 
					estado:=s2;-- TRANSFORMO CADA ELEMENTO DEL STRING
					if cnt <= cadena'length then
						tx_data	<= std_logic_vector(to_unsigned (character'pos(cadena(cnt)),8));
						enable_tx <= '1';
					else estado:=s3; cnt:=1;
					end if;
				when s2 => 
					estado:=s1;
					cnt:=cnt+1; 
				when s3 => 
					estado:=s0;
					enable_tx <= '0';
				when others => estado:=s3;--estado de espera hasta que se presione reset nuevamente
			end case;
		end if;
	end process; 
end a_string_tx_uart;