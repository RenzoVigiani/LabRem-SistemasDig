library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity contador is
	generic (cnt_max	: integer :=	6; nbits: integer := 3);
	port (
		clk_50Mhz,reset	: in  std_logic:='0';
		clk_out	: out  std_logic:='0';
		q : out std_logic_vector (nbits-1 downto 0));
end contador;
architecture a_contador of contador is
begin
	process(clk_50Mhz,reset) is 
	variable cnt: integer range 0 to cnt_max;
	begin
	if reset ='1' then cnt:= 0;
	 elsif rising_edge(clk_50Mhz) then cnt:=cnt+1;
			if (cnt<(cnt_max/2)) then clk_out<='0';
			elsif (cnt<cnt_max) then clk_out<='1';
			elsif cnt=cnt_max then cnt:= 0; clk_out<='0';
			end if;		
	 end if;
	 
	 q<= std_logic_vector (to_unsigned (cnt, nbits));
	end process; 

end a_contador;