library verilog;
use verilog.vl_types.all;
entity CLKBUFDS is
    port(
        padp            : in     vl_logic;
        padn            : in     vl_logic;
        o               : out    vl_logic
    );
end CLKBUFDS;
