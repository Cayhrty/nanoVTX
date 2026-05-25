// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 20:01:54 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_SampleControl_0_0_sim_netlist.v
// Design      : top_SampleControl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SampleControl
   (tvalid,
    tvalid_in,
    sample_trig,
    clk);
  output tvalid;
  input tvalid_in;
  input sample_trig;
  input clk;

  wire clk;
  wire [15:1]data0;
  wire [1:1]dataCnt;
  wire dataCnt0_carry__0_n_0;
  wire dataCnt0_carry__0_n_1;
  wire dataCnt0_carry__0_n_2;
  wire dataCnt0_carry__0_n_3;
  wire dataCnt0_carry__1_n_0;
  wire dataCnt0_carry__1_n_1;
  wire dataCnt0_carry__1_n_2;
  wire dataCnt0_carry__1_n_3;
  wire dataCnt0_carry__2_n_2;
  wire dataCnt0_carry__2_n_3;
  wire dataCnt0_carry_n_0;
  wire dataCnt0_carry_n_1;
  wire dataCnt0_carry_n_2;
  wire dataCnt0_carry_n_3;
  wire \dataCnt[0]_i_1_n_0 ;
  wire \dataCnt[10]_i_1_n_0 ;
  wire \dataCnt[11]_i_1_n_0 ;
  wire \dataCnt[12]_i_1_n_0 ;
  wire \dataCnt[13]_i_1_n_0 ;
  wire \dataCnt[14]_i_1_n_0 ;
  wire \dataCnt[15]_i_3_n_0 ;
  wire \dataCnt[15]_i_4_n_0 ;
  wire \dataCnt[1]_i_1_n_0 ;
  wire \dataCnt[2]_i_1_n_0 ;
  wire \dataCnt[3]_i_1_n_0 ;
  wire \dataCnt[4]_i_1_n_0 ;
  wire \dataCnt[5]_i_1_n_0 ;
  wire \dataCnt[6]_i_1_n_0 ;
  wire \dataCnt[7]_i_1_n_0 ;
  wire \dataCnt[8]_i_1_n_0 ;
  wire \dataCnt[9]_i_1_n_0 ;
  wire dataCnt_0;
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
  wire last_trig;
  wire last_trig_r1;
  wire last_trig_r2;
  wire sample_trig;
  wire tvalid;
  wire tvalid_INST_0_i_1_n_0;
  wire tvalid_INST_0_i_2_n_0;
  wire tvalid_INST_0_i_3_n_0;
  wire tvalid_in;
  wire [3:2]NLW_dataCnt0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_dataCnt0_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dataCnt0_carry
       (.CI(1'b0),
        .CO({dataCnt0_carry_n_0,dataCnt0_carry_n_1,dataCnt0_carry_n_2,dataCnt0_carry_n_3}),
        .CYINIT(\dataCnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\dataCnt_reg_n_0_[4] ,\dataCnt_reg_n_0_[3] ,\dataCnt_reg_n_0_[2] ,\dataCnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dataCnt0_carry__0
       (.CI(dataCnt0_carry_n_0),
        .CO({dataCnt0_carry__0_n_0,dataCnt0_carry__0_n_1,dataCnt0_carry__0_n_2,dataCnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\dataCnt_reg_n_0_[8] ,\dataCnt_reg_n_0_[7] ,\dataCnt_reg_n_0_[6] ,\dataCnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dataCnt0_carry__1
       (.CI(dataCnt0_carry__0_n_0),
        .CO({dataCnt0_carry__1_n_0,dataCnt0_carry__1_n_1,dataCnt0_carry__1_n_2,dataCnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\dataCnt_reg_n_0_[12] ,\dataCnt_reg_n_0_[11] ,\dataCnt_reg_n_0_[10] ,\dataCnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dataCnt0_carry__2
       (.CI(dataCnt0_carry__1_n_0),
        .CO({NLW_dataCnt0_carry__2_CO_UNCONNECTED[3:2],dataCnt0_carry__2_n_2,dataCnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_dataCnt0_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,\dataCnt_reg_n_0_[15] ,\dataCnt_reg_n_0_[14] ,\dataCnt_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h2F022F222FF22FF2)) 
    \dataCnt[0]_i_1 
       (.I0(last_trig_r1),
        .I1(last_trig),
        .I2(tvalid_in),
        .I3(\dataCnt_reg_n_0_[0] ),
        .I4(\dataCnt_reg_n_0_[10] ),
        .I5(\dataCnt[15]_i_4_n_0 ),
        .O(\dataCnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[10]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[10]),
        .O(\dataCnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[11]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[11]),
        .O(\dataCnt[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[12]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[12]),
        .O(\dataCnt[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[13]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[13]),
        .O(\dataCnt[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[14]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[14]),
        .O(\dataCnt[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \dataCnt[15]_i_1 
       (.I0(last_trig),
        .I1(last_trig_r1),
        .I2(tvalid_in),
        .I3(\dataCnt_reg_n_0_[0] ),
        .I4(\dataCnt_reg_n_0_[10] ),
        .I5(\dataCnt[15]_i_4_n_0 ),
        .O(dataCnt));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \dataCnt[15]_i_2 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(tvalid_in),
        .O(dataCnt_0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[15]_i_3 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[15]),
        .O(\dataCnt[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \dataCnt[15]_i_4 
       (.I0(tvalid_INST_0_i_3_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(\dataCnt_reg_n_0_[9] ),
        .I3(\dataCnt_reg_n_0_[8] ),
        .I4(\dataCnt_reg_n_0_[11] ),
        .I5(\dataCnt_reg_n_0_[4] ),
        .O(\dataCnt[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[1]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[1]),
        .O(\dataCnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[2]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[2]),
        .O(\dataCnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[3]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[3]),
        .O(\dataCnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[4]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[4]),
        .O(\dataCnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[5]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[5]),
        .O(\dataCnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[6]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[6]),
        .O(\dataCnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[7]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[7]),
        .O(\dataCnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[8]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[8]),
        .O(\dataCnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    \dataCnt[9]_i_1 
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(data0[9]),
        .O(\dataCnt[9]_i_1_n_0 ));
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
        .CE(dataCnt_0),
        .D(\dataCnt[10]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[10] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[11] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[11]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[11] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[12] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[12]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[12] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[13] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[13]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[13] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[14] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[14]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[14] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[15] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[15]_i_3_n_0 ),
        .Q(\dataCnt_reg_n_0_[15] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[1] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[1]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[1] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[2] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[2]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[2] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[3] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[3]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[3] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[4] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[4]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[4] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[5] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[5]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[5] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[6] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[6]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[6] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[7] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[7]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[7] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[8] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[8]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[8] ),
        .R(dataCnt));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[9] 
       (.C(clk),
        .CE(dataCnt_0),
        .D(\dataCnt[9]_i_1_n_0 ),
        .Q(\dataCnt_reg_n_0_[9] ),
        .R(dataCnt));
  FDRE last_trig_r1_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_trig_r2),
        .Q(last_trig_r1),
        .R(1'b0));
  FDRE last_trig_r2_reg
       (.C(clk),
        .CE(1'b1),
        .D(sample_trig),
        .Q(last_trig_r2),
        .R(1'b0));
  FDRE last_trig_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_trig_r1),
        .Q(last_trig),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000000)) 
    tvalid_INST_0
       (.I0(tvalid_INST_0_i_1_n_0),
        .I1(tvalid_INST_0_i_2_n_0),
        .I2(tvalid_INST_0_i_3_n_0),
        .I3(\dataCnt_reg_n_0_[10] ),
        .I4(\dataCnt_reg_n_0_[0] ),
        .I5(tvalid_in),
        .O(tvalid));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tvalid_INST_0_i_1
       (.I0(\dataCnt_reg_n_0_[9] ),
        .I1(\dataCnt_reg_n_0_[8] ),
        .I2(\dataCnt_reg_n_0_[11] ),
        .I3(\dataCnt_reg_n_0_[4] ),
        .O(tvalid_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tvalid_INST_0_i_2
       (.I0(\dataCnt_reg_n_0_[14] ),
        .I1(\dataCnt_reg_n_0_[2] ),
        .I2(\dataCnt_reg_n_0_[13] ),
        .I3(\dataCnt_reg_n_0_[6] ),
        .O(tvalid_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    tvalid_INST_0_i_3
       (.I0(\dataCnt_reg_n_0_[7] ),
        .I1(\dataCnt_reg_n_0_[5] ),
        .I2(\dataCnt_reg_n_0_[1] ),
        .I3(\dataCnt_reg_n_0_[3] ),
        .I4(\dataCnt_reg_n_0_[12] ),
        .I5(\dataCnt_reg_n_0_[15] ),
        .O(tvalid_INST_0_i_3_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "top_SampleControl_0_0,SampleControl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "SampleControl,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    sample_trig,
    tvalid,
    tvalid_in);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 79999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input sample_trig;
  output tvalid;
  input tvalid_in;

  wire clk;
  wire sample_trig;
  wire tvalid;
  wire tvalid_in;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SampleControl inst
       (.clk(clk),
        .sample_trig(sample_trig),
        .tvalid(tvalid),
        .tvalid_in(tvalid_in));
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
