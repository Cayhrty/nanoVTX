// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 12 20:32:03 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [23:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [23:0]douta;
  wire [23:0]doutb;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.3231 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 37184)
`pragma protect data_block
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
5tYe+T59A3sfv6YYcbFc/OyQero=
`pragma protect end_protected
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
