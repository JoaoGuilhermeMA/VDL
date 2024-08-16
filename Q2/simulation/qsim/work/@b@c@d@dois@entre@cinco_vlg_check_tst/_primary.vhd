library verilog;
use verilog.vl_types.all;
entity BCDDoisEntreCinco_vlg_check_tst is
    port(
        DoisEntreCinco  : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end BCDDoisEntreCinco_vlg_check_tst;
