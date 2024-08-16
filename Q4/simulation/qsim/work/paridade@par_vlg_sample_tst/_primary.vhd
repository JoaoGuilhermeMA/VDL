library verilog;
use verilog.vl_types.all;
entity paridadePar_vlg_sample_tst is
    port(
        paridade        : in     vl_logic_vector(0 to 2);
        sampler_tx      : out    vl_logic
    );
end paridadePar_vlg_sample_tst;
