library ieee;
use ieee.std_logic_1164.all;

ENTITY decod IS
    PORT (
        entradas : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);  -- Número BCD (4 bits)
        bcd      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)  -- Sinal de 7 segmentos
    );
END decod;

ARCHITECTURE comportamento OF decod IS
BEGIN
    PROCESS(entradas)
    BEGIN 
        CASE entradas IS
            WHEN "0000" => bcd <= "0000001";  -- 0
            WHEN "0001" => bcd <= "1001111";  -- 1
            WHEN "0010" => bcd <= "0010010";  -- 2
            WHEN "0011" => bcd <= "0000110";  -- 3
            WHEN "0100" => bcd <= "1001100";  -- 4
            WHEN "0101" => bcd <= "0100100";  -- 5
            WHEN "0110" => bcd <= "0100000";  -- 6
            WHEN "0111" => bcd <= "0001111";  -- 7
            WHEN "1000" => bcd <= "0000000";  -- 8
            WHEN "1001" => bcd <= "0000100";  -- 9
            WHEN OTHERS => bcd <= "1111111";  -- (blank)
        END CASE;
    END PROCESS;

END comportamento;
