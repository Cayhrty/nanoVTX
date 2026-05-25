// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 17:50:26 2023
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
    sample_trig,
    clk);
  output tvalid;
  input sample_trig;
  input clk;

  wire clk;
  wire [15:1]data0;
  wire [15:0]dataCnt;
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
  wire \dataCnt[15]_i_3_n_0 ;
  wire last_trig;
  wire last_trig_r1;
  wire last_trig_r2;
  wire p_0_in;
  wire [15:0]p_1_in;
  wire sample_trig;
  wire tvalid;
  wire tvalid0;
  wire tvalid_i_2_n_0;
  wire tvalid_i_3_n_0;
  wire tvalid_i_4_n_0;
  wire tvalid_i_5_n_0;
  wire [3:2]NLW_dataCnt0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_dataCnt0_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dataCnt0_carry
       (.CI(1'b0),
        .CO({dataCnt0_carry_n_0,dataCnt0_carry_n_1,dataCnt0_carry_n_2,dataCnt0_carry_n_3}),
        .CYINIT(dataCnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(dataCnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dataCnt0_carry__0
       (.CI(dataCnt0_carry_n_0),
        .CO({dataCnt0_carry__0_n_0,dataCnt0_carry__0_n_1,dataCnt0_carry__0_n_2,dataCnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(dataCnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dataCnt0_carry__1
       (.CI(dataCnt0_carry__0_n_0),
        .CO({dataCnt0_carry__1_n_0,dataCnt0_carry__1_n_1,dataCnt0_carry__1_n_2,dataCnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(dataCnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 dataCnt0_carry__2
       (.CI(dataCnt0_carry__1_n_0),
        .CO({NLW_dataCnt0_carry__2_CO_UNCONNECTED[3:2],dataCnt0_carry__2_n_2,dataCnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_dataCnt0_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,dataCnt[15:13]}));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \dataCnt[0]_i_1 
       (.I0(last_trig),
        .I1(last_trig_r1),
        .I2(dataCnt[0]),
        .I3(tvalid0),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[10]_i_1 
       (.I0(tvalid0),
        .I1(data0[10]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[11]_i_1 
       (.I0(tvalid0),
        .I1(data0[11]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[12]_i_1 
       (.I0(tvalid0),
        .I1(data0[12]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[13]_i_1 
       (.I0(tvalid0),
        .I1(data0[13]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[14]_i_1 
       (.I0(tvalid0),
        .I1(data0[14]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \dataCnt[15]_i_1 
       (.I0(\dataCnt[15]_i_3_n_0 ),
        .I1(dataCnt[7]),
        .I2(dataCnt[2]),
        .I3(dataCnt[10]),
        .I4(dataCnt[3]),
        .I5(tvalid_i_3_n_0),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[15]_i_2 
       (.I0(tvalid0),
        .I1(data0[15]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \dataCnt[15]_i_3 
       (.I0(dataCnt[13]),
        .I1(dataCnt[15]),
        .I2(dataCnt[12]),
        .I3(dataCnt[14]),
        .I4(tvalid_i_4_n_0),
        .O(\dataCnt[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[1]_i_1 
       (.I0(tvalid0),
        .I1(data0[1]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[2]_i_1 
       (.I0(tvalid0),
        .I1(data0[2]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[3]_i_1 
       (.I0(tvalid0),
        .I1(data0[3]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[4]_i_1 
       (.I0(tvalid0),
        .I1(data0[4]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[5]_i_1 
       (.I0(tvalid0),
        .I1(data0[5]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[6]_i_1 
       (.I0(tvalid0),
        .I1(data0[6]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[7]_i_1 
       (.I0(tvalid0),
        .I1(data0[7]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[8]_i_1 
       (.I0(tvalid0),
        .I1(data0[8]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \dataCnt[9]_i_1 
       (.I0(tvalid0),
        .I1(data0[9]),
        .I2(last_trig_r1),
        .I3(last_trig),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(dataCnt[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(dataCnt[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(dataCnt[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(dataCnt[12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(dataCnt[13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(dataCnt[14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(dataCnt[15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(dataCnt[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(dataCnt[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(dataCnt[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(dataCnt[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(dataCnt[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(dataCnt[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(dataCnt[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(dataCnt[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \dataCnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(dataCnt[9]),
        .R(p_0_in));
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
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    tvalid_i_1
       (.I0(tvalid_i_2_n_0),
        .I1(dataCnt[10]),
        .I2(dataCnt[3]),
        .I3(tvalid_i_3_n_0),
        .I4(tvalid_i_4_n_0),
        .I5(tvalid_i_5_n_0),
        .O(tvalid0));
  LUT2 #(
    .INIT(4'hE)) 
    tvalid_i_2
       (.I0(dataCnt[2]),
        .I1(dataCnt[7]),
        .O(tvalid_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tvalid_i_3
       (.I0(dataCnt[8]),
        .I1(dataCnt[9]),
        .I2(dataCnt[11]),
        .I3(dataCnt[6]),
        .O(tvalid_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tvalid_i_4
       (.I0(dataCnt[1]),
        .I1(dataCnt[5]),
        .I2(dataCnt[4]),
        .I3(dataCnt[0]),
        .O(tvalid_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    tvalid_i_5
       (.I0(dataCnt[14]),
        .I1(dataCnt[12]),
        .I2(dataCnt[15]),
        .I3(dataCnt[13]),
        .O(tvalid_i_5_n_0));
  FDRE tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(tvalid0),
        .Q(tvalid),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "top_SampleControl_0_0,SampleControl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "SampleControl,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    sample_trig,
    tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input sample_trig;
  output tvalid;

  wire clk;
  wire sample_trig;
  wire tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SampleControl inst
       (.clk(clk),
        .sample_trig(sample_trig),
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
