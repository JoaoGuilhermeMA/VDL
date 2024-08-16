LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY paridadePar IS
	PORT( paridade: IN STD_LOGIC_VECTOR(0 TO 2);
			saida: OUT STD_LOGIC_VECTOR(0 TO 1));
			
END paridadePar;

ARCHITECTURE Comportamento OF paridadePar IS
BEGIN

	WITH paridade SELECT
		saida <= "10" WHEN "011",
		"10" WHEN "101",
		"10" WHEN "110",
		"01" WHEN OTHERS;


END Comportamento;