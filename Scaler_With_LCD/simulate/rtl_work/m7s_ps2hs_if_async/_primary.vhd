library verilog;
use verilog.vl_types.all;
entity m7s_ps2hs_if_async is
    generic(
        SIM_FIFO        : integer := 0;
        IDLE            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        BUSY            : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        NONSEQ          : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        SEQ             : vl_logic_vector(0 to 1) := (Hi1, Hi1);
        SINGLE          : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        INCR            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        WRAP4           : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        INCR4           : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        WRAP8           : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        INCR8           : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        WRAP16          : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        INCR16          : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1);
        P_IDLE          : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        P_WSTA          : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        P_RSTA          : vl_logic_vector(0 to 1) := (Hi1, Hi1);
        H_IDLE          : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        H_WSTA          : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        H_RSTA          : vl_logic_vector(0 to 1) := (Hi1, Hi1)
    );
    port(
        clk_pbus        : in     vl_logic;
        rst_pbus_n      : in     vl_logic;
        clk_ahb         : in     vl_logic;
        rst_ahb_n       : in     vl_logic;
        pbus_aid        : in     vl_logic_vector(7 downto 0);
        pbus_addr       : in     vl_logic_vector(31 downto 0);
        pbus_write      : in     vl_logic;
        pbus_length     : in     vl_logic_vector(3 downto 0);
        pbus_wbyte_en   : in     vl_logic_vector(3 downto 0);
        pbus_type_burst : in     vl_logic_vector(1 downto 0);
        pbus_avalid     : in     vl_logic;
        pbus_aready     : out    vl_logic;
        pbus_wdata      : in     vl_logic_vector(31 downto 0);
        pbus_wvalid     : in     vl_logic;
        pbus_wready     : out    vl_logic;
        pbus_did        : out    vl_logic_vector(7 downto 0);
        pbus_rdata      : out    vl_logic_vector(31 downto 0);
        pbus_rready     : in     vl_logic;
        pbus_rvalid     : out    vl_logic;
        ahb_mastlock    : out    vl_logic;
        ahb_prot        : out    vl_logic_vector(3 downto 0);
        ahb_size        : out    vl_logic_vector(2 downto 0);
        ahb_sel         : out    vl_logic;
        ahb_addr        : out    vl_logic_vector(31 downto 0);
        ahb_write       : out    vl_logic;
        ahb_burst       : out    vl_logic_vector(2 downto 0);
        ahb_trans       : out    vl_logic_vector(1 downto 0);
        ahb_wdata       : out    vl_logic_vector(31 downto 0);
        ahb_readyin     : out    vl_logic;
        ahb_readyout    : in     vl_logic;
        ahb_resp        : in     vl_logic;
        ahb_rdata       : in     vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SIM_FIFO : constant is 1;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of BUSY : constant is 1;
    attribute mti_svvh_generic_type of NONSEQ : constant is 1;
    attribute mti_svvh_generic_type of SEQ : constant is 1;
    attribute mti_svvh_generic_type of SINGLE : constant is 1;
    attribute mti_svvh_generic_type of INCR : constant is 1;
    attribute mti_svvh_generic_type of WRAP4 : constant is 1;
    attribute mti_svvh_generic_type of INCR4 : constant is 1;
    attribute mti_svvh_generic_type of WRAP8 : constant is 1;
    attribute mti_svvh_generic_type of INCR8 : constant is 1;
    attribute mti_svvh_generic_type of WRAP16 : constant is 1;
    attribute mti_svvh_generic_type of INCR16 : constant is 1;
    attribute mti_svvh_generic_type of P_IDLE : constant is 1;
    attribute mti_svvh_generic_type of P_WSTA : constant is 1;
    attribute mti_svvh_generic_type of P_RSTA : constant is 1;
    attribute mti_svvh_generic_type of H_IDLE : constant is 1;
    attribute mti_svvh_generic_type of H_WSTA : constant is 1;
    attribute mti_svvh_generic_type of H_RSTA : constant is 1;
end m7s_ps2hs_if_async;
