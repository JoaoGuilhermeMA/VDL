library verilog;
use verilog.vl_types.all;
entity grayJohnson is
    port(
        gray            : in     vl_logic_vector(0 to 3);
        johnson         : out    vl_logic_vector(0 to 4)
    );
end grayJohnson;
