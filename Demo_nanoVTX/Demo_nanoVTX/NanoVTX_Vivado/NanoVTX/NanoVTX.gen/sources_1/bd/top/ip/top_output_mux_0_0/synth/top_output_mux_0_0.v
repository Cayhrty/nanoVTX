// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:output_mux:1.0
// IP Revision: 1

(* X_CORE_INFO = "output_mux,Vivado 2023.1" *)
(* CHECK_LICENSE_TYPE = "top_output_mux_0_0,output_mux,{}" *)
(* CORE_GENERATION_INFO = "top_output_mux_0_0,output_mux,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=output_mux,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module top_output_mux_0_0 (
  clk,
  s_axis_symbol_tvalid,
  s_axis_symbol_tdata,
  s_axis_symbol_rden,
  symbol_buf_waddr,
  symbol_buf_raddr,
  symbol_buf_wren,
  symbol_buf_dout,
  fifo_data_out,
  p0,
  p1
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_symbol, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_symbol TVALID" *)
input wire s_axis_symbol_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_symbol, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_symbol TDATA" *)
input wire [23 : 0] s_axis_symbol_tdata;
output wire s_axis_symbol_rden;
output wire [10 : 0] symbol_buf_waddr;
output wire [10 : 0] symbol_buf_raddr;
output wire symbol_buf_wren;
input wire [23 : 0] symbol_buf_dout;
output wire [31 : 0] fifo_data_out;
output wire [11 : 0] p0;
output wire [11 : 0] p1;

  output_mux inst (
    .clk(clk),
    .s_axis_symbol_tvalid(s_axis_symbol_tvalid),
    .s_axis_symbol_tdata(s_axis_symbol_tdata),
    .s_axis_symbol_rden(s_axis_symbol_rden),
    .symbol_buf_waddr(symbol_buf_waddr),
    .symbol_buf_raddr(symbol_buf_raddr),
    .symbol_buf_wren(symbol_buf_wren),
    .symbol_buf_dout(symbol_buf_dout),
    .fifo_data_out(fifo_data_out),
    .p0(p0),
    .p1(p1)
  );
endmodule
