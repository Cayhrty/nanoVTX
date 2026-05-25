-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Sep 20 17:49:50 2023
-- Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_fake_data_src_0_0_sim_netlist.vhdl
-- Design      : top_fake_data_src_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fake_data_src is
  port (
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    trigger : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fake_data_src;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fake_data_src is
  signal dataCnt : STD_LOGIC;
  signal \dataCnt0_carry__0_n_0\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_1\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_2\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_3\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_4\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_5\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_6\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_7\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_0\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_1\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_2\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_3\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_4\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_5\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_6\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_7\ : STD_LOGIC;
  signal \dataCnt0_carry__2_n_2\ : STD_LOGIC;
  signal \dataCnt0_carry__2_n_3\ : STD_LOGIC;
  signal \dataCnt0_carry__2_n_5\ : STD_LOGIC;
  signal \dataCnt0_carry__2_n_6\ : STD_LOGIC;
  signal \dataCnt0_carry__2_n_7\ : STD_LOGIC;
  signal dataCnt0_carry_n_0 : STD_LOGIC;
  signal dataCnt0_carry_n_1 : STD_LOGIC;
  signal dataCnt0_carry_n_2 : STD_LOGIC;
  signal dataCnt0_carry_n_3 : STD_LOGIC;
  signal dataCnt0_carry_n_4 : STD_LOGIC;
  signal dataCnt0_carry_n_5 : STD_LOGIC;
  signal dataCnt0_carry_n_6 : STD_LOGIC;
  signal dataCnt0_carry_n_7 : STD_LOGIC;
  signal \dataCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[9]\ : STD_LOGIC;
  signal lfsr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \m_axis_data_tdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_data_tdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_data_tdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_data_tdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_data_tdata[31]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_data_tdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_data_tdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_data_tdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_data_tdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_data_tdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_data_tdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_data_tdata[31]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_data_tdata[8]_i_1_n_0\ : STD_LOGIC;
  signal m_axis_data_tdata_0 : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal m_axis_data_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_data_tlast_i_2_n_0 : STD_LOGIC;
  signal m_axis_data_tlast_i_3_n_0 : STD_LOGIC;
  signal m_axis_data_tvalid_INST_0_i_1_n_0 : STD_LOGIC;
  signal m_axis_data_tvalid_INST_0_i_2_n_0 : STD_LOGIC;
  signal m_symbol : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal trig : STD_LOGIC;
  signal trig_active : STD_LOGIC;
  signal trig_active0 : STD_LOGIC;
  signal trig_r1 : STD_LOGIC;
  signal trig_r2 : STD_LOGIC;
  signal \NLW_dataCnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dataCnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dataCnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \dataCnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \dataCnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \dataCnt0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_data_tdata[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_data_tdata[24]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_data_tdata[25]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_data_tdata[26]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_data_tdata[31]_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_data_tdata[31]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_data_tdata[31]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_data_tdata[31]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_data_tdata[31]_i_9\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_data_tdata[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of m_axis_data_tlast_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axis_data_tvalid_INST_0_i_2 : label is "soft_lutpair1";
begin
dataCnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dataCnt0_carry_n_0,
      CO(2) => dataCnt0_carry_n_1,
      CO(1) => dataCnt0_carry_n_2,
      CO(0) => dataCnt0_carry_n_3,
      CYINIT => \dataCnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => dataCnt0_carry_n_4,
      O(2) => dataCnt0_carry_n_5,
      O(1) => dataCnt0_carry_n_6,
      O(0) => dataCnt0_carry_n_7,
      S(3) => \dataCnt_reg_n_0_[4]\,
      S(2) => \dataCnt_reg_n_0_[3]\,
      S(1) => \dataCnt_reg_n_0_[2]\,
      S(0) => \dataCnt_reg_n_0_[1]\
    );
\dataCnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dataCnt0_carry_n_0,
      CO(3) => \dataCnt0_carry__0_n_0\,
      CO(2) => \dataCnt0_carry__0_n_1\,
      CO(1) => \dataCnt0_carry__0_n_2\,
      CO(0) => \dataCnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dataCnt0_carry__0_n_4\,
      O(2) => \dataCnt0_carry__0_n_5\,
      O(1) => \dataCnt0_carry__0_n_6\,
      O(0) => \dataCnt0_carry__0_n_7\,
      S(3) => \dataCnt_reg_n_0_[8]\,
      S(2) => \dataCnt_reg_n_0_[7]\,
      S(1) => \dataCnt_reg_n_0_[6]\,
      S(0) => \dataCnt_reg_n_0_[5]\
    );
\dataCnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dataCnt0_carry__0_n_0\,
      CO(3) => \dataCnt0_carry__1_n_0\,
      CO(2) => \dataCnt0_carry__1_n_1\,
      CO(1) => \dataCnt0_carry__1_n_2\,
      CO(0) => \dataCnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dataCnt0_carry__1_n_4\,
      O(2) => \dataCnt0_carry__1_n_5\,
      O(1) => \dataCnt0_carry__1_n_6\,
      O(0) => \dataCnt0_carry__1_n_7\,
      S(3) => \dataCnt_reg_n_0_[12]\,
      S(2) => \dataCnt_reg_n_0_[11]\,
      S(1) => \dataCnt_reg_n_0_[10]\,
      S(0) => \dataCnt_reg_n_0_[9]\
    );
\dataCnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dataCnt0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_dataCnt0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \dataCnt0_carry__2_n_2\,
      CO(0) => \dataCnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_dataCnt0_carry__2_O_UNCONNECTED\(3),
      O(2) => \dataCnt0_carry__2_n_5\,
      O(1) => \dataCnt0_carry__2_n_6\,
      O(0) => \dataCnt0_carry__2_n_7\,
      S(3) => '0',
      S(2) => \dataCnt_reg_n_0_[15]\,
      S(1) => \dataCnt_reg_n_0_[14]\,
      S(0) => \dataCnt_reg_n_0_[13]\
    );
\dataCnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFD0F0CFFFDF0F0"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[10]\,
      I1 => m_axis_data_tvalid_INST_0_i_1_n_0,
      I2 => \dataCnt_reg_n_0_[0]\,
      I3 => m_axis_data_tvalid_INST_0_i_2_n_0,
      I4 => trig_active,
      I5 => m_axis_data_tready,
      O => \dataCnt[0]_i_1_n_0\
    );
\dataCnt[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => trig_active,
      I1 => m_axis_data_tvalid_INST_0_i_2_n_0,
      I2 => \dataCnt_reg_n_0_[0]\,
      I3 => m_axis_data_tvalid_INST_0_i_1_n_0,
      O => \dataCnt[15]_i_1_n_0\
    );
\dataCnt[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => m_axis_data_tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[0]\,
      I2 => m_axis_data_tvalid_INST_0_i_2_n_0,
      I3 => m_axis_data_tready,
      O => dataCnt
    );
\dataCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \dataCnt[0]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[0]\,
      R => '0'
    );
\dataCnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => \dataCnt0_carry__1_n_6\,
      Q => \dataCnt_reg_n_0_[10]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => \dataCnt0_carry__1_n_5\,
      Q => \dataCnt_reg_n_0_[11]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => \dataCnt0_carry__1_n_4\,
      Q => \dataCnt_reg_n_0_[12]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => \dataCnt0_carry__2_n_7\,
      Q => \dataCnt_reg_n_0_[13]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => \dataCnt0_carry__2_n_6\,
      Q => \dataCnt_reg_n_0_[14]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => \dataCnt0_carry__2_n_5\,
      Q => \dataCnt_reg_n_0_[15]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => dataCnt0_carry_n_7,
      Q => \dataCnt_reg_n_0_[1]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => dataCnt0_carry_n_6,
      Q => \dataCnt_reg_n_0_[2]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => dataCnt0_carry_n_5,
      Q => \dataCnt_reg_n_0_[3]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => dataCnt0_carry_n_4,
      Q => \dataCnt_reg_n_0_[4]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => \dataCnt0_carry__0_n_7\,
      Q => \dataCnt_reg_n_0_[5]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => \dataCnt0_carry__0_n_6\,
      Q => \dataCnt_reg_n_0_[6]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => \dataCnt0_carry__0_n_5\,
      Q => \dataCnt_reg_n_0_[7]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => \dataCnt0_carry__0_n_4\,
      Q => \dataCnt_reg_n_0_[8]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\dataCnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt,
      D => \dataCnt0_carry__1_n_7\,
      Q => \dataCnt_reg_n_0_[9]\,
      R => \dataCnt[15]_i_1_n_0\
    );
\lfsr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lfsr(2),
      I1 => lfsr(3),
      O => p_3_out(0)
    );
\lfsr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_3_out(0),
      Q => lfsr(0),
      R => '0'
    );
\lfsr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => lfsr(0),
      Q => lfsr(1),
      R => '0'
    );
\lfsr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => lfsr(1),
      Q => lfsr(2),
      R => '0'
    );
\lfsr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => lfsr(2),
      Q => lfsr(3),
      R => '0'
    );
\m_axis_data_tdata[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_symbol(1),
      I1 => m_symbol(0),
      O => \m_axis_data_tdata[10]_i_1_n_0\
    );
\m_axis_data_tdata[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_symbol(2),
      I1 => m_symbol(3),
      O => \m_axis_data_tdata[24]_i_1_n_0\
    );
\m_axis_data_tdata[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_symbol(2),
      I1 => m_symbol(3),
      O => \m_axis_data_tdata[25]_i_1_n_0\
    );
\m_axis_data_tdata[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => m_symbol(3),
      I1 => m_symbol(2),
      O => \m_axis_data_tdata[26]_i_1_n_0\
    );
\m_axis_data_tdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF1"
    )
        port map (
      I0 => \m_axis_data_tdata[31]_i_3_n_0\,
      I1 => m_axis_data_tvalid_INST_0_i_2_n_0,
      I2 => \dataCnt_reg_n_0_[10]\,
      I3 => \m_axis_data_tdata[31]_i_4_n_0\,
      I4 => \m_axis_data_tdata[31]_i_5_n_0\,
      I5 => \m_axis_data_tdata[31]_i_6_n_0\,
      O => p_0_in
    );
\m_axis_data_tdata[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[6]\,
      I1 => \dataCnt_reg_n_0_[7]\,
      O => \m_axis_data_tdata[31]_i_10_n_0\
    );
\m_axis_data_tdata[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_symbol(3),
      O => m_axis_data_tdata_0(31)
    );
\m_axis_data_tdata[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[7]\,
      I1 => \dataCnt_reg_n_0_[6]\,
      I2 => \dataCnt_reg_n_0_[5]\,
      O => \m_axis_data_tdata[31]_i_3_n_0\
    );
\m_axis_data_tdata[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[11]\,
      I1 => \dataCnt_reg_n_0_[14]\,
      I2 => \dataCnt_reg_n_0_[15]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => \dataCnt_reg_n_0_[12]\,
      O => \m_axis_data_tdata[31]_i_4_n_0\
    );
\m_axis_data_tdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000EA00C0FFC000"
    )
        port map (
      I0 => \m_axis_data_tdata[31]_i_7_n_0\,
      I1 => \dataCnt_reg_n_0_[6]\,
      I2 => \m_axis_data_tdata[31]_i_8_n_0\,
      I3 => \dataCnt_reg_n_0_[7]\,
      I4 => \dataCnt_reg_n_0_[8]\,
      I5 => \dataCnt_reg_n_0_[5]\,
      O => \m_axis_data_tdata[31]_i_5_n_0\
    );
\m_axis_data_tdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFFFF00FF01"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[0]\,
      I1 => \m_axis_data_tdata[31]_i_9_n_0\,
      I2 => \dataCnt_reg_n_0_[5]\,
      I3 => \dataCnt_reg_n_0_[9]\,
      I4 => \m_axis_data_tdata[31]_i_10_n_0\,
      I5 => \dataCnt_reg_n_0_[8]\,
      O => \m_axis_data_tdata[31]_i_6_n_0\
    );
\m_axis_data_tdata[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[1]\,
      I1 => \dataCnt_reg_n_0_[4]\,
      I2 => \dataCnt_reg_n_0_[3]\,
      I3 => \dataCnt_reg_n_0_[2]\,
      I4 => \dataCnt_reg_n_0_[0]\,
      O => \m_axis_data_tdata[31]_i_7_n_0\
    );
\m_axis_data_tdata[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[4]\,
      I1 => \dataCnt_reg_n_0_[5]\,
      I2 => \dataCnt_reg_n_0_[3]\,
      I3 => \dataCnt_reg_n_0_[2]\,
      I4 => \dataCnt_reg_n_0_[1]\,
      I5 => \dataCnt_reg_n_0_[8]\,
      O => \m_axis_data_tdata[31]_i_8_n_0\
    );
\m_axis_data_tdata[31]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[4]\,
      I1 => \dataCnt_reg_n_0_[3]\,
      I2 => \dataCnt_reg_n_0_[2]\,
      O => \m_axis_data_tdata[31]_i_9_n_0\
    );
\m_axis_data_tdata[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_symbol(0),
      I1 => m_symbol(1),
      O => \m_axis_data_tdata[8]_i_1_n_0\
    );
\m_axis_data_tdata[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_symbol(1),
      I1 => m_symbol(0),
      O => m_axis_data_tdata_0(9)
    );
\m_axis_data_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_symbol(0),
      Q => m_axis_data_tdata(0),
      R => p_0_in
    );
\m_axis_data_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_data_tdata[10]_i_1_n_0\,
      Q => m_axis_data_tdata(3),
      R => p_0_in
    );
\m_axis_data_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_symbol(1),
      Q => m_axis_data_tdata(4),
      R => p_0_in
    );
\m_axis_data_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_symbol(2),
      Q => m_axis_data_tdata(5),
      R => p_0_in
    );
\m_axis_data_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_data_tdata[24]_i_1_n_0\,
      Q => m_axis_data_tdata(6),
      R => p_0_in
    );
\m_axis_data_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_data_tdata[25]_i_1_n_0\,
      Q => m_axis_data_tdata(7),
      R => p_0_in
    );
\m_axis_data_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_data_tdata[26]_i_1_n_0\,
      Q => m_axis_data_tdata(8),
      R => p_0_in
    );
\m_axis_data_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axis_data_tdata_0(31),
      Q => m_axis_data_tdata(9),
      R => p_0_in
    );
\m_axis_data_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_data_tdata[8]_i_1_n_0\,
      Q => m_axis_data_tdata(1),
      R => p_0_in
    );
\m_axis_data_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axis_data_tdata_0(9),
      Q => m_axis_data_tdata(2),
      R => p_0_in
    );
m_axis_data_tlast_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \m_axis_data_tdata[31]_i_4_n_0\,
      I1 => m_axis_data_tlast_i_2_n_0,
      I2 => m_axis_data_tlast_i_3_n_0,
      O => m_axis_data_tlast_i_1_n_0
    );
m_axis_data_tlast_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[0]\,
      I1 => \dataCnt_reg_n_0_[1]\,
      I2 => \dataCnt_reg_n_0_[2]\,
      I3 => \dataCnt_reg_n_0_[4]\,
      I4 => \dataCnt_reg_n_0_[3]\,
      O => m_axis_data_tlast_i_2_n_0
    );
m_axis_data_tlast_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[7]\,
      I1 => \dataCnt_reg_n_0_[8]\,
      I2 => \dataCnt_reg_n_0_[5]\,
      I3 => \dataCnt_reg_n_0_[6]\,
      I4 => \dataCnt_reg_n_0_[10]\,
      I5 => \dataCnt_reg_n_0_[9]\,
      O => m_axis_data_tlast_i_3_n_0
    );
m_axis_data_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_axis_data_tlast_i_1_n_0,
      Q => m_axis_data_tlast,
      R => '0'
    );
m_axis_data_tvalid_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_data_tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[0]\,
      I2 => m_axis_data_tvalid_INST_0_i_2_n_0,
      I3 => \dataCnt_reg_n_0_[10]\,
      I4 => m_axis_data_tready,
      O => m_axis_data_tvalid
    );
m_axis_data_tvalid_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[7]\,
      I1 => \dataCnt_reg_n_0_[6]\,
      I2 => \dataCnt_reg_n_0_[5]\,
      I3 => \dataCnt_reg_n_0_[8]\,
      I4 => \dataCnt_reg_n_0_[9]\,
      I5 => \m_axis_data_tdata[31]_i_4_n_0\,
      O => m_axis_data_tvalid_INST_0_i_1_n_0
    );
m_axis_data_tvalid_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[2]\,
      I1 => \dataCnt_reg_n_0_[3]\,
      I2 => \dataCnt_reg_n_0_[4]\,
      I3 => \dataCnt_reg_n_0_[1]\,
      O => m_axis_data_tvalid_INST_0_i_2_n_0
    );
\m_symbol_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => lfsr(0),
      Q => m_symbol(0),
      R => '0'
    );
\m_symbol_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => lfsr(1),
      Q => m_symbol(1),
      R => '0'
    );
\m_symbol_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => lfsr(2),
      Q => m_symbol(2),
      R => '0'
    );
\m_symbol_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => lfsr(3),
      Q => m_symbol(3),
      R => '0'
    );
trig_active_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_r1,
      I1 => trig,
      O => trig_active0
    );
trig_active_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trig_active0,
      Q => trig_active,
      R => '0'
    );
trig_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trig_r2,
      Q => trig_r1,
      R => '0'
    );
trig_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trigger,
      Q => trig_r2,
      R => '0'
    );
trig_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trig_r1,
      Q => trig,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    trigger : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_fake_data_src_0_0,fake_data_src,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fake_data_src,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^m_axis_data_tdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_data, FREQ_HZ 79999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_data_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_data TLAST";
  attribute X_INTERFACE_INFO of m_axis_data_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_data TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_data_tready : signal is "XIL_INTERFACENAME m_axis_data, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 79999992, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_data_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_data TVALID";
  attribute X_INTERFACE_INFO of m_axis_data_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_data TDATA";
begin
  m_axis_data_tdata(31) <= \^m_axis_data_tdata\(30);
  m_axis_data_tdata(30) <= \^m_axis_data_tdata\(30);
  m_axis_data_tdata(29) <= \^m_axis_data_tdata\(30);
  m_axis_data_tdata(28) <= \^m_axis_data_tdata\(30);
  m_axis_data_tdata(27) <= \^m_axis_data_tdata\(30);
  m_axis_data_tdata(26) <= \^m_axis_data_tdata\(26);
  m_axis_data_tdata(25 downto 24) <= \^m_axis_data_tdata\(23 downto 22);
  m_axis_data_tdata(23 downto 22) <= \^m_axis_data_tdata\(23 downto 22);
  m_axis_data_tdata(21 downto 20) <= \^m_axis_data_tdata\(23 downto 22);
  m_axis_data_tdata(19 downto 18) <= \^m_axis_data_tdata\(23 downto 22);
  m_axis_data_tdata(17) <= \^m_axis_data_tdata\(23);
  m_axis_data_tdata(16) <= \^m_axis_data_tdata\(16);
  m_axis_data_tdata(15) <= \^m_axis_data_tdata\(14);
  m_axis_data_tdata(14) <= \^m_axis_data_tdata\(14);
  m_axis_data_tdata(13) <= \^m_axis_data_tdata\(14);
  m_axis_data_tdata(12) <= \^m_axis_data_tdata\(14);
  m_axis_data_tdata(11) <= \^m_axis_data_tdata\(14);
  m_axis_data_tdata(10) <= \^m_axis_data_tdata\(10);
  m_axis_data_tdata(9 downto 8) <= \^m_axis_data_tdata\(7 downto 6);
  m_axis_data_tdata(7 downto 6) <= \^m_axis_data_tdata\(7 downto 6);
  m_axis_data_tdata(5 downto 4) <= \^m_axis_data_tdata\(7 downto 6);
  m_axis_data_tdata(3 downto 2) <= \^m_axis_data_tdata\(7 downto 6);
  m_axis_data_tdata(1) <= \^m_axis_data_tdata\(7);
  m_axis_data_tdata(0) <= \^m_axis_data_tdata\(0);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fake_data_src
     port map (
      clk => clk,
      m_axis_data_tdata(9) => \^m_axis_data_tdata\(30),
      m_axis_data_tdata(8) => \^m_axis_data_tdata\(26),
      m_axis_data_tdata(7 downto 6) => \^m_axis_data_tdata\(23 downto 22),
      m_axis_data_tdata(5) => \^m_axis_data_tdata\(16),
      m_axis_data_tdata(4) => \^m_axis_data_tdata\(14),
      m_axis_data_tdata(3) => \^m_axis_data_tdata\(10),
      m_axis_data_tdata(2 downto 1) => \^m_axis_data_tdata\(7 downto 6),
      m_axis_data_tdata(0) => \^m_axis_data_tdata\(0),
      m_axis_data_tlast => m_axis_data_tlast,
      m_axis_data_tready => m_axis_data_tready,
      m_axis_data_tvalid => m_axis_data_tvalid,
      trigger => trigger
    );
end STRUCTURE;
