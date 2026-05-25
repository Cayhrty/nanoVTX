-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Sep 20 20:59:58 2023
-- Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_tlast_gen_0_0_sim_netlist.vhdl
-- Design      : top_tlast_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_gen is
  port (
    tlast : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    tvalid : in STD_LOGIC;
    tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_gen is
  signal cnt : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal cnt0 : STD_LOGIC;
  signal \cnt[23]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[23]_i_4_n_2\ : STD_LOGIC;
  signal \cnt_reg[23]_i_4_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal tlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal tlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal tlast_INST_0_i_3_n_0 : STD_LOGIC;
  signal tlast_INST_0_i_4_n_0 : STD_LOGIC;
  signal tlast_INST_0_i_5_n_0 : STD_LOGIC;
  signal tlast_INST_0_i_6_n_0 : STD_LOGIC;
  signal tlast_INST_0_i_7_n_0 : STD_LOGIC;
  signal \NLW_cnt_reg[23]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_reg[23]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[21]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[23]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[23]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of tlast_INST_0 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of tlast_INST_0_i_7 : label is "soft_lutpair0";
begin
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      O => cnt(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(10),
      O => cnt(10)
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(11),
      O => cnt(11)
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(12),
      O => cnt(12)
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(13),
      O => cnt(13)
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(14),
      O => cnt(14)
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(15),
      O => cnt(15)
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(16),
      O => cnt(16)
    );
\cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(17),
      O => cnt(17)
    );
\cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(18),
      O => cnt(18)
    );
\cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(19),
      O => cnt(19)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(1),
      O => cnt(1)
    );
\cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(20),
      O => cnt(20)
    );
\cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(21),
      O => cnt(21)
    );
\cnt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(22),
      O => cnt(22)
    );
\cnt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tvalid,
      I1 => tready,
      O => cnt0
    );
\cnt[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(23),
      O => cnt(23)
    );
\cnt[23]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \cnt[23]_i_3_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(2),
      O => cnt(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(3),
      O => cnt(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(4),
      O => cnt(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(5),
      O => cnt(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(6),
      O => cnt(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(7),
      O => cnt(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(8),
      O => cnt(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tlast_INST_0_i_1_n_0,
      I1 => data0(9),
      O => cnt(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(0),
      Q => \cnt_reg_n_0_[0]\
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(10),
      Q => \cnt_reg_n_0_[10]\
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(11),
      Q => \cnt_reg_n_0_[11]\
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(12),
      Q => \cnt_reg_n_0_[12]\
    );
\cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_2_n_0\,
      CO(3) => \cnt_reg[12]_i_2_n_0\,
      CO(2) => \cnt_reg[12]_i_2_n_1\,
      CO(1) => \cnt_reg[12]_i_2_n_2\,
      CO(0) => \cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \cnt_reg_n_0_[12]\,
      S(2) => \cnt_reg_n_0_[11]\,
      S(1) => \cnt_reg_n_0_[10]\,
      S(0) => \cnt_reg_n_0_[9]\
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(13),
      Q => \cnt_reg_n_0_[13]\
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(14),
      Q => \cnt_reg_n_0_[14]\
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(15),
      Q => \cnt_reg_n_0_[15]\
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(16),
      Q => \cnt_reg_n_0_[16]\
    );
\cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_2_n_0\,
      CO(3) => \cnt_reg[16]_i_2_n_0\,
      CO(2) => \cnt_reg[16]_i_2_n_1\,
      CO(1) => \cnt_reg[16]_i_2_n_2\,
      CO(0) => \cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \cnt_reg_n_0_[16]\,
      S(2) => \cnt_reg_n_0_[15]\,
      S(1) => \cnt_reg_n_0_[14]\,
      S(0) => \cnt_reg_n_0_[13]\
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(17),
      Q => \cnt_reg_n_0_[17]\
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(18),
      Q => \cnt_reg_n_0_[18]\
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(19),
      Q => \cnt_reg_n_0_[19]\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(1),
      Q => \cnt_reg_n_0_[1]\
    );
\cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(20),
      Q => \cnt_reg_n_0_[20]\
    );
\cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[16]_i_2_n_0\,
      CO(3) => \cnt_reg[20]_i_2_n_0\,
      CO(2) => \cnt_reg[20]_i_2_n_1\,
      CO(1) => \cnt_reg[20]_i_2_n_2\,
      CO(0) => \cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \cnt_reg_n_0_[20]\,
      S(2) => \cnt_reg_n_0_[19]\,
      S(1) => \cnt_reg_n_0_[18]\,
      S(0) => \cnt_reg_n_0_[17]\
    );
\cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(21),
      Q => \cnt_reg_n_0_[21]\
    );
\cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(22),
      Q => \cnt_reg_n_0_[22]\
    );
\cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(23),
      Q => \cnt_reg_n_0_[23]\
    );
\cnt_reg[23]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[20]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cnt_reg[23]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_reg[23]_i_4_n_2\,
      CO(0) => \cnt_reg[23]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_reg[23]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(23 downto 21),
      S(3) => '0',
      S(2) => \cnt_reg_n_0_[23]\,
      S(1) => \cnt_reg_n_0_[22]\,
      S(0) => \cnt_reg_n_0_[21]\
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(2),
      Q => \cnt_reg_n_0_[2]\
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(3),
      Q => \cnt_reg_n_0_[3]\
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(4),
      Q => \cnt_reg_n_0_[4]\
    );
\cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[4]_i_2_n_0\,
      CO(2) => \cnt_reg[4]_i_2_n_1\,
      CO(1) => \cnt_reg[4]_i_2_n_2\,
      CO(0) => \cnt_reg[4]_i_2_n_3\,
      CYINIT => \cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \cnt_reg_n_0_[4]\,
      S(2) => \cnt_reg_n_0_[3]\,
      S(1) => \cnt_reg_n_0_[2]\,
      S(0) => \cnt_reg_n_0_[1]\
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(5),
      Q => \cnt_reg_n_0_[5]\
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(6),
      Q => \cnt_reg_n_0_[6]\
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(7),
      Q => \cnt_reg_n_0_[7]\
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(8),
      Q => \cnt_reg_n_0_[8]\
    );
\cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_2_n_0\,
      CO(3) => \cnt_reg[8]_i_2_n_0\,
      CO(2) => \cnt_reg[8]_i_2_n_1\,
      CO(1) => \cnt_reg[8]_i_2_n_2\,
      CO(0) => \cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \cnt_reg_n_0_[8]\,
      S(2) => \cnt_reg_n_0_[7]\,
      S(1) => \cnt_reg_n_0_[6]\,
      S(0) => \cnt_reg_n_0_[5]\
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => cnt0,
      CLR => \cnt[23]_i_3_n_0\,
      D => cnt(9),
      Q => \cnt_reg_n_0_[9]\
    );
tlast_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tvalid,
      I1 => tlast_INST_0_i_1_n_0,
      O => tlast
    );
tlast_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => tlast_INST_0_i_2_n_0,
      I1 => tlast_INST_0_i_3_n_0,
      I2 => tlast_INST_0_i_4_n_0,
      I3 => tlast_INST_0_i_5_n_0,
      I4 => tlast_INST_0_i_6_n_0,
      I5 => tlast_INST_0_i_7_n_0,
      O => tlast_INST_0_i_1_n_0
    );
tlast_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[17]\,
      I1 => \cnt_reg_n_0_[16]\,
      I2 => \cnt_reg_n_0_[19]\,
      I3 => \cnt_reg_n_0_[18]\,
      O => tlast_INST_0_i_2_n_0
    );
tlast_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[21]\,
      I1 => \cnt_reg_n_0_[20]\,
      I2 => \cnt_reg_n_0_[23]\,
      I3 => \cnt_reg_n_0_[22]\,
      O => tlast_INST_0_i_3_n_0
    );
tlast_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \cnt_reg_n_0_[9]\,
      I1 => \cnt_reg_n_0_[8]\,
      I2 => \cnt_reg_n_0_[11]\,
      I3 => \cnt_reg_n_0_[10]\,
      O => tlast_INST_0_i_4_n_0
    );
tlast_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[13]\,
      I1 => \cnt_reg_n_0_[12]\,
      I2 => \cnt_reg_n_0_[15]\,
      I3 => \cnt_reg_n_0_[14]\,
      O => tlast_INST_0_i_5_n_0
    );
tlast_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[5]\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \cnt_reg_n_0_[7]\,
      I3 => \cnt_reg_n_0_[6]\,
      O => tlast_INST_0_i_6_n_0
    );
tlast_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      O => tlast_INST_0_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    tvalid : in STD_LOGIC;
    tready : in STD_LOGIC;
    tlast : out STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_tlast_gen_0_0,tlast_gen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "tlast_gen,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF interface_axis, FREQ_HZ 79999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tlast : signal is "xilinx.com:interface:axis:1.0 interface_axis TLAST";
  attribute X_INTERFACE_PARAMETER of tlast : signal is "XIL_INTERFACENAME interface_axis, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 79999992, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tready : signal is "xilinx.com:interface:axis:1.0 interface_axis TREADY";
  attribute X_INTERFACE_INFO of tvalid : signal is "xilinx.com:interface:axis:1.0 interface_axis TVALID";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_gen
     port map (
      clk => clk,
      rst_n => rst_n,
      tlast => tlast,
      tready => tready,
      tvalid => tvalid
    );
end STRUCTURE;
