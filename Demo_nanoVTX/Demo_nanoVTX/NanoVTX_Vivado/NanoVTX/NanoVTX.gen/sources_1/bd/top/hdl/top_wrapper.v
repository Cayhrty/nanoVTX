//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Fri Sep 22 20:53:47 2023
//Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
//Command     : generate_target top_wrapper.bd
//Design      : top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_wrapper
   (ENABLE,
    FB_CLK,
    FIXED_IO_0_ddr_vrn,
    FIXED_IO_0_ddr_vrp,
    FIXED_IO_0_mio,
    FIXED_IO_0_ps_clk,
    FIXED_IO_0_ps_porb,
    FIXED_IO_0_ps_srstb,
    IIC_0_0_scl_io,
    IIC_0_0_sda_io,
    P0,
    P1,
    PL_LED,
    SN774_DIR,
    SN774_OE,
    SPI0_MISO_I_0,
    SPI0_MOSI_O_0,
    SPI0_SCLK_O_0,
    SPI0_SS_O_0,
    TXNRX,
    TX_FRAME,
    ad9361_reset,
    data_clk,
    dphy_clk_lp_n_0,
    dphy_clk_lp_p_0,
    dphy_data_hs_n_0,
    dphy_data_hs_p_0,
    dphy_data_lp_n_0,
    dphy_data_lp_p_0,
    mipi_phy_if_clk_hs_n_0,
    mipi_phy_if_clk_hs_p_0,
    raspicam_enable);
  output [0:0]ENABLE;
  output FB_CLK;
  inout FIXED_IO_0_ddr_vrn;
  inout FIXED_IO_0_ddr_vrp;
  inout [53:0]FIXED_IO_0_mio;
  inout FIXED_IO_0_ps_clk;
  inout FIXED_IO_0_ps_porb;
  inout FIXED_IO_0_ps_srstb;
  inout IIC_0_0_scl_io;
  inout IIC_0_0_sda_io;
  output [11:0]P0;
  output [11:0]P1;
  output [0:0]PL_LED;
  output [0:0]SN774_DIR;
  output [0:0]SN774_OE;
  input SPI0_MISO_I_0;
  output SPI0_MOSI_O_0;
  output SPI0_SCLK_O_0;
  output [0:0]SPI0_SS_O_0;
  output [0:0]TXNRX;
  output [0:0]TX_FRAME;
  output [0:0]ad9361_reset;
  input data_clk;
  input dphy_clk_lp_n_0;
  input dphy_clk_lp_p_0;
  input [1:0]dphy_data_hs_n_0;
  input [1:0]dphy_data_hs_p_0;
  input dphy_data_lp_n_0;
  input dphy_data_lp_p_0;
  input mipi_phy_if_clk_hs_n_0;
  input mipi_phy_if_clk_hs_p_0;
  output [0:0]raspicam_enable;

  wire [0:0]ENABLE;
  wire FB_CLK;
  wire FIXED_IO_0_ddr_vrn;
  wire FIXED_IO_0_ddr_vrp;
  wire [53:0]FIXED_IO_0_mio;
  wire FIXED_IO_0_ps_clk;
  wire FIXED_IO_0_ps_porb;
  wire FIXED_IO_0_ps_srstb;
  wire IIC_0_0_scl_i;
  wire IIC_0_0_scl_io;
  wire IIC_0_0_scl_o;
  wire IIC_0_0_scl_t;
  wire IIC_0_0_sda_i;
  wire IIC_0_0_sda_io;
  wire IIC_0_0_sda_o;
  wire IIC_0_0_sda_t;
  wire [11:0]P0;
  wire [11:0]P1;
  wire [0:0]PL_LED;
  wire [0:0]SN774_DIR;
  wire [0:0]SN774_OE;
  wire SPI0_MISO_I_0;
  wire SPI0_MOSI_O_0;
  wire SPI0_SCLK_O_0;
  wire [0:0]SPI0_SS_O_0;
  wire [0:0]TXNRX;
  wire [0:0]TX_FRAME;
  wire [0:0]ad9361_reset;
  wire data_clk;
  wire dphy_clk_lp_n_0;
  wire dphy_clk_lp_p_0;
  wire [1:0]dphy_data_hs_n_0;
  wire [1:0]dphy_data_hs_p_0;
  wire dphy_data_lp_n_0;
  wire dphy_data_lp_p_0;
  wire mipi_phy_if_clk_hs_n_0;
  wire mipi_phy_if_clk_hs_p_0;
  wire [0:0]raspicam_enable;

  IOBUF IIC_0_0_scl_iobuf
       (.I(IIC_0_0_scl_o),
        .IO(IIC_0_0_scl_io),
        .O(IIC_0_0_scl_i),
        .T(IIC_0_0_scl_t));
  IOBUF IIC_0_0_sda_iobuf
       (.I(IIC_0_0_sda_o),
        .IO(IIC_0_0_sda_io),
        .O(IIC_0_0_sda_i),
        .T(IIC_0_0_sda_t));
  top top_i
       (.ENABLE(ENABLE),
        .FB_CLK(FB_CLK),
        .FIXED_IO_0_ddr_vrn(FIXED_IO_0_ddr_vrn),
        .FIXED_IO_0_ddr_vrp(FIXED_IO_0_ddr_vrp),
        .FIXED_IO_0_mio(FIXED_IO_0_mio),
        .FIXED_IO_0_ps_clk(FIXED_IO_0_ps_clk),
        .FIXED_IO_0_ps_porb(FIXED_IO_0_ps_porb),
        .FIXED_IO_0_ps_srstb(FIXED_IO_0_ps_srstb),
        .IIC_0_0_scl_i(IIC_0_0_scl_i),
        .IIC_0_0_scl_o(IIC_0_0_scl_o),
        .IIC_0_0_scl_t(IIC_0_0_scl_t),
        .IIC_0_0_sda_i(IIC_0_0_sda_i),
        .IIC_0_0_sda_o(IIC_0_0_sda_o),
        .IIC_0_0_sda_t(IIC_0_0_sda_t),
        .P0(P0),
        .P1(P1),
        .PL_LED(PL_LED),
        .SN774_DIR(SN774_DIR),
        .SN774_OE(SN774_OE),
        .SPI0_MISO_I_0(SPI0_MISO_I_0),
        .SPI0_MOSI_O_0(SPI0_MOSI_O_0),
        .SPI0_SCLK_O_0(SPI0_SCLK_O_0),
        .SPI0_SS_O_0(SPI0_SS_O_0),
        .TXNRX(TXNRX),
        .TX_FRAME(TX_FRAME),
        .ad9361_reset(ad9361_reset),
        .data_clk(data_clk),
        .dphy_clk_lp_n_0(dphy_clk_lp_n_0),
        .dphy_clk_lp_p_0(dphy_clk_lp_p_0),
        .dphy_data_hs_n_0(dphy_data_hs_n_0),
        .dphy_data_hs_p_0(dphy_data_hs_p_0),
        .dphy_data_lp_n_0(dphy_data_lp_n_0),
        .dphy_data_lp_p_0(dphy_data_lp_p_0),
        .mipi_phy_if_clk_hs_n_0(mipi_phy_if_clk_hs_n_0),
        .mipi_phy_if_clk_hs_p_0(mipi_phy_if_clk_hs_p_0),
        .raspicam_enable(raspicam_enable));
endmodule
