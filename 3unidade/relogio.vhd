library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY relogio IS 
    PORT (
        Sclock : IN std_logic;     
        nRst : IN std_logic;     
        advance_sec : IN std_logic; -- Botão para avançar segundos manualmente
        seg_u  : OUT std_logic_vector(6 DOWNTO 0); 
        seg_d  : OUT std_logic_vector(6 DOWNTO 0); 
        min_u  : OUT std_logic_vector(6 DOWNTO 0); 
        min_d  : OUT std_logic_vector(6 DOWNTO 0); 
        hora_u : OUT std_logic_vector(6 DOWNTO 0); 
        hora_d : OUT std_logic_vector(6 DOWNTO 0) 
    );
END relogio;

ARCHITECTURE comport OF relogio IS

    SIGNAL s, m : integer RANGE 0 TO 59;  
    SIGNAL h : integer RANGE 0 TO 23;  

    SIGNAL seg_u_int, seg_d_int, min_u_int, min_d_int, hora_u_int, hora_d_int : integer;

BEGIN
    PROCESS(Sclock, nRst)
    BEGIN
        IF nRst = '0' THEN
            s <= 0;
            m <= 0;
            h <= 0;
        ELSIF rising_edge(Sclock) THEN
            -- Avançar manualmente os segundos
            IF advance_sec = '1' THEN
                IF s >= 59 THEN
                    s <= 0;
                    IF m = 59 THEN
                        m <= 0;
                        IF h = 23 THEN
                            h <= 0;
                        ELSE
                            h <= h + 1;
                        END IF;
                    ELSE
                        m <= m + 1;
                    END IF;
                ELSE
                    s <= s + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    seg_u_int <= s MOD 10;
    seg_d_int <= s / 10;
    min_u_int <= m MOD 10;
    min_d_int <= m / 10;
    hora_u_int <= h MOD 10;
    hora_d_int <= h / 10;

    DECOD_0: entity work.decod PORT MAP(entradas => std_logic_vector(to_unsigned(seg_u_int, 4)), bcd => seg_u);
    DECOD_1: entity work.decod PORT MAP(entradas => std_logic_vector(to_unsigned(seg_d_int, 4)), bcd => seg_d);
    DECOD_2: entity work.decod PORT MAP(entradas => std_logic_vector(to_unsigned(min_u_int, 4)), bcd => min_u);
    DECOD_3: entity work.decod PORT MAP(entradas => std_logic_vector(to_unsigned(min_d_int, 4)), bcd => min_d);
    DECOD_4: entity work.decod PORT MAP(entradas => std_logic_vector(to_unsigned(hora_u_int, 4)), bcd => hora_u);
    DECOD_5: entity work.decod PORT MAP(entradas => std_logic_vector(to_unsigned(hora_d_int, 4)), bcd => hora_d);

END comport;
