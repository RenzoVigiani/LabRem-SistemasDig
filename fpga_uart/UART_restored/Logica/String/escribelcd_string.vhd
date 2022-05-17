library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity escribelcd_string is
	generic
	(
	cadena	:string 
	);

	port
	(
		clk,reset	: in  std_logic:='0';
		lcd_data	: out std_logic_vector (7 downto 0);
		lcd_enable, lcd_rw, lcd_rs : out std_logic
	);
end escribelcd_string;

architecture a_escribelcd of escribelcd_string is
type mef is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,S10,S11);
begin

	process(clk,reset) is 
	variable estado: mef;
	variable cnt: integer:=1;
	begin 
		--
		if (reset='0') then estado:=s0;
		elsif (rising_edge(clk)) then
			case estado is
				when s0 => estado:=s1; --seteo del dysplay
					LCD_DATA	<= "00111100";	LCD_ENABLE<='0'; LCD_RW <= '0'; LCD_RS	<= '0'; 
				
				when s1 => estado:=s2; --wait hasta que clk=1
					LCD_DATA	<= "00111100";	LCD_ENABLE	<= '1';LCD_RW <= '0'; LCD_RS <= '0';
				
				when s2 => estado:=s3;--reseteo y borrado de la pantalla completa
					LCD_DATA	<= "00000001"; 	LCD_ENABLE	<= '0'; LCD_RW <= '0'; LCD_RS	<= '0';
				
				when s3 => estado:=s4;--wait hasta que clk=1
					LCD_DATA	<= "00000001"; LCD_ENABLE	<= '1'; LCD_RW <= '0'; LCD_RS	<= '0'; 
					
				when s4 => estado:=s5;--wait hasta que clk=1
					LCD_DATA	<= "00000001"; LCD_ENABLE	<= '0'; LCD_RW <= '0'; LCD_RS	<= '0'; 
					
				when s5 => estado:=s6;--encendido y preparacion para mandar caracteres
					LCD_DATA	<= "00001111"; LCD_ENABLE	<= '0'; LCD_RW <= '0'; LCD_RS	<= '0';

				when s6 => estado:=s7;--wait hasta que clk=1
					LCD_DATA	<= "00001111"; LCD_ENABLE	<= '1'; LCD_RW <= '0'; LCD_RS	<= '0';
				
				
				when s7 => estado:=s8;
					if cnt <= cadena'length then
						LCD_DATA	<= std_logic_vector(to_unsigned (character'pos(cadena(cnt)),8));-- TRANSFORMO CADA ELEMENTO DEL STRING
						LCD_ENABLE	<= '1'; LCD_RW <= '0'; LCD_RS <= '1';
					else estado:=s9; cnt:=1;
					end if;
				when s8 => estado:=s7;
					LCD_ENABLE	<= '0'; LCD_RW	<= '0'; LCD_RS	<= '1';	cnt:=cnt+1; --	LCD_DATA	<= "00011111";
				when others => estado:=s9;--estado de espera hasta que se presione reset nuevamente
			end case;
		end if;
	end process; 
end a_escribelcd;