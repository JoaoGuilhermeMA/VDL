entity teste is
    port(
        a0, b0, a1, b1, te0: in bit;
        saidas: out bit_vector(0 to 6)
    );
end teste;

architecture comportamento of teste is
    SIGNAL sel: bit_vector(0 to 2); 
    SIGNAL T: bit;
begin 
    sel(0) <= te0 xor a0 xor b0;
    T <= (te0 and a0) or (te0 and b0) or (a0 and b0);
    sel(1) <= T xor a1 xor b1;
    sel(2) <= (T and a1) or (T and b1) or (a1 and b1);

    WITH sel SELECT
        saidas <=        
            "1111110" WHEN "000", 
            "0110000" WHEN "001", 
            "1101101" WHEN "010", 
            "1111001" WHEN "011", 
            "0110011" WHEN "100", 
            "1011011" WHEN "101", 
            "1011111" WHEN "110", 
            "1110000" WHEN "111", 
            "1111111" WHEN OTHERS; 
end comportamento;
