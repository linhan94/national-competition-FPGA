/*
* This is a file generated by ARM Cortex-M3 wizard.
* Please do not edit this file!
* Generated time: 06/04/2014 18:57:30
* Version: Primace 6.0 master
* Wizard name: ARM Cortex-M3 1.0a
*
*/
// ============================================================
// File Name: mcu_armcm3.v
// IP core : armcm3
// Device name: M7A12N0F484C7
// ============================================================

module mcu_armcm3(
    fp2soc_rst_n,
    fp_clk_sys,
    fp_clk_arm,
    fp_clk_ddrc,
    gpio_0_out_o,
    gpio_0_oe_o,
    gpio_0_in_i,
    spi0_mosi,
    spi0_sck,
    spi0_ssn,
    spi0_miso,
    clk_ahb_fp0,
    rst_ahb_fp0_n,
    fp0_m_ahb_mastlock,
    fp0_m_ahb_prot,
    fp0_m_ahb_size,
    fp0_m_ahb_addr,
    fp0_m_ahb_write,
    fp0_m_ahb_burst,
    fp0_m_ahb_trans,
    fp0_m_ahb_wdata,
    fp0_m_ahb_ready,
    fp0_m_ahb_resp,
    fp0_m_ahb_rdata,
    fp0_s_ahb_mastlock,
    fp0_s_ahb_prot,
    fp0_s_ahb_size,
    fp0_s_ahb_sel,
    fp0_s_ahb_addr,
    fp0_s_ahb_write,
    fp0_s_ahb_burst,
    fp0_s_ahb_trans,
    fp0_s_ahb_wdata,
    fp0_s_ahb_readyout,
    fp0_s_ahb_resp,
    fp0_s_ahb_rdata
);

input fp2soc_rst_n;
input fp_clk_sys;
input fp_clk_arm;
input fp_clk_ddrc;
output [31:0] gpio_0_out_o;
output [31:0] gpio_0_oe_o;
input [31:0] gpio_0_in_i;
output spi0_mosi;
output spi0_sck;
output spi0_ssn;
input spi0_miso;
input clk_ahb_fp0;
input rst_ahb_fp0_n;
input fp0_m_ahb_mastlock;
input [3:0] fp0_m_ahb_prot;
input [2:0] fp0_m_ahb_size;
input [31:0] fp0_m_ahb_addr;
input fp0_m_ahb_write;
input [2:0] fp0_m_ahb_burst;
input [1:0] fp0_m_ahb_trans;
input [31:0] fp0_m_ahb_wdata;
output fp0_m_ahb_ready;
output fp0_m_ahb_resp;
output [31:0] fp0_m_ahb_rdata;
output fp0_s_ahb_mastlock;
output [3:0] fp0_s_ahb_prot;
output [2:0] fp0_s_ahb_size;
output fp0_s_ahb_sel;
output [31:0] fp0_s_ahb_addr;
output fp0_s_ahb_write;
output [2:0] fp0_s_ahb_burst;
output [1:0] fp0_s_ahb_trans;
output [31:0] fp0_s_ahb_wdata;
input fp0_s_ahb_readyout;
input fp0_s_ahb_resp;
input [31:0] fp0_s_ahb_rdata;

wire dll_clkin;
wire dll_clkout0;
wire dll_clkout1;
wire dll_clkout2;
wire dll_clkout3;
assign dll_clkin = fp_clk_ddrc;

M7S_DLL #(
        .cfg_dllphase0_ctrl (1'b0),
        .cfg_dllpd_sel (2'b01),
        .cfg_mrst_sel (2'b00),
        .dll_sel ("2"),
        .dll_bypass (1'b0),
        .dll_msel0 (4'b0000),
        .dll_msel1 (4'b0100),
        .dll_msel2 (4'b1000),
        .dll_msel3 (4'b1011),
        .dll_lfm (1'b1),
        .dll_cpsel (2'b01),
        .dll_ibufsel (2'b10),
        .dll_mfb0_trm (3'b000),
        .dll_mfb16_trm (3'b000),
        .dll_ldrange (1'b1),
        .dll_fle_en (1'b1),
        .dll_force_lock (1'b0),
        .dll_atest_en (1'b0),
        .dll_dtest_en (1'b0),
        .dll_atest_sel (1'b0),
        .dll_dtest_sel (1'b0),
        .dll_bk (2'b00),
        .dyn_dll_rst (1'b0),
        .dyn_dll_pwrdown (1'b0)
)
dll_u0 (
        .clkin (dll_clkin),
        .pwrdown (),
        .fp_dll_rst (),
        .clkout0 (dll_clkout0),
        .clkout1 (dll_clkout1),
        .clkout2 (dll_clkout2),
        .clkout3 (dll_clkout3),
        .locked (),
        .dll_msel0_user ()
);

M7S_SOC #(
        .use_arm (1'b1),
        .use_clk_arm (1'b1),
        .use_pbus0 (1'b1),
        .use_pbus1 (1'b0),
        .use_on_chip_eth (1'b0),
        .use_on_chip_usb (1'b0),
        .use_on_chip_ddr_ctrl (1'b1),
        .use_on_chip_adc (12'b000000000000),
        .use_uart_io (1'b1),
        .use_arm_nmi (1'b0),
        .program_file ("lcd_demo_m7.hex")
)
u_soc (
        .fp2soc_rst_n (fp2soc_rst_n),
        .c2r1_dll_clk (dll_clkout0),
        .fp_clk_sys (fp_clk_sys),
        .fp_clk_adc (),
        .fp_clk_arm (fp_clk_arm),
        .fp_lvds_sclk (),
        .fp_clk_usb (),
        .clk_eth_tx (),
        .gpio_0_out_o (gpio_0_out_o),
        .gpio_0_oe_o (gpio_0_oe_o),
        .gpio_0_in_i (gpio_0_in_i),
        .i2c0_scl_oe_o (),
        .i2c0_sda_oe_o (),
        .i2c0_scl_i (),
        .i2c0_sda_i (),
        .i2c1_scl_oe_o (),
        .i2c1_sda_oe_o (),
        .i2c1_scl_i (),
        .i2c1_sda_i (),
        .uart0_rts_o (),
        .uart0_txd_o (),
        .uart0_cts_i (),
        .uart0_rxd_i (),
        .uart1_rts_o (),
        .uart1_txd_o (),
        .uart1_cts_i (),
        .uart1_rxd_i (),
        .spi0_mosi (spi0_mosi),
        .spi0_sck (spi0_sck),
        .spi0_ssn (spi0_ssn),
        .spi0_miso (spi0_miso),
        .spi1_mosi (),
        .spi1_sck (),
        .spi1_ssn (),
        .spi1_miso (),
        .pad_can0_o_clk (),
        .pad_can0_o_tx1 (),
        .pad_can0_o_tx0 (),
        .pad_can0_oen_tx1 (),
        .pad_can0_oen_tx0 (),
        .pad_can0_i_rx0 (),
        .pad_can1_o_clk (),
        .pad_can1_o_tx1 (),
        .pad_can1_o_tx0 (),
        .pad_can1_oen_tx1 (),
        .pad_can1_oen_tx0 (),
        .pad_can1_i_rx0 (),
        .clk_ahb_fp0 (clk_ahb_fp0),
        .rst_ahb_fp0_n (rst_ahb_fp0_n),
        .fp0_m_ahb_mastlock (fp0_m_ahb_mastlock),
        .fp0_m_ahb_prot (fp0_m_ahb_prot),
        .fp0_m_ahb_size (fp0_m_ahb_size),
        .fp0_m_ahb_addr (fp0_m_ahb_addr),
        .fp0_m_ahb_write (fp0_m_ahb_write),
        .fp0_m_ahb_burst (fp0_m_ahb_burst),
        .fp0_m_ahb_trans (fp0_m_ahb_trans),
        .fp0_m_ahb_wdata (fp0_m_ahb_wdata),
        .fp0_m_ahb_ready (fp0_m_ahb_ready),
        .fp0_m_ahb_resp (fp0_m_ahb_resp),
        .fp0_m_ahb_rdata (fp0_m_ahb_rdata),
        .fp0_s_ahb_mastlock (fp0_s_ahb_mastlock),
        .fp0_s_ahb_prot (fp0_s_ahb_prot),
        .fp0_s_ahb_size (fp0_s_ahb_size),
        .fp0_s_ahb_sel (fp0_s_ahb_sel),
        .fp0_s_ahb_addr (fp0_s_ahb_addr),
        .fp0_s_ahb_write (fp0_s_ahb_write),
        .fp0_s_ahb_burst (fp0_s_ahb_burst),
        .fp0_s_ahb_trans (fp0_s_ahb_trans),
        .fp0_s_ahb_wdata (fp0_s_ahb_wdata),
        .fp0_s_ahb_readyout (fp0_s_ahb_readyout),
        .fp0_s_ahb_rdata (fp0_s_ahb_rdata),
        .clk_ahb_fp1 (),
        .rst_ahb_fp1_n (),
        .fp1_m_ahb_mastlock (),
        .fp1_m_ahb_prot (),
        .fp1_m_ahb_size (),
        .fp1_m_ahb_addr (),
        .fp1_m_ahb_write (),
        .fp1_m_ahb_burst (),
        .fp1_m_ahb_trans (),
        .fp1_m_ahb_wdata (),
        .fp1_m_ahb_ready (),
        .fp1_m_ahb_resp (),
        .fp1_m_ahb_rdata (),
        .fp1_s_ahb_mastlock (),
        .fp1_s_ahb_prot (),
        .fp1_s_ahb_size (),
        .fp1_s_ahb_sel (),
        .fp1_s_ahb_addr (),
        .fp1_s_ahb_write (),
        .fp1_s_ahb_burst (),
        .fp1_s_ahb_trans (),
        .fp1_s_ahb_wdata (),
        .fp1_s_ahb_readyout (),
        .fp1_s_ahb_rdata (),
        .fp_INTNMI ()
);

endmodule

// ============================================================
//                  armcm3 Setting
//
// Warning: This part is read by Primace, please don't modify it.
// ============================================================
// Device          : M7A12N0F484C7
// Module          : mcu_armcm3
// IP core         : armcm3
// IP Version      : 1

// UseGPIO         : true
// UseI2C0         : false
// UseI2C1         : false
// UseUART0        : false
// UseUART1        : false
// UseSPI0         : true
// UseSPI1         : false
// UseCAN0         : false
// UseCAN1         : false
// UsePBUS0        : true
// UsePBUS1        : false
// UseINT          : false
// UseDDRC         : true
// UseUSB          : false
// UseEMAC         : false
// UseADC0         : false
// UseADC1         : false
// UseADC2         : false
// UseADC3         : false
// UseADC4         : false
// UseADC5         : false
// UseADC6         : false
// UseADC7         : false
// UseADC8         : false
// UseADC9         : false
// UseADC10        : false
// UseADC11        : false
// UseUART2        : true
// UseNMIPad       : false
// SysclkFreq      : 200
// UseArmClk       : true
// UseAdcClk       : false
// UseDdrcLocked   : false
// UseSocReset     : true
// HexFile         : lcd_demo_m7.hex