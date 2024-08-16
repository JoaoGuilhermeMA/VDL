library verilog;
use verilog.vl_types.all;
entity BCDDoisEntreCinco is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        DoisEntreCinco  : out    vl_logic_vector(4 downto 0)
    );
end BCDDoisEntreCinco;
