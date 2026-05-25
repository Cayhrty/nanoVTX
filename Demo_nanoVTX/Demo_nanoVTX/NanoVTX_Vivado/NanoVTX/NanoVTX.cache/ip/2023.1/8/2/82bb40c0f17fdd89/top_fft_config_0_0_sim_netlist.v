// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 12 20:29:01 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_fft_config_0_0_sim_netlist.v
// Design      : top_fft_config_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_fft_config_0_0,fft_config,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fft_config,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (m_axis_config_tdata,
    m_axis_config_tready,
    m_axis_config_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TDATA" *) output [31:0]m_axis_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TREADY" *) input m_axis_config_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_config, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 97875000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_config_tvalid;

  wire \<const0> ;
  wire \<const1> ;
  wire m_axis_config_tready;

  assign m_axis_config_tdata[31] = \<const0> ;
  assign m_axis_config_tdata[30] = \<const0> ;
  assign m_axis_config_tdata[29] = \<const0> ;
  assign m_axis_config_tdata[28] = \<const0> ;
  assign m_axis_config_tdata[27] = \<const0> ;
  assign m_axis_config_tdata[26] = \<const1> ;
  assign m_axis_config_tdata[25] = \<const0> ;
  assign m_axis_config_tdata[24] = \<const1> ;
  assign m_axis_config_tdata[23] = \<const0> ;
  assign m_axis_config_tdata[22] = \<const0> ;
  assign m_axis_config_tdata[21] = \<const1> ;
  assign m_axis_config_tdata[20] = \<const0> ;
  assign m_axis_config_tdata[19] = \<const1> ;
  assign m_axis_config_tdata[18] = \<const0> ;
  assign m_axis_config_tdata[17] = \<const1> ;
  assign m_axis_config_tdata[16] = \<const0> ;
  assign m_axis_config_tdata[15] = \<const0> ;
  assign m_axis_config_tdata[14] = \<const0> ;
  assign m_axis_config_tdata[13] = \<const0> ;
  assign m_axis_config_tdata[12] = \<const0> ;
  assign m_axis_config_tdata[11] = \<const0> ;
  assign m_axis_config_tdata[10] = \<const0> ;
  assign m_axis_config_tdata[9] = \<const0> ;
  assign m_axis_config_tdata[8] = \<const0> ;
  assign m_axis_config_tdata[7] = \<const1> ;
  assign m_axis_config_tdata[6] = \<const0> ;
  assign m_axis_config_tdata[5] = \<const0> ;
  assign m_axis_config_tdata[4] = \<const0> ;
  assign m_axis_config_tdata[3] = \<const0> ;
  assign m_axis_config_tdata[2] = \<const0> ;
  assign m_axis_config_tdata[1] = \<const0> ;
  assign m_axis_config_tdata[0] = \<const0> ;
  assign m_axis_config_tvalid = m_axis_config_tready;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
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
