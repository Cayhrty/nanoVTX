-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Sep 20 21:43:37 2023
-- Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_SampleControl_0_0_sim_netlist.vhdl
-- Design      : top_SampleControl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SampleControl is
  port (
    tvalid : out STD_LOGIC;
    sample_trig : in STD_LOGIC;
    clk : in STD_LOGIC;
    tvalid_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SampleControl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SampleControl is
  signal data0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal dataCnt : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \dataCnt0_carry__0_n_0\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_1\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_2\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_3\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_0\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_1\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_2\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_3\ : STD_LOGIC;
  signal \dataCnt0_carry__2_n_0\ : STD_LOGIC;
  signal \dataCnt0_carry__2_n_1\ : STD_LOGIC;
  signal \dataCnt0_carry__2_n_2\ : STD_LOGIC;
  signal \dataCnt0_carry__2_n_3\ : STD_LOGIC;
  signal \dataCnt0_carry__3_n_0\ : STD_LOGIC;
  signal \dataCnt0_carry__3_n_1\ : STD_LOGIC;
  signal \dataCnt0_carry__3_n_2\ : STD_LOGIC;
  signal \dataCnt0_carry__3_n_3\ : STD_LOGIC;
  signal \dataCnt0_carry__4_n_2\ : STD_LOGIC;
  signal \dataCnt0_carry__4_n_3\ : STD_LOGIC;
  signal dataCnt0_carry_n_0 : STD_LOGIC;
  signal dataCnt0_carry_n_1 : STD_LOGIC;
  signal dataCnt0_carry_n_2 : STD_LOGIC;
  signal dataCnt0_carry_n_3 : STD_LOGIC;
  signal dataCnt1 : STD_LOGIC;
  signal \dataCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \dataCnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \dataCnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \dataCnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[23]_i_3_n_0\ : STD_LOGIC;
  signal \dataCnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \dataCnt[9]_i_1_n_0\ : STD_LOGIC;
  signal dataCnt_0 : STD_LOGIC;
  signal \dataCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \dataCnt_reg_n_0_[9]\ : STD_LOGIC;
  signal last_trig : STD_LOGIC;
  signal last_trig_r1 : STD_LOGIC;
  signal last_trig_r2 : STD_LOGIC;
  signal tvalid_INST_0_i_1_n_0 : STD_LOGIC;
  signal tvalid_INST_0_i_2_n_0 : STD_LOGIC;
  signal tvalid_INST_0_i_3_n_0 : STD_LOGIC;
  signal tvalid_INST_0_i_4_n_0 : STD_LOGIC;
  signal tvalid_INST_0_i_5_n_0 : STD_LOGIC;
  signal tvalid_INST_0_i_6_n_0 : STD_LOGIC;
  signal \NLW_dataCnt0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dataCnt0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dataCnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \dataCnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \dataCnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \dataCnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \dataCnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \dataCnt0_carry__4\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dataCnt[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dataCnt[0]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dataCnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of tvalid_INST_0 : label is "soft_lutpair1";
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
      O(3 downto 0) => data0(4 downto 1),
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
      O(3 downto 0) => data0(8 downto 5),
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
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \dataCnt_reg_n_0_[12]\,
      S(2) => \dataCnt_reg_n_0_[11]\,
      S(1) => \dataCnt_reg_n_0_[10]\,
      S(0) => \dataCnt_reg_n_0_[9]\
    );
\dataCnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dataCnt0_carry__1_n_0\,
      CO(3) => \dataCnt0_carry__2_n_0\,
      CO(2) => \dataCnt0_carry__2_n_1\,
      CO(1) => \dataCnt0_carry__2_n_2\,
      CO(0) => \dataCnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \dataCnt_reg_n_0_[16]\,
      S(2) => \dataCnt_reg_n_0_[15]\,
      S(1) => \dataCnt_reg_n_0_[14]\,
      S(0) => \dataCnt_reg_n_0_[13]\
    );
\dataCnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \dataCnt0_carry__2_n_0\,
      CO(3) => \dataCnt0_carry__3_n_0\,
      CO(2) => \dataCnt0_carry__3_n_1\,
      CO(1) => \dataCnt0_carry__3_n_2\,
      CO(0) => \dataCnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \dataCnt_reg_n_0_[20]\,
      S(2) => \dataCnt_reg_n_0_[19]\,
      S(1) => \dataCnt_reg_n_0_[18]\,
      S(0) => \dataCnt_reg_n_0_[17]\
    );
\dataCnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \dataCnt0_carry__3_n_0\,
      CO(3 downto 2) => \NLW_dataCnt0_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \dataCnt0_carry__4_n_2\,
      CO(0) => \dataCnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_dataCnt0_carry__4_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(23 downto 21),
      S(3) => '0',
      S(2) => \dataCnt_reg_n_0_[23]\,
      S(1) => \dataCnt_reg_n_0_[22]\,
      S(0) => \dataCnt_reg_n_0_[21]\
    );
\dataCnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFFCA8CFCFFC88"
    )
        port map (
      I0 => \dataCnt[0]_i_2_n_0\,
      I1 => dataCnt1,
      I2 => tvalid_in,
      I3 => \dataCnt[0]_i_3_n_0\,
      I4 => \dataCnt_reg_n_0_[0]\,
      I5 => \dataCnt[0]_i_4_n_0\,
      O => \dataCnt[0]_i_1_n_0\
    );
\dataCnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[13]\,
      I1 => tvalid_in,
      I2 => \dataCnt_reg_n_0_[19]\,
      I3 => \dataCnt_reg_n_0_[17]\,
      O => \dataCnt[0]_i_2_n_0\
    );
\dataCnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => tvalid_INST_0_i_6_n_0,
      I1 => tvalid_INST_0_i_5_n_0,
      I2 => tvalid_INST_0_i_4_n_0,
      I3 => tvalid_INST_0_i_3_n_0,
      I4 => tvalid_INST_0_i_2_n_0,
      O => \dataCnt[0]_i_3_n_0\
    );
\dataCnt[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[19]\,
      I1 => \dataCnt_reg_n_0_[17]\,
      I2 => \dataCnt_reg_n_0_[13]\,
      O => \dataCnt[0]_i_4_n_0\
    );
\dataCnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(10),
      O => \dataCnt[10]_i_1_n_0\
    );
\dataCnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(11),
      O => \dataCnt[11]_i_1_n_0\
    );
\dataCnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(12),
      O => \dataCnt[12]_i_1_n_0\
    );
\dataCnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(13),
      O => \dataCnt[13]_i_1_n_0\
    );
\dataCnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(14),
      O => \dataCnt[14]_i_1_n_0\
    );
\dataCnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(15),
      O => \dataCnt[15]_i_1_n_0\
    );
\dataCnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(16),
      O => \dataCnt[16]_i_1_n_0\
    );
\dataCnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(17),
      O => \dataCnt[17]_i_1_n_0\
    );
\dataCnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(18),
      O => \dataCnt[18]_i_1_n_0\
    );
\dataCnt[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(19),
      O => \dataCnt[19]_i_1_n_0\
    );
\dataCnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(1),
      O => \dataCnt[1]_i_1_n_0\
    );
\dataCnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(20),
      O => \dataCnt[20]_i_1_n_0\
    );
\dataCnt[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(21),
      O => \dataCnt[21]_i_1_n_0\
    );
\dataCnt[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(22),
      O => \dataCnt[22]_i_1_n_0\
    );
\dataCnt[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => dataCnt1,
      I1 => tvalid_INST_0_i_1_n_0,
      I2 => \dataCnt_reg_n_0_[13]\,
      I3 => tvalid_in,
      I4 => \dataCnt_reg_n_0_[19]\,
      I5 => \dataCnt_reg_n_0_[17]\,
      O => dataCnt(1)
    );
\dataCnt[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => tvalid_in,
      I1 => tvalid_INST_0_i_1_n_0,
      I2 => \dataCnt_reg_n_0_[19]\,
      I3 => \dataCnt_reg_n_0_[17]\,
      I4 => \dataCnt_reg_n_0_[13]\,
      O => dataCnt_0
    );
\dataCnt[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(23),
      O => \dataCnt[23]_i_3_n_0\
    );
\dataCnt[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => last_trig_r1,
      I1 => last_trig,
      O => dataCnt1
    );
\dataCnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(2),
      O => \dataCnt[2]_i_1_n_0\
    );
\dataCnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(3),
      O => \dataCnt[3]_i_1_n_0\
    );
\dataCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(4),
      O => \dataCnt[4]_i_1_n_0\
    );
\dataCnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(5),
      O => \dataCnt[5]_i_1_n_0\
    );
\dataCnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(6),
      O => \dataCnt[6]_i_1_n_0\
    );
\dataCnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(7),
      O => \dataCnt[7]_i_1_n_0\
    );
\dataCnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(8),
      O => \dataCnt[8]_i_1_n_0\
    );
\dataCnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => data0(9),
      O => \dataCnt[9]_i_1_n_0\
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
      CE => dataCnt_0,
      D => \dataCnt[10]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[10]\,
      R => dataCnt(1)
    );
\dataCnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[11]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[11]\,
      R => dataCnt(1)
    );
\dataCnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[12]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[12]\,
      R => dataCnt(1)
    );
\dataCnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[13]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[13]\,
      R => dataCnt(1)
    );
\dataCnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[14]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[14]\,
      R => dataCnt(1)
    );
\dataCnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[15]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[15]\,
      R => dataCnt(1)
    );
\dataCnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[16]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[16]\,
      R => dataCnt(1)
    );
\dataCnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[17]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[17]\,
      R => dataCnt(1)
    );
\dataCnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[18]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[18]\,
      R => dataCnt(1)
    );
\dataCnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[19]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[19]\,
      R => dataCnt(1)
    );
\dataCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[1]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[1]\,
      R => dataCnt(1)
    );
\dataCnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[20]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[20]\,
      R => dataCnt(1)
    );
\dataCnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[21]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[21]\,
      R => dataCnt(1)
    );
\dataCnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[22]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[22]\,
      R => dataCnt(1)
    );
\dataCnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[23]_i_3_n_0\,
      Q => \dataCnt_reg_n_0_[23]\,
      R => dataCnt(1)
    );
\dataCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[2]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[2]\,
      R => dataCnt(1)
    );
\dataCnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[3]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[3]\,
      R => dataCnt(1)
    );
\dataCnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[4]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[4]\,
      R => dataCnt(1)
    );
\dataCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[5]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[5]\,
      R => dataCnt(1)
    );
\dataCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[6]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[6]\,
      R => dataCnt(1)
    );
\dataCnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[7]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[7]\,
      R => dataCnt(1)
    );
\dataCnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[8]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[8]\,
      R => dataCnt(1)
    );
\dataCnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dataCnt_0,
      D => \dataCnt[9]_i_1_n_0\,
      Q => \dataCnt_reg_n_0_[9]\,
      R => dataCnt(1)
    );
last_trig_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => last_trig_r2,
      Q => last_trig_r1,
      R => '0'
    );
last_trig_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sample_trig,
      Q => last_trig_r2,
      R => '0'
    );
last_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => last_trig_r1,
      Q => last_trig,
      R => '0'
    );
tvalid_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => tvalid_INST_0_i_1_n_0,
      I1 => \dataCnt_reg_n_0_[19]\,
      I2 => \dataCnt_reg_n_0_[17]\,
      I3 => \dataCnt_reg_n_0_[13]\,
      I4 => tvalid_in,
      O => tvalid
    );
tvalid_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => tvalid_INST_0_i_2_n_0,
      I1 => tvalid_INST_0_i_3_n_0,
      I2 => tvalid_INST_0_i_4_n_0,
      I3 => tvalid_INST_0_i_5_n_0,
      I4 => tvalid_INST_0_i_6_n_0,
      I5 => \dataCnt_reg_n_0_[0]\,
      O => tvalid_INST_0_i_1_n_0
    );
tvalid_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[6]\,
      I1 => \dataCnt_reg_n_0_[5]\,
      I2 => \dataCnt_reg_n_0_[8]\,
      I3 => \dataCnt_reg_n_0_[7]\,
      O => tvalid_INST_0_i_2_n_0
    );
tvalid_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[10]\,
      I1 => \dataCnt_reg_n_0_[9]\,
      I2 => \dataCnt_reg_n_0_[12]\,
      I3 => \dataCnt_reg_n_0_[11]\,
      O => tvalid_INST_0_i_3_n_0
    );
tvalid_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[21]\,
      I1 => \dataCnt_reg_n_0_[20]\,
      I2 => \dataCnt_reg_n_0_[23]\,
      I3 => \dataCnt_reg_n_0_[22]\,
      O => tvalid_INST_0_i_4_n_0
    );
tvalid_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[15]\,
      I1 => \dataCnt_reg_n_0_[14]\,
      I2 => \dataCnt_reg_n_0_[18]\,
      I3 => \dataCnt_reg_n_0_[16]\,
      O => tvalid_INST_0_i_5_n_0
    );
tvalid_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dataCnt_reg_n_0_[2]\,
      I1 => \dataCnt_reg_n_0_[1]\,
      I2 => \dataCnt_reg_n_0_[4]\,
      I3 => \dataCnt_reg_n_0_[3]\,
      O => tvalid_INST_0_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    sample_trig : in STD_LOGIC;
    tvalid : out STD_LOGIC;
    tvalid_in : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_SampleControl_0_0,SampleControl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SampleControl,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 79999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SampleControl
     port map (
      clk => clk,
      sample_trig => sample_trig,
      tvalid => tvalid,
      tvalid_in => tvalid_in
    );
end STRUCTURE;
