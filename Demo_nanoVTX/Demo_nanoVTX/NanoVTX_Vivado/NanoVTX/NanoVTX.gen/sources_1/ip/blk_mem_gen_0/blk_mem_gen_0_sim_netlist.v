// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 17:50:04 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/NanoVTX/NanoVTX.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 37056)
`pragma protect data_block
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
4lgjO/ri
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
