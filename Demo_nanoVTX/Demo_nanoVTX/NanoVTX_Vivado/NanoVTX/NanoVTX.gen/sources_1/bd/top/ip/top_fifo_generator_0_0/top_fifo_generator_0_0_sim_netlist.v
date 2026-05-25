// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 20:02:03 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top top_fifo_generator_0_0 -prefix
//               top_fifo_generator_0_0_ top_fifo_generator_0_0_sim_netlist.v
// Design      : top_fifo_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_fifo_generator_0_0,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module top_fifo_generator_0_0
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 79999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 79999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "6" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "7" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1016" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1015" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "100" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "61" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  top_fifo_generator_0_0_fifo_generator_v13_2_8 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qpp66Ic61NR0mkVmjG7vgOL0NB6CTFb3Lsi4qxXFnJ8tqqKShAriiJmn7uXBNCBvGZLnXCb4uZ8i
EqR6IQq34abN0LrooQu7rm3+Pw0iYYKzN1lcF+6EclZnFEeAIj7bGbLI9X3Ib88Mjvj0+p4IA3Fj
9ZGHNW+O+knchfmqAlY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aPxGoOnJHTAqFdFSzG9ru8Bw31YY71SqnXPbyZfA86PxaAjm6NpQtu/8fWeHlM19Jz2a+1ZDAj2o
VkuAl+PF18BGfMNo3Sar4bSJm8QwGYpdMiLM+06C76IY/redmJfNEXBnwDGx1NRihbIrHe17Fsp0
wci4ZT2n5HHVBuhowg8un8abF3TR6B1Ll1huon8bmUC1ZCG/4nJpwwhcE9pfhZYPxzBDs7qGqe8g
84QrDMzU6WhHqgMvR8Uor517l0pItAYj4pxMvaZhC0k3EgSYp/MQytJr+HF3vsw+o0eF1bHVU6Na
eXWSV3ijxUZXCyCMZ7YmEZa9JX5uKS5m5eiP0w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mWzZIcmTvZaO1EYxJJAY0jRMaMCjTyRzPU6SbUzrKHfep0pA4LS/MlSJytRY9FYloq8LonlEJmOa
YvTXus6Gximwd82NfOWOU+xAliGI4hqn0DLAX0dSg8OERUorJfPsNqrBuHvDufz9efGQs7Upr74j
TMlZiW0gSVGHMQSLqUU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lzrP+qu7wbNhDwJym0tPh2ytzSxetAAI7sMgVeTkF4E0aGc202oEP6AjkTk508CVci4/F5/oGOgY
jKPpZya27mqQoisM8ilYqvcw5pXx0/pQGRu7JZF08b+k4spPXeJ2wn8IDY3FWSHnOcvi4dOebH/q
+4u19fu74aqk1ECrIQzbVZpwcWeMDGDUSHDy4FPk9OjOswCxOQPuglJjXYv+hMg/7JiOUBTJX0uZ
Xmdtxy8L9z4EWzfRzOSHsJFjTkSLmdTFavs61PfZS4KYT25LV10DOvmL3fy7M6+bBXN5qE6rW0RO
W75E2gYB5D04Qa/SgER8JeFW1M0T8RacJUUV3w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMe5G7+i5Dg2OTIM7CinNcesmx+3xFOKOCTYsoHWrp5MlbAPNqriPe41pqSx7Zo2+ype18VVw+tF
lEjRQQF5TsKrIoc8kQqO2Ck9JGAZjsyrFM5jTWzQZBawoJBB/EbM32rM+O963qqQdP9ruUzt4aM6
vf/tdyfOgxkUcl6+JJNYOQDIdBGzvk/dQUeNjJV2gWOsMrT/8aQJJMjp2XPW18IEhMSdUT+e8kM3
NlZcNyywDkNOLcIS8VKNtRSuC1gLTR2zXKL9eJomOGg66N8dfL808FNqNi+dtOqd2OhDKPCh9VYN
gJ7hSggqdHhUVsYY5qT37vUMUZG37ITEHavSug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IZp7wGosl6Ef78SQeUxKofUHVTZqkQHJJU3t0K53ysy/heNabWQpu3n2M8+eCIHOAio8FR6+AOlT
IAA4JAFJfJ70Sm8r1CV0vuXGNVDhIlFr8HhnDDJc8CLdz8yaFrENXgAR92A47cxMlNwaJCGipXa/
922mJ6b2pGDdjdTLUcKsU1DD92Kou08spouWrbB/PrcgiC0dc9Vh5gbveNqmUuOyH3mlBam3FvZl
pgofpiJBXCkR1i8+hAEtpYGjmSGUTUQ6uHMUKX0u24I2h77iOiDKYTNJT6jVuiYM/DRD2IfylgS4
u7QDnvP07bndi2AIocxrw7LHdjJ9XWVyHUaXIQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mcmaj6yfbZVEKTiuHl5s5QU2BU2VRdOtz/pVopoNI21Pt4eUkknoHSgdfu7K976MpUo+bkHQ7sJi
/0kAsbTsCHtz7UWvsCk9A5SyLMykdZnWyjEbf0dHlFcgzZooebDG2zm4mibiRUIKwAMgFxTWk4RV
k5Ay3X64cOudFYqRbTCUmp1L8ijVoYJo0zi23fsL0jwpEG5FTTnJ1h5mK9rFtj4nIzmKqwwP+7JP
esKOwY5A74OZa9Q2+Oc/k4UmgeZgw5q/xkt1aAjxDyRRfCIJizymNuJw9sa/nQXTKX0zCMrY0MnQ
PN3c4p5wkiNcAHR4g0673PQsVxTSpFZkCNMkwQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
mo2NT2/CRe5fYBwkxXV4DV2r4VY+mW8FieM9wY58cqg6XakgyeQ/Du2w01ie+Sko3Okr8ziahuNO
XBMXX0d4rR94Cwxf6q8vsbxZgbIlknsXsEuTwNfsw6ywD3/7leL6Kapx3fGSVuIHDMHjwpstoX+8
phs6lpM0VeRML4QJl7ITOuweBx9b+hHFRy5duNtva30fSyVWHLpzAsS+sS+gCcFxsDn+K9lQj/Kh
u11IaBweyu8d5W2ClTN46tdIzlVw6S962vDsk1+h6BQzF9y3z3BJfLpfR+9jdhy5wqng0ejlOpbT
G22gnlE/BqKGgLqVQKaeXfnp5NnReQcYXQTMossrLWwi2JUvDGuA6egmN+38JdoIzDHxNPxvAOZ/
mF9Qjn64t2tHB5iHybi3qFxlysWYSczGHStpTKrEoNAcQV/kMTe5coIDdy3mGIpwuduxq1OYPA9m
VKKE/GCL1MQzfgEx1Az+ts8Oo9hgM/A/cJ2envlpTKlt5itG9ciBZ41m

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RXuoomA7HXqxfp6NbzOyYrUYOntlNDrjnrws4DzEIh4YC3p8BdX9/zrLD3AxALpTnAeHyk3lFxEI
uDCpL9/tP6yT5BmfL2N/oyWIQ7y53Env+IFaJMMaBIG9U1LBtkcnhV/FW9tkUePJ8EbKyE9tP/kp
RScK28UNuQEHp0OPznrb1v+AWO/DiSNPuA44x+Ig5nBALVW9qfA4+tvzfHYpcke67vIFYWLthZx9
NC9+R793F9ypEZMOjinKDbEk0gDUoqsmcmgF819P1JtLnGnuwtr1uER6OP17CsHbFowAmPsPPA55
QkDMyp68B+cHNNW23VXNPbIXLvPilhp/ypT+iw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6BvoQpuoVy9vIT9h44IRmW7Bo+8MCKJj5ZfOShjmujfjeFOwPLw2GCUNvV3ipB1eThHomI5yXGiO
fxOovfDeVP2hfGVaO1qz9Lz6NGhPt8K9Z+sH2rq47t68akOCSgmAoKJ/5BbwL/t0FtUVgTtq7Si+
HqZAUgbX8TCY6IRkFibfSSK6UarmhEpPrPOpvsevKx4OaMU1jfgaJvIMRd257kSQy5o7pyO0n7VX
LK6V93O0bi7Aa/TTt9W2MSK5pIDw9DmkTCLFjsS7gBYQYaFaba+LGfjQ782nQK2+KDz85b5qKPM1
h19t51h74j2WjWCadIgjRVfMYVvsErL0ehA3Xw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MMpJ8DorVcMATHbuGSlNSCGkzTOL3lRnFD2u4TUx1W94+tAqA8Ktjam9MqFHuJh/5PX5VUq6FgP7
1oYcR65DRc8C5iUj4h0vhHLi42ruJU++GUuIdS9gvoiQ246hdXMefRe5wcEOnqmxKzf7fyduaSpG
7SdN9PpubFzyeck9cLJj2CYMY1XoujEAxeBG5YKJtFkQkCeHZWr6R8PkNR2oyQGuZuMeJdgNh4Lg
5yYuOk0BGcB7bwSjic5zqk+8Veyp/ZGAVMgpH80juQjINIxDcLbvhqTIZX4gKUQjcJYcBhVuPgVt
Ms7dqARwL9nkpmZ/SuNzUmGdEIhVlblWNDRV3A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53280)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
