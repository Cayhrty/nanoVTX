// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 12 20:31:46 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_fake_data_src_0_0_sim_netlist.v
// Design      : top_fake_data_src_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fake_data_src
   (m_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tlast,
    trigger,
    clk,
    m_axis_data_tready);
  output [9:0]m_axis_data_tdata;
  output m_axis_data_tvalid;
  output m_axis_data_tlast;
  input trigger;
  input clk;
  input m_axis_data_tready;

  wire clk;
  wire dataCnt;
  wire dataCnt0_carry__0_n_0;
  wire dataCnt0_carry__0_n_1;
  wire dataCnt0_carry__0_n_2;
  wire dataCnt0_carry__0_n_3;
  wire dataCnt0_carry__0_n_4;
  wire dataCnt0_carry__0_n_5;
  wire dataCnt0_carry__0_n_6;
  wire dataCnt0_carry__0_n_7;
  wire dataCnt0_carry__1_n_0;
  wire dataCnt0_carry__1_n_1;
  wire dataCnt0_carry__1_n_2;
  wire dataCnt0_carry__1_n_3;
  wire dataCnt0_carry__1_n_4;
  wire dataCnt0_carry__1_n_5;
  wire dataCnt0_carry__1_n_6;
  wire dataCnt0_carry__1_n_7;
  wire dataCnt0_carry__2_n_2;
  wire dataCnt0_carry__2_n_3;
  wire dataCnt0_carry__2_n_5;
  wire dataCnt0_carry__2_n_6;
  wire dataCnt0_carry__2_n_7;
  wire dataCnt0_carry_n_0;
  wire dataCnt0_carry_n_1;
  wire dataCnt0_carry_n_2;
  wire dataCnt0_carry_n_3;
  wire dataCnt0_carry_n_4;
  wire dataCnt0_carry_n_5;
  wire dataCnt0_carry_n_6;
  wire dataCnt0_carry_n_7;
  wire \dataCnt[0]_i_1_n_0 ;
  wire \dataCnt[15]_i_1_n_0 ;
  wire \dataCnt_reg_n_0_[0] ;
  wire \dataCnt_reg_n_0_[10] ;
  wire \dataCnt_reg_n_0_[11] ;
  wire \dataCnt_reg_n_0_[12] ;
  wire \dataCnt_reg_n_0_[13] ;
  wire \dataCnt_reg_n_0_[14] ;
  wire \dataCnt_reg_n_0_[15] ;
  wire \dataCnt_reg_n_0_[1] ;
  wire \dataCnt_reg_n_0_[2] ;
  wire \dataCnt_reg_n_0_[3] ;
  wire \dataCnt_reg_n_0_[4] ;
  wire \dataCnt_reg_n_0_[5] ;
  wire \dataCnt_reg_n_0_[6] ;
  wire \dataCnt_reg_n_0_[7] ;
  wire \dataCnt_reg_n_0_[8] ;
  wire \dataCnt_reg_n_0_[9] ;
  wire [3:0]lfsr;
  wire [9:0]m_axis_data_tdata;
  wire \m_axis_data_tdata[10]_i_1_n_0 ;
  wire \m_axis_data_tdata[24]_i_1_n_0 ;
  wire \m_axis_data_tdata[25]_i_1_n_0 ;
  wire \m_axis_data_tdata[26]_i_1_n_0 ;
  wire \m_axis_data_tdata[31]_i_10_n_0 ;
  wire \m_axis_data_tdata[31]_i_3_n_0 ;
  wire \m_axis_data_tdata[31]_i_4_n_0 ;
  wire \m_axis_data_tdata[31]_i_5_n_0 ;
  wire \m_axis_data_tdata[31]_i_6_n_0 ;
  wire \m_axis_data_tdata[31]_i_7_n_0 ;
  wire \m_axis_data_tdata[31]_i_8_n_0 ;
  wire \m_axis_data_tdata[31]_i_9_n_0 ;
  wire \m_axis_data_tdata[8]_i_1_n_0 ;
  wire [31:9]m_axis_data_tdata_0;
  wire m_axis_data_tlast;
  wire m_axis_data_tlast_i_1_n_0;
  wire m_axis_data_tlast_i_2_n_0;
  wire m_axis_data_tlast_i_3_n_0;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire m_axis_data_tvalid_INST_0_i_1_n_0;
  wire m_axis_data_tvalid_INST_0_i_2_n_0;
  wire [3:0]m_symbol;
  wire p_0_in;
  wire [0:0]p_3_out;
  wire trig;
  wire trig_active;
  wire trig_active0;
  wire trig_r1;
  wire trig_r2;
  wire trigger;
  wire [3:2]NLW_dataCnt0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_dataCnt0_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dataCnt0_carry
       (.CI(1'b0),
        .CO({dataCnt0_carry_n_0,dataCnt0_carry_n_1,dataCnt0_carry_n_2,dataCnt0_carry_n_3}),
        .CYINIT(\dataCnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({dataCnt0_carry_n_4,dataCnt0_carry_n_5,dataCnt0_carry_n_6,dataCnt0_carry_n_7}),
        .S({\dataCnt_reg_n_0_[4] ,\dataCnt_reg_n_0_[3] ,\dataCnt_reg_n_0_[2] ,\dataCnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dataCnt0_carry__0
       (.CI(dataCnt0_carry_n_0),
        .CO({dataCnt0_carry__0_n_0,dataCnt0_carry__0_n_1,dataCnt0_carry__0_n_2,dataCnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({dataCnt0_carry__0_n_4,dataCnt0_carry__0_n_5,dataCnt0_carry__0_n_6,dataCnt0_carry__0_n_7}),
        .S({\dataCnt_reg_n_0_[8] ,\dataCnt_reg_n_0_[7] ,\dataCnt_reg_n_0_[6] ,\dataCnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dataCnt0_carry__1
       (.CI(dataCnt0_carry__0_n_0),
        .CO({dataCnt0_carry__1_n_0,dataCnt0_carry__1_n_1,dataCnt0_carry__1_n_2,dataCnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({dataCnt0_carry__1_n_4,dataCnt0_carry__1_n_5,dataCnt0_carry__1_n_6,dataCnt0_carry__1_n_7}),
        .S({\dataCnt_reg_n_0_[12] ,\dataCnt_reg_n_0_[11] ,\dataCnt_reg_n_0_[10] ,\dataCnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dataCnt0_carry__2
       (.CI(dataCnt0_carry__1_n_0),
        .CO({NLW_dataCnt0_carry__2_CO_UNCONNECTED[3:2],dataCnt0_carry__2_n_2,dataCnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_dataCnt0_carry__2_O_UNCONNECTED[3],dataCnt0_carry__2_n_5,dataCnt0_carry__2_n_6,dataCnt0_carry__2_n_7}),
        .S({1'b0,\dataCnt_reg_n_0_[15] ,\dataCnt_reg_n_0_[14] ,\dataCnt_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'hFFFD0F0CFFFDF0F0)) 
    \dataCnt[0]_i_1 
       (.I0(\dataCnt_reg_n_0_[10] ),
        .I1(m_axis_data_tvalid_INST_0_i_1_n_0),
        .I2(\dataCnt_reg_n_0_[0] ),
        .I3(m_axis_data_tvalid_INST_0_i_2_n_0),
        .I4(trig_active),
        .I5(m_axis_data_tready),
        .O(\dataCnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \dataCnt[15]_i_1 
       (.I0(trig_active),
        .I1(m_axis_data_tvalid_INST_0_i_2_n_0),
        .I2(\dataCnt_reg_n_0_[0] ),
        .I3(m_axis_data_tvalid_INST_0_i_1_n_0),
        .O(\dataCnt[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF01)) 
    \dataCnt[15]_i_2 
       (.I0(m_axis_data_tvalid_INST_0_i_1_n_0),
        .I1(\dataCnt_reg_n_0_[0] ),
        .I2(m_axis_data_tvalid_INST_0_i_2_n_0),
        .I3(m_axis_data_tready),
        .O(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\dataCnt[0]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[10] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry__1_n_6),
        .Q(\dataCnt_reg_n_0_[10] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[11] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry__1_n_5),
        .Q(\dataCnt_reg_n_0_[11] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[12] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry__1_n_4),
        .Q(\dataCnt_reg_n_0_[12] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[13] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry__2_n_7),
        .Q(\dataCnt_reg_n_0_[13] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[14] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry__2_n_6),
        .Q(\dataCnt_reg_n_0_[14] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[15] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry__2_n_5),
        .Q(\dataCnt_reg_n_0_[15] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[1] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry_n_7),
        .Q(\dataCnt_reg_n_0_[1] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[2] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry_n_6),
        .Q(\dataCnt_reg_n_0_[2] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[3] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry_n_5),
        .Q(\dataCnt_reg_n_0_[3] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[4] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry_n_4),
        .Q(\dataCnt_reg_n_0_[4] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[5] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry__0_n_7),
        .Q(\dataCnt_reg_n_0_[5] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[6] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry__0_n_6),
        .Q(\dataCnt_reg_n_0_[6] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[7] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry__0_n_5),
        .Q(\dataCnt_reg_n_0_[7] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[8] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry__0_n_4),
        .Q(\dataCnt_reg_n_0_[8] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[9] 
       (.C(clk),
        .CE(dataCnt),
        .D(dataCnt0_carry__1_n_7),
        .Q(\dataCnt_reg_n_0_[9] ),
        .R(\dataCnt[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[0]_i_1 
       (.I0(lfsr[2]),
        .I1(lfsr[3]),
        .O(p_3_out));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(lfsr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(lfsr[0]),
        .Q(lfsr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(lfsr[1]),
        .Q(lfsr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \lfsr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(lfsr[2]),
        .Q(lfsr[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_axis_data_tdata[10]_i_1 
       (.I0(m_symbol[1]),
        .I1(m_symbol[0]),
        .O(\m_axis_data_tdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_data_tdata[24]_i_1 
       (.I0(m_symbol[2]),
        .I1(m_symbol[3]),
        .O(\m_axis_data_tdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_data_tdata[25]_i_1 
       (.I0(m_symbol[2]),
        .I1(m_symbol[3]),
        .O(\m_axis_data_tdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \m_axis_data_tdata[26]_i_1 
       (.I0(m_symbol[3]),
        .I1(m_symbol[2]),
        .O(\m_axis_data_tdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \m_axis_data_tdata[31]_i_1 
       (.I0(\m_axis_data_tdata[31]_i_3_n_0 ),
        .I1(m_axis_data_tvalid_INST_0_i_2_n_0),
        .I2(\dataCnt_reg_n_0_[10] ),
        .I3(\m_axis_data_tdata[31]_i_4_n_0 ),
        .I4(\m_axis_data_tdata[31]_i_5_n_0 ),
        .I5(\m_axis_data_tdata[31]_i_6_n_0 ),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_data_tdata[31]_i_10 
       (.I0(\dataCnt_reg_n_0_[6] ),
        .I1(\dataCnt_reg_n_0_[7] ),
        .O(\m_axis_data_tdata[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_data_tdata[31]_i_2 
       (.I0(m_symbol[3]),
        .O(m_axis_data_tdata_0[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m_axis_data_tdata[31]_i_3 
       (.I0(\dataCnt_reg_n_0_[7] ),
        .I1(\dataCnt_reg_n_0_[6] ),
        .I2(\dataCnt_reg_n_0_[5] ),
        .O(\m_axis_data_tdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_axis_data_tdata[31]_i_4 
       (.I0(\dataCnt_reg_n_0_[11] ),
        .I1(\dataCnt_reg_n_0_[14] ),
        .I2(\dataCnt_reg_n_0_[15] ),
        .I3(\dataCnt_reg_n_0_[13] ),
        .I4(\dataCnt_reg_n_0_[12] ),
        .O(\m_axis_data_tdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC000EA00C0FFC000)) 
    \m_axis_data_tdata[31]_i_5 
       (.I0(\m_axis_data_tdata[31]_i_7_n_0 ),
        .I1(\dataCnt_reg_n_0_[6] ),
        .I2(\m_axis_data_tdata[31]_i_8_n_0 ),
        .I3(\dataCnt_reg_n_0_[7] ),
        .I4(\dataCnt_reg_n_0_[8] ),
        .I5(\dataCnt_reg_n_0_[5] ),
        .O(\m_axis_data_tdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFFFF00FF01)) 
    \m_axis_data_tdata[31]_i_6 
       (.I0(\dataCnt_reg_n_0_[0] ),
        .I1(\m_axis_data_tdata[31]_i_9_n_0 ),
        .I2(\dataCnt_reg_n_0_[5] ),
        .I3(\dataCnt_reg_n_0_[9] ),
        .I4(\m_axis_data_tdata[31]_i_10_n_0 ),
        .I5(\dataCnt_reg_n_0_[8] ),
        .O(\m_axis_data_tdata[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_axis_data_tdata[31]_i_7 
       (.I0(\dataCnt_reg_n_0_[1] ),
        .I1(\dataCnt_reg_n_0_[4] ),
        .I2(\dataCnt_reg_n_0_[3] ),
        .I3(\dataCnt_reg_n_0_[2] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .O(\m_axis_data_tdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \m_axis_data_tdata[31]_i_8 
       (.I0(\dataCnt_reg_n_0_[4] ),
        .I1(\dataCnt_reg_n_0_[5] ),
        .I2(\dataCnt_reg_n_0_[3] ),
        .I3(\dataCnt_reg_n_0_[2] ),
        .I4(\dataCnt_reg_n_0_[1] ),
        .I5(\dataCnt_reg_n_0_[8] ),
        .O(\m_axis_data_tdata[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m_axis_data_tdata[31]_i_9 
       (.I0(\dataCnt_reg_n_0_[4] ),
        .I1(\dataCnt_reg_n_0_[3] ),
        .I2(\dataCnt_reg_n_0_[2] ),
        .O(\m_axis_data_tdata[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_data_tdata[8]_i_1 
       (.I0(m_symbol[0]),
        .I1(m_symbol[1]),
        .O(\m_axis_data_tdata[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_data_tdata[9]_i_1 
       (.I0(m_symbol[1]),
        .I1(m_symbol[0]),
        .O(m_axis_data_tdata_0[9]));
  FDRE \m_axis_data_tdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(m_symbol[0]),
        .Q(m_axis_data_tdata[0]),
        .R(p_0_in));
  FDRE \m_axis_data_tdata_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_axis_data_tdata[10]_i_1_n_0 ),
        .Q(m_axis_data_tdata[3]),
        .R(p_0_in));
  FDRE \m_axis_data_tdata_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(m_symbol[1]),
        .Q(m_axis_data_tdata[4]),
        .R(p_0_in));
  FDRE \m_axis_data_tdata_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(m_symbol[2]),
        .Q(m_axis_data_tdata[5]),
        .R(p_0_in));
  FDRE \m_axis_data_tdata_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_axis_data_tdata[24]_i_1_n_0 ),
        .Q(m_axis_data_tdata[6]),
        .R(p_0_in));
  FDRE \m_axis_data_tdata_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_axis_data_tdata[25]_i_1_n_0 ),
        .Q(m_axis_data_tdata[7]),
        .R(p_0_in));
  FDRE \m_axis_data_tdata_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_axis_data_tdata[26]_i_1_n_0 ),
        .Q(m_axis_data_tdata[8]),
        .R(p_0_in));
  FDRE \m_axis_data_tdata_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_data_tdata_0[31]),
        .Q(m_axis_data_tdata[9]),
        .R(p_0_in));
  FDRE \m_axis_data_tdata_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_axis_data_tdata[8]_i_1_n_0 ),
        .Q(m_axis_data_tdata[1]),
        .R(p_0_in));
  FDRE \m_axis_data_tdata_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_data_tdata_0[9]),
        .Q(m_axis_data_tdata[2]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h40)) 
    m_axis_data_tlast_i_1
       (.I0(\m_axis_data_tdata[31]_i_4_n_0 ),
        .I1(m_axis_data_tlast_i_2_n_0),
        .I2(m_axis_data_tlast_i_3_n_0),
        .O(m_axis_data_tlast_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    m_axis_data_tlast_i_2
       (.I0(\dataCnt_reg_n_0_[0] ),
        .I1(\dataCnt_reg_n_0_[1] ),
        .I2(\dataCnt_reg_n_0_[2] ),
        .I3(\dataCnt_reg_n_0_[4] ),
        .I4(\dataCnt_reg_n_0_[3] ),
        .O(m_axis_data_tlast_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    m_axis_data_tlast_i_3
       (.I0(\dataCnt_reg_n_0_[7] ),
        .I1(\dataCnt_reg_n_0_[8] ),
        .I2(\dataCnt_reg_n_0_[5] ),
        .I3(\dataCnt_reg_n_0_[6] ),
        .I4(\dataCnt_reg_n_0_[10] ),
        .I5(\dataCnt_reg_n_0_[9] ),
        .O(m_axis_data_tlast_i_3_n_0));
  FDRE m_axis_data_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_data_tlast_i_1_n_0),
        .Q(m_axis_data_tlast),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    m_axis_data_tvalid_INST_0
       (.I0(m_axis_data_tvalid_INST_0_i_1_n_0),
        .I1(\dataCnt_reg_n_0_[0] ),
        .I2(m_axis_data_tvalid_INST_0_i_2_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(m_axis_data_tready),
        .O(m_axis_data_tvalid));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    m_axis_data_tvalid_INST_0_i_1
       (.I0(\dataCnt_reg_n_0_[7] ),
        .I1(\dataCnt_reg_n_0_[6] ),
        .I2(\dataCnt_reg_n_0_[5] ),
        .I3(\dataCnt_reg_n_0_[8] ),
        .I4(\dataCnt_reg_n_0_[9] ),
        .I5(\m_axis_data_tdata[31]_i_4_n_0 ),
        .O(m_axis_data_tvalid_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_data_tvalid_INST_0_i_2
       (.I0(\dataCnt_reg_n_0_[2] ),
        .I1(\dataCnt_reg_n_0_[3] ),
        .I2(\dataCnt_reg_n_0_[4] ),
        .I3(\dataCnt_reg_n_0_[1] ),
        .O(m_axis_data_tvalid_INST_0_i_2_n_0));
  FDRE \m_symbol_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(lfsr[0]),
        .Q(m_symbol[0]),
        .R(1'b0));
  FDRE \m_symbol_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(lfsr[1]),
        .Q(m_symbol[1]),
        .R(1'b0));
  FDRE \m_symbol_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(lfsr[2]),
        .Q(m_symbol[2]),
        .R(1'b0));
  FDRE \m_symbol_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(lfsr[3]),
        .Q(m_symbol[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    trig_active_i_1
       (.I0(trig_r1),
        .I1(trig),
        .O(trig_active0));
  FDRE trig_active_reg
       (.C(clk),
        .CE(1'b1),
        .D(trig_active0),
        .Q(trig_active),
        .R(1'b0));
  FDRE trig_r1_reg
       (.C(clk),
        .CE(1'b1),
        .D(trig_r2),
        .Q(trig_r1),
        .R(1'b0));
  FDRE trig_r2_reg
       (.C(clk),
        .CE(1'b1),
        .D(trigger),
        .Q(trig_r2),
        .R(1'b0));
  FDRE trig_reg
       (.C(clk),
        .CE(1'b1),
        .D(trig_r1),
        .Q(trig),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "top_fake_data_src_0_0,fake_data_src,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fake_data_src,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    trigger,
    m_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tlast,
    m_axis_data_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_data, FREQ_HZ 97875000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input trigger;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TDATA" *) output [31:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TVALID" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TLAST" *) output m_axis_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_data, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 97875000, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_data_tready;

  wire clk;
  wire [30:0]\^m_axis_data_tdata ;
  wire m_axis_data_tlast;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire trigger;

  assign m_axis_data_tdata[31] = \^m_axis_data_tdata [30];
  assign m_axis_data_tdata[30] = \^m_axis_data_tdata [30];
  assign m_axis_data_tdata[29] = \^m_axis_data_tdata [30];
  assign m_axis_data_tdata[28] = \^m_axis_data_tdata [30];
  assign m_axis_data_tdata[27] = \^m_axis_data_tdata [30];
  assign m_axis_data_tdata[26] = \^m_axis_data_tdata [26];
  assign m_axis_data_tdata[25:24] = \^m_axis_data_tdata [23:22];
  assign m_axis_data_tdata[23:22] = \^m_axis_data_tdata [23:22];
  assign m_axis_data_tdata[21:20] = \^m_axis_data_tdata [23:22];
  assign m_axis_data_tdata[19:18] = \^m_axis_data_tdata [23:22];
  assign m_axis_data_tdata[17] = \^m_axis_data_tdata [23];
  assign m_axis_data_tdata[16] = \^m_axis_data_tdata [16];
  assign m_axis_data_tdata[15] = \^m_axis_data_tdata [14];
  assign m_axis_data_tdata[14] = \^m_axis_data_tdata [14];
  assign m_axis_data_tdata[13] = \^m_axis_data_tdata [14];
  assign m_axis_data_tdata[12] = \^m_axis_data_tdata [14];
  assign m_axis_data_tdata[11] = \^m_axis_data_tdata [14];
  assign m_axis_data_tdata[10] = \^m_axis_data_tdata [10];
  assign m_axis_data_tdata[9:8] = \^m_axis_data_tdata [7:6];
  assign m_axis_data_tdata[7:6] = \^m_axis_data_tdata [7:6];
  assign m_axis_data_tdata[5:4] = \^m_axis_data_tdata [7:6];
  assign m_axis_data_tdata[3:2] = \^m_axis_data_tdata [7:6];
  assign m_axis_data_tdata[1] = \^m_axis_data_tdata [7];
  assign m_axis_data_tdata[0] = \^m_axis_data_tdata [0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fake_data_src inst
       (.clk(clk),
        .m_axis_data_tdata({\^m_axis_data_tdata [30],\^m_axis_data_tdata [26],\^m_axis_data_tdata [23:22],\^m_axis_data_tdata [16],\^m_axis_data_tdata [14],\^m_axis_data_tdata [10],\^m_axis_data_tdata [7:6],\^m_axis_data_tdata [0]}),
        .m_axis_data_tlast(m_axis_data_tlast),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .trigger(trigger));
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
