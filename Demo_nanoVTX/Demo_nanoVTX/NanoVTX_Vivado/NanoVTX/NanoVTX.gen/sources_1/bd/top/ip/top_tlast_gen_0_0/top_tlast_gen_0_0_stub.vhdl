-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Sep 20 21:43:37 2023
-- Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/FPGA/NanoVTX/NanoVTX.gen/sources_1/bd/top/ip/top_tlast_gen_0_0/top_tlast_gen_0_0_stub.vhdl
-- Design      : top_tlast_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_tlast_gen_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    tvalid : in STD_LOGIC;
    tready : in STD_LOGIC;
    tlast : out STD_LOGIC;
    rst_n : in STD_LOGIC
  );

end top_tlast_gen_0_0;

architecture stub of top_tlast_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,tvalid,tready,tlast,rst_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tlast_gen,Vivado 2023.1";
begin
end;
