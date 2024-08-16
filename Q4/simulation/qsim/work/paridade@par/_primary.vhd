library verilog;
use verilog.vl_types.all;
entity paridadePar is
    port(
        paridade        : in     vl_logic_vector(0 to 2);
        saida           : out    vl_logic_vector(0 to 1)
    );
end paridadePar;
