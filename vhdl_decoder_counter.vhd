library IEEE;
use IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;

entity vhdl_decoder_counter is 
port
(
	SW          :  in std_logic_vector(3 downto 0);
	DISP0_D     : out std_logic_vector(7 downto 0)
);
end vhdl_decoder_counter;

architecture hardware of vhdl_decoder_counter is
begin
	with SW select
		DISP0_D <= 	"00111111" WHEN "0000",
						"00000110" WHEN "0001",
						"01011011" WHEN "0010",
						"01001111" WHEN "0011",
						"01100110" WHEN "0100",
						"01101101" WHEN "0101",
						"01111101" WHEN "0110",
						"00100111" WHEN "0111",
						"01111111" WHEN "1000",
						"01101111" WHEN "1001",
						"10000000" WHEN OTHERS;
end hardware;
