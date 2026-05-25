// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Sep 14 23:41:15 2023
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input rd_clk;
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
