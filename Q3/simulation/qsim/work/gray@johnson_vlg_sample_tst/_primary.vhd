library verilog;
use verilog.vl_types.all;
entity grayJohnson_vlg_sample_tst is
    port(
        gray            : in     vl_logic_vector(0 to 3);
        sampler_tx      : out    vl_logic
    );
end grayJohnson_vlg_sample_tst;
