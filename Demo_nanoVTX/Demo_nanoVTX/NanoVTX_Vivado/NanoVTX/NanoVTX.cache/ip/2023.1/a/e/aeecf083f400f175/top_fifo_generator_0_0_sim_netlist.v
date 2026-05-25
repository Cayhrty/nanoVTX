// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 12 20:31:59 2023
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 97875000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input rd_clk;
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
