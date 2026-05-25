// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 12 20:31:46 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_fake_data_src_0_0_stub.v
// Design      : top_fake_data_src_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fake_data_src,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, trigger, m_axis_data_tdata, 
  m_axis_data_tvalid, m_axis_data_tlast, m_axis_data_tready)
/* synthesis syn_black_box black_box_pad_pin="trigger,m_axis_data_tdata[31:0],m_axis_data_tvalid,m_axis_data_tlast,m_axis_data_tready" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input trigger;
  output [31:0]m_axis_data_tdata;
  output m_axis_data_tvalid;
  output m_axis_data_tlast;
  input m_axis_data_tready;
endmodule
