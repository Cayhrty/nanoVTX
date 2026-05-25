// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 21:00:01 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/FPGA/NanoVTX/NanoVTX.gen/sources_1/bd/top/ip/top_output_mux_0_0/top_output_mux_0_0_stub.v
// Design      : top_output_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "output_mux,Vivado 2023.1" *)
module top_output_mux_0_0(clk, s_axis_symbol_tvalid, 
  s_axis_symbol_tdata, s_axis_symbol_rden, symbol_buf_waddr, symbol_buf_raddr, 
  symbol_buf_wren, symbol_buf_dout, fifo_data_out, p0, p1)
/* synthesis syn_black_box black_box_pad_pin="s_axis_symbol_tvalid,s_axis_symbol_tdata[23:0],s_axis_symbol_rden,symbol_buf_waddr[10:0],symbol_buf_raddr[10:0],symbol_buf_wren,symbol_buf_dout[23:0],fifo_data_out[31:0],p0[11:0],p1[11:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input s_axis_symbol_tvalid;
  input [23:0]s_axis_symbol_tdata;
  output s_axis_symbol_rden;
  output [10:0]symbol_buf_waddr;
  output [10:0]symbol_buf_raddr;
  output symbol_buf_wren;
  input [23:0]symbol_buf_dout;
  output [31:0]fifo_data_out;
  output [11:0]p0;
  output [11:0]p1;
endmodule
