// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 19 21:03:07 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_fifo_generator_0_0_sim_netlist.v
// Design      : top_fifo_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
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
