library verilog;
use verilog.vl_types.all;
entity acionamentoMaquinas is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        m1              : out    vl_logic;
        m2              : out    vl_logic;
        m3              : out    vl_logic;
        m4              : out    vl_logic
    );
end acionamentoMaquinas;
