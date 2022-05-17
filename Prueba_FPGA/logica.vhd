library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE WORK.mi_paquete.ALL;
USE work.paquete_uart.all;
entity logica is
	port	
	(
		clk_50Mhz  : 	in std_logic; --50mhz
		reset      : 	in std_logic;
		entradas	  :	in std_logic_vector(1 downto 0);
		data_rx	  :	in std_logic_vector(7 downto 0);
		done_char_tx		:	in std_logic;
		enable_tx  	: 	out std_logic:='0';
		send_tx	  	: 	out std_logic:='0';
		leds		  	: 	out std_logic_vector(1 downto 0):="00";-- leds
		salidas     :	out std_logic_vector(1 downto 0):="00";-- salidas - arduino
		data_tx   	: 	out std_logic_vector(7 downto 0):=x"00"-- que se envía al arduino
	);
end entity;

architecture a_logica of logica is
signal enable_s,send_s,clk_cambio_char: std_logic;
signal string_completo: std_logic;
constant mensaje : string :="Holas";
type mef is (s0,s1,s2,s3);
signal estado:mef;
begin

--cambio de string a std_logic_vector
process(clk_cambio_char,entradas,reset)
variable cnt: integer:=1;
begin
	if reset = '1' then estado <= s0;
	elsif rising_edge (clk_cambio_char) then -- clk_cambio_char hace un flanco por cada envío de caracter.
		if string_completo ='0' then
		case estado is
			when s0 =>  estado <= s1; 
			when s1 => 	estado <= s2; 
							if cnt <= mensaje'length then
								data_tx	<= std_logic_vector(to_unsigned (character'pos(mensaje(cnt)),8));
								send_tx <= '1';
								enable_tx <= '1';
							else 
								estado<=s3;
								cnt:=1;
							end if;
			when s2 => 	estado <= s1; 
							cnt:=cnt+1;
							send_tx <= '0';
							enable_tx <= '0';
			when s3 => 	estado <= s0; 
							string_completo <= '1';
			when others => estado<=s0;
		end case;
		end if;
	end if;
	if entradas(0)='1' then	string_completo <= '0'; end if;

end process;

-- control de envío de toda la cadena
-- clk 115200  para wifi o 9600 para bt -- generic para testbench 160
	ut_clk_tx: contador generic map (5200*11,1) port map (clk_50MHz,reset,clk_cambio_char,open); -- cnt max = 434 =27*16 -- 115200
-- control fin de palabra	

with entradas select 
			leds <=	"00" when "00",
						"01" when "01",
						"10" when "10",
						"11" when "11";	
with entradas select 
			salidas <=	"00" when "00",
						"01" when "01",
						"10" when "10",
						"11" when "11";	
					

End a_logica;
