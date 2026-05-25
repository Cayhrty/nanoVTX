-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Sep 20 21:00:01 2023
-- Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/FPGA/NanoVTX/NanoVTX.gen/sources_1/bd/top/ip/top_output_mux_0_0/top_output_mux_0_0_sim_netlist.vhdl
-- Design      : top_output_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_output_mux_0_0_output_mux is
  port (
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_output_mux_0_0_output_mux : entity is "output_mux";
end top_output_mux_0_0_output_mux;

architecture STRUCTURE of top_output_mux_0_0_output_mux is
  component top_output_mux_0_0_blk_mem_gen_1 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component top_output_mux_0_0_blk_mem_gen_1;
  component top_output_mux_0_0_blk_mem_gen_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 23 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component top_output_mux_0_0_blk_mem_gen_0;
  signal B : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \current_symbol[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_symbol[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_symbol[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_symbol_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_symbol_reg_n_0_[1]\ : STD_LOGIC;
  signal \^fifo_data_out\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \last_symbol[0]_i_1_n_0\ : STD_LOGIC;
  signal \last_symbol[1]_i_1_n_0\ : STD_LOGIC;
  signal \last_symbol_reg_n_0_[0]\ : STD_LOGIC;
  signal \last_symbol_reg_n_0_[1]\ : STD_LOGIC;
  signal lts_rom_dout : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal nw_curr : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal nw_last : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal nw_rom_dout : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^p0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^p1\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal prod10_n_100 : STD_LOGIC;
  signal prod10_n_101 : STD_LOGIC;
  signal prod10_n_102 : STD_LOGIC;
  signal prod10_n_103 : STD_LOGIC;
  signal prod10_n_104 : STD_LOGIC;
  signal prod10_n_105 : STD_LOGIC;
  signal prod10_n_81 : STD_LOGIC;
  signal prod10_n_82 : STD_LOGIC;
  signal prod10_n_83 : STD_LOGIC;
  signal prod10_n_84 : STD_LOGIC;
  signal prod10_n_85 : STD_LOGIC;
  signal prod10_n_86 : STD_LOGIC;
  signal prod10_n_87 : STD_LOGIC;
  signal prod10_n_88 : STD_LOGIC;
  signal prod10_n_89 : STD_LOGIC;
  signal prod10_n_90 : STD_LOGIC;
  signal prod10_n_91 : STD_LOGIC;
  signal prod10_n_92 : STD_LOGIC;
  signal prod10_n_93 : STD_LOGIC;
  signal prod10_n_94 : STD_LOGIC;
  signal prod10_n_95 : STD_LOGIC;
  signal prod10_n_96 : STD_LOGIC;
  signal prod10_n_97 : STD_LOGIC;
  signal prod10_n_98 : STD_LOGIC;
  signal prod10_n_99 : STD_LOGIC;
  signal prod1_i_10_n_0 : STD_LOGIC;
  signal prod1_i_11_n_0 : STD_LOGIC;
  signal prod1_i_12_n_0 : STD_LOGIC;
  signal prod1_i_1_n_0 : STD_LOGIC;
  signal prod1_i_2_n_0 : STD_LOGIC;
  signal prod1_i_3_n_0 : STD_LOGIC;
  signal prod1_i_4_n_0 : STD_LOGIC;
  signal prod1_i_5_n_0 : STD_LOGIC;
  signal prod1_i_6_n_0 : STD_LOGIC;
  signal prod1_i_7_n_0 : STD_LOGIC;
  signal prod1_i_8_n_0 : STD_LOGIC;
  signal prod1_i_9_n_0 : STD_LOGIC;
  signal prod1_n_100 : STD_LOGIC;
  signal prod1_n_101 : STD_LOGIC;
  signal prod1_n_102 : STD_LOGIC;
  signal prod1_n_103 : STD_LOGIC;
  signal prod1_n_104 : STD_LOGIC;
  signal prod1_n_105 : STD_LOGIC;
  signal prod1_n_94 : STD_LOGIC;
  signal prod1_n_95 : STD_LOGIC;
  signal prod1_n_96 : STD_LOGIC;
  signal prod1_n_97 : STD_LOGIC;
  signal prod1_n_98 : STD_LOGIC;
  signal prod1_n_99 : STD_LOGIC;
  signal prod20_i_10_n_0 : STD_LOGIC;
  signal prod20_i_11_n_0 : STD_LOGIC;
  signal prod20_i_12_n_0 : STD_LOGIC;
  signal prod20_i_1_n_0 : STD_LOGIC;
  signal prod20_i_2_n_0 : STD_LOGIC;
  signal prod20_i_3_n_0 : STD_LOGIC;
  signal prod20_i_4_n_0 : STD_LOGIC;
  signal prod20_i_5_n_0 : STD_LOGIC;
  signal prod20_i_6_n_0 : STD_LOGIC;
  signal prod20_i_7_n_0 : STD_LOGIC;
  signal prod20_i_8_n_0 : STD_LOGIC;
  signal prod20_i_9_n_0 : STD_LOGIC;
  signal prod20_n_100 : STD_LOGIC;
  signal prod20_n_101 : STD_LOGIC;
  signal prod20_n_102 : STD_LOGIC;
  signal prod20_n_103 : STD_LOGIC;
  signal prod20_n_104 : STD_LOGIC;
  signal prod20_n_105 : STD_LOGIC;
  signal prod20_n_81 : STD_LOGIC;
  signal prod20_n_82 : STD_LOGIC;
  signal prod20_n_83 : STD_LOGIC;
  signal prod20_n_84 : STD_LOGIC;
  signal prod20_n_85 : STD_LOGIC;
  signal prod20_n_86 : STD_LOGIC;
  signal prod20_n_87 : STD_LOGIC;
  signal prod20_n_88 : STD_LOGIC;
  signal prod20_n_89 : STD_LOGIC;
  signal prod20_n_90 : STD_LOGIC;
  signal prod20_n_91 : STD_LOGIC;
  signal prod20_n_92 : STD_LOGIC;
  signal prod20_n_93 : STD_LOGIC;
  signal prod20_n_94 : STD_LOGIC;
  signal prod20_n_95 : STD_LOGIC;
  signal prod20_n_96 : STD_LOGIC;
  signal prod20_n_97 : STD_LOGIC;
  signal prod20_n_98 : STD_LOGIC;
  signal prod20_n_99 : STD_LOGIC;
  signal prod2_i_10_n_0 : STD_LOGIC;
  signal prod2_i_11_n_0 : STD_LOGIC;
  signal prod2_i_12_n_0 : STD_LOGIC;
  signal prod2_i_1_n_0 : STD_LOGIC;
  signal prod2_i_2_n_0 : STD_LOGIC;
  signal prod2_i_3_n_0 : STD_LOGIC;
  signal prod2_i_4_n_0 : STD_LOGIC;
  signal prod2_i_5_n_0 : STD_LOGIC;
  signal prod2_i_6_n_0 : STD_LOGIC;
  signal prod2_i_7_n_0 : STD_LOGIC;
  signal prod2_i_8_n_0 : STD_LOGIC;
  signal prod2_i_9_n_0 : STD_LOGIC;
  signal prod2_n_100 : STD_LOGIC;
  signal prod2_n_101 : STD_LOGIC;
  signal prod2_n_102 : STD_LOGIC;
  signal prod2_n_103 : STD_LOGIC;
  signal prod2_n_104 : STD_LOGIC;
  signal prod2_n_105 : STD_LOGIC;
  signal prod2_n_94 : STD_LOGIC;
  signal prod2_n_95 : STD_LOGIC;
  signal prod2_n_96 : STD_LOGIC;
  signal prod2_n_97 : STD_LOGIC;
  signal prod2_n_98 : STD_LOGIC;
  signal prod2_n_99 : STD_LOGIC;
  signal s_axis_symbol_rden0 : STD_LOGIC;
  signal sts_rom_dout : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^symbol_buf_raddr\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^symbol_buf_waddr\ : STD_LOGIC_VECTOR ( 10 downto 7 );
  signal \^symbol_buf_wren\ : STD_LOGIC;
  signal \symbol_index_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal NLW_prod1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_prod1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_prod1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_prod1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_prod1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_prod1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_prod1_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_prod10_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod10_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod10_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_prod10_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod10_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod10_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_prod10_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_prod10_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_prod10_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_prod10_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 25 );
  signal NLW_prod10_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_prod2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_prod2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_prod2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_prod2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_prod2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_prod2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_prod2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_prod20_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod20_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod20_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_prod20_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod20_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_prod20_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_prod20_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_prod20_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_prod20_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_prod20_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 25 );
  signal NLW_prod20_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_symbol[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \last_symbol[1]_i_1\ : label is "soft_lutpair0";
  attribute x_core_info : string;
  attribute x_core_info of nw_rom : label is "blk_mem_gen_v8_4_6,Vivado 2023.1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of prod1 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of prod10 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of prod2 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of prod20 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute x_core_info of sts_lts_rom : label is "blk_mem_gen_v8_4_6,Vivado 2023.1";
  attribute SOFT_HLUTNM of \symbol_buf_raddr[10]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \symbol_buf_raddr[7]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \symbol_buf_raddr[8]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \symbol_buf_raddr[9]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \symbol_index_cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \symbol_index_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \symbol_index_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \symbol_index_cnt[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \symbol_index_cnt[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \symbol_index_cnt[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \symbol_index_cnt[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \symbol_index_cnt[9]_i_1\ : label is "soft_lutpair1";
begin
  fifo_data_out(31) <= \^fifo_data_out\(30);
  fifo_data_out(30) <= \^fifo_data_out\(30);
  fifo_data_out(29) <= \^fifo_data_out\(30);
  fifo_data_out(28) <= \^fifo_data_out\(30);
  fifo_data_out(27) <= \^fifo_data_out\(30);
  fifo_data_out(26 downto 16) <= \^fifo_data_out\(26 downto 16);
  fifo_data_out(15) <= \^fifo_data_out\(14);
  fifo_data_out(14) <= \^fifo_data_out\(14);
  fifo_data_out(13) <= \^fifo_data_out\(14);
  fifo_data_out(12) <= \^fifo_data_out\(14);
  fifo_data_out(11) <= \^fifo_data_out\(14);
  fifo_data_out(10 downto 0) <= \^fifo_data_out\(10 downto 0);
  p0(11 downto 0) <= \^p0\(11 downto 0);
  p1(11 downto 0) <= \^p1\(11 downto 0);
  s_axis_symbol_rden <= \^symbol_buf_wren\;
  symbol_buf_raddr(10 downto 0) <= \^symbol_buf_raddr\(10 downto 0);
  symbol_buf_waddr(10 downto 7) <= \^symbol_buf_waddr\(10 downto 7);
  symbol_buf_waddr(6 downto 0) <= \^symbol_buf_raddr\(6 downto 0);
  symbol_buf_wren <= \^symbol_buf_wren\;
\current_symbol[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF70808F7F70800"
    )
        port map (
      I0 => \current_symbol[1]_i_2_n_0\,
      I1 => \^symbol_buf_raddr\(6),
      I2 => \symbol_index_cnt[10]_i_3_n_0\,
      I3 => \current_symbol_reg_n_0_[1]\,
      I4 => \current_symbol_reg_n_0_[0]\,
      I5 => s_axis_symbol_tvalid,
      O => \current_symbol[0]_i_1_n_0\
    );
\current_symbol[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FF00F708FF00"
    )
        port map (
      I0 => \current_symbol[1]_i_2_n_0\,
      I1 => \^symbol_buf_raddr\(6),
      I2 => \symbol_index_cnt[10]_i_3_n_0\,
      I3 => \current_symbol_reg_n_0_[1]\,
      I4 => \current_symbol_reg_n_0_[0]\,
      I5 => s_axis_symbol_tvalid,
      O => \current_symbol[1]_i_1_n_0\
    );
\current_symbol[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^symbol_buf_waddr\(8),
      I1 => \^symbol_buf_waddr\(7),
      I2 => \^symbol_buf_waddr\(9),
      I3 => \^symbol_buf_waddr\(10),
      O => \current_symbol[1]_i_2_n_0\
    );
\current_symbol_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \current_symbol[0]_i_1_n_0\,
      Q => \current_symbol_reg_n_0_[0]\,
      R => '0'
    );
\current_symbol_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \current_symbol[1]_i_1_n_0\,
      Q => \current_symbol_reg_n_0_[1]\,
      R => '0'
    );
\fifo_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p1\(0),
      Q => \^fifo_data_out\(0),
      R => '0'
    );
\fifo_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p1\(10),
      Q => \^fifo_data_out\(10),
      R => '0'
    );
\fifo_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p1\(11),
      Q => \^fifo_data_out\(14),
      R => '0'
    );
\fifo_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p0\(0),
      Q => \^fifo_data_out\(16),
      R => '0'
    );
\fifo_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p0\(1),
      Q => \^fifo_data_out\(17),
      R => '0'
    );
\fifo_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p0\(2),
      Q => \^fifo_data_out\(18),
      R => '0'
    );
\fifo_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p0\(3),
      Q => \^fifo_data_out\(19),
      R => '0'
    );
\fifo_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p1\(1),
      Q => \^fifo_data_out\(1),
      R => '0'
    );
\fifo_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p0\(4),
      Q => \^fifo_data_out\(20),
      R => '0'
    );
\fifo_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p0\(5),
      Q => \^fifo_data_out\(21),
      R => '0'
    );
\fifo_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p0\(6),
      Q => \^fifo_data_out\(22),
      R => '0'
    );
\fifo_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p0\(7),
      Q => \^fifo_data_out\(23),
      R => '0'
    );
\fifo_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p0\(8),
      Q => \^fifo_data_out\(24),
      R => '0'
    );
\fifo_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p0\(9),
      Q => \^fifo_data_out\(25),
      R => '0'
    );
\fifo_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p0\(10),
      Q => \^fifo_data_out\(26),
      R => '0'
    );
\fifo_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p1\(2),
      Q => \^fifo_data_out\(2),
      R => '0'
    );
\fifo_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p0\(11),
      Q => \^fifo_data_out\(30),
      R => '0'
    );
\fifo_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p1\(3),
      Q => \^fifo_data_out\(3),
      R => '0'
    );
\fifo_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p1\(4),
      Q => \^fifo_data_out\(4),
      R => '0'
    );
\fifo_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p1\(5),
      Q => \^fifo_data_out\(5),
      R => '0'
    );
\fifo_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p1\(6),
      Q => \^fifo_data_out\(6),
      R => '0'
    );
\fifo_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p1\(7),
      Q => \^fifo_data_out\(7),
      R => '0'
    );
\fifo_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p1\(8),
      Q => \^fifo_data_out\(8),
      R => '0'
    );
\fifo_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^p1\(9),
      Q => \^fifo_data_out\(9),
      R => '0'
    );
\last_symbol[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \current_symbol_reg_n_0_[0]\,
      I1 => \current_symbol[1]_i_2_n_0\,
      I2 => \^symbol_buf_raddr\(6),
      I3 => \symbol_index_cnt[10]_i_3_n_0\,
      I4 => \last_symbol_reg_n_0_[0]\,
      O => \last_symbol[0]_i_1_n_0\
    );
\last_symbol[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \current_symbol_reg_n_0_[1]\,
      I1 => \current_symbol[1]_i_2_n_0\,
      I2 => \^symbol_buf_raddr\(6),
      I3 => \symbol_index_cnt[10]_i_3_n_0\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => \last_symbol[1]_i_1_n_0\
    );
\last_symbol_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \last_symbol[0]_i_1_n_0\,
      Q => \last_symbol_reg_n_0_[0]\,
      R => '0'
    );
\last_symbol_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \last_symbol[1]_i_1_n_0\,
      Q => \last_symbol_reg_n_0_[1]\,
      R => '0'
    );
nw_rom: component top_output_mux_0_0_blk_mem_gen_1
     port map (
      addra(5 downto 0) => p_1_in(5 downto 0),
      clka => clk,
      douta(23 downto 0) => nw_rom_dout(23 downto 0)
    );
prod1: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 13) => B"00000000000000000",
      A(12 downto 0) => nw_curr(12 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_prod1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => prod1_i_1_n_0,
      B(16) => prod1_i_1_n_0,
      B(15) => prod1_i_1_n_0,
      B(14) => prod1_i_1_n_0,
      B(13) => prod1_i_1_n_0,
      B(12) => prod1_i_1_n_0,
      B(11) => prod1_i_1_n_0,
      B(10) => prod1_i_2_n_0,
      B(9) => prod1_i_3_n_0,
      B(8) => prod1_i_4_n_0,
      B(7) => prod1_i_5_n_0,
      B(6) => prod1_i_6_n_0,
      B(5) => prod1_i_7_n_0,
      B(4) => prod1_i_8_n_0,
      B(3) => prod1_i_9_n_0,
      B(2) => prod1_i_10_n_0,
      B(1) => prod1_i_11_n_0,
      B(0) => prod1_i_12_n_0,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_prod1_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => prod10_n_82,
      C(46) => prod10_n_82,
      C(45) => prod10_n_82,
      C(44) => prod10_n_82,
      C(43) => prod10_n_82,
      C(42) => prod10_n_82,
      C(41) => prod10_n_82,
      C(40) => prod10_n_82,
      C(39) => prod10_n_82,
      C(38) => prod10_n_82,
      C(37) => prod10_n_82,
      C(36) => prod10_n_82,
      C(35) => prod10_n_82,
      C(34) => prod10_n_82,
      C(33) => prod10_n_82,
      C(32) => prod10_n_82,
      C(31) => prod10_n_82,
      C(30) => prod10_n_82,
      C(29) => prod10_n_82,
      C(28) => prod10_n_82,
      C(27) => prod10_n_82,
      C(26) => prod10_n_82,
      C(25) => prod10_n_82,
      C(24) => prod10_n_82,
      C(23) => prod10_n_82,
      C(22) => prod10_n_83,
      C(21) => prod10_n_84,
      C(20) => prod10_n_85,
      C(19) => prod10_n_86,
      C(18) => prod10_n_87,
      C(17) => prod10_n_88,
      C(16) => prod10_n_89,
      C(15) => prod10_n_90,
      C(14) => prod10_n_91,
      C(13) => prod10_n_92,
      C(12) => prod10_n_93,
      C(11) => prod10_n_94,
      C(10) => prod10_n_95,
      C(9) => prod10_n_96,
      C(8) => prod10_n_97,
      C(7) => prod10_n_98,
      C(6) => prod10_n_99,
      C(5) => prod10_n_100,
      C(4) => prod10_n_101,
      C(3) => prod10_n_102,
      C(2) => prod10_n_103,
      C(1) => prod10_n_104,
      C(0) => prod10_n_105,
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_prod1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_prod1_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_prod1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_prod1_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_prod1_P_UNCONNECTED(47 downto 24),
      P(23 downto 12) => \^p1\(11 downto 0),
      P(11) => prod1_n_94,
      P(10) => prod1_n_95,
      P(9) => prod1_n_96,
      P(8) => prod1_n_97,
      P(7) => prod1_n_98,
      P(6) => prod1_n_99,
      P(5) => prod1_n_100,
      P(4) => prod1_n_101,
      P(3) => prod1_n_102,
      P(2) => prod1_n_103,
      P(1) => prod1_n_104,
      P(0) => prod1_n_105,
      PATTERNBDETECT => NLW_prod1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_prod1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_prod1_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_prod1_UNDERFLOW_UNCONNECTED
    );
prod10: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 12) => B"000000000000000000",
      A(11 downto 0) => nw_last(11 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_prod10_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(11),
      B(16) => B(11),
      B(15) => B(11),
      B(14) => B(11),
      B(13) => B(11),
      B(12) => B(11),
      B(11 downto 0) => B(11 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_prod10_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_prod10_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_prod10_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_prod10_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_prod10_OVERFLOW_UNCONNECTED,
      P(47 downto 25) => NLW_prod10_P_UNCONNECTED(47 downto 25),
      P(24) => prod10_n_81,
      P(23) => prod10_n_82,
      P(22) => prod10_n_83,
      P(21) => prod10_n_84,
      P(20) => prod10_n_85,
      P(19) => prod10_n_86,
      P(18) => prod10_n_87,
      P(17) => prod10_n_88,
      P(16) => prod10_n_89,
      P(15) => prod10_n_90,
      P(14) => prod10_n_91,
      P(13) => prod10_n_92,
      P(12) => prod10_n_93,
      P(11) => prod10_n_94,
      P(10) => prod10_n_95,
      P(9) => prod10_n_96,
      P(8) => prod10_n_97,
      P(7) => prod10_n_98,
      P(6) => prod10_n_99,
      P(5) => prod10_n_100,
      P(4) => prod10_n_101,
      P(3) => prod10_n_102,
      P(2) => prod10_n_103,
      P(1) => prod10_n_104,
      P(0) => prod10_n_105,
      PATTERNBDETECT => NLW_prod10_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_prod10_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_prod10_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_prod10_UNDERFLOW_UNCONNECTED
    );
prod10_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(23),
      I1 => lts_rom_dout(23),
      I2 => symbol_buf_dout(23),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => B(11)
    );
prod10_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(14),
      I1 => lts_rom_dout(14),
      I2 => symbol_buf_dout(14),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => B(2)
    );
prod10_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(13),
      I1 => lts_rom_dout(13),
      I2 => symbol_buf_dout(13),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => B(1)
    );
prod10_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(12),
      I1 => lts_rom_dout(12),
      I2 => symbol_buf_dout(12),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => B(0)
    );
prod10_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(22),
      I1 => lts_rom_dout(22),
      I2 => symbol_buf_dout(22),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => B(10)
    );
prod10_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(21),
      I1 => lts_rom_dout(21),
      I2 => symbol_buf_dout(21),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => B(9)
    );
prod10_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(20),
      I1 => lts_rom_dout(20),
      I2 => symbol_buf_dout(20),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => B(8)
    );
prod10_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(19),
      I1 => lts_rom_dout(19),
      I2 => symbol_buf_dout(19),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => B(7)
    );
prod10_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(18),
      I1 => lts_rom_dout(18),
      I2 => symbol_buf_dout(18),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => B(6)
    );
prod10_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(17),
      I1 => lts_rom_dout(17),
      I2 => symbol_buf_dout(17),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => B(5)
    );
prod10_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(16),
      I1 => lts_rom_dout(16),
      I2 => symbol_buf_dout(16),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => B(4)
    );
prod10_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(15),
      I1 => lts_rom_dout(15),
      I2 => symbol_buf_dout(15),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => B(3)
    );
prod1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(23),
      I1 => sts_rom_dout(23),
      I2 => s_axis_symbol_tdata(23),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod1_i_1_n_0
    );
prod1_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(14),
      I1 => sts_rom_dout(14),
      I2 => s_axis_symbol_tdata(14),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod1_i_10_n_0
    );
prod1_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(13),
      I1 => sts_rom_dout(13),
      I2 => s_axis_symbol_tdata(13),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod1_i_11_n_0
    );
prod1_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(12),
      I1 => sts_rom_dout(12),
      I2 => s_axis_symbol_tdata(12),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod1_i_12_n_0
    );
prod1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(22),
      I1 => sts_rom_dout(22),
      I2 => s_axis_symbol_tdata(22),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod1_i_2_n_0
    );
prod1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(21),
      I1 => sts_rom_dout(21),
      I2 => s_axis_symbol_tdata(21),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod1_i_3_n_0
    );
prod1_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(20),
      I1 => sts_rom_dout(20),
      I2 => s_axis_symbol_tdata(20),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod1_i_4_n_0
    );
prod1_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(19),
      I1 => sts_rom_dout(19),
      I2 => s_axis_symbol_tdata(19),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod1_i_5_n_0
    );
prod1_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(18),
      I1 => sts_rom_dout(18),
      I2 => s_axis_symbol_tdata(18),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod1_i_6_n_0
    );
prod1_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(17),
      I1 => sts_rom_dout(17),
      I2 => s_axis_symbol_tdata(17),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod1_i_7_n_0
    );
prod1_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(16),
      I1 => sts_rom_dout(16),
      I2 => s_axis_symbol_tdata(16),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod1_i_8_n_0
    );
prod1_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(15),
      I1 => sts_rom_dout(15),
      I2 => s_axis_symbol_tdata(15),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod1_i_9_n_0
    );
prod2: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 13) => B"00000000000000000",
      A(12 downto 0) => nw_curr(12 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_prod2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => prod2_i_1_n_0,
      B(16) => prod2_i_1_n_0,
      B(15) => prod2_i_1_n_0,
      B(14) => prod2_i_1_n_0,
      B(13) => prod2_i_1_n_0,
      B(12) => prod2_i_1_n_0,
      B(11) => prod2_i_1_n_0,
      B(10) => prod2_i_2_n_0,
      B(9) => prod2_i_3_n_0,
      B(8) => prod2_i_4_n_0,
      B(7) => prod2_i_5_n_0,
      B(6) => prod2_i_6_n_0,
      B(5) => prod2_i_7_n_0,
      B(4) => prod2_i_8_n_0,
      B(3) => prod2_i_9_n_0,
      B(2) => prod2_i_10_n_0,
      B(1) => prod2_i_11_n_0,
      B(0) => prod2_i_12_n_0,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_prod2_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => prod20_n_82,
      C(46) => prod20_n_82,
      C(45) => prod20_n_82,
      C(44) => prod20_n_82,
      C(43) => prod20_n_82,
      C(42) => prod20_n_82,
      C(41) => prod20_n_82,
      C(40) => prod20_n_82,
      C(39) => prod20_n_82,
      C(38) => prod20_n_82,
      C(37) => prod20_n_82,
      C(36) => prod20_n_82,
      C(35) => prod20_n_82,
      C(34) => prod20_n_82,
      C(33) => prod20_n_82,
      C(32) => prod20_n_82,
      C(31) => prod20_n_82,
      C(30) => prod20_n_82,
      C(29) => prod20_n_82,
      C(28) => prod20_n_82,
      C(27) => prod20_n_82,
      C(26) => prod20_n_82,
      C(25) => prod20_n_82,
      C(24) => prod20_n_82,
      C(23) => prod20_n_82,
      C(22) => prod20_n_83,
      C(21) => prod20_n_84,
      C(20) => prod20_n_85,
      C(19) => prod20_n_86,
      C(18) => prod20_n_87,
      C(17) => prod20_n_88,
      C(16) => prod20_n_89,
      C(15) => prod20_n_90,
      C(14) => prod20_n_91,
      C(13) => prod20_n_92,
      C(12) => prod20_n_93,
      C(11) => prod20_n_94,
      C(10) => prod20_n_95,
      C(9) => prod20_n_96,
      C(8) => prod20_n_97,
      C(7) => prod20_n_98,
      C(6) => prod20_n_99,
      C(5) => prod20_n_100,
      C(4) => prod20_n_101,
      C(3) => prod20_n_102,
      C(2) => prod20_n_103,
      C(1) => prod20_n_104,
      C(0) => prod20_n_105,
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_prod2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_prod2_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_prod2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_prod2_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_prod2_P_UNCONNECTED(47 downto 24),
      P(23 downto 12) => \^p0\(11 downto 0),
      P(11) => prod2_n_94,
      P(10) => prod2_n_95,
      P(9) => prod2_n_96,
      P(8) => prod2_n_97,
      P(7) => prod2_n_98,
      P(6) => prod2_n_99,
      P(5) => prod2_n_100,
      P(4) => prod2_n_101,
      P(3) => prod2_n_102,
      P(2) => prod2_n_103,
      P(1) => prod2_n_104,
      P(0) => prod2_n_105,
      PATTERNBDETECT => NLW_prod2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_prod2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_prod2_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_prod2_UNDERFLOW_UNCONNECTED
    );
prod20: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 12) => B"000000000000000000",
      A(11 downto 0) => nw_last(11 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_prod20_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => prod20_i_1_n_0,
      B(16) => prod20_i_1_n_0,
      B(15) => prod20_i_1_n_0,
      B(14) => prod20_i_1_n_0,
      B(13) => prod20_i_1_n_0,
      B(12) => prod20_i_1_n_0,
      B(11) => prod20_i_1_n_0,
      B(10) => prod20_i_2_n_0,
      B(9) => prod20_i_3_n_0,
      B(8) => prod20_i_4_n_0,
      B(7) => prod20_i_5_n_0,
      B(6) => prod20_i_6_n_0,
      B(5) => prod20_i_7_n_0,
      B(4) => prod20_i_8_n_0,
      B(3) => prod20_i_9_n_0,
      B(2) => prod20_i_10_n_0,
      B(1) => prod20_i_11_n_0,
      B(0) => prod20_i_12_n_0,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_prod20_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_prod20_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_prod20_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_prod20_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_prod20_OVERFLOW_UNCONNECTED,
      P(47 downto 25) => NLW_prod20_P_UNCONNECTED(47 downto 25),
      P(24) => prod20_n_81,
      P(23) => prod20_n_82,
      P(22) => prod20_n_83,
      P(21) => prod20_n_84,
      P(20) => prod20_n_85,
      P(19) => prod20_n_86,
      P(18) => prod20_n_87,
      P(17) => prod20_n_88,
      P(16) => prod20_n_89,
      P(15) => prod20_n_90,
      P(14) => prod20_n_91,
      P(13) => prod20_n_92,
      P(12) => prod20_n_93,
      P(11) => prod20_n_94,
      P(10) => prod20_n_95,
      P(9) => prod20_n_96,
      P(8) => prod20_n_97,
      P(7) => prod20_n_98,
      P(6) => prod20_n_99,
      P(5) => prod20_n_100,
      P(4) => prod20_n_101,
      P(3) => prod20_n_102,
      P(2) => prod20_n_103,
      P(1) => prod20_n_104,
      P(0) => prod20_n_105,
      PATTERNBDETECT => NLW_prod20_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_prod20_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_prod20_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_prod20_UNDERFLOW_UNCONNECTED
    );
prod20_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(11),
      I1 => lts_rom_dout(11),
      I2 => symbol_buf_dout(11),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => prod20_i_1_n_0
    );
prod20_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(2),
      I1 => lts_rom_dout(2),
      I2 => symbol_buf_dout(2),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => prod20_i_10_n_0
    );
prod20_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(1),
      I1 => lts_rom_dout(1),
      I2 => symbol_buf_dout(1),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => prod20_i_11_n_0
    );
prod20_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(0),
      I1 => lts_rom_dout(0),
      I2 => symbol_buf_dout(0),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => prod20_i_12_n_0
    );
prod20_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(11),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_last(11)
    );
prod20_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(10),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_last(10)
    );
prod20_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(9),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_last(9)
    );
prod20_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(8),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_last(8)
    );
prod20_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(7),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_last(7)
    );
prod20_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(6),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_last(6)
    );
prod20_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(5),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_last(5)
    );
prod20_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(10),
      I1 => lts_rom_dout(10),
      I2 => symbol_buf_dout(10),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => prod20_i_2_n_0
    );
prod20_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(4),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_last(4)
    );
prod20_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(3),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_last(3)
    );
prod20_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(2),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_last(2)
    );
prod20_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(1),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_last(1)
    );
prod20_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(0),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_last(0)
    );
prod20_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(9),
      I1 => lts_rom_dout(9),
      I2 => symbol_buf_dout(9),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => prod20_i_3_n_0
    );
prod20_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(8),
      I1 => lts_rom_dout(8),
      I2 => symbol_buf_dout(8),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => prod20_i_4_n_0
    );
prod20_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(7),
      I1 => lts_rom_dout(7),
      I2 => symbol_buf_dout(7),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => prod20_i_5_n_0
    );
prod20_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(6),
      I1 => lts_rom_dout(6),
      I2 => symbol_buf_dout(6),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => prod20_i_6_n_0
    );
prod20_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(5),
      I1 => lts_rom_dout(5),
      I2 => symbol_buf_dout(5),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => prod20_i_7_n_0
    );
prod20_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(4),
      I1 => lts_rom_dout(4),
      I2 => symbol_buf_dout(4),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => prod20_i_8_n_0
    );
prod20_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => sts_rom_dout(3),
      I1 => lts_rom_dout(3),
      I2 => symbol_buf_dout(3),
      I3 => \last_symbol_reg_n_0_[0]\,
      I4 => \last_symbol_reg_n_0_[1]\,
      O => prod20_i_9_n_0
    );
prod2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(11),
      I1 => sts_rom_dout(11),
      I2 => s_axis_symbol_tdata(11),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod2_i_1_n_0
    );
prod2_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(2),
      I1 => sts_rom_dout(2),
      I2 => s_axis_symbol_tdata(2),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod2_i_10_n_0
    );
prod2_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(1),
      I1 => sts_rom_dout(1),
      I2 => s_axis_symbol_tdata(1),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod2_i_11_n_0
    );
prod2_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(0),
      I1 => sts_rom_dout(0),
      I2 => s_axis_symbol_tdata(0),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod2_i_12_n_0
    );
prod2_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^symbol_buf_raddr\(6),
      I1 => \^symbol_buf_waddr\(8),
      I2 => \^symbol_buf_waddr\(9),
      I3 => \^symbol_buf_waddr\(7),
      I4 => \^symbol_buf_waddr\(10),
      O => nw_curr(12)
    );
prod2_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(23),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_curr(11)
    );
prod2_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(22),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_curr(10)
    );
prod2_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(21),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_curr(9)
    );
prod2_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(20),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_curr(8)
    );
prod2_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(19),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_curr(7)
    );
prod2_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(18),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_curr(6)
    );
prod2_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(10),
      I1 => sts_rom_dout(10),
      I2 => s_axis_symbol_tdata(10),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod2_i_2_n_0
    );
prod2_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(17),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_curr(5)
    );
prod2_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(16),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_curr(4)
    );
prod2_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(15),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_curr(3)
    );
prod2_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(14),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_curr(2)
    );
prod2_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(13),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_curr(1)
    );
prod2_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => nw_rom_dout(12),
      I1 => \^symbol_buf_waddr\(10),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(9),
      I4 => \^symbol_buf_waddr\(8),
      I5 => \^symbol_buf_raddr\(6),
      O => nw_curr(0)
    );
prod2_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(9),
      I1 => sts_rom_dout(9),
      I2 => s_axis_symbol_tdata(9),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod2_i_3_n_0
    );
prod2_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(8),
      I1 => sts_rom_dout(8),
      I2 => s_axis_symbol_tdata(8),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod2_i_4_n_0
    );
prod2_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(7),
      I1 => sts_rom_dout(7),
      I2 => s_axis_symbol_tdata(7),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod2_i_5_n_0
    );
prod2_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(6),
      I1 => sts_rom_dout(6),
      I2 => s_axis_symbol_tdata(6),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod2_i_6_n_0
    );
prod2_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(5),
      I1 => sts_rom_dout(5),
      I2 => s_axis_symbol_tdata(5),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod2_i_7_n_0
    );
prod2_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(4),
      I1 => sts_rom_dout(4),
      I2 => s_axis_symbol_tdata(4),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod2_i_8_n_0
    );
prod2_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => lts_rom_dout(3),
      I1 => sts_rom_dout(3),
      I2 => s_axis_symbol_tdata(3),
      I3 => \current_symbol_reg_n_0_[0]\,
      I4 => \current_symbol_reg_n_0_[1]\,
      O => prod2_i_9_n_0
    );
s_axis_symbol_rden_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_symbol_reg_n_0_[0]\,
      I1 => \current_symbol_reg_n_0_[1]\,
      O => s_axis_symbol_rden0
    );
s_axis_symbol_rden_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axis_symbol_rden0,
      Q => \^symbol_buf_wren\,
      R => '0'
    );
sts_lts_rom: component top_output_mux_0_0_blk_mem_gen_0
     port map (
      addra(10 downto 6) => B"00000",
      addra(5 downto 0) => p_1_in(5 downto 0),
      addrb(10) => '1',
      addrb(9 downto 0) => p_1_in(9 downto 0),
      clka => clk,
      clkb => clk,
      douta(23 downto 0) => sts_rom_dout(23 downto 0),
      doutb(23 downto 0) => lts_rom_dout(23 downto 0)
    );
\symbol_buf_raddr[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^symbol_buf_waddr\(9),
      I1 => \^symbol_buf_waddr\(7),
      I2 => \^symbol_buf_waddr\(8),
      I3 => \^symbol_buf_waddr\(10),
      O => \^symbol_buf_raddr\(10)
    );
\symbol_buf_raddr[7]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^symbol_buf_waddr\(7),
      O => \^symbol_buf_raddr\(7)
    );
\symbol_buf_raddr[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^symbol_buf_waddr\(7),
      I1 => \^symbol_buf_waddr\(8),
      O => \^symbol_buf_raddr\(8)
    );
\symbol_buf_raddr[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^symbol_buf_waddr\(8),
      I1 => \^symbol_buf_waddr\(7),
      I2 => \^symbol_buf_waddr\(9),
      O => \^symbol_buf_raddr\(9)
    );
\symbol_index_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^symbol_buf_raddr\(0),
      O => p_1_in(0)
    );
\symbol_index_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \^symbol_buf_waddr\(10),
      I1 => \^symbol_buf_waddr\(9),
      I2 => \^symbol_buf_waddr\(7),
      I3 => \^symbol_buf_waddr\(8),
      I4 => \^symbol_buf_raddr\(6),
      I5 => \symbol_index_cnt[10]_i_3_n_0\,
      O => p_0_in
    );
\symbol_index_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => \symbol_index_cnt[10]_i_3_n_0\,
      I1 => \^symbol_buf_raddr\(6),
      I2 => \^symbol_buf_waddr\(8),
      I3 => \^symbol_buf_waddr\(7),
      I4 => \^symbol_buf_waddr\(9),
      I5 => \^symbol_buf_waddr\(10),
      O => p_1_in(10)
    );
\symbol_index_cnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^symbol_buf_raddr\(4),
      I1 => \^symbol_buf_raddr\(2),
      I2 => \^symbol_buf_raddr\(0),
      I3 => \^symbol_buf_raddr\(1),
      I4 => \^symbol_buf_raddr\(3),
      I5 => \^symbol_buf_raddr\(5),
      O => \symbol_index_cnt[10]_i_3_n_0\
    );
\symbol_index_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^symbol_buf_raddr\(0),
      I1 => \^symbol_buf_raddr\(1),
      O => p_1_in(1)
    );
\symbol_index_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^symbol_buf_raddr\(1),
      I1 => \^symbol_buf_raddr\(0),
      I2 => \^symbol_buf_raddr\(2),
      O => p_1_in(2)
    );
\symbol_index_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^symbol_buf_raddr\(2),
      I1 => \^symbol_buf_raddr\(0),
      I2 => \^symbol_buf_raddr\(1),
      I3 => \^symbol_buf_raddr\(3),
      O => p_1_in(3)
    );
\symbol_index_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^symbol_buf_raddr\(3),
      I1 => \^symbol_buf_raddr\(1),
      I2 => \^symbol_buf_raddr\(0),
      I3 => \^symbol_buf_raddr\(2),
      I4 => \^symbol_buf_raddr\(4),
      O => p_1_in(4)
    );
\symbol_index_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^symbol_buf_raddr\(4),
      I1 => \^symbol_buf_raddr\(2),
      I2 => \^symbol_buf_raddr\(0),
      I3 => \^symbol_buf_raddr\(1),
      I4 => \^symbol_buf_raddr\(3),
      I5 => \^symbol_buf_raddr\(5),
      O => p_1_in(5)
    );
\symbol_index_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \symbol_index_cnt[10]_i_3_n_0\,
      I1 => \^symbol_buf_raddr\(6),
      O => p_1_in(6)
    );
\symbol_index_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^symbol_buf_raddr\(6),
      I1 => \symbol_index_cnt[10]_i_3_n_0\,
      I2 => \^symbol_buf_waddr\(7),
      O => p_1_in(7)
    );
\symbol_index_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^symbol_buf_waddr\(7),
      I1 => \symbol_index_cnt[10]_i_3_n_0\,
      I2 => \^symbol_buf_raddr\(6),
      I3 => \^symbol_buf_waddr\(8),
      O => p_1_in(8)
    );
\symbol_index_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^symbol_buf_waddr\(7),
      I1 => \^symbol_buf_waddr\(8),
      I2 => \symbol_index_cnt[10]_i_3_n_0\,
      I3 => \^symbol_buf_raddr\(6),
      I4 => \^symbol_buf_waddr\(9),
      O => p_1_in(9)
    );
\symbol_index_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(0),
      Q => \^symbol_buf_raddr\(0),
      R => p_0_in
    );
\symbol_index_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(10),
      Q => \^symbol_buf_waddr\(10),
      R => p_0_in
    );
\symbol_index_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => \^symbol_buf_raddr\(1),
      R => p_0_in
    );
\symbol_index_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(2),
      Q => \^symbol_buf_raddr\(2),
      R => p_0_in
    );
\symbol_index_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(3),
      Q => \^symbol_buf_raddr\(3),
      R => p_0_in
    );
\symbol_index_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(4),
      Q => \^symbol_buf_raddr\(4),
      R => p_0_in
    );
\symbol_index_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(5),
      Q => \^symbol_buf_raddr\(5),
      R => p_0_in
    );
\symbol_index_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(6),
      Q => \^symbol_buf_raddr\(6),
      R => p_0_in
    );
\symbol_index_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(7),
      Q => \^symbol_buf_waddr\(7),
      R => p_0_in
    );
\symbol_index_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(8),
      Q => \^symbol_buf_waddr\(8),
      R => p_0_in
    );
\symbol_index_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(9),
      Q => \^symbol_buf_waddr\(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_output_mux_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_output_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_output_mux_0_0 : entity is "top_output_mux_0_0,output_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_output_mux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of top_output_mux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of top_output_mux_0_0 : entity is "output_mux,Vivado 2023.1";
end top_output_mux_0_0;

architecture STRUCTURE of top_output_mux_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_symbol, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_symbol_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_symbol TVALID";
  attribute X_INTERFACE_INFO of s_axis_symbol_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_symbol TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_symbol_tdata : signal is "XIL_INTERFACENAME s_axis_symbol, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.top_output_mux_0_0_output_mux
     port map (
      clk => clk,
      fifo_data_out(31 downto 0) => fifo_data_out(31 downto 0),
      p0(11 downto 0) => p0(11 downto 0),
      p1(11 downto 0) => p1(11 downto 0),
      s_axis_symbol_rden => s_axis_symbol_rden,
      s_axis_symbol_tdata(23 downto 0) => s_axis_symbol_tdata(23 downto 0),
      s_axis_symbol_tvalid => s_axis_symbol_tvalid,
      symbol_buf_dout(23 downto 0) => symbol_buf_dout(23 downto 0),
      symbol_buf_raddr(10 downto 0) => symbol_buf_raddr(10 downto 0),
      symbol_buf_waddr(10 downto 0) => symbol_buf_waddr(10 downto 0),
      symbol_buf_wren => symbol_buf_wren
    );
end STRUCTURE;
