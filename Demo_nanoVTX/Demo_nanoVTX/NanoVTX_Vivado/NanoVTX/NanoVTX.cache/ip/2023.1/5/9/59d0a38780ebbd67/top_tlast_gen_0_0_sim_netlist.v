// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 12 20:31:51 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_tlast_gen_0_0_sim_netlist.v
// Design      : top_tlast_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_gen
   (tlast,
    tvalid,
    clk,
    rst_n,
    tready);
  output tlast;
  input tvalid;
  input clk;
  input rst_n;
  input tready;

  wire clk;
  wire [19:0]cnt;
  wire cnt0;
  wire \cnt[19]_i_3_n_0 ;
  wire \cnt_reg[12]_i_2_n_0 ;
  wire \cnt_reg[12]_i_2_n_1 ;
  wire \cnt_reg[12]_i_2_n_2 ;
  wire \cnt_reg[12]_i_2_n_3 ;
  wire \cnt_reg[16]_i_2_n_0 ;
  wire \cnt_reg[16]_i_2_n_1 ;
  wire \cnt_reg[16]_i_2_n_2 ;
  wire \cnt_reg[16]_i_2_n_3 ;
  wire \cnt_reg[19]_i_4_n_2 ;
  wire \cnt_reg[19]_i_4_n_3 ;
  wire \cnt_reg[4]_i_2_n_0 ;
  wire \cnt_reg[4]_i_2_n_1 ;
  wire \cnt_reg[4]_i_2_n_2 ;
  wire \cnt_reg[4]_i_2_n_3 ;
  wire \cnt_reg[8]_i_2_n_0 ;
  wire \cnt_reg[8]_i_2_n_1 ;
  wire \cnt_reg[8]_i_2_n_2 ;
  wire \cnt_reg[8]_i_2_n_3 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [19:1]data0;
  wire rst_n;
  wire tlast;
  wire tlast_INST_0_i_1_n_0;
  wire tlast_INST_0_i_2_n_0;
  wire tlast_INST_0_i_3_n_0;
  wire tlast_INST_0_i_4_n_0;
  wire tlast_INST_0_i_5_n_0;
  wire tready;
  wire tvalid;
  wire [3:2]\NLW_cnt_reg[19]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[19]_i_4_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(cnt[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[10]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[10]),
        .O(cnt[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[11]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[11]),
        .O(cnt[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[12]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[12]),
        .O(cnt[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[13]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[13]),
        .O(cnt[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[14]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[14]),
        .O(cnt[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[15]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[15]),
        .O(cnt[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[16]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[16]),
        .O(cnt[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[17]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[17]),
        .O(cnt[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[18]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[18]),
        .O(cnt[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[19]_i_1 
       (.I0(tvalid),
        .I1(tready),
        .O(cnt0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[19]_i_2 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[19]),
        .O(cnt[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[19]_i_3 
       (.I0(rst_n),
        .O(\cnt[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[1]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[1]),
        .O(cnt[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[2]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[2]),
        .O(cnt[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[3]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[3]),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[4]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[4]),
        .O(cnt[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[5]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[5]),
        .O(cnt[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[6]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[6]),
        .O(cnt[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[7]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[7]),
        .O(cnt[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[8]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[8]),
        .O(cnt[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[9]_i_1 
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(data0[9]),
        .O(cnt[9]));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE \cnt_reg[10] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[10]),
        .Q(\cnt_reg_n_0_[10] ));
  FDCE \cnt_reg[11] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[11]),
        .Q(\cnt_reg_n_0_[11] ));
  FDCE \cnt_reg[12] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[12]),
        .Q(\cnt_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[12]_i_2 
       (.CI(\cnt_reg[8]_i_2_n_0 ),
        .CO({\cnt_reg[12]_i_2_n_0 ,\cnt_reg[12]_i_2_n_1 ,\cnt_reg[12]_i_2_n_2 ,\cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\cnt_reg_n_0_[12] ,\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] }));
  FDCE \cnt_reg[13] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[13]),
        .Q(\cnt_reg_n_0_[13] ));
  FDCE \cnt_reg[14] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[14]),
        .Q(\cnt_reg_n_0_[14] ));
  FDCE \cnt_reg[15] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[15]),
        .Q(\cnt_reg_n_0_[15] ));
  FDCE \cnt_reg[16] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[16]),
        .Q(\cnt_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[16]_i_2 
       (.CI(\cnt_reg[12]_i_2_n_0 ),
        .CO({\cnt_reg[16]_i_2_n_0 ,\cnt_reg[16]_i_2_n_1 ,\cnt_reg[16]_i_2_n_2 ,\cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\cnt_reg_n_0_[16] ,\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] }));
  FDCE \cnt_reg[17] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[17]),
        .Q(\cnt_reg_n_0_[17] ));
  FDCE \cnt_reg[18] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[18]),
        .Q(\cnt_reg_n_0_[18] ));
  FDCE \cnt_reg[19] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[19]),
        .Q(\cnt_reg_n_0_[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[19]_i_4 
       (.CI(\cnt_reg[16]_i_2_n_0 ),
        .CO({\NLW_cnt_reg[19]_i_4_CO_UNCONNECTED [3:2],\cnt_reg[19]_i_4_n_2 ,\cnt_reg[19]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[19]_i_4_O_UNCONNECTED [3],data0[19:17]}),
        .S({1'b0,\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] }));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[4]_i_2_n_0 ,\cnt_reg[4]_i_2_n_1 ,\cnt_reg[4]_i_2_n_2 ,\cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] }));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[7]),
        .Q(\cnt_reg_n_0_[7] ));
  FDCE \cnt_reg[8] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[8]),
        .Q(\cnt_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt_reg[8]_i_2 
       (.CI(\cnt_reg[4]_i_2_n_0 ),
        .CO({\cnt_reg[8]_i_2_n_0 ,\cnt_reg[8]_i_2_n_1 ,\cnt_reg[8]_i_2_n_2 ,\cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\cnt_reg_n_0_[8] ,\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] }));
  FDCE \cnt_reg[9] 
       (.C(clk),
        .CE(cnt0),
        .CLR(\cnt[19]_i_3_n_0 ),
        .D(cnt[9]),
        .Q(\cnt_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    tlast_INST_0
       (.I0(tlast_INST_0_i_1_n_0),
        .I1(tlast_INST_0_i_2_n_0),
        .I2(tlast_INST_0_i_3_n_0),
        .I3(tlast_INST_0_i_4_n_0),
        .I4(tlast_INST_0_i_5_n_0),
        .I5(tvalid),
        .O(tlast));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    tlast_INST_0_i_1
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(tlast_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tlast_INST_0_i_2
       (.I0(\cnt_reg_n_0_[13] ),
        .I1(\cnt_reg_n_0_[12] ),
        .I2(\cnt_reg_n_0_[15] ),
        .I3(\cnt_reg_n_0_[14] ),
        .O(tlast_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tlast_INST_0_i_3
       (.I0(\cnt_reg_n_0_[17] ),
        .I1(\cnt_reg_n_0_[16] ),
        .I2(\cnt_reg_n_0_[19] ),
        .I3(\cnt_reg_n_0_[18] ),
        .O(tlast_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    tlast_INST_0_i_4
       (.I0(\cnt_reg_n_0_[9] ),
        .I1(\cnt_reg_n_0_[8] ),
        .I2(\cnt_reg_n_0_[11] ),
        .I3(\cnt_reg_n_0_[10] ),
        .O(tlast_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    tlast_INST_0_i_5
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[7] ),
        .I3(\cnt_reg_n_0_[6] ),
        .O(tlast_INST_0_i_5_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "top_tlast_gen_0_0,tlast_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "tlast_gen,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    tvalid,
    tready,
    tlast,
    rst_n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF interface_axis, FREQ_HZ 97875000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 interface_axis TVALID" *) input tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 interface_axis TREADY" *) input tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 interface_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interface_axis, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 97875000, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output tlast;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;

  wire clk;
  wire rst_n;
  wire tlast;
  wire tready;
  wire tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_gen inst
       (.clk(clk),
        .rst_n(rst_n),
        .tlast(tlast),
        .tready(tready),
        .tvalid(tvalid));
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
