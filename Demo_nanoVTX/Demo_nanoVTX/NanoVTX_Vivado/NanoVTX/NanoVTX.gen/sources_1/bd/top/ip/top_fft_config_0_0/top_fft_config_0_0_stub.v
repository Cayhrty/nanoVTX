// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 17:49:50 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top top_fft_config_0_0 -prefix
//               top_fft_config_0_0_ top_fft_config_0_0_stub.v
// Design      : top_fft_config_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fft_config,Vivado 2023.1" *)
module top_fft_config_0_0(m_axis_config_tdata, m_axis_config_tready, 
  m_axis_config_tvalid)
/* synthesis syn_black_box black_box_pad_pin="m_axis_config_tdata[31:0],m_axis_config_tready,m_axis_config_tvalid" */;
  output [31:0]m_axis_config_tdata;
  input m_axis_config_tready;
  output m_axis_config_tvalid;
endmodule
