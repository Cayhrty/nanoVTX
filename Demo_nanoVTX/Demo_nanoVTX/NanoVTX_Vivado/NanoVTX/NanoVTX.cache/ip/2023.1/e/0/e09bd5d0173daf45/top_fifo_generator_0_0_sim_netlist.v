// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 20:02:03 2023
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
