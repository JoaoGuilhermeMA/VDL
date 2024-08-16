ENTITY acionamentoMaquinas IS
PORT (a,b,c,d : IN BIT;
		m1,m2,m3,m4: OUT BIT);
END acionamentoMaquinas;

ARCHITECTURE Comportamento OF acionamentoMaquinas IS
BEGIN

	m1 <= a;
	m2 <= b;
	m3 <= (not a AND c) OR (not b AND c);
	m4 <= (not a AND not c AND d) OR (not a AND not b AND d) OR (not b AND not c AND d);

END Comportamento;