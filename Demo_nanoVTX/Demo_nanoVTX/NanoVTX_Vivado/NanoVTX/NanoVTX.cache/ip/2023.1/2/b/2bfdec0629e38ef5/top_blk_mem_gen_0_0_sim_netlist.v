// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 12 20:32:03 2023
// Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_blk_mem_gen_0_0_sim_netlist.v
// Design      : top_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
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
nimQpU9D935z37kITMXLvdneew==
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
