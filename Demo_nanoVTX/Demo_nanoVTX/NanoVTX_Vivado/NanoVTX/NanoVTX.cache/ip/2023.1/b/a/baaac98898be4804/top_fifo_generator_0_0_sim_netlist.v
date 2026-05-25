// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 17:49:59 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_fifo_generator_0_0_sim_netlist.v
// Design      : top_fifo_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_fifo_generator_0_0,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53568)
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
