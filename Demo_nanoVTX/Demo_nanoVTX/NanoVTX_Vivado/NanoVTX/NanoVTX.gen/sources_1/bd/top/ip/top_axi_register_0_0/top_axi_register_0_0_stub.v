// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 17:49:51 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top top_axi_register_0_0 -prefix
//               top_axi_register_0_0_ top_axi_register_0_0_stub.v
// Design      : top_axi_register_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_register_v1_0,Vivado 2023.1" *)
module top_axi_register_0_0(axi_rreg0, axi_rreg1, axi_rreg2, axi_rreg3, 
  axi_wreg0, axi_wreg1, axi_wreg2, axi_wreg3, s00_axi_aclk, s00_axi_aresetn, s00_axi_awaddr, 
  s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, 
  s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, 
  s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, 
  s00_axi_rresp, s00_axi_rvalid, s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="axi_rreg0[31:0],axi_rreg1[31:0],axi_rreg2[31:0],axi_rreg3[31:0],axi_wreg0[31:0],axi_wreg1[31:0],axi_wreg2[31:0],axi_wreg3[31:0],s00_axi_aresetn,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */
/* synthesis syn_force_seq_prim="s00_axi_aclk" */;
  input [31:0]axi_rreg0;
  input [31:0]axi_rreg1;
  input [31:0]axi_rreg2;
  input [31:0]axi_rreg3;
  output [31:0]axi_wreg0;
  output [31:0]axi_wreg1;
  output [31:0]axi_wreg2;
  output [31:0]axi_wreg3;
  input s00_axi_aclk /* synthesis syn_isclock = 1 */;
  input s00_axi_aresetn;
  input [4:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [4:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
