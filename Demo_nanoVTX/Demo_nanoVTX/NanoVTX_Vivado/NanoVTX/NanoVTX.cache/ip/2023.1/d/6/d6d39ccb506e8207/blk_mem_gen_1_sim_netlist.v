// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 12 20:32:02 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
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
