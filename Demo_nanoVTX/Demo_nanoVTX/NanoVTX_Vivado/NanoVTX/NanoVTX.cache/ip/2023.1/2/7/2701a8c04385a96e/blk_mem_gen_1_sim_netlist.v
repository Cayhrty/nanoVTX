// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 17:50:04 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [23:0]douta;
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
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0424 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
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
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19136)
`pragma protect data_block
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
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
