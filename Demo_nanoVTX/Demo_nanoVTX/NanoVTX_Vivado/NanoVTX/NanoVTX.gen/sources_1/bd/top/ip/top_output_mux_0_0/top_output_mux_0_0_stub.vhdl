-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Sep 20 21:00:01 2023
-- Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/FPGA/NanoVTX/NanoVTX.gen/sources_1/bd/top/ip/top_output_mux_0_0/top_output_mux_0_0_stub.vhdl
-- Design      : top_output_mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_output_mux_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    s_axis_symbol_tvalid : in STD_LOGIC;
    s_axis_symbol_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_symbol_rden : out STD_LOGIC;
    symbol_buf_waddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    symbol_buf_raddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    symbol_buf_wren : out STD_LOGIC;
    symbol_buf_dout : in STD_LOGIC_VECTOR ( 23 downto 0 );
    fifo_data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    p0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    p1 : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end top_output_mux_0_0;

architecture stub of top_output_mux_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,s_axis_symbol_tvalid,s_axis_symbol_tdata[23:0],s_axis_symbol_rden,symbol_buf_waddr[10:0],symbol_buf_raddr[10:0],symbol_buf_wren,symbol_buf_dout[23:0],fifo_data_out[31:0],p0[11:0],p1[11:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "output_mux,Vivado 2023.1";
begin
end;
