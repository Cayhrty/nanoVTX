// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Sep 20 17:50:04 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_blk_mem_gen_0_0_sim_netlist.v
// Design      : top_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_blk_mem_gen_0_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 37696)
`pragma protect data_block
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
2li4uG3HGHdBER6GUs6ehrVrgQ==
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
