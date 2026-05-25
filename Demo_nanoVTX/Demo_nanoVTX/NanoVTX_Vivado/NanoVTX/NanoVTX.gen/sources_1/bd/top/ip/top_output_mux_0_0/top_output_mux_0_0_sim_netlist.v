// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 21:00:01 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/NanoVTX/NanoVTX.gen/sources_1/bd/top/ip/top_output_mux_0_0/top_output_mux_0_0_sim_netlist.v
// Design      : top_output_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_output_mux_0_0,output_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "output_mux,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module top_output_mux_0_0
   (clk,
    s_axis_symbol_tvalid,
    s_axis_symbol_tdata,
    s_axis_symbol_rden,
    symbol_buf_waddr,
    symbol_buf_raddr,
    symbol_buf_wren,
    symbol_buf_dout,
    fifo_data_out,
    p0,
    p1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_symbol, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_symbol TVALID" *) input s_axis_symbol_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_symbol TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_symbol, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [23:0]s_axis_symbol_tdata;
  output s_axis_symbol_rden;
  output [10:0]symbol_buf_waddr;
  output [10:0]symbol_buf_raddr;
  output symbol_buf_wren;
  input [23:0]symbol_buf_dout;
  output [31:0]fifo_data_out;
  output [11:0]p0;
  output [11:0]p1;

  wire clk;
  wire [31:0]fifo_data_out;
  wire [11:0]p0;
  wire [11:0]p1;
  wire s_axis_symbol_rden;
  wire [23:0]s_axis_symbol_tdata;
  wire s_axis_symbol_tvalid;
  wire [23:0]symbol_buf_dout;
  wire [10:0]symbol_buf_raddr;
  wire [10:0]symbol_buf_waddr;
  wire symbol_buf_wren;

  top_output_mux_0_0_output_mux inst
       (.clk(clk),
        .fifo_data_out(fifo_data_out),
        .p0(p0),
        .p1(p1),
        .s_axis_symbol_rden(s_axis_symbol_rden),
        .s_axis_symbol_tdata(s_axis_symbol_tdata),
        .s_axis_symbol_tvalid(s_axis_symbol_tvalid),
        .symbol_buf_dout(symbol_buf_dout),
        .symbol_buf_raddr(symbol_buf_raddr),
        .symbol_buf_waddr(symbol_buf_waddr),
        .symbol_buf_wren(symbol_buf_wren));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_0" *) (* X_CORE_INFO = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
module top_output_mux_0_0_blk_mem_gen_0
   (clka,
    addra,
    douta,
    clkb,
    addrb,
    doutb);
  (* syn_isclock = "1" *) input clka;
  input [10:0]addra;
  output [23:0]douta;
  input clkb;
  input [10:0]addrb;
  output [23:0]doutb;


endmodule

(* ORIG_REF_NAME = "blk_mem_gen_1" *) (* X_CORE_INFO = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
module top_output_mux_0_0_blk_mem_gen_1
   (clka,
    addra,
    douta);
  (* syn_isclock = "1" *) input clka;
  input [5:0]addra;
  output [23:0]douta;


endmodule

(* ORIG_REF_NAME = "output_mux" *) 
module top_output_mux_0_0_output_mux
   (clk,
    s_axis_symbol_tvalid,
    s_axis_symbol_tdata,
    s_axis_symbol_rden,
    symbol_buf_waddr,
    symbol_buf_raddr,
    symbol_buf_wren,
    symbol_buf_dout,
    fifo_data_out,
    p0,
    p1);
  input clk;
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

  wire [11:0]B;
  wire clk;
  wire \current_symbol[0]_i_1_n_0 ;
  wire \current_symbol[1]_i_1_n_0 ;
  wire \current_symbol[1]_i_2_n_0 ;
  wire \current_symbol_reg_n_0_[0] ;
  wire \current_symbol_reg_n_0_[1] ;
  wire [30:0]\^fifo_data_out ;
  wire \last_symbol[0]_i_1_n_0 ;
  wire \last_symbol[1]_i_1_n_0 ;
  wire \last_symbol_reg_n_0_[0] ;
  wire \last_symbol_reg_n_0_[1] ;
  wire [23:0]lts_rom_dout;
  wire [12:0]nw_curr;
  wire [11:0]nw_last;
  wire [23:0]nw_rom_dout;
  wire [11:0]p0;
  wire [11:0]p1;
  wire p_0_in;
  wire [10:0]p_1_in;
  wire prod10_n_100;
  wire prod10_n_101;
  wire prod10_n_102;
  wire prod10_n_103;
  wire prod10_n_104;
  wire prod10_n_105;
  wire prod10_n_81;
  wire prod10_n_82;
  wire prod10_n_83;
  wire prod10_n_84;
  wire prod10_n_85;
  wire prod10_n_86;
  wire prod10_n_87;
  wire prod10_n_88;
  wire prod10_n_89;
  wire prod10_n_90;
  wire prod10_n_91;
  wire prod10_n_92;
  wire prod10_n_93;
  wire prod10_n_94;
  wire prod10_n_95;
  wire prod10_n_96;
  wire prod10_n_97;
  wire prod10_n_98;
  wire prod10_n_99;
  wire prod1_i_10_n_0;
  wire prod1_i_11_n_0;
  wire prod1_i_12_n_0;
  wire prod1_i_1_n_0;
  wire prod1_i_2_n_0;
  wire prod1_i_3_n_0;
  wire prod1_i_4_n_0;
  wire prod1_i_5_n_0;
  wire prod1_i_6_n_0;
  wire prod1_i_7_n_0;
  wire prod1_i_8_n_0;
  wire prod1_i_9_n_0;
  wire prod1_n_100;
  wire prod1_n_101;
  wire prod1_n_102;
  wire prod1_n_103;
  wire prod1_n_104;
  wire prod1_n_105;
  wire prod1_n_94;
  wire prod1_n_95;
  wire prod1_n_96;
  wire prod1_n_97;
  wire prod1_n_98;
  wire prod1_n_99;
  wire prod20_i_10_n_0;
  wire prod20_i_11_n_0;
  wire prod20_i_12_n_0;
  wire prod20_i_1_n_0;
  wire prod20_i_2_n_0;
  wire prod20_i_3_n_0;
  wire prod20_i_4_n_0;
  wire prod20_i_5_n_0;
  wire prod20_i_6_n_0;
  wire prod20_i_7_n_0;
  wire prod20_i_8_n_0;
  wire prod20_i_9_n_0;
  wire prod20_n_100;
  wire prod20_n_101;
  wire prod20_n_102;
  wire prod20_n_103;
  wire prod20_n_104;
  wire prod20_n_105;
  wire prod20_n_81;
  wire prod20_n_82;
  wire prod20_n_83;
  wire prod20_n_84;
  wire prod20_n_85;
  wire prod20_n_86;
  wire prod20_n_87;
  wire prod20_n_88;
  wire prod20_n_89;
  wire prod20_n_90;
  wire prod20_n_91;
  wire prod20_n_92;
  wire prod20_n_93;
  wire prod20_n_94;
  wire prod20_n_95;
  wire prod20_n_96;
  wire prod20_n_97;
  wire prod20_n_98;
  wire prod20_n_99;
  wire prod2_i_10_n_0;
  wire prod2_i_11_n_0;
  wire prod2_i_12_n_0;
  wire prod2_i_1_n_0;
  wire prod2_i_2_n_0;
  wire prod2_i_3_n_0;
  wire prod2_i_4_n_0;
  wire prod2_i_5_n_0;
  wire prod2_i_6_n_0;
  wire prod2_i_7_n_0;
  wire prod2_i_8_n_0;
  wire prod2_i_9_n_0;
  wire prod2_n_100;
  wire prod2_n_101;
  wire prod2_n_102;
  wire prod2_n_103;
  wire prod2_n_104;
  wire prod2_n_105;
  wire prod2_n_94;
  wire prod2_n_95;
  wire prod2_n_96;
  wire prod2_n_97;
  wire prod2_n_98;
  wire prod2_n_99;
  wire s_axis_symbol_rden0;
  wire [23:0]s_axis_symbol_tdata;
  wire s_axis_symbol_tvalid;
  wire [23:0]sts_rom_dout;
  wire [23:0]symbol_buf_dout;
  wire [10:0]symbol_buf_raddr;
  wire [10:7]\^symbol_buf_waddr ;
  wire symbol_buf_wren;
  wire \symbol_index_cnt[10]_i_3_n_0 ;
  wire NLW_prod1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod1_OVERFLOW_UNCONNECTED;
  wire NLW_prod1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod1_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod1_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_prod1_P_UNCONNECTED;
  wire [47:0]NLW_prod1_PCOUT_UNCONNECTED;
  wire NLW_prod10_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod10_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod10_OVERFLOW_UNCONNECTED;
  wire NLW_prod10_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod10_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod10_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod10_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod10_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod10_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_prod10_P_UNCONNECTED;
  wire [47:0]NLW_prod10_PCOUT_UNCONNECTED;
  wire NLW_prod2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod2_OVERFLOW_UNCONNECTED;
  wire NLW_prod2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod2_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod2_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_prod2_P_UNCONNECTED;
  wire [47:0]NLW_prod2_PCOUT_UNCONNECTED;
  wire NLW_prod20_CARRYCASCOUT_UNCONNECTED;
  wire NLW_prod20_MULTSIGNOUT_UNCONNECTED;
  wire NLW_prod20_OVERFLOW_UNCONNECTED;
  wire NLW_prod20_PATTERNBDETECT_UNCONNECTED;
  wire NLW_prod20_PATTERNDETECT_UNCONNECTED;
  wire NLW_prod20_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_prod20_ACOUT_UNCONNECTED;
  wire [17:0]NLW_prod20_BCOUT_UNCONNECTED;
  wire [3:0]NLW_prod20_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_prod20_P_UNCONNECTED;
  wire [47:0]NLW_prod20_PCOUT_UNCONNECTED;

  assign fifo_data_out[31] = \^fifo_data_out [30];
  assign fifo_data_out[30] = \^fifo_data_out [30];
  assign fifo_data_out[29] = \^fifo_data_out [30];
  assign fifo_data_out[28] = \^fifo_data_out [30];
  assign fifo_data_out[27] = \^fifo_data_out [30];
  assign fifo_data_out[26:16] = \^fifo_data_out [26:16];
  assign fifo_data_out[15] = \^fifo_data_out [14];
  assign fifo_data_out[14] = \^fifo_data_out [14];
  assign fifo_data_out[13] = \^fifo_data_out [14];
  assign fifo_data_out[12] = \^fifo_data_out [14];
  assign fifo_data_out[11] = \^fifo_data_out [14];
  assign fifo_data_out[10:0] = \^fifo_data_out [10:0];
  assign s_axis_symbol_rden = symbol_buf_wren;
  assign symbol_buf_waddr[10:7] = \^symbol_buf_waddr [10:7];
  assign symbol_buf_waddr[6:0] = symbol_buf_raddr[6:0];
  LUT6 #(
    .INIT(64'hFFF70808F7F70800)) 
    \current_symbol[0]_i_1 
       (.I0(\current_symbol[1]_i_2_n_0 ),
        .I1(symbol_buf_raddr[6]),
        .I2(\symbol_index_cnt[10]_i_3_n_0 ),
        .I3(\current_symbol_reg_n_0_[1] ),
        .I4(\current_symbol_reg_n_0_[0] ),
        .I5(s_axis_symbol_tvalid),
        .O(\current_symbol[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FF00F708FF00)) 
    \current_symbol[1]_i_1 
       (.I0(\current_symbol[1]_i_2_n_0 ),
        .I1(symbol_buf_raddr[6]),
        .I2(\symbol_index_cnt[10]_i_3_n_0 ),
        .I3(\current_symbol_reg_n_0_[1] ),
        .I4(\current_symbol_reg_n_0_[0] ),
        .I5(s_axis_symbol_tvalid),
        .O(\current_symbol[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \current_symbol[1]_i_2 
       (.I0(\^symbol_buf_waddr [8]),
        .I1(\^symbol_buf_waddr [7]),
        .I2(\^symbol_buf_waddr [9]),
        .I3(\^symbol_buf_waddr [10]),
        .O(\current_symbol[1]_i_2_n_0 ));
  FDRE \current_symbol_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_symbol[0]_i_1_n_0 ),
        .Q(\current_symbol_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \current_symbol_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_symbol[1]_i_1_n_0 ),
        .Q(\current_symbol_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \fifo_data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p1[0]),
        .Q(\^fifo_data_out [0]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p1[10]),
        .Q(\^fifo_data_out [10]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p1[11]),
        .Q(\^fifo_data_out [14]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p0[0]),
        .Q(\^fifo_data_out [16]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p0[1]),
        .Q(\^fifo_data_out [17]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p0[2]),
        .Q(\^fifo_data_out [18]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p0[3]),
        .Q(\^fifo_data_out [19]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p1[1]),
        .Q(\^fifo_data_out [1]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(p0[4]),
        .Q(\^fifo_data_out [20]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(p0[5]),
        .Q(\^fifo_data_out [21]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(p0[6]),
        .Q(\^fifo_data_out [22]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(p0[7]),
        .Q(\^fifo_data_out [23]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(p0[8]),
        .Q(\^fifo_data_out [24]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(p0[9]),
        .Q(\^fifo_data_out [25]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(p0[10]),
        .Q(\^fifo_data_out [26]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p1[2]),
        .Q(\^fifo_data_out [2]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(p0[11]),
        .Q(\^fifo_data_out [30]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p1[3]),
        .Q(\^fifo_data_out [3]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p1[4]),
        .Q(\^fifo_data_out [4]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p1[5]),
        .Q(\^fifo_data_out [5]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p1[6]),
        .Q(\^fifo_data_out [6]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p1[7]),
        .Q(\^fifo_data_out [7]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p1[8]),
        .Q(\^fifo_data_out [8]),
        .R(1'b0));
  FDRE \fifo_data_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p1[9]),
        .Q(\^fifo_data_out [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \last_symbol[0]_i_1 
       (.I0(\current_symbol_reg_n_0_[0] ),
        .I1(\current_symbol[1]_i_2_n_0 ),
        .I2(symbol_buf_raddr[6]),
        .I3(\symbol_index_cnt[10]_i_3_n_0 ),
        .I4(\last_symbol_reg_n_0_[0] ),
        .O(\last_symbol[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \last_symbol[1]_i_1 
       (.I0(\current_symbol_reg_n_0_[1] ),
        .I1(\current_symbol[1]_i_2_n_0 ),
        .I2(symbol_buf_raddr[6]),
        .I3(\symbol_index_cnt[10]_i_3_n_0 ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(\last_symbol[1]_i_1_n_0 ));
  FDRE \last_symbol_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\last_symbol[0]_i_1_n_0 ),
        .Q(\last_symbol_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \last_symbol_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\last_symbol[1]_i_1_n_0 ),
        .Q(\last_symbol_reg_n_0_[1] ),
        .R(1'b0));
  (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
  top_output_mux_0_0_blk_mem_gen_1 nw_rom
       (.addra(p_1_in[5:0]),
        .clka(clk),
        .douta(nw_rom_dout));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,nw_curr}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({prod1_i_1_n_0,prod1_i_1_n_0,prod1_i_1_n_0,prod1_i_1_n_0,prod1_i_1_n_0,prod1_i_1_n_0,prod1_i_1_n_0,prod1_i_2_n_0,prod1_i_3_n_0,prod1_i_4_n_0,prod1_i_5_n_0,prod1_i_6_n_0,prod1_i_7_n_0,prod1_i_8_n_0,prod1_i_9_n_0,prod1_i_10_n_0,prod1_i_11_n_0,prod1_i_12_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod1_BCOUT_UNCONNECTED[17:0]),
        .C({prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_82,prod10_n_83,prod10_n_84,prod10_n_85,prod10_n_86,prod10_n_87,prod10_n_88,prod10_n_89,prod10_n_90,prod10_n_91,prod10_n_92,prod10_n_93,prod10_n_94,prod10_n_95,prod10_n_96,prod10_n_97,prod10_n_98,prod10_n_99,prod10_n_100,prod10_n_101,prod10_n_102,prod10_n_103,prod10_n_104,prod10_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod1_OVERFLOW_UNCONNECTED),
        .P({NLW_prod1_P_UNCONNECTED[47:24],p1,prod1_n_94,prod1_n_95,prod1_n_96,prod1_n_97,prod1_n_98,prod1_n_99,prod1_n_100,prod1_n_101,prod1_n_102,prod1_n_103,prod1_n_104,prod1_n_105}),
        .PATTERNBDETECT(NLW_prod1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod10
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,nw_last}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[11],B[11],B[11],B[11],B[11],B[11],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod10_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod10_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod10_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod10_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod10_OVERFLOW_UNCONNECTED),
        .P({NLW_prod10_P_UNCONNECTED[47:25],prod10_n_81,prod10_n_82,prod10_n_83,prod10_n_84,prod10_n_85,prod10_n_86,prod10_n_87,prod10_n_88,prod10_n_89,prod10_n_90,prod10_n_91,prod10_n_92,prod10_n_93,prod10_n_94,prod10_n_95,prod10_n_96,prod10_n_97,prod10_n_98,prod10_n_99,prod10_n_100,prod10_n_101,prod10_n_102,prod10_n_103,prod10_n_104,prod10_n_105}),
        .PATTERNBDETECT(NLW_prod10_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod10_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod10_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod10_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod10_i_1
       (.I0(sts_rom_dout[23]),
        .I1(lts_rom_dout[23]),
        .I2(symbol_buf_dout[23]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(B[11]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod10_i_10
       (.I0(sts_rom_dout[14]),
        .I1(lts_rom_dout[14]),
        .I2(symbol_buf_dout[14]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(B[2]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod10_i_11
       (.I0(sts_rom_dout[13]),
        .I1(lts_rom_dout[13]),
        .I2(symbol_buf_dout[13]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(B[1]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod10_i_12
       (.I0(sts_rom_dout[12]),
        .I1(lts_rom_dout[12]),
        .I2(symbol_buf_dout[12]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(B[0]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod10_i_2
       (.I0(sts_rom_dout[22]),
        .I1(lts_rom_dout[22]),
        .I2(symbol_buf_dout[22]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(B[10]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod10_i_3
       (.I0(sts_rom_dout[21]),
        .I1(lts_rom_dout[21]),
        .I2(symbol_buf_dout[21]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(B[9]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod10_i_4
       (.I0(sts_rom_dout[20]),
        .I1(lts_rom_dout[20]),
        .I2(symbol_buf_dout[20]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(B[8]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod10_i_5
       (.I0(sts_rom_dout[19]),
        .I1(lts_rom_dout[19]),
        .I2(symbol_buf_dout[19]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(B[7]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod10_i_6
       (.I0(sts_rom_dout[18]),
        .I1(lts_rom_dout[18]),
        .I2(symbol_buf_dout[18]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(B[6]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod10_i_7
       (.I0(sts_rom_dout[17]),
        .I1(lts_rom_dout[17]),
        .I2(symbol_buf_dout[17]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(B[5]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod10_i_8
       (.I0(sts_rom_dout[16]),
        .I1(lts_rom_dout[16]),
        .I2(symbol_buf_dout[16]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(B[4]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod10_i_9
       (.I0(sts_rom_dout[15]),
        .I1(lts_rom_dout[15]),
        .I2(symbol_buf_dout[15]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(B[3]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod1_i_1
       (.I0(lts_rom_dout[23]),
        .I1(sts_rom_dout[23]),
        .I2(s_axis_symbol_tdata[23]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod1_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod1_i_10
       (.I0(lts_rom_dout[14]),
        .I1(sts_rom_dout[14]),
        .I2(s_axis_symbol_tdata[14]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod1_i_10_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod1_i_11
       (.I0(lts_rom_dout[13]),
        .I1(sts_rom_dout[13]),
        .I2(s_axis_symbol_tdata[13]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod1_i_11_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod1_i_12
       (.I0(lts_rom_dout[12]),
        .I1(sts_rom_dout[12]),
        .I2(s_axis_symbol_tdata[12]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod1_i_12_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod1_i_2
       (.I0(lts_rom_dout[22]),
        .I1(sts_rom_dout[22]),
        .I2(s_axis_symbol_tdata[22]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod1_i_2_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod1_i_3
       (.I0(lts_rom_dout[21]),
        .I1(sts_rom_dout[21]),
        .I2(s_axis_symbol_tdata[21]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod1_i_3_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod1_i_4
       (.I0(lts_rom_dout[20]),
        .I1(sts_rom_dout[20]),
        .I2(s_axis_symbol_tdata[20]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod1_i_4_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod1_i_5
       (.I0(lts_rom_dout[19]),
        .I1(sts_rom_dout[19]),
        .I2(s_axis_symbol_tdata[19]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod1_i_5_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod1_i_6
       (.I0(lts_rom_dout[18]),
        .I1(sts_rom_dout[18]),
        .I2(s_axis_symbol_tdata[18]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod1_i_6_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod1_i_7
       (.I0(lts_rom_dout[17]),
        .I1(sts_rom_dout[17]),
        .I2(s_axis_symbol_tdata[17]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod1_i_7_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod1_i_8
       (.I0(lts_rom_dout[16]),
        .I1(sts_rom_dout[16]),
        .I2(s_axis_symbol_tdata[16]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod1_i_8_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod1_i_9
       (.I0(lts_rom_dout[15]),
        .I1(sts_rom_dout[15]),
        .I2(s_axis_symbol_tdata[15]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod1_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,nw_curr}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({prod2_i_1_n_0,prod2_i_1_n_0,prod2_i_1_n_0,prod2_i_1_n_0,prod2_i_1_n_0,prod2_i_1_n_0,prod2_i_1_n_0,prod2_i_2_n_0,prod2_i_3_n_0,prod2_i_4_n_0,prod2_i_5_n_0,prod2_i_6_n_0,prod2_i_7_n_0,prod2_i_8_n_0,prod2_i_9_n_0,prod2_i_10_n_0,prod2_i_11_n_0,prod2_i_12_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod2_BCOUT_UNCONNECTED[17:0]),
        .C({prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_82,prod20_n_83,prod20_n_84,prod20_n_85,prod20_n_86,prod20_n_87,prod20_n_88,prod20_n_89,prod20_n_90,prod20_n_91,prod20_n_92,prod20_n_93,prod20_n_94,prod20_n_95,prod20_n_96,prod20_n_97,prod20_n_98,prod20_n_99,prod20_n_100,prod20_n_101,prod20_n_102,prod20_n_103,prod20_n_104,prod20_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod2_OVERFLOW_UNCONNECTED),
        .P({NLW_prod2_P_UNCONNECTED[47:24],p0,prod2_n_94,prod2_n_95,prod2_n_96,prod2_n_97,prod2_n_98,prod2_n_99,prod2_n_100,prod2_n_101,prod2_n_102,prod2_n_103,prod2_n_104,prod2_n_105}),
        .PATTERNBDETECT(NLW_prod2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    prod20
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,nw_last}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_prod20_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({prod20_i_1_n_0,prod20_i_1_n_0,prod20_i_1_n_0,prod20_i_1_n_0,prod20_i_1_n_0,prod20_i_1_n_0,prod20_i_1_n_0,prod20_i_2_n_0,prod20_i_3_n_0,prod20_i_4_n_0,prod20_i_5_n_0,prod20_i_6_n_0,prod20_i_7_n_0,prod20_i_8_n_0,prod20_i_9_n_0,prod20_i_10_n_0,prod20_i_11_n_0,prod20_i_12_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_prod20_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_prod20_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_prod20_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_prod20_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_prod20_OVERFLOW_UNCONNECTED),
        .P({NLW_prod20_P_UNCONNECTED[47:25],prod20_n_81,prod20_n_82,prod20_n_83,prod20_n_84,prod20_n_85,prod20_n_86,prod20_n_87,prod20_n_88,prod20_n_89,prod20_n_90,prod20_n_91,prod20_n_92,prod20_n_93,prod20_n_94,prod20_n_95,prod20_n_96,prod20_n_97,prod20_n_98,prod20_n_99,prod20_n_100,prod20_n_101,prod20_n_102,prod20_n_103,prod20_n_104,prod20_n_105}),
        .PATTERNBDETECT(NLW_prod20_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_prod20_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_prod20_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_prod20_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod20_i_1
       (.I0(sts_rom_dout[11]),
        .I1(lts_rom_dout[11]),
        .I2(symbol_buf_dout[11]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(prod20_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod20_i_10
       (.I0(sts_rom_dout[2]),
        .I1(lts_rom_dout[2]),
        .I2(symbol_buf_dout[2]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(prod20_i_10_n_0));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod20_i_11
       (.I0(sts_rom_dout[1]),
        .I1(lts_rom_dout[1]),
        .I2(symbol_buf_dout[1]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(prod20_i_11_n_0));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod20_i_12
       (.I0(sts_rom_dout[0]),
        .I1(lts_rom_dout[0]),
        .I2(symbol_buf_dout[0]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(prod20_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod20_i_13
       (.I0(nw_rom_dout[11]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_last[11]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod20_i_14
       (.I0(nw_rom_dout[10]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_last[10]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod20_i_15
       (.I0(nw_rom_dout[9]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_last[9]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod20_i_16
       (.I0(nw_rom_dout[8]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_last[8]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod20_i_17
       (.I0(nw_rom_dout[7]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_last[7]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod20_i_18
       (.I0(nw_rom_dout[6]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_last[6]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod20_i_19
       (.I0(nw_rom_dout[5]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_last[5]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod20_i_2
       (.I0(sts_rom_dout[10]),
        .I1(lts_rom_dout[10]),
        .I2(symbol_buf_dout[10]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(prod20_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod20_i_20
       (.I0(nw_rom_dout[4]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_last[4]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod20_i_21
       (.I0(nw_rom_dout[3]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_last[3]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod20_i_22
       (.I0(nw_rom_dout[2]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_last[2]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod20_i_23
       (.I0(nw_rom_dout[1]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_last[1]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod20_i_24
       (.I0(nw_rom_dout[0]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_last[0]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod20_i_3
       (.I0(sts_rom_dout[9]),
        .I1(lts_rom_dout[9]),
        .I2(symbol_buf_dout[9]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(prod20_i_3_n_0));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod20_i_4
       (.I0(sts_rom_dout[8]),
        .I1(lts_rom_dout[8]),
        .I2(symbol_buf_dout[8]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(prod20_i_4_n_0));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod20_i_5
       (.I0(sts_rom_dout[7]),
        .I1(lts_rom_dout[7]),
        .I2(symbol_buf_dout[7]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(prod20_i_5_n_0));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod20_i_6
       (.I0(sts_rom_dout[6]),
        .I1(lts_rom_dout[6]),
        .I2(symbol_buf_dout[6]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(prod20_i_6_n_0));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod20_i_7
       (.I0(sts_rom_dout[5]),
        .I1(lts_rom_dout[5]),
        .I2(symbol_buf_dout[5]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(prod20_i_7_n_0));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod20_i_8
       (.I0(sts_rom_dout[4]),
        .I1(lts_rom_dout[4]),
        .I2(symbol_buf_dout[4]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(prod20_i_8_n_0));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    prod20_i_9
       (.I0(sts_rom_dout[3]),
        .I1(lts_rom_dout[3]),
        .I2(symbol_buf_dout[3]),
        .I3(\last_symbol_reg_n_0_[0] ),
        .I4(\last_symbol_reg_n_0_[1] ),
        .O(prod20_i_9_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod2_i_1
       (.I0(lts_rom_dout[11]),
        .I1(sts_rom_dout[11]),
        .I2(s_axis_symbol_tdata[11]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod2_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod2_i_10
       (.I0(lts_rom_dout[2]),
        .I1(sts_rom_dout[2]),
        .I2(s_axis_symbol_tdata[2]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod2_i_10_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod2_i_11
       (.I0(lts_rom_dout[1]),
        .I1(sts_rom_dout[1]),
        .I2(s_axis_symbol_tdata[1]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod2_i_11_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod2_i_12
       (.I0(lts_rom_dout[0]),
        .I1(sts_rom_dout[0]),
        .I2(s_axis_symbol_tdata[0]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod2_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    prod2_i_13
       (.I0(symbol_buf_raddr[6]),
        .I1(\^symbol_buf_waddr [8]),
        .I2(\^symbol_buf_waddr [9]),
        .I3(\^symbol_buf_waddr [7]),
        .I4(\^symbol_buf_waddr [10]),
        .O(nw_curr[12]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod2_i_14
       (.I0(nw_rom_dout[23]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_curr[11]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod2_i_15
       (.I0(nw_rom_dout[22]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_curr[10]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod2_i_16
       (.I0(nw_rom_dout[21]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_curr[9]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod2_i_17
       (.I0(nw_rom_dout[20]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_curr[8]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod2_i_18
       (.I0(nw_rom_dout[19]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_curr[7]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod2_i_19
       (.I0(nw_rom_dout[18]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_curr[6]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod2_i_2
       (.I0(lts_rom_dout[10]),
        .I1(sts_rom_dout[10]),
        .I2(s_axis_symbol_tdata[10]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod2_i_20
       (.I0(nw_rom_dout[17]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_curr[5]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod2_i_21
       (.I0(nw_rom_dout[16]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_curr[4]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod2_i_22
       (.I0(nw_rom_dout[15]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_curr[3]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod2_i_23
       (.I0(nw_rom_dout[14]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_curr[2]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod2_i_24
       (.I0(nw_rom_dout[13]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_curr[1]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    prod2_i_25
       (.I0(nw_rom_dout[12]),
        .I1(\^symbol_buf_waddr [10]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [9]),
        .I4(\^symbol_buf_waddr [8]),
        .I5(symbol_buf_raddr[6]),
        .O(nw_curr[0]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod2_i_3
       (.I0(lts_rom_dout[9]),
        .I1(sts_rom_dout[9]),
        .I2(s_axis_symbol_tdata[9]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod2_i_3_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod2_i_4
       (.I0(lts_rom_dout[8]),
        .I1(sts_rom_dout[8]),
        .I2(s_axis_symbol_tdata[8]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod2_i_4_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod2_i_5
       (.I0(lts_rom_dout[7]),
        .I1(sts_rom_dout[7]),
        .I2(s_axis_symbol_tdata[7]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod2_i_5_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod2_i_6
       (.I0(lts_rom_dout[6]),
        .I1(sts_rom_dout[6]),
        .I2(s_axis_symbol_tdata[6]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod2_i_6_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod2_i_7
       (.I0(lts_rom_dout[5]),
        .I1(sts_rom_dout[5]),
        .I2(s_axis_symbol_tdata[5]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod2_i_7_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod2_i_8
       (.I0(lts_rom_dout[4]),
        .I1(sts_rom_dout[4]),
        .I2(s_axis_symbol_tdata[4]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod2_i_8_n_0));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    prod2_i_9
       (.I0(lts_rom_dout[3]),
        .I1(sts_rom_dout[3]),
        .I2(s_axis_symbol_tdata[3]),
        .I3(\current_symbol_reg_n_0_[0] ),
        .I4(\current_symbol_reg_n_0_[1] ),
        .O(prod2_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_axis_symbol_rden_i_1
       (.I0(\current_symbol_reg_n_0_[0] ),
        .I1(\current_symbol_reg_n_0_[1] ),
        .O(s_axis_symbol_rden0));
  FDRE s_axis_symbol_rden_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axis_symbol_rden0),
        .Q(symbol_buf_wren),
        .R(1'b0));
  (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
  top_output_mux_0_0_blk_mem_gen_0 sts_lts_rom
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[5:0]}),
        .addrb({1'b1,p_1_in[9:0]}),
        .clka(clk),
        .clkb(clk),
        .douta(sts_rom_dout),
        .doutb(lts_rom_dout));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \symbol_buf_raddr[10]_INST_0 
       (.I0(\^symbol_buf_waddr [9]),
        .I1(\^symbol_buf_waddr [7]),
        .I2(\^symbol_buf_waddr [8]),
        .I3(\^symbol_buf_waddr [10]),
        .O(symbol_buf_raddr[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \symbol_buf_raddr[7]_INST_0 
       (.I0(\^symbol_buf_waddr [7]),
        .O(symbol_buf_raddr[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \symbol_buf_raddr[8]_INST_0 
       (.I0(\^symbol_buf_waddr [7]),
        .I1(\^symbol_buf_waddr [8]),
        .O(symbol_buf_raddr[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \symbol_buf_raddr[9]_INST_0 
       (.I0(\^symbol_buf_waddr [8]),
        .I1(\^symbol_buf_waddr [7]),
        .I2(\^symbol_buf_waddr [9]),
        .O(symbol_buf_raddr[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \symbol_index_cnt[0]_i_1 
       (.I0(symbol_buf_raddr[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \symbol_index_cnt[10]_i_1 
       (.I0(\^symbol_buf_waddr [10]),
        .I1(\^symbol_buf_waddr [9]),
        .I2(\^symbol_buf_waddr [7]),
        .I3(\^symbol_buf_waddr [8]),
        .I4(symbol_buf_raddr[6]),
        .I5(\symbol_index_cnt[10]_i_3_n_0 ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \symbol_index_cnt[10]_i_2 
       (.I0(\symbol_index_cnt[10]_i_3_n_0 ),
        .I1(symbol_buf_raddr[6]),
        .I2(\^symbol_buf_waddr [8]),
        .I3(\^symbol_buf_waddr [7]),
        .I4(\^symbol_buf_waddr [9]),
        .I5(\^symbol_buf_waddr [10]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \symbol_index_cnt[10]_i_3 
       (.I0(symbol_buf_raddr[4]),
        .I1(symbol_buf_raddr[2]),
        .I2(symbol_buf_raddr[0]),
        .I3(symbol_buf_raddr[1]),
        .I4(symbol_buf_raddr[3]),
        .I5(symbol_buf_raddr[5]),
        .O(\symbol_index_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \symbol_index_cnt[1]_i_1 
       (.I0(symbol_buf_raddr[0]),
        .I1(symbol_buf_raddr[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \symbol_index_cnt[2]_i_1 
       (.I0(symbol_buf_raddr[1]),
        .I1(symbol_buf_raddr[0]),
        .I2(symbol_buf_raddr[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \symbol_index_cnt[3]_i_1 
       (.I0(symbol_buf_raddr[2]),
        .I1(symbol_buf_raddr[0]),
        .I2(symbol_buf_raddr[1]),
        .I3(symbol_buf_raddr[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \symbol_index_cnt[4]_i_1 
       (.I0(symbol_buf_raddr[3]),
        .I1(symbol_buf_raddr[1]),
        .I2(symbol_buf_raddr[0]),
        .I3(symbol_buf_raddr[2]),
        .I4(symbol_buf_raddr[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \symbol_index_cnt[5]_i_1 
       (.I0(symbol_buf_raddr[4]),
        .I1(symbol_buf_raddr[2]),
        .I2(symbol_buf_raddr[0]),
        .I3(symbol_buf_raddr[1]),
        .I4(symbol_buf_raddr[3]),
        .I5(symbol_buf_raddr[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \symbol_index_cnt[6]_i_1 
       (.I0(\symbol_index_cnt[10]_i_3_n_0 ),
        .I1(symbol_buf_raddr[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \symbol_index_cnt[7]_i_1 
       (.I0(symbol_buf_raddr[6]),
        .I1(\symbol_index_cnt[10]_i_3_n_0 ),
        .I2(\^symbol_buf_waddr [7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \symbol_index_cnt[8]_i_1 
       (.I0(\^symbol_buf_waddr [7]),
        .I1(\symbol_index_cnt[10]_i_3_n_0 ),
        .I2(symbol_buf_raddr[6]),
        .I3(\^symbol_buf_waddr [8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \symbol_index_cnt[9]_i_1 
       (.I0(\^symbol_buf_waddr [7]),
        .I1(\^symbol_buf_waddr [8]),
        .I2(\symbol_index_cnt[10]_i_3_n_0 ),
        .I3(symbol_buf_raddr[6]),
        .I4(\^symbol_buf_waddr [9]),
        .O(p_1_in[9]));
  FDRE \symbol_index_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(symbol_buf_raddr[0]),
        .R(p_0_in));
  FDRE \symbol_index_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(\^symbol_buf_waddr [10]),
        .R(p_0_in));
  FDRE \symbol_index_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(symbol_buf_raddr[1]),
        .R(p_0_in));
  FDRE \symbol_index_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(symbol_buf_raddr[2]),
        .R(p_0_in));
  FDRE \symbol_index_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(symbol_buf_raddr[3]),
        .R(p_0_in));
  FDRE \symbol_index_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(symbol_buf_raddr[4]),
        .R(p_0_in));
  FDRE \symbol_index_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(symbol_buf_raddr[5]),
        .R(p_0_in));
  FDRE \symbol_index_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(symbol_buf_raddr[6]),
        .R(p_0_in));
  FDRE \symbol_index_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(\^symbol_buf_waddr [7]),
        .R(p_0_in));
  FDRE \symbol_index_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(\^symbol_buf_waddr [8]),
        .R(p_0_in));
  FDRE \symbol_index_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(\^symbol_buf_waddr [9]),
        .R(p_0_in));
endmodule
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
