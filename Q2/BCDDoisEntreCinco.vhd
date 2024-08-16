LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY BCDDoisEntreCinco IS
	PORT( bcd: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			DoisEntreCinco: OUT STD_LOGIC_VECTOR(4 DOWNTO 0));
			
END BCDDoisEntreCinco;

ARCHITECTURE Comportamento OF BCDDoisEntreCinco IS 
BEGIN
	WITH bcd SELECT
		DoisEntreCinco <= "00011" WHEN "0000",
				"00101" WHEN "0001",
				"00110" WHEN "0010",
				"01001" WHEN "0011",
				"01010" WHEN "0100",
				"01100" WHEN "0101",
				"10001" WHEN "0110",
				"10010" WHEN "0111",
				"10100" WHEN "1000",
				"11000" WHEN "1001",
				"00000" WHEN OTHERS;
END Comportamento;