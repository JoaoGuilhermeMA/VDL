library verilog;
use verilog.vl_types.all;
entity grayJohnson_vlg_check_tst is
    port(
        johnson         : in     vl_logic_vector(0 to 4);
        sampler_rx      : in     vl_logic
    );
end grayJohnson_vlg_check_tst;
