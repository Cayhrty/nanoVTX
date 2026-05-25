// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 17:50:04 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top top_blk_mem_gen_0_0 -prefix
//               top_blk_mem_gen_0_0_ top_blk_mem_gen_0_0_sim_netlist.v
// Design      : top_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_blk_mem_gen_0_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module top_blk_mem_gen_0_0
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [23:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [23:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [23:0]dina;
  wire [23:0]doutb;
  wire [0:0]wea;
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
  wire [23:0]NLW_U0_douta_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.4452 mW" *) 
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
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
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
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  top_blk_mem_gen_0_0_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[23:0]),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 37376)
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
