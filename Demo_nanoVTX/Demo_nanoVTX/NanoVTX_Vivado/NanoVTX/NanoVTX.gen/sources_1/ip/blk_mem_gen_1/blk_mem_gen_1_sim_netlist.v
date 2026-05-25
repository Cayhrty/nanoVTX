// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 17:50:04 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/NanoVTX/NanoVTX.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
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
  blk_mem_gen_1_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19120)
`pragma protect data_block
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
31RQj1agXfPD58adpjqPcoGMFd8zw+yGdQ==
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
