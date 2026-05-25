// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 17:50:04 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
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
WD1xuQlIl2ydhgt+JEy9Q6xLx0k=
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
