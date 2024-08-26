library ieee;
use ieee.std_logic_1164.all;

ENTITY decod IS
    PORT (
        entradas : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);  -- Número BCD
        bcd      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)  -- Sinal de 7 segmentos
    );
END decod;

ARCHITECTURE comportamento OF decod IS
BEGIN
    WITH entradas SELECT
	 bcd <= "0111111" WHEN "0000", -- 0
			 "0000110" WHEN "0001", -- 1
			 "1011011" WHEN "0010", -- 2
			 "1001111" WHEN "0011", -- 3
			 "1100110" WHEN "0100", -- 4
			 "1101101" WHEN "0101", -- 5
			 "1111101" WHEN "0110", -- 6
			 "0000111" WHEN "0111", -- 7
			 "1111111" WHEN "1000", -- 8
			 "1101111" WHEN "1001", -- 9
			 "0000000" WHEN OTHERS; -- (blank)

END comportamento;

