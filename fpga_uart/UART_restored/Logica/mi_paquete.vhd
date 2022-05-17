library ieee;
use ieee.std_logic_1164.all;
package mi_paquete is
component contador is
	generic (cnt_max	: integer :=	6; nbits: integer := 3);
	port (
		clk_50Mhz,reset	: in  std_logic:='0';
		clk_out	: out  std_logic:='0';
		q : out std_logic_vector (nbits-1 downto 0));
end component;
COMPONENT antirebote
	GENERIC ( max_cnt : INTEGER := 10000000 );
	PORT
	(
		tecla_in		:	 IN STD_LOGIC;
		clk		:	 IN STD_LOGIC;
		tecla_out		:	 OUT STD_LOGIC
	);
END COMPONENT;
component rom_interna_ascii IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END component; 
component rom_lcd is	
	port
	(
		clk_50Mhz,reset	: in  std_logic:='0';
		lcd_data	: out std_logic_vector (7 downto 0);
		lcd_enable, lcd_rw, lcd_rs : out std_logic
	);
end component;
component lcd_ctrl is
	port
	(
		caracter: in std_logic_vector (7 downto 0);
		clk,reset	: in  std_logic:='1';
		lcd_data	: out std_logic_vector (7 downto 0);
		lcd_enable, lcd_rw, lcd_rs : out std_logic;
		address : out std_logic_vector (6 downto 0)-- dirección de un cartel de 80 caracteres
		
	);
end component;
end mi_paquete;

