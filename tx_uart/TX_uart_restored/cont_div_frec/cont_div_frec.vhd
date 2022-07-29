library ieee;--Librerías
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

	entity contador_div_frec is --Entidad
		generic (cnt_max	: integer :=	6; nbits : integer := 3); --los generics son parámetros constantes para todo el proyecto
	-- con el generic cnt_max se define el divisor de frecuencia. Cambiando este valor cambiamos 
	-- la frecuencia de la salida
		
		port 
		(
			clk_50Mhz,reset : in  std_logic:='0';
			clk_out	: out  std_logic:='0';
			q : out std_logic_vector (nbits-1 downto 0)
		);

	end contador_div_frec;

architecture a_contador_div_frec of contador_div_frec is
	--signal cnt : natural range 0 to cnt_max;
		
		begin
--Un process se usa para emular sistemas secuenciales
--Siempre que las señales entre paréntesis al lado de "process" (lista de sensibilidad)
--se modifican se ejecuta la lógica que está entre el begin y el
--end process.
		process(clk_50Mhz,reset) is
			variable cnt: integer range 0 to cnt_max; --las variables son señales intermedias que sólo se emplean en procesos
				begin
					if reset ='0' then cnt:=0; -- un cero en el reset borra el contador, un 1 permite que cuente
					elsif rising_edge(clk_50Mhz) then cnt:=cnt+1;
		
					if (cnt<(cnt_max/2)) then clk_out<='0';
					elsif (cnt<cnt_max) then clk_out<='1';
					elsif cnt=cnt_max then cnt:= 0; clk_out<='0';
					end if;		
					
					end if;
					q <= std_logic_vector (to_unsigned (cnt, nbits));
		end process; 
end a_contador_div_frec;