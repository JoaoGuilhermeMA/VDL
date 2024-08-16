library verilog;
use verilog.vl_types.all;
entity BCDDoisEntreCinco_vlg_sample_tst is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end BCDDoisEntreCinco_vlg_sample_tst;
