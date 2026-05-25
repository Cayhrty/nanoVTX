-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Sep 16 15:53:27 2023
-- Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_MIPI_D_PHY_RX_0_0_sim_netlist.vhdl
-- Design      : top_MIPI_D_PHY_RX_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter is
  port (
    \Filter.sOut_reg_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    state_2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    \cDelayCnt_reg[0]\ : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter is
  signal \^fsm_sequential_state_reg[2]_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[0]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods_reg_n_0_[0]\ : STD_LOGIC;
  signal \Filter.cntPeriods_reg_n_0_[1]\ : STD_LOGIC;
  signal \Filter.sIn_q_reg_n_0\ : STD_LOGIC;
  signal \Filter.sOut_i_1__1_n_0\ : STD_LOGIC;
  signal \^filter.sout_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Filter.cntPeriods[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Filter.sOut_i_1__1\ : label is "soft_lutpair31";
begin
  \FSM_sequential_state_reg[2]_0\ <= \^fsm_sequential_state_reg[2]_0\;
  \Filter.sOut_reg_0\ <= \^filter.sout_reg_0\;
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => state_2(0),
      I1 => \^filter.sout_reg_0\,
      I2 => \FSM_sequential_state_reg[1]\,
      O => \FSM_sequential_state_reg[0]\
    );
\FSM_sequential_state[1]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => state(0),
      I1 => \^filter.sout_reg_0\,
      I2 => \FSM_sequential_state_reg[1]\,
      O => \FSM_sequential_state_reg[0]_0\
    );
\Filter.cntPeriods[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FF4"
    )
        port map (
      I0 => \Filter.cntPeriods_reg_n_0_[0]\,
      I1 => \Filter.cntPeriods_reg_n_0_[1]\,
      I2 => \Filter.sIn_q_reg_n_0\,
      I3 => \out\(0),
      O => \Filter.cntPeriods[0]_i_1_n_0\
    );
\Filter.cntPeriods[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FF8"
    )
        port map (
      I0 => \Filter.cntPeriods_reg_n_0_[1]\,
      I1 => \Filter.cntPeriods_reg_n_0_[0]\,
      I2 => \Filter.sIn_q_reg_n_0\,
      I3 => \out\(0),
      O => \Filter.cntPeriods[1]_i_1_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[0]_i_1_n_0\,
      Q => \Filter.cntPeriods_reg_n_0_[0]\,
      R => '0'
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[1]_i_1_n_0\,
      Q => \Filter.cntPeriods_reg_n_0_[1]\,
      R => '0'
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \out\(0),
      Q => \Filter.sIn_q_reg_n_0\,
      R => '0'
    );
\Filter.sOut_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \Filter.sIn_q_reg_n_0\,
      I1 => \Filter.cntPeriods_reg_n_0_[1]\,
      I2 => \Filter.cntPeriods_reg_n_0_[0]\,
      I3 => \^filter.sout_reg_0\,
      O => \Filter.sOut_i_1__1_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \Filter.sOut_i_1__1_n_0\,
      Q => \^filter.sout_reg_0\,
      R => '0'
    );
\cDelayCnt[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => state_2(2),
      I1 => state_2(1),
      I2 => state_2(0),
      I3 => \^fsm_sequential_state_reg[2]_0\,
      O => \FSM_sequential_state_reg[2]\
    );
\cDelayCnt[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000040444"
    )
        port map (
      I0 => state_2(2),
      I1 => state_2(1),
      I2 => state_2(0),
      I3 => \^filter.sout_reg_0\,
      I4 => \FSM_sequential_state_reg[1]\,
      I5 => \cDelayCnt_reg[0]\,
      O => \^fsm_sequential_state_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_13 is
  port (
    \Filter.sOut_reg_0\ : out STD_LOGIC;
    \Filter.sOut_reg_1\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_1\ : in STD_LOGIC;
    state_2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_13 : entity is "GlitchFilter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_13 is
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[0]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods_reg_n_0_[0]\ : STD_LOGIC;
  signal \Filter.cntPeriods_reg_n_0_[1]\ : STD_LOGIC;
  signal \Filter.sIn_q_reg_n_0\ : STD_LOGIC;
  signal \Filter.sOut_i_1__2_n_0\ : STD_LOGIC;
  signal \^filter.sout_reg_0\ : STD_LOGIC;
  signal \^filter.sout_reg_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \Filter.cntPeriods[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Filter.sOut_i_1__2\ : label is "soft_lutpair34";
begin
  \Filter.sOut_reg_0\ <= \^filter.sout_reg_0\;
  \Filter.sOut_reg_1\ <= \^filter.sout_reg_1\;
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE5C0000FFFFFFFF"
    )
        port map (
      I0 => state_2(2),
      I1 => \^filter.sout_reg_1\,
      I2 => state_2(0),
      I3 => \FSM_sequential_state_reg[1]_2\,
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      I5 => \FSM_sequential_state_reg[1]_3\(0),
      O => \FSM_sequential_state_reg[2]_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE8FF"
    )
        port map (
      I0 => \^filter.sout_reg_0\,
      I1 => \FSM_sequential_state_reg[2]_1\,
      I2 => state_2(0),
      I3 => state_2(1),
      I4 => state_2(2),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^filter.sout_reg_0\,
      I1 => \FSM_sequential_state_reg[2]_1\,
      O => \^filter.sout_reg_1\
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5100555500000000"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2__0_n_0\,
      I1 => \FSM_sequential_state_reg[1]_1\,
      I2 => \FSM_sequential_state_reg[1]_2\,
      I3 => state_2(1),
      I4 => state_2(2),
      I5 => \FSM_sequential_state_reg[1]_3\(0),
      O => \FSM_sequential_state_reg[1]\
    );
\FSM_sequential_state[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33FF020F02FF02FF"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_0\,
      I1 => state_2(2),
      I2 => state_2(0),
      I3 => state_2(1),
      I4 => \^filter.sout_reg_0\,
      I5 => \FSM_sequential_state_reg[2]_1\,
      O => \FSM_sequential_state[1]_i_2__0_n_0\
    );
\FSM_sequential_state[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2AFFFF"
    )
        port map (
      I0 => state_2(2),
      I1 => \^filter.sout_reg_0\,
      I2 => \FSM_sequential_state_reg[2]_1\,
      I3 => state_2(0),
      I4 => \FSM_sequential_state_reg[1]_3\(0),
      O => \FSM_sequential_state_reg[2]\
    );
\Filter.cntPeriods[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FF4"
    )
        port map (
      I0 => \Filter.cntPeriods_reg_n_0_[0]\,
      I1 => \Filter.cntPeriods_reg_n_0_[1]\,
      I2 => \Filter.sIn_q_reg_n_0\,
      I3 => \out\(0),
      O => \Filter.cntPeriods[0]_i_1_n_0\
    );
\Filter.cntPeriods[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FF8"
    )
        port map (
      I0 => \Filter.cntPeriods_reg_n_0_[1]\,
      I1 => \Filter.cntPeriods_reg_n_0_[0]\,
      I2 => \Filter.sIn_q_reg_n_0\,
      I3 => \out\(0),
      O => \Filter.cntPeriods[1]_i_1_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[0]_i_1_n_0\,
      Q => \Filter.cntPeriods_reg_n_0_[0]\,
      R => '0'
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[1]_i_1_n_0\,
      Q => \Filter.cntPeriods_reg_n_0_[1]\,
      R => '0'
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \out\(0),
      Q => \Filter.sIn_q_reg_n_0\,
      R => '0'
    );
\Filter.sOut_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \Filter.sIn_q_reg_n_0\,
      I1 => \Filter.cntPeriods_reg_n_0_[1]\,
      I2 => \Filter.cntPeriods_reg_n_0_[0]\,
      I3 => \^filter.sout_reg_0\,
      O => \Filter.sOut_i_1__2_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \Filter.sOut_i_1__2_n_0\,
      Q => \^filter.sout_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_20 is
  port (
    in0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    \Filter.cntPeriods_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_20 : entity is "GlitchFilter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_20;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_20 is
  signal \Filter.cntPeriods[0]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.sOut_i_1_n_0\ : STD_LOGIC;
  signal cntPeriods : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sIn_q : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter.cntPeriods[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Filter.cntPeriods[1]_i_1\ : label is "soft_lutpair0";
begin
  in0(0) <= \^in0\(0);
\Filter.cntPeriods[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFFFF4F"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      I2 => \Filter.cntPeriods_reg[1]_0\(0),
      I3 => sIn_q,
      I4 => \out\(0),
      O => \Filter.cntPeriods[0]_i_1_n_0\
    );
\Filter.cntPeriods[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFFFF8F"
    )
        port map (
      I0 => cntPeriods(1),
      I1 => cntPeriods(0),
      I2 => \Filter.cntPeriods_reg[1]_0\(0),
      I3 => sIn_q,
      I4 => \out\(0),
      O => \Filter.cntPeriods[1]_i_1_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[0]_i_1_n_0\,
      Q => cntPeriods(0),
      R => '0'
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[1]_i_1_n_0\,
      Q => cntPeriods(1),
      R => '0'
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \out\(0),
      Q => sIn_q,
      R => '0'
    );
\Filter.sOut_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => sIn_q,
      I1 => cntPeriods(1),
      I2 => cntPeriods(0),
      I3 => \^in0\(0),
      O => \Filter.sOut_i_1_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \Filter.sOut_i_1_n_0\,
      Q => \^in0\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_22 is
  port (
    in0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    \Filter.cntPeriods_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_22 : entity is "GlitchFilter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_22;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_22 is
  signal \Filter.cntPeriods[0]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods_reg_n_0_[0]\ : STD_LOGIC;
  signal \Filter.cntPeriods_reg_n_0_[1]\ : STD_LOGIC;
  signal \Filter.sIn_q_reg_n_0\ : STD_LOGIC;
  signal \Filter.sOut_i_1__0_n_0\ : STD_LOGIC;
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter.cntPeriods[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Filter.cntPeriods[1]_i_1\ : label is "soft_lutpair1";
begin
  in0(0) <= \^in0\(0);
\Filter.cntPeriods[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFFFF4F"
    )
        port map (
      I0 => \Filter.cntPeriods_reg_n_0_[0]\,
      I1 => \Filter.cntPeriods_reg_n_0_[1]\,
      I2 => \Filter.cntPeriods_reg[1]_0\(0),
      I3 => \Filter.sIn_q_reg_n_0\,
      I4 => \out\(0),
      O => \Filter.cntPeriods[0]_i_1_n_0\
    );
\Filter.cntPeriods[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFFFF8F"
    )
        port map (
      I0 => \Filter.cntPeriods_reg_n_0_[1]\,
      I1 => \Filter.cntPeriods_reg_n_0_[0]\,
      I2 => \Filter.cntPeriods_reg[1]_0\(0),
      I3 => \Filter.sIn_q_reg_n_0\,
      I4 => \out\(0),
      O => \Filter.cntPeriods[1]_i_1_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[0]_i_1_n_0\,
      Q => \Filter.cntPeriods_reg_n_0_[0]\,
      R => '0'
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \Filter.cntPeriods[1]_i_1_n_0\,
      Q => \Filter.cntPeriods_reg_n_0_[1]\,
      R => '0'
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \out\(0),
      Q => \Filter.sIn_q_reg_n_0\,
      R => '0'
    );
\Filter.sOut_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \Filter.sIn_q_reg_n_0\,
      I1 => \Filter.cntPeriods_reg_n_0_[1]\,
      I2 => \Filter.cntPeriods_reg_n_0_[0]\,
      I3 => \^in0\(0),
      O => \Filter.sOut_i_1__0_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \Filter.sOut_i_1__0_n_0\,
      Q => \^in0\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer is
  port (
    aHS : out STD_LOGIC;
    aLP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer is
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of LaneHighSpeed : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of LaneHighSpeed : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of LaneHighSpeed : label is "AUTO";
  attribute box_type : string;
  attribute box_type of LaneHighSpeed : label is "PRIMITIVE";
  attribute CAPACITANCE of \LaneWithLP.LaneLowPower0\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \LaneWithLP.LaneLowPower0\ : label is "0";
  attribute IFD_DELAY_VALUE of \LaneWithLP.LaneLowPower0\ : label is "AUTO";
  attribute box_type of \LaneWithLP.LaneLowPower0\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \LaneWithLP.LaneLowPower1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \LaneWithLP.LaneLowPower1\ : label is "0";
  attribute IFD_DELAY_VALUE of \LaneWithLP.LaneLowPower1\ : label is "AUTO";
  attribute box_type of \LaneWithLP.LaneLowPower1\ : label is "PRIMITIVE";
begin
LaneHighSpeed: unisim.vcomponents.IBUFDS
     port map (
      I => dphy_clk_hs_p,
      IB => dphy_clk_hs_n,
      O => aHS
    );
\LaneWithLP.LaneLowPower0\: unisim.vcomponents.IBUF
     port map (
      I => dphy_clk_lp_n,
      O => aLP(0)
    );
\LaneWithLP.LaneLowPower1\: unisim.vcomponents.IBUF
     port map (
      I => dphy_clk_lp_p,
      O => aLP(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer__parameterized0\ is
  port (
    HS_Data_1 : out STD_LOGIC;
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer__parameterized0\ : entity is "InputBuffer";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer__parameterized0\ is
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of LaneHighSpeed : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of LaneHighSpeed : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of LaneHighSpeed : label is "AUTO";
  attribute box_type : string;
  attribute box_type of LaneHighSpeed : label is "PRIMITIVE";
begin
LaneHighSpeed: unisim.vcomponents.IBUFDS
     port map (
      I => dphy_data_hs_p(0),
      IB => dphy_data_hs_n(0),
      O => HS_Data_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer__parameterized1\ is
  port (
    aHS : out STD_LOGIC;
    aLP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    dphy_data_lp_n : in STD_LOGIC;
    dphy_data_lp_p : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer__parameterized1\ : entity is "InputBuffer";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer__parameterized1\ is
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of LaneHighSpeed : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of LaneHighSpeed : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of LaneHighSpeed : label is "AUTO";
  attribute box_type : string;
  attribute box_type of LaneHighSpeed : label is "PRIMITIVE";
  attribute CAPACITANCE of \LaneWithLP.LaneLowPower0\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \LaneWithLP.LaneLowPower0\ : label is "0";
  attribute IFD_DELAY_VALUE of \LaneWithLP.LaneLowPower0\ : label is "AUTO";
  attribute box_type of \LaneWithLP.LaneLowPower0\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \LaneWithLP.LaneLowPower1\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \LaneWithLP.LaneLowPower1\ : label is "0";
  attribute IFD_DELAY_VALUE of \LaneWithLP.LaneLowPower1\ : label is "AUTO";
  attribute box_type of \LaneWithLP.LaneLowPower1\ : label is "PRIMITIVE";
begin
LaneHighSpeed: unisim.vcomponents.IBUFDS
     port map (
      I => dphy_data_hs_p(0),
      IB => dphy_data_hs_n(0),
      O => aHS
    );
\LaneWithLP.LaneLowPower0\: unisim.vcomponents.IBUF
     port map (
      I => dphy_data_lp_n,
      O => aLP(0)
    );
\LaneWithLP.LaneLowPower1\: unisim.vcomponents.IBUF
     port map (
      I => dphy_data_lp_p,
      O => aLP(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver_S_AXI_Lite is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver_S_AXI_Lite;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver_S_AXI_Lite is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal control_reg : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \control_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_lite_bvalid\ : STD_LOGIC;
  signal \^s_axi_lite_rvalid\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \axi_rdata[12]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \axi_rdata[13]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \axi_rdata[14]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \axi_rdata[16]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \axi_rdata[17]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \axi_rdata[19]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \axi_rdata[22]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \axi_rdata[23]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \axi_rdata[24]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \axi_rdata[25]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \axi_rdata[26]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \axi_rdata[27]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \axi_rdata[28]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \axi_rdata[29]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \axi_rdata[8]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \control_reg[31]_i_2\ : label is "soft_lutpair66";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s_axi_lite_bvalid <= \^s_axi_lite_bvalid\;
  s_axi_lite_rvalid <= \^s_axi_lite_rvalid\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_lite_araddr(0),
      I1 => s_axi_lite_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_lite_araddr(1),
      I1 => s_axi_lite_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_lite_awaddr(0),
      I1 => s_axi_lite_wvalid,
      I2 => s_axi_lite_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_lite_awaddr(1),
      I1 => s_axi_lite_wvalid,
      I2 => s_axi_lite_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_lite_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^axi_awready_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => s_axi_lite_bready,
      I5 => \^s_axi_lite_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_lite_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \^q\(0),
      I2 => axi_araddr(3),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(10),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(11),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(12),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(13),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(14),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(15),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => control_reg(16),
      I2 => axi_araddr(3),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(17),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(18),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(19),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \^q\(1),
      I2 => axi_araddr(3),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(20),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(21),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(22),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(23),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(24),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(25),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(26),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(27),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(28),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(29),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(2),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(30),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s_axi_lite_arvalid,
      I2 => \^s_axi_lite_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(31),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(4),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(5),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(6),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(7),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(8),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => control_reg(9),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s_axi_lite_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s_axi_lite_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s_axi_lite_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s_axi_lite_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s_axi_lite_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s_axi_lite_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s_axi_lite_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s_axi_lite_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s_axi_lite_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s_axi_lite_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s_axi_lite_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s_axi_lite_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s_axi_lite_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s_axi_lite_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s_axi_lite_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s_axi_lite_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s_axi_lite_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s_axi_lite_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s_axi_lite_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s_axi_lite_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s_axi_lite_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s_axi_lite_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s_axi_lite_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s_axi_lite_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s_axi_lite_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s_axi_lite_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s_axi_lite_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s_axi_lite_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s_axi_lite_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s_axi_lite_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s_axi_lite_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s_axi_lite_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^s_axi_lite_rvalid\,
      I3 => s_axi_lite_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_lite_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^axi_wready_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\control_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s_axi_lite_wstrb(1),
      O => \control_reg[15]_i_1_n_0\
    );
\control_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s_axi_lite_wstrb(2),
      O => \control_reg[23]_i_1_n_0\
    );
\control_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s_axi_lite_wstrb(3),
      O => \control_reg[31]_i_1_n_0\
    );
\control_reg[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => \^axi_wready_reg_0\,
      I2 => s_axi_lite_wvalid,
      I3 => s_axi_lite_awvalid,
      O => \slv_reg_wren__0\
    );
\control_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s_axi_lite_wstrb(0),
      O => \control_reg[7]_i_1_n_0\
    );
\control_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(10),
      Q => control_reg(10),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(11),
      Q => control_reg(11),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(12),
      Q => control_reg(12),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(13),
      Q => control_reg(13),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(14),
      Q => control_reg(14),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(15),
      Q => control_reg(15),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(16),
      Q => control_reg(16),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(17),
      Q => control_reg(17),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(18),
      Q => control_reg(18),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(19),
      Q => control_reg(19),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(1),
      Q => \^q\(1),
      S => axi_awready_i_1_n_0
    );
\control_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(20),
      Q => control_reg(20),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(21),
      Q => control_reg(21),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(22),
      Q => control_reg(22),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(23),
      Q => control_reg(23),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(24),
      Q => control_reg(24),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(25),
      Q => control_reg(25),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(26),
      Q => control_reg(26),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(27),
      Q => control_reg(27),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(28),
      Q => control_reg(28),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(29),
      Q => control_reg(29),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(2),
      Q => control_reg(2),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(30),
      Q => control_reg(30),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(31),
      Q => control_reg(31),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(3),
      Q => control_reg(3),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(4),
      Q => control_reg(4),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(5),
      Q => control_reg(5),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(6),
      Q => control_reg(6),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(7),
      Q => control_reg(7),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(8),
      Q => control_reg(8),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(9),
      Q => control_reg(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GenIDELAYCTRL.rDlyRst_reg\ : out STD_LOGIC;
    RST : in STD_LOGIC;
    \GenIDELAYCTRL.rDlyRst_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GenIDELAYCTRL.rDlyRstCnt_reg\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync is
  signal \GenIDELAYCTRL.rDlyRst_i_2_n_0\ : STD_LOGIC;
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\GenIDELAYCTRL.rDlyRst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRst_i_2_n_0\,
      I1 => RST,
      I2 => oSyncStages(1),
      I3 => \GenIDELAYCTRL.rDlyRst_reg_0\(0),
      O => \GenIDELAYCTRL.rDlyRst_reg\
    );
\GenIDELAYCTRL.rDlyRst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg\(3),
      I1 => \GenIDELAYCTRL.rDlyRstCnt_reg\(1),
      I2 => \GenIDELAYCTRL.rDlyRstCnt_reg\(0),
      I3 => \GenIDELAYCTRL.rDlyRstCnt_reg\(2),
      I4 => \GenIDELAYCTRL.rDlyRstCnt_reg\(4),
      O => \GenIDELAYCTRL.rDlyRst_i_2_n_0\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_15 is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_15 : entity is "SyncAsync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_15;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_15 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  AR(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_18 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_18 : entity is "SyncAsync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_18;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_18 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_19 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GenIDELAYCTRL.rDlyRstCnt_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    aRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_19 : entity is "SyncAsync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_19;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_19 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\GenIDELAYCTRL.rDlyRstCnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => \GenIDELAYCTRL.rDlyRstCnt_reg[4]\(0),
      O => SS(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => '0',
      PRE => aRst,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      PRE => aRst,
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_5 is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_5 : entity is "SyncAsync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_5 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  AR(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_7 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_7 : entity is "SyncAsync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_7 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0\ is
  port (
    \oSyncStages_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[0]_0\ : in STD_LOGIC;
    aD0Enable : in STD_LOGIC;
    aClkEnable : in STD_LOGIC;
    aD1Enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
\oSyncStages[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => \oSyncStages_reg[0]_0\,
      I2 => aD0Enable,
      O => \oSyncStages_reg[1]_0\(0)
    );
\oSyncStages[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => \oSyncStages_reg[0]_0\,
      I2 => aClkEnable,
      O => \oSyncStages_reg[1]_1\(0)
    );
\oSyncStages[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => \oSyncStages_reg[0]_0\,
      I2 => aD1Enable,
      O => \oSyncStages_reg[1]_2\(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_10\ is
  port (
    \oSyncStages_reg[1]_0\ : out STD_LOGIC;
    state_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aD0ForceRxmode : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_10\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_10\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
\FSM_sequential_state[1]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404444"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => state_2(0),
      I2 => \FSM_sequential_state_reg[1]\,
      I3 => \FSM_sequential_state_reg[1]_0\,
      I4 => \FSM_sequential_state_reg[1]_1\,
      O => \oSyncStages_reg[1]_0\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => aD0ForceRxmode,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_11\ is
  port (
    \oSyncStages_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    state_2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    cHSReset_reg : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    cHSSettled_reg : in STD_LOGIC;
    cHSSettled_reg_0 : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rbD0RxValidHS : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_11\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_11\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
\cHSReset_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010FFFF00100010"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => state_2(2),
      I2 => state_2(0),
      I3 => state_2(1),
      I4 => cHSReset_reg,
      I5 => AS(0),
      O => \oSyncStages_reg[1]_0\
    );
\cHSSettled_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFCF02000200"
    )
        port map (
      I0 => cHSSettled_reg,
      I1 => state_2(2),
      I2 => state_2(0),
      I3 => state_2(1),
      I4 => oSyncStages(1),
      I5 => cHSSettled_reg_0,
      O => \FSM_sequential_state_reg[2]\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => rbD0RxValidHS,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_12\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_12\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_12\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_14\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_14\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_14\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_14\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_2\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cLP_in[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state_reg[2]_0\ : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_2\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_2\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2AFFFF"
    )
        port map (
      I0 => state(0),
      I1 => \cLP_in[1]\(1),
      I2 => \cLP_in[1]\(0),
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => oSyncStages(1),
      O => \FSM_sequential_state_reg[2]\
    );
\oSyncStages[1]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => AR(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_21\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    aLP : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_21\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_21\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_21\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => aLP(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_23\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    aLP : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_23\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_23\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_23\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => aLP(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_24\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_24\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_24\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_24\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => SS(0)
    );
\GenNoMMCM.cBUFR_Rst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(0),
      I1 => oSyncStages(1),
      O => AR(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_25\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \FSM_onehot_state_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    cHSClkLocked_q : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_state[1]_i_5_0\ : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aRxClkActiveHS : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_25\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_25\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_25\ is
  signal \FSM_onehot_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_9_n_0\ : STD_LOGIC;
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\FSM_onehot_state[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF40FF404040"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => cHSClkLocked_q,
      I2 => Q(4),
      I3 => Q(1),
      I4 => \FSM_onehot_state_reg[0]\(0),
      I5 => \FSM_onehot_state_reg[0]\(1),
      O => \FSM_onehot_state[1]_i_12_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF000D"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_0\,
      I1 => Q(2),
      I2 => \FSM_onehot_state_reg[0]\(1),
      I3 => \FSM_onehot_state_reg[0]\(0),
      I4 => \FSM_onehot_state[1]_i_5_n_0\,
      O => E(0)
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => Q(8),
      I1 => Q(6),
      I2 => \FSM_onehot_state_reg[0]\(0),
      I3 => Q(0),
      I4 => Q(5),
      I5 => \FSM_onehot_state[1]_i_6_n_0\,
      O => D(0)
    );
\FSM_onehot_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBC8FB08"
    )
        port map (
      I0 => Q(7),
      I1 => \FSM_onehot_state_reg[0]\(1),
      I2 => \FSM_onehot_state_reg[0]\(0),
      I3 => Q(6),
      I4 => Q(8),
      I5 => \FSM_onehot_state[1]_i_9_n_0\,
      O => \FSM_onehot_state[1]_i_5_n_0\
    );
\FSM_onehot_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8FFFFA8A8A8A8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]\,
      I1 => Q(3),
      I2 => Q(2),
      I3 => oSyncStages(1),
      I4 => cHSClkLocked_q,
      I5 => Q(4),
      O => \FSM_onehot_state[1]_i_6_n_0\
    );
\FSM_onehot_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA8A"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_12_n_0\,
      I1 => \FSM_onehot_state[1]_i_5_0\,
      I2 => \FSM_onehot_state_reg[1]\,
      I3 => Q(4),
      I4 => Q(2),
      I5 => Q(3),
      O => \FSM_onehot_state[1]_i_9_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(4),
      I1 => cHSClkLocked_q,
      I2 => oSyncStages(1),
      O => D(1)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => aRxClkActiveHS,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_26\ is
  port (
    aRxClkActiveHS : out STD_LOGIC;
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_26\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_26\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_26\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  aRxClkActiveHS <= oSyncStages(1);
\oSyncStages[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => AS(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => '1',
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_3\ is
  port (
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_4\ : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aD1ForceRxmode : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_3\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_3\ is
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE5C0000FFFFFFFF"
    )
        port map (
      I0 => state(1),
      I1 => \FSM_sequential_state_reg[0]_3\,
      I2 => \FSM_sequential_state_reg[0]\,
      I3 => \FSM_sequential_state[1]_i_4_n_0\,
      I4 => \FSM_sequential_state_reg[0]_4\,
      I5 => \out\(0),
      O => \FSM_sequential_state_reg[2]\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5100555500000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_0\,
      I1 => \FSM_sequential_state_reg[1]_1\,
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => state(0),
      I4 => state(1),
      I5 => \out\(0),
      O => \FSM_sequential_state_reg[1]\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404444"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => \FSM_sequential_state_reg[0]_0\,
      I3 => \FSM_sequential_state_reg[0]_1\,
      I4 => \FSM_sequential_state_reg[0]_2\,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => aD1ForceRxmode,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_4\ is
  port (
    \oSyncStages_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : out STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cHSSettled_reg : in STD_LOGIC;
    cHSReset_reg : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    cHSSettled_reg_0 : in STD_LOGIC;
    cHSSettled : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rbD1RxValidHS : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_4\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_4\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
cHSReset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010FFFF00100010"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => state(1),
      I2 => cHSSettled_reg,
      I3 => state(0),
      I4 => cHSReset_reg,
      I5 => AS(0),
      O => \oSyncStages_reg[1]_0\
    );
cHSSettled_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFCF02000200"
    )
        port map (
      I0 => cHSSettled_reg_0,
      I1 => state(1),
      I2 => cHSSettled_reg,
      I3 => state(0),
      I4 => oSyncStages(1),
      I5 => cHSSettled,
      O => \FSM_sequential_state_reg[2]\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => rbD1RxValidHS,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      CLR => AR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_9\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_9\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_9\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages[1]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => AR(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1\ is
  port (
    dSerdesRst_q_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    cHSSettled : in STD_LOGIC;
    dSerdesRst_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    dLogicRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1\ is
  signal aReset0 : STD_LOGIC;
  signal oSyncStages : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
begin
dLogicRst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0B"
    )
        port map (
      I0 => dSerdesRst_q,
      I1 => oSyncStages,
      I2 => Q(0),
      I3 => dLogicRst,
      O => dSerdesRst_q_reg
    );
\oSyncStages[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cHSSettled,
      O => aReset0
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => aReset0,
      D => '1',
      Q => oSyncStages
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_17\ is
  port (
    dSerdesRst_q_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    \oSyncStages_reg[0]_0\ : in STD_LOGIC;
    dSerdesRst_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    dLogicRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_17\ : entity is "SyncAsync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_17\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_17\ is
  signal oSyncStages : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  signal \oSyncStages[0]_i_1__3_n_0\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
begin
\dLogicRst_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB0B"
    )
        port map (
      I0 => dSerdesRst_q,
      I1 => oSyncStages,
      I2 => Q(0),
      I3 => dLogicRst,
      O => dSerdesRst_q_reg
    );
\oSyncStages[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \oSyncStages_reg[0]_0\,
      O => \oSyncStages[0]_i_1__3_n_0\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \oSyncStages[0]_i_1__3_n_0\,
      D => '1',
      Q => oSyncStages
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Clocking is
  port (
    aRxClkActiveHS : out STD_LOGIC;
    RxDDRClkHS : out STD_LOGIC;
    CLK : out STD_LOGIC;
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    aHS : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Clocking;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Clocking is
  signal \^clk\ : STD_LOGIC;
  signal \GenNoMMCM.cBUFR_Rst_reg_n_0\ : STD_LOGIC;
  signal HS_ClockDly : STD_LOGIC;
  signal NLW_InputDelay_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute box_type : string;
  attribute box_type of DivClkBuffer : label is "PRIMITIVE";
  attribute box_type of InputDelay : label is "PRIMITIVE";
  attribute box_type of SerialClkBuffer : label is "PRIMITIVE";
begin
  CLK <= \^clk\;
DivClkBuffer: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "4",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => \GenNoMMCM.cBUFR_Rst_reg_n_0\,
      I => HS_ClockDly,
      O => \^clk\
    );
\GenNoMMCM.cBUFR_Rst_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => AR(0),
      Q => \GenNoMMCM.cBUFR_Rst_reg_n_0\,
      R => '0'
    );
InputDelay: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "CLOCK"
    )
        port map (
      C => RefClk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => NLW_InputDelay_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => HS_ClockDly,
      IDATAIN => aHS,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
SerialClkBuffer: unisim.vcomponents.BUFIO
     port map (
      I => HS_ClockDly,
      O => RxDDRClkHS
    );
SyncAsyncLocked: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_26\
     port map (
      AR(0) => \GenNoMMCM.cBUFR_Rst_reg_n_0\,
      AS(0) => AS(0),
      CLK => \^clk\,
      aRxClkActiveHS => aRxClkActiveHS
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GenIDELAYCTRL.rDlyRstCnt_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    aRst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge is
begin
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_19
     port map (
      \GenIDELAYCTRL.rDlyRstCnt_reg[4]\(0) => \GenIDELAYCTRL.rDlyRstCnt_reg[4]\(0),
      RefClk => RefClk,
      SS(0) => SS(0),
      aRst => aRst,
      \out\(0) => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_0 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GenIDELAYCTRL.rDlyRst_reg\ : out STD_LOGIC;
    RST : in STD_LOGIC;
    \GenIDELAYCTRL.rDlyRst_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GenIDELAYCTRL.rDlyRstCnt_reg\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_0 : entity is "ResetBridge";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_0 is
begin
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync
     port map (
      AS(0) => AS(0),
      \GenIDELAYCTRL.rDlyRstCnt_reg\(4 downto 0) => \GenIDELAYCTRL.rDlyRstCnt_reg\(4 downto 0),
      \GenIDELAYCTRL.rDlyRst_reg\ => \GenIDELAYCTRL.rDlyRst_reg\,
      \GenIDELAYCTRL.rDlyRst_reg_0\(0) => \GenIDELAYCTRL.rDlyRst_reg_0\(0),
      RST => RST,
      RefClk => RefClk,
      \out\(0) => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_1 is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_1 : entity is "ResetBridge";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_1 is
begin
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_5
     port map (
      AR(0) => AR(0),
      AS(0) => AS(0),
      RefClk => RefClk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_16 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_16 : entity is "ResetBridge";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_16;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_16 is
begin
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_18
     port map (
      AS(0) => AS(0),
      CLK => CLK,
      \out\(0) => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_6 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_6 : entity is "ResetBridge";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_6 is
begin
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_7
     port map (
      AS(0) => AS(0),
      CLK => CLK,
      \out\(0) => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_8 is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_8 : entity is "ResetBridge";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_8 is
begin
SyncAsyncx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync_15
     port map (
      AR(0) => AR(0),
      AS(0) => AS(0),
      RefClk => RefClk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSCNN is
  port (
    aRxClkActiveHS : out STD_LOGIC;
    RxDDRClkHS : out STD_LOGIC;
    CLK : out STD_LOGIC;
    aClkUlpsActiveNot : out STD_LOGIC;
    aRxUlpsClkNot : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RefClk : in STD_LOGIC;
    aHS : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    aLP : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSCNN;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSCNN is
  signal \FSM_onehot_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SyncAsyncEnable_n_1 : STD_LOGIC;
  signal SyncAsyncEnable_n_2 : STD_LOGIC;
  signal SyncAsyncLocked_n_0 : STD_LOGIC;
  signal SyncAsyncLocked_n_1 : STD_LOGIC;
  signal SyncAsyncLocked_n_2 : STD_LOGIC;
  signal SyncAsyncLocked_n_3 : STD_LOGIC;
  signal \^arxclkactivehs\ : STD_LOGIC;
  signal cDelayCntEn : STD_LOGIC;
  signal \cDelayCnt[0]_i_3__1_n_0\ : STD_LOGIC;
  signal cDelayCnt_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \cDelayCnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal cEnable : STD_LOGIC;
  signal cHSClkLocked_q : STD_LOGIC;
  signal cLP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of cLP : signal is std.standard.true;
  signal cLPGlitch_0 : STD_LOGIC;
  signal cLPGlitch_1 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \NLW_cDelayCnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cDelayCnt_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "sths_term:000001000,sths_clk:000010000,sths_prpr:000000100,ststop:000000010,stinit:000000001,stulps_exit:100000000,stulps_rqst:001000000,stulps:010000000,sths_end:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "sths_term:000001000,sths_clk:000010000,sths_prpr:000000100,ststop:000000010,stinit:000000001,stulps_exit:100000000,stulps_rqst:001000000,stulps:010000000,sths_end:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "sths_term:000001000,sths_clk:000010000,sths_prpr:000000100,ststop:000000010,stinit:000000001,stulps_exit:100000000,stulps_rqst:001000000,stulps:010000000,sths_end:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "sths_term:000001000,sths_clk:000010000,sths_prpr:000000100,ststop:000000010,stinit:000000001,stulps_exit:100000000,stulps_rqst:001000000,stulps:010000000,sths_end:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "sths_term:000001000,sths_clk:000010000,sths_prpr:000000100,ststop:000000010,stinit:000000001,stulps_exit:100000000,stulps_rqst:001000000,stulps:010000000,sths_end:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "sths_term:000001000,sths_clk:000010000,sths_prpr:000000100,ststop:000000010,stinit:000000001,stulps_exit:100000000,stulps_rqst:001000000,stulps:010000000,sths_end:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "sths_term:000001000,sths_clk:000010000,sths_prpr:000000100,ststop:000000010,stinit:000000001,stulps_exit:100000000,stulps_rqst:001000000,stulps:010000000,sths_end:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "sths_term:000001000,sths_clk:000010000,sths_prpr:000000100,ststop:000000010,stinit:000000001,stulps_exit:100000000,stulps_rqst:001000000,stulps:010000000,sths_end:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "sths_term:000001000,sths_clk:000010000,sths_prpr:000000100,ststop:000000010,stinit:000000001,stulps_exit:100000000,stulps_rqst:001000000,stulps:010000000,sths_end:000100000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of aClkUlpsActiveNot_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of aRxUlpsClkNot_INST_0 : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cDelayCnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \cDelayCnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cDelayCnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cDelayCnt_reg[8]_i_1\ : label is 11;
begin
  Q(0) <= \^q\(0);
  aRxClkActiveHS <= \^arxclkactivehs\;
\FSM_onehot_state[1]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cLP(1),
      I1 => cLP(0),
      O => \FSM_onehot_state[1]_i_10_n_0\
    );
\FSM_onehot_state[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => cDelayCnt_reg(1),
      I1 => cDelayCnt_reg(13),
      I2 => cDelayCnt_reg(4),
      I3 => cDelayCnt_reg(8),
      O => \FSM_onehot_state[1]_i_11_n_0\
    );
\FSM_onehot_state[1]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[1]_i_13_n_0\
    );
\FSM_onehot_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_7_n_0\,
      I1 => cDelayCnt_reg(12),
      I2 => cDelayCnt_reg(3),
      I3 => cDelayCntEn,
      I4 => cDelayCnt_reg(11),
      I5 => \FSM_onehot_state[1]_i_8_n_0\,
      O => \FSM_onehot_state[1]_i_4_n_0\
    );
\FSM_onehot_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cDelayCnt_reg(5),
      I1 => cDelayCnt_reg(0),
      I2 => cDelayCnt_reg(14),
      I3 => cDelayCnt_reg(7),
      O => \FSM_onehot_state[1]_i_7_n_0\
    );
\FSM_onehot_state[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cDelayCnt_reg(2),
      I1 => cDelayCnt_reg(9),
      I2 => cDelayCnt_reg(6),
      I3 => cDelayCnt_reg(10),
      I4 => \FSM_onehot_state[1]_i_11_n_0\,
      O => \FSM_onehot_state[1]_i_8_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^q\(0),
      I1 => cLP(1),
      I2 => cLP(0),
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => cLP(0),
      I2 => cLP(1),
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => cDelayCntEn,
      I1 => cLP(0),
      I2 => cLP(1),
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^q\(0),
      I1 => cLP(1),
      I2 => cLP(0),
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => cLP(0),
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => SyncAsyncLocked_n_3,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SyncAsyncEnable_n_1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => SyncAsyncLocked_n_3,
      D => SyncAsyncLocked_n_2,
      Q => \^q\(0),
      R => SyncAsyncEnable_n_1
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => SyncAsyncLocked_n_3,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SyncAsyncEnable_n_1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => SyncAsyncLocked_n_3,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => cDelayCntEn,
      R => SyncAsyncEnable_n_1
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => SyncAsyncLocked_n_3,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => SyncAsyncEnable_n_1
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => SyncAsyncLocked_n_3,
      D => SyncAsyncLocked_n_1,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => SyncAsyncEnable_n_1
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => SyncAsyncLocked_n_3,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => SyncAsyncEnable_n_1
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => SyncAsyncLocked_n_3,
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
      R => SyncAsyncEnable_n_1
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => SyncAsyncLocked_n_3,
      D => \FSM_onehot_state_reg_n_0_[7]\,
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => SyncAsyncEnable_n_1
    );
\GenSyncLP[0].GlitchFilterLP\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_20
     port map (
      \Filter.cntPeriods_reg[1]_0\(0) => cEnable,
      RefClk => RefClk,
      in0(0) => cLP(0),
      \out\(0) => cLPGlitch_0
    );
\GenSyncLP[0].SyncAsyncx\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_21\
     port map (
      RefClk => RefClk,
      aLP(0) => aLP(0),
      \out\(0) => cLPGlitch_0
    );
\GenSyncLP[1].GlitchFilterLP\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_22
     port map (
      \Filter.cntPeriods_reg[1]_0\(0) => cEnable,
      RefClk => RefClk,
      in0(0) => cLP(1),
      \out\(0) => cLPGlitch_1
    );
\GenSyncLP[1].SyncAsyncx\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_23\
     port map (
      RefClk => RefClk,
      aLP(0) => aLP(1),
      \out\(0) => cLPGlitch_1
    );
HSClockingX: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Clocking
     port map (
      AR(0) => SyncAsyncEnable_n_2,
      AS(0) => AS(0),
      CLK => CLK,
      RefClk => RefClk,
      RxDDRClkHS => RxDDRClkHS,
      aHS => aHS,
      aRxClkActiveHS => \^arxclkactivehs\
    );
SyncAsyncEnable: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_24\
     port map (
      AR(0) => SyncAsyncEnable_n_2,
      D(0) => D(0),
      Q(0) => \FSM_onehot_state_reg_n_0_[4]\,
      RefClk => RefClk,
      SS(0) => SyncAsyncEnable_n_1,
      \out\(0) => cEnable
    );
SyncAsyncLocked: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_25\
     port map (
      AR(0) => SyncAsyncEnable_n_2,
      D(1) => SyncAsyncLocked_n_1,
      D(0) => SyncAsyncLocked_n_2,
      E(0) => SyncAsyncLocked_n_3,
      \FSM_onehot_state[1]_i_5_0\ => \FSM_onehot_state[1]_i_13_n_0\,
      \FSM_onehot_state_reg[0]\(1 downto 0) => cLP(1 downto 0),
      \FSM_onehot_state_reg[0]_0\ => \FSM_onehot_state[1]_i_4_n_0\,
      \FSM_onehot_state_reg[1]\ => \FSM_onehot_state[1]_i_10_n_0\,
      Q(8) => \FSM_onehot_state_reg_n_0_[8]\,
      Q(7) => \FSM_onehot_state_reg_n_0_[7]\,
      Q(6) => \FSM_onehot_state_reg_n_0_[6]\,
      Q(5) => \FSM_onehot_state_reg_n_0_[5]\,
      Q(4) => \FSM_onehot_state_reg_n_0_[4]\,
      Q(3) => cDelayCntEn,
      Q(2) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(1) => \^q\(0),
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      RefClk => RefClk,
      aRxClkActiveHS => \^arxclkactivehs\,
      cHSClkLocked_q => cHSClkLocked_q,
      \out\(0) => SyncAsyncLocked_n_0
    );
aClkUlpsActiveNot_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      O => aClkUlpsActiveNot
    );
aRxUlpsClkNot_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_state_reg_n_0_[8]\,
      O => aRxUlpsClkNot
    );
\cDelayCnt[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cDelayCntEn,
      O => clear
    );
\cDelayCnt[0]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cDelayCnt_reg(0),
      O => \cDelayCnt[0]_i_3__1_n_0\
    );
\cDelayCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2_n_7\,
      Q => cDelayCnt_reg(0),
      R => clear
    );
\cDelayCnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cDelayCnt_reg[0]_i_2_n_0\,
      CO(2) => \cDelayCnt_reg[0]_i_2_n_1\,
      CO(1) => \cDelayCnt_reg[0]_i_2_n_2\,
      CO(0) => \cDelayCnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cDelayCnt_reg[0]_i_2_n_4\,
      O(2) => \cDelayCnt_reg[0]_i_2_n_5\,
      O(1) => \cDelayCnt_reg[0]_i_2_n_6\,
      O(0) => \cDelayCnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => cDelayCnt_reg(3 downto 1),
      S(0) => \cDelayCnt[0]_i_3__1_n_0\
    );
\cDelayCnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1_n_5\,
      Q => cDelayCnt_reg(10),
      R => clear
    );
\cDelayCnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1_n_4\,
      Q => cDelayCnt_reg(11),
      R => clear
    );
\cDelayCnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1_n_7\,
      Q => cDelayCnt_reg(12),
      R => clear
    );
\cDelayCnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_cDelayCnt_reg[12]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cDelayCnt_reg[12]_i_1_n_2\,
      CO(0) => \cDelayCnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cDelayCnt_reg[12]_i_1_O_UNCONNECTED\(3),
      O(2) => \cDelayCnt_reg[12]_i_1_n_5\,
      O(1) => \cDelayCnt_reg[12]_i_1_n_6\,
      O(0) => \cDelayCnt_reg[12]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => cDelayCnt_reg(14 downto 12)
    );
\cDelayCnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1_n_6\,
      Q => cDelayCnt_reg(13),
      R => clear
    );
\cDelayCnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1_n_5\,
      Q => cDelayCnt_reg(14),
      R => clear
    );
\cDelayCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2_n_6\,
      Q => cDelayCnt_reg(1),
      R => clear
    );
\cDelayCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2_n_5\,
      Q => cDelayCnt_reg(2),
      R => clear
    );
\cDelayCnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2_n_4\,
      Q => cDelayCnt_reg(3),
      R => clear
    );
\cDelayCnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1_n_7\,
      Q => cDelayCnt_reg(4),
      R => clear
    );
\cDelayCnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[0]_i_2_n_0\,
      CO(3) => \cDelayCnt_reg[4]_i_1_n_0\,
      CO(2) => \cDelayCnt_reg[4]_i_1_n_1\,
      CO(1) => \cDelayCnt_reg[4]_i_1_n_2\,
      CO(0) => \cDelayCnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cDelayCnt_reg[4]_i_1_n_4\,
      O(2) => \cDelayCnt_reg[4]_i_1_n_5\,
      O(1) => \cDelayCnt_reg[4]_i_1_n_6\,
      O(0) => \cDelayCnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => cDelayCnt_reg(7 downto 4)
    );
\cDelayCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1_n_6\,
      Q => cDelayCnt_reg(5),
      R => clear
    );
\cDelayCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1_n_5\,
      Q => cDelayCnt_reg(6),
      R => clear
    );
\cDelayCnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1_n_4\,
      Q => cDelayCnt_reg(7),
      R => clear
    );
\cDelayCnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1_n_7\,
      Q => cDelayCnt_reg(8),
      R => clear
    );
\cDelayCnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[4]_i_1_n_0\,
      CO(3) => \cDelayCnt_reg[8]_i_1_n_0\,
      CO(2) => \cDelayCnt_reg[8]_i_1_n_1\,
      CO(1) => \cDelayCnt_reg[8]_i_1_n_2\,
      CO(0) => \cDelayCnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cDelayCnt_reg[8]_i_1_n_4\,
      O(2) => \cDelayCnt_reg[8]_i_1_n_5\,
      O(1) => \cDelayCnt_reg[8]_i_1_n_6\,
      O(0) => \cDelayCnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => cDelayCnt_reg(11 downto 8)
    );
\cDelayCnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1_n_6\,
      Q => cDelayCnt_reg(9),
      R => clear
    );
cHSClkLocked_q_reg: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => SyncAsyncLocked_n_0,
      Q => cHSClkLocked_q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Deserializer is
  port (
    dSyncHard_int_reg_0 : out STD_LOGIC;
    dSyncSoft_int_reg_0 : out STD_LOGIC;
    rbD1RxValidHS : out STD_LOGIC;
    dSyncErr_int_reg_0 : out STD_LOGIC;
    rbD1RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD1RxActiveHS : out STD_LOGIC;
    rbD1RxSyncHS : out STD_LOGIC;
    rbD1ErrSotSyncHS : out STD_LOGIC;
    rbD1ErrSotHS : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    HS_Data_1 : in STD_LOGIC;
    RxDDRClkHS : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cHSSettled : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    dSyncSoft_reg : in STD_LOGIC;
    dSyncHard_reg : in STD_LOGIC;
    dSyncErr_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Deserializer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Deserializer is
  signal DataInDly : STD_LOGIC;
  signal InputDelay_n_1 : STD_LOGIC;
  signal InputDelay_n_2 : STD_LOGIC;
  signal InputDelay_n_3 : STD_LOGIC;
  signal InputDelay_n_4 : STD_LOGIC;
  signal InputDelay_n_5 : STD_LOGIC;
  signal SyncAsyncSettled_n_0 : STD_LOGIC;
  signal alignment : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \alignment[0]_i_1_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_2_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_3_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_4_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_5_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_6_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_7_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_8_n_0\ : STD_LOGIC;
  signal \alignment[1]_i_1_n_0\ : STD_LOGIC;
  signal \alignment[2]_i_1_n_0\ : STD_LOGIC;
  signal alignment_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dAlignment_int : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dAlignment_int[0]_i_10_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_11_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_12_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_13_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_14_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_15_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_3_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_5_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_6_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_7_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_8_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_9_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_3_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_4_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_3_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_4_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_5_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_6_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_7_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_8_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_9_n_0\ : STD_LOGIC;
  signal dDataIn_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dDataIn_reg_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][6]\ : STD_LOGIC;
  signal dDataOut8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dDataOut80 : STD_LOGIC;
  signal \dDataOut8[0]_i_3_n_0\ : STD_LOGIC;
  signal \dDataOut8[0]_i_4_n_0\ : STD_LOGIC;
  signal \dDataOut8[0]_i_5_n_0\ : STD_LOGIC;
  signal \dDataOut8[0]_i_6_n_0\ : STD_LOGIC;
  signal \dDataOut8[1]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[2]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[3]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[4]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[5]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[6]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[7]_i_2_n_0\ : STD_LOGIC;
  signal \dLP[0]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \dLP[0]_1\ : signal is std.standard.true;
  signal \dLP[1]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH of \dLP[1]_0\ : signal is std.standard.true;
  signal dLogicRst : STD_LOGIC;
  signal dSerdesRst : STD_LOGIC;
  signal dSerdesRst_q : STD_LOGIC;
  signal dSyncErr_int_i_1_n_0 : STD_LOGIC;
  signal dSyncErr_int_i_2_n_0 : STD_LOGIC;
  signal \^dsyncerr_int_reg_0\ : STD_LOGIC;
  signal dSyncHard_int : STD_LOGIC;
  signal dSyncHard_int_i_10_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_11_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_12_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_13_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_14_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_15_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_16_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_17_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_18_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_19_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_2_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_3_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_4_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_5_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_6_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_7_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_8_n_0 : STD_LOGIC;
  signal dSyncHard_int_i_9_n_0 : STD_LOGIC;
  signal \^dsynchard_int_reg_0\ : STD_LOGIC;
  signal dSyncSoft_int_i_10_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_11_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_12_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_13_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_14_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_15_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_16_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_17_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_18_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_19_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_20_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_21_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_22_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_23_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_24_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_25_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_2_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_3_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_4_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_5_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_6_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_7_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_8_n_0 : STD_LOGIC;
  signal dSyncSoft_int_i_9_n_0 : STD_LOGIC;
  signal \^dsyncsoft_int_reg_0\ : STD_LOGIC;
  signal \dValid_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal nextMust_i_1_n_0 : STD_LOGIC;
  signal nextMust_reg_n_0 : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in16_in : STD_LOGIC;
  signal p_0_in25_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in13_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal soft5_out : STD_LOGIC;
  signal word : STD_LOGIC_VECTOR ( 7 to 7 );
  signal word_0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_Deserializer_O_UNCONNECTED : STD_LOGIC;
  signal NLW_Deserializer_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_Deserializer_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Deserializer : label is "MLO";
  attribute box_type : string;
  attribute box_type of Deserializer : label is "PRIMITIVE";
  attribute box_type of InputDelay : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \alignment[0]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \alignment[0]_i_5\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \alignment[0]_i_8\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_12\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_13\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_14\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_15\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_5\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_9\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \dAlignment_int[2]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dAlignment_int[2]_i_5\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \dAlignment_int[2]_i_7\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \dDataOut8[0]_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \dDataOut8[0]_i_5\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \dDataOut8[1]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \dDataOut8[2]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \dDataOut8[3]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \dDataOut8[4]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \dDataOut8[5]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \dDataOut8[6]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of dSyncErr_int_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of dSyncErr_int_i_2 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of dSyncHard_int_i_10 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of dSyncHard_int_i_11 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of dSyncHard_int_i_12 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of dSyncHard_int_i_14 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of dSyncHard_int_i_15 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of dSyncHard_int_i_16 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of dSyncHard_int_i_17 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of dSyncHard_int_i_18 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of dSyncHard_int_i_19 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of dSyncHard_int_i_3 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of dSyncHard_int_i_4 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of dSyncHard_int_i_5 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_11 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_13 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_14 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_15 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_16 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_17 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_18 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_19 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_2 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_20 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_22 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_23 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_24 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of dSyncSoft_int_i_9 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of rbD1ErrSotHS_INST_0 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of rbD1ErrSotSyncHS_INST_0 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of rbD1RxActiveHS_INST_0 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of rbD1RxSyncHS_INST_0 : label is "soft_lutpair55";
begin
  \dLP[0]_1\(7 downto 0) <= \out\(7 downto 0);
  dSyncErr_int_reg_0 <= \^dsyncerr_int_reg_0\;
  dSyncHard_int_reg_0 <= \^dsynchard_int_reg_0\;
  dSyncSoft_int_reg_0 <= \^dsyncsoft_int_reg_0\;
Deserializer: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => RxDDRClkHS,
      CLKB => CLKB,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => '0',
      DDLY => DataInDly,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_Deserializer_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => dDataIn_int(0),
      Q2 => dDataIn_int(1),
      Q3 => dDataIn_int(2),
      Q4 => dDataIn_int(3),
      Q5 => dDataIn_int(4),
      Q6 => dDataIn_int(5),
      Q7 => dDataIn_int(6),
      Q8 => dDataIn_int(7),
      RST => dSerdesRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_Deserializer_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_Deserializer_SHIFTOUT2_UNCONNECTED
    );
InputDelay: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VARIABLE",
      IDELAY_VALUE => 12,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => RefClk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4) => InputDelay_n_1,
      CNTVALUEOUT(3) => InputDelay_n_2,
      CNTVALUEOUT(2) => InputDelay_n_3,
      CNTVALUEOUT(1) => InputDelay_n_4,
      CNTVALUEOUT(0) => InputDelay_n_5,
      DATAIN => '0',
      DATAOUT => DataInDly,
      IDATAIN => HS_Data_1,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
SerdesReset: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_6
     port map (
      AS(0) => AS(0),
      CLK => CLK,
      \out\(0) => dSerdesRst
    );
SyncAsyncSettled: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1\
     port map (
      CLK => CLK,
      Q(0) => \dValid_reg__0\(0),
      cHSSettled => cHSSettled,
      dLogicRst => dLogicRst,
      dSerdesRst_q => dSerdesRst_q,
      dSerdesRst_q_reg => SyncAsyncSettled_n_0
    );
\alignment[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0EFF00000E00"
    )
        port map (
      I0 => \alignment[0]_i_2_n_0\,
      I1 => \alignment[0]_i_3_n_0\,
      I2 => \alignment[0]_i_4_n_0\,
      I3 => dSyncHard_int,
      I4 => dLogicRst,
      I5 => alignment(0),
      O => \alignment[0]_i_1_n_0\
    );
\alignment[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF4"
    )
        port map (
      I0 => \dAlignment_int[2]_i_3_n_0\,
      I1 => dSyncSoft_int_i_8_n_0,
      I2 => dSyncHard_int_i_2_n_0,
      I3 => dSyncSoft_int_i_5_n_0,
      I4 => dSyncSoft_int_i_4_n_0,
      O => \alignment[0]_i_2_n_0\
    );
\alignment[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404444"
    )
        port map (
      I0 => \dAlignment_int[2]_i_3_n_0\,
      I1 => \alignment[0]_i_5_n_0\,
      I2 => \dAlignment_int[0]_i_4_n_0\,
      I3 => dSyncSoft_int_i_6_n_0,
      I4 => \dAlignment_int[0]_i_3_n_0\,
      O => \alignment[0]_i_3_n_0\
    );
\alignment[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFF8"
    )
        port map (
      I0 => dSyncHard_int_i_8_n_0,
      I1 => dSyncHard_int_i_9_n_0,
      I2 => dSyncHard_int_i_7_n_0,
      I3 => \dAlignment_int[2]_i_2_n_0\,
      I4 => \alignment[0]_i_6_n_0\,
      O => \alignment[0]_i_4_n_0\
    );
\alignment[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \dAlignment_int[2]_i_5_n_0\,
      I1 => dSyncSoft_int_i_8_n_0,
      I2 => dSyncSoft_int_i_7_n_0,
      O => \alignment[0]_i_5_n_0\
    );
\alignment[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \dAlignment_int[0]_i_9_n_0\,
      I1 => dSyncHard_int_i_5_n_0,
      I2 => \alignment[0]_i_7_n_0\,
      O => \alignment[0]_i_6_n_0\
    );
\alignment[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => p_1_in13_in,
      I1 => p_0_in16_in,
      I2 => p_0_in7_in,
      I3 => p_0_in0_in,
      I4 => dSyncSoft_int_i_17_n_0,
      I5 => \alignment[0]_i_8_n_0\,
      O => \alignment[0]_i_7_n_0\
    );
\alignment[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in25_in,
      I1 => word(7),
      O => \alignment[0]_i_8_n_0\
    );
\alignment[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => alignment_out(1),
      I1 => dSyncHard_int,
      I2 => dLogicRst,
      I3 => alignment(1),
      O => \alignment[1]_i_1_n_0\
    );
\alignment[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => alignment_out(2),
      I1 => dSyncHard_int,
      I2 => dLogicRst,
      I3 => alignment(2),
      O => \alignment[2]_i_1_n_0\
    );
\alignment_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \alignment[0]_i_1_n_0\,
      Q => alignment(0),
      R => '0'
    );
\alignment_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \alignment[1]_i_1_n_0\,
      Q => alignment(1),
      R => '0'
    );
\alignment_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \alignment[2]_i_1_n_0\,
      Q => alignment(2),
      R => '0'
    );
\dAlignment_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEE0000AEEEAAEE"
    )
        port map (
      I0 => \alignment[0]_i_2_n_0\,
      I1 => \dAlignment_int[0]_i_2_n_0\,
      I2 => dSyncSoft_int_i_6_n_0,
      I3 => \dAlignment_int[0]_i_3_n_0\,
      I4 => \dAlignment_int[0]_i_4_n_0\,
      I5 => dSyncHard_int_i_2_n_0,
      O => alignment_out(0)
    );
\dAlignment_int[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF0000FBFFFBFF"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => word(7),
      I2 => \dAlignment_int[2]_i_7_n_0\,
      I3 => dSyncHard_int_i_10_n_0,
      I4 => \dAlignment_int[0]_i_13_n_0\,
      I5 => dSyncHard_int_i_11_n_0,
      O => \dAlignment_int[0]_i_10_n_0\
    );
\dAlignment_int[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D000DDFFDDFF"
    )
        port map (
      I0 => \dAlignment_int[0]_i_14_n_0\,
      I1 => \dAlignment_int[0]_i_7_n_0\,
      I2 => \dAlignment_int[0]_i_15_n_0\,
      I3 => dSyncHard_int_i_17_n_0,
      I4 => dSyncHard_int_i_18_n_0,
      I5 => alignment(0),
      O => \dAlignment_int[0]_i_11_n_0\
    );
\dAlignment_int[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => p_0_in7_in,
      I2 => p_0_in16_in,
      I3 => p_1_in13_in,
      O => \dAlignment_int[0]_i_12_n_0\
    );
\dAlignment_int[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => word_0(6),
      I1 => word_0(5),
      I2 => word_0(4),
      I3 => p_0_in16_in,
      O => \dAlignment_int[0]_i_13_n_0\
    );
\dAlignment_int[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => word_0(4),
      I1 => word_0(3),
      I2 => word_0(1),
      I3 => word_0(2),
      O => \dAlignment_int[0]_i_14_n_0\
    );
\dAlignment_int[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => word_0(4),
      I1 => word_0(0),
      I2 => word_0(2),
      I3 => \dDataIn_reg_reg_n_0_[0][0]\,
      O => \dAlignment_int[0]_i_15_n_0\
    );
\dAlignment_int[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \alignment[0]_i_5_n_0\,
      I1 => \dAlignment_int[2]_i_3_n_0\,
      O => \dAlignment_int[0]_i_2_n_0\
    );
\dAlignment_int[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFBB6FFFF"
    )
        port map (
      I0 => \dAlignment_int[0]_i_5_n_0\,
      I1 => word_0(4),
      I2 => word_0(5),
      I3 => word_0(6),
      I4 => \dAlignment_int[0]_i_6_n_0\,
      I5 => \dAlignment_int[0]_i_7_n_0\,
      O => \dAlignment_int[0]_i_3_n_0\
    );
\dAlignment_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEFEEE"
    )
        port map (
      I0 => \dAlignment_int[0]_i_8_n_0\,
      I1 => \dAlignment_int[0]_i_9_n_0\,
      I2 => \dAlignment_int[0]_i_10_n_0\,
      I3 => dSyncHard_int_i_6_n_0,
      I4 => dSyncHard_int_i_7_n_0,
      I5 => \dAlignment_int[0]_i_11_n_0\,
      O => \dAlignment_int[0]_i_4_n_0\
    );
\dAlignment_int[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word_0(3),
      I1 => word_0(1),
      I2 => word_0(2),
      O => \dAlignment_int[0]_i_5_n_0\
    );
\dAlignment_int[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0DD00D0"
    )
        port map (
      I0 => word(7),
      I1 => word_0(0),
      I2 => word_0(2),
      I3 => word_0(1),
      I4 => word_0(3),
      O => \dAlignment_int[0]_i_6_n_0\
    );
\dAlignment_int[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => word(7),
      I1 => word_0(0),
      O => \dAlignment_int[0]_i_7_n_0\
    );
\dAlignment_int[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => word(7),
      I1 => p_0_in25_in,
      I2 => dSyncSoft_int_i_17_n_0,
      I3 => \dAlignment_int[0]_i_12_n_0\,
      I4 => \dAlignment_int[0]_i_13_n_0\,
      I5 => dSyncHard_int_i_11_n_0,
      O => \dAlignment_int[0]_i_8_n_0\
    );
\dAlignment_int[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => dSyncHard_int_i_10_n_0,
      I1 => word_0(2),
      I2 => word(7),
      I3 => word_0(4),
      I4 => word_0(3),
      O => \dAlignment_int[0]_i_9_n_0\
    );
\dAlignment_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005D0055FF5DFF5D"
    )
        port map (
      I0 => \dAlignment_int[1]_i_2_n_0\,
      I1 => dSyncSoft_int_i_2_n_0,
      I2 => \dAlignment_int[1]_i_3_n_0\,
      I3 => dSyncHard_int_i_2_n_0,
      I4 => alignment(1),
      I5 => \dAlignment_int[1]_i_4_n_0\,
      O => alignment_out(1)
    );
\dAlignment_int[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020203"
    )
        port map (
      I0 => dSyncSoft_int_i_4_n_0,
      I1 => dSyncSoft_int_i_3_n_0,
      I2 => dSyncSoft_int_i_5_n_0,
      I3 => dSyncSoft_int_i_7_n_0,
      I4 => dSyncSoft_int_i_8_n_0,
      O => \dAlignment_int[1]_i_2_n_0\
    );
\dAlignment_int[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => dSyncSoft_int_i_3_n_0,
      I1 => dSyncSoft_int_i_4_n_0,
      I2 => dSyncSoft_int_i_5_n_0,
      I3 => dSyncSoft_int_i_6_n_0,
      O => \dAlignment_int[1]_i_3_n_0\
    );
\dAlignment_int[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dSyncHard_int_i_6_n_0,
      I1 => dSyncHard_int_i_7_n_0,
      O => \dAlignment_int[1]_i_4_n_0\
    );
\dAlignment_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEEFFEFFF"
    )
        port map (
      I0 => \dAlignment_int[2]_i_2_n_0\,
      I1 => \dAlignment_int[2]_i_3_n_0\,
      I2 => \dAlignment_int[2]_i_4_n_0\,
      I3 => \dAlignment_int[2]_i_5_n_0\,
      I4 => \dAlignment_int[2]_i_6_n_0\,
      I5 => dSyncHard_int_i_2_n_0,
      O => alignment_out(2)
    );
\dAlignment_int[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDFDDDDD"
    )
        port map (
      I0 => dSyncHard_int_i_6_n_0,
      I1 => dSyncHard_int_i_5_n_0,
      I2 => dSyncHard_int_i_10_n_0,
      I3 => \dAlignment_int[2]_i_7_n_0\,
      I4 => word(7),
      I5 => p_0_in7_in,
      O => \dAlignment_int[2]_i_2_n_0\
    );
\dAlignment_int[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => dSyncSoft_int_i_4_n_0,
      I1 => dSyncSoft_int_i_3_n_0,
      I2 => dSyncSoft_int_i_5_n_0,
      O => \dAlignment_int[2]_i_3_n_0\
    );
\dAlignment_int[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => alignment(2),
      I1 => dSyncSoft_int_i_6_n_0,
      I2 => \dAlignment_int[0]_i_3_n_0\,
      O => \dAlignment_int[2]_i_4_n_0\
    );
\dAlignment_int[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFEB"
    )
        port map (
      I0 => \dAlignment_int[2]_i_8_n_0\,
      I1 => \dAlignment_int[2]_i_9_n_0\,
      I2 => word_0(3),
      I3 => p_0_in7_in,
      O => \dAlignment_int[2]_i_5_n_0\
    );
\dAlignment_int[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dSyncSoft_int_i_7_n_0,
      I1 => dSyncSoft_int_i_8_n_0,
      O => \dAlignment_int[2]_i_6_n_0\
    );
\dAlignment_int[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => word_0(4),
      I1 => word_0(3),
      O => \dAlignment_int[2]_i_7_n_0\
    );
\dAlignment_int[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFB2FBFBFF"
    )
        port map (
      I0 => p_0_in16_in,
      I1 => word(7),
      I2 => p_0_in25_in,
      I3 => word_0(6),
      I4 => word_0(5),
      I5 => word_0(4),
      O => \dAlignment_int[2]_i_8_n_0\
    );
\dAlignment_int[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0096960096000096"
    )
        port map (
      I0 => p_0_in25_in,
      I1 => p_0_in16_in,
      I2 => word(7),
      I3 => word_0(6),
      I4 => word_0(5),
      I5 => word_0(4),
      O => \dAlignment_int[2]_i_9_n_0\
    );
\dAlignment_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => dSyncHard_int,
      D => alignment_out(0),
      Q => dAlignment_int(0),
      R => dLogicRst
    );
\dAlignment_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => dSyncHard_int,
      D => alignment_out(1),
      Q => dAlignment_int(1),
      R => dLogicRst
    );
\dAlignment_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => dSyncHard_int,
      D => alignment_out(2),
      Q => dAlignment_int(2),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(0),
      Q => \dDataIn_reg_reg_n_0_[0][0]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(1),
      Q => word_0(0),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(2),
      Q => word_0(1),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(3),
      Q => word_0(2),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(4),
      Q => word_0(3),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(5),
      Q => word_0(4),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(6),
      Q => word_0(5),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(7),
      Q => word_0(6),
      R => dLogicRst
    );
\dDataIn_reg_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[0][0]\,
      Q => word(7),
      R => dLogicRst
    );
\dDataIn_reg_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(0),
      Q => p_0_in25_in,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(1),
      Q => p_0_in16_in,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(2),
      Q => p_0_in7_in,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(3),
      Q => p_0_in0_in,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(4),
      Q => p_1_in13_in,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(5),
      Q => p_1_in,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word_0(6),
      Q => \dDataIn_reg_reg_n_0_[1][7]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(7),
      Q => \dDataIn_reg_reg_n_0_[2][0]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in25_in,
      Q => data1(0),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in16_in,
      Q => data1(1),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in7_in,
      Q => data1(2),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in0_in,
      Q => data1(3),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in13_in,
      Q => data1(4),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in,
      Q => data1(5),
      R => dLogicRst
    );
\dDataIn_reg_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][7]\,
      Q => data1(6),
      R => dLogicRst
    );
\dDataIn_reg_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][0]\,
      Q => data1(7),
      R => dLogicRst
    );
\dDataIn_reg_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => data1(0),
      Q => \dDataIn_reg_reg_n_0_[3][1]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => data1(1),
      Q => \dDataIn_reg_reg_n_0_[3][2]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => data1(2),
      Q => \dDataIn_reg_reg_n_0_[3][3]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => data1(3),
      Q => \dDataIn_reg_reg_n_0_[3][4]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => data1(4),
      Q => \dDataIn_reg_reg_n_0_[3][5]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => data1(5),
      Q => \dDataIn_reg_reg_n_0_[3][6]\,
      R => dLogicRst
    );
\dDataOut8[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => dLogicRst,
      I1 => \dValid_reg__0\(0),
      O => dDataOut80
    );
\dDataOut8[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEEFFAAFAEEAAAA"
    )
        port map (
      I0 => \dDataOut8[0]_i_3_n_0\,
      I1 => \dDataOut8[0]_i_4_n_0\,
      I2 => \dDataOut8[0]_i_5_n_0\,
      I3 => dAlignment_int(0),
      I4 => dAlignment_int(1),
      I5 => \dDataOut8[0]_i_6_n_0\,
      O => dDataOut8(0)
    );
\dDataOut8[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020300"
    )
        port map (
      I0 => data1(3),
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataIn_reg_reg_n_0_[2][0]\,
      I4 => dAlignment_int(2),
      O => \dDataOut8[0]_i_3_n_0\
    );
\dDataOut8[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(5),
      I1 => dAlignment_int(2),
      I2 => data1(1),
      O => \dDataOut8[0]_i_4_n_0\
    );
\dDataOut8[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(6),
      I1 => dAlignment_int(2),
      I2 => data1(2),
      O => \dDataOut8[0]_i_5_n_0\
    );
\dDataOut8[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(4),
      I1 => dAlignment_int(2),
      I2 => data1(0),
      O => \dDataOut8[0]_i_6_n_0\
    );
\dDataOut8[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE3EF232CE0EC202"
    )
        port map (
      I0 => \dDataOut8[0]_i_6_n_0\,
      I1 => dAlignment_int(1),
      I2 => dAlignment_int(0),
      I3 => \dDataOut8[1]_i_2_n_0\,
      I4 => \dDataOut8[0]_i_5_n_0\,
      I5 => \dDataOut8[0]_i_4_n_0\,
      O => dDataOut8(1)
    );
\dDataOut8[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(7),
      I1 => dAlignment_int(2),
      I2 => data1(3),
      O => \dDataOut8[1]_i_2_n_0\
    );
\dDataOut8[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[2]_i_2_n_0\,
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataOut8[1]_i_2_n_0\,
      I4 => \dDataOut8[0]_i_5_n_0\,
      I5 => \dDataOut8[0]_i_4_n_0\,
      O => dDataOut8(2)
    );
\dDataOut8[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][1]\,
      I1 => dAlignment_int(2),
      I2 => data1(4),
      O => \dDataOut8[2]_i_2_n_0\
    );
\dDataOut8[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[3]_i_2_n_0\,
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataOut8[2]_i_2_n_0\,
      I4 => \dDataOut8[1]_i_2_n_0\,
      I5 => \dDataOut8[0]_i_5_n_0\,
      O => dDataOut8(3)
    );
\dDataOut8[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][2]\,
      I1 => dAlignment_int(2),
      I2 => data1(5),
      O => \dDataOut8[3]_i_2_n_0\
    );
\dDataOut8[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[4]_i_2_n_0\,
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataOut8[3]_i_2_n_0\,
      I4 => \dDataOut8[2]_i_2_n_0\,
      I5 => \dDataOut8[1]_i_2_n_0\,
      O => dDataOut8(4)
    );
\dDataOut8[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][3]\,
      I1 => dAlignment_int(2),
      I2 => data1(6),
      O => \dDataOut8[4]_i_2_n_0\
    );
\dDataOut8[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[5]_i_2_n_0\,
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataOut8[4]_i_2_n_0\,
      I4 => \dDataOut8[3]_i_2_n_0\,
      I5 => \dDataOut8[2]_i_2_n_0\,
      O => dDataOut8(5)
    );
\dDataOut8[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][4]\,
      I1 => dAlignment_int(2),
      I2 => data1(7),
      O => \dDataOut8[5]_i_2_n_0\
    );
\dDataOut8[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[6]_i_2_n_0\,
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataOut8[5]_i_2_n_0\,
      I4 => \dDataOut8[4]_i_2_n_0\,
      I5 => \dDataOut8[3]_i_2_n_0\,
      O => dDataOut8(6)
    );
\dDataOut8[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][5]\,
      I1 => dAlignment_int(2),
      I2 => \dDataIn_reg_reg_n_0_[3][1]\,
      O => \dDataOut8[6]_i_2_n_0\
    );
\dDataOut8[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAFFEEAAFAAAEE"
    )
        port map (
      I0 => \dDataOut8[7]_i_2_n_0\,
      I1 => \dDataOut8[4]_i_2_n_0\,
      I2 => \dDataOut8[5]_i_2_n_0\,
      I3 => dAlignment_int(1),
      I4 => dAlignment_int(0),
      I5 => \dDataOut8[6]_i_2_n_0\,
      O => dDataOut8(7)
    );
\dDataOut8[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080C000"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][6]\,
      I1 => dAlignment_int(0),
      I2 => dAlignment_int(1),
      I3 => \dDataIn_reg_reg_n_0_[3][2]\,
      I4 => dAlignment_int(2),
      O => \dDataOut8[7]_i_2_n_0\
    );
\dDataOut8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(0),
      Q => rbD1RxDataHS(7),
      R => dDataOut80
    );
\dDataOut8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(1),
      Q => rbD1RxDataHS(6),
      R => dDataOut80
    );
\dDataOut8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(2),
      Q => rbD1RxDataHS(5),
      R => dDataOut80
    );
\dDataOut8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(3),
      Q => rbD1RxDataHS(4),
      R => dDataOut80
    );
\dDataOut8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(4),
      Q => rbD1RxDataHS(3),
      R => dDataOut80
    );
\dDataOut8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(5),
      Q => rbD1RxDataHS(2),
      R => dDataOut80
    );
\dDataOut8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(6),
      Q => rbD1RxDataHS(1),
      R => dDataOut80
    );
\dDataOut8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(7),
      Q => rbD1RxDataHS(0),
      R => dDataOut80
    );
\dLP[1]_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dLP[0]_1\(7),
      O => \dLP[1]_0\(7)
    );
\dLP[1]_inst__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dLP[0]_1\(6),
      O => \dLP[1]_0\(6)
    );
\dLP[1]_inst__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dLP[0]_1\(5),
      O => \dLP[1]_0\(5)
    );
\dLP[1]_inst__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dLP[0]_1\(4),
      O => \dLP[1]_0\(4)
    );
\dLP[1]_inst__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dLP[0]_1\(3),
      O => \dLP[1]_0\(3)
    );
\dLP[1]_inst__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dLP[0]_1\(2),
      O => \dLP[1]_0\(2)
    );
\dLP[1]_inst__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dLP[0]_1\(1),
      O => \dLP[1]_0\(1)
    );
\dLP[1]_inst__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dLP[0]_1\(0),
      O => \dLP[1]_0\(0)
    );
dLogicRst_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => SyncAsyncSettled_n_0,
      PRE => dSerdesRst,
      Q => dLogicRst
    );
dSerdesRst_q_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => dSerdesRst,
      Q => dSerdesRst_q
    );
dSyncErr_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => dSyncHard_int_i_2_n_0,
      I1 => dSyncHard_int,
      I2 => dSyncErr_int_i_2_n_0,
      I3 => \^dsyncerr_int_reg_0\,
      O => dSyncErr_int_i_1_n_0
    );
dSyncErr_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => dSyncSoft_int_i_6_n_0,
      I1 => dSyncSoft_int_i_5_n_0,
      I2 => dSyncSoft_int_i_4_n_0,
      I3 => dSyncSoft_int_i_3_n_0,
      I4 => dSyncSoft_int_i_2_n_0,
      O => dSyncErr_int_i_2_n_0
    );
dSyncErr_int_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dSyncErr_int_i_1_n_0,
      Q => \^dsyncerr_int_reg_0\,
      R => dLogicRst
    );
dSyncHard_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => dSyncHard_int_i_3_n_0,
      I1 => nextMust_reg_n_0,
      I2 => word_0(4),
      I3 => word_0(3),
      I4 => word_0(6),
      I5 => word_0(5),
      O => dSyncHard_int
    );
dSyncHard_int_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => p_0_in16_in,
      I1 => p_0_in25_in,
      I2 => word_0(5),
      I3 => word_0(6),
      O => dSyncHard_int_i_10_n_0
    );
dSyncHard_int_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => p_0_in25_in,
      I1 => word(7),
      I2 => p_0_in0_in,
      I3 => p_0_in7_in,
      O => dSyncHard_int_i_11_n_0
    );
dSyncHard_int_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => word(7),
      I1 => p_0_in25_in,
      I2 => p_1_in,
      I3 => word_0(6),
      O => dSyncHard_int_i_12_n_0
    );
dSyncHard_int_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_1_in13_in,
      I1 => p_0_in16_in,
      O => dSyncHard_int_i_13_n_0
    );
dSyncHard_int_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => word_0(6),
      I1 => word_0(5),
      O => dSyncHard_int_i_14_n_0
    );
dSyncHard_int_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => word_0(3),
      I1 => word_0(4),
      I2 => word(7),
      I3 => word_0(2),
      O => dSyncHard_int_i_15_n_0
    );
dSyncHard_int_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => p_0_in25_in,
      I1 => word(7),
      I2 => word_0(4),
      I3 => word_0(2),
      O => dSyncHard_int_i_16_n_0
    );
dSyncHard_int_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => word_0(6),
      I1 => word_0(5),
      O => dSyncHard_int_i_17_n_0
    );
dSyncHard_int_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => word_0(1),
      I1 => word_0(3),
      O => dSyncHard_int_i_18_n_0
    );
dSyncHard_int_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => word_0(2),
      I1 => word_0(1),
      O => dSyncHard_int_i_19_n_0
    );
dSyncHard_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFFFFFF"
    )
        port map (
      I0 => dSyncHard_int_i_4_n_0,
      I1 => dSyncHard_int_i_5_n_0,
      I2 => dSyncHard_int_i_6_n_0,
      I3 => dSyncHard_int_i_7_n_0,
      I4 => dSyncHard_int_i_8_n_0,
      I5 => dSyncHard_int_i_9_n_0,
      O => dSyncHard_int_i_2_n_0
    );
dSyncHard_int_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^dsyncerr_int_reg_0\,
      I1 => \^dsynchard_int_reg_0\,
      I2 => \^dsyncsoft_int_reg_0\,
      O => dSyncHard_int_i_3_n_0
    );
dSyncHard_int_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => dSyncHard_int_i_10_n_0,
      I1 => word_0(4),
      I2 => word_0(3),
      I3 => word(7),
      I4 => p_0_in7_in,
      O => dSyncHard_int_i_4_n_0
    );
dSyncHard_int_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => dSyncHard_int_i_11_n_0,
      I1 => p_0_in16_in,
      I2 => word_0(4),
      I3 => word_0(5),
      I4 => word_0(6),
      O => dSyncHard_int_i_5_n_0
    );
dSyncHard_int_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFF00FFEFFFEF"
    )
        port map (
      I0 => dSyncHard_int_i_12_n_0,
      I1 => p_0_in0_in,
      I2 => p_0_in7_in,
      I3 => dSyncHard_int_i_13_n_0,
      I4 => dSyncHard_int_i_14_n_0,
      I5 => dSyncHard_int_i_11_n_0,
      O => dSyncHard_int_i_6_n_0
    );
dSyncHard_int_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444F44444444444"
    )
        port map (
      I0 => dSyncHard_int_i_15_n_0,
      I1 => dSyncHard_int_i_10_n_0,
      I2 => word_0(3),
      I3 => word_0(1),
      I4 => dSyncHard_int_i_14_n_0,
      I5 => dSyncHard_int_i_16_n_0,
      O => dSyncHard_int_i_7_n_0
    );
dSyncHard_int_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[0][0]\,
      I1 => word_0(2),
      I2 => word_0(0),
      I3 => word_0(4),
      I4 => dSyncHard_int_i_17_n_0,
      I5 => dSyncHard_int_i_18_n_0,
      O => dSyncHard_int_i_8_n_0
    );
dSyncHard_int_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => dSyncHard_int_i_17_n_0,
      I1 => word(7),
      I2 => word_0(0),
      I3 => dSyncHard_int_i_19_n_0,
      I4 => word_0(3),
      I5 => word_0(4),
      O => dSyncHard_int_i_9_n_0
    );
dSyncHard_int_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dSyncHard_int,
      D => dSyncHard_int_i_2_n_0,
      Q => \^dsynchard_int_reg_0\,
      R => dLogicRst
    );
dSyncSoft_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFD"
    )
        port map (
      I0 => dSyncSoft_int_i_2_n_0,
      I1 => dSyncSoft_int_i_3_n_0,
      I2 => dSyncSoft_int_i_4_n_0,
      I3 => dSyncSoft_int_i_5_n_0,
      I4 => dSyncSoft_int_i_6_n_0,
      I5 => dSyncHard_int_i_2_n_0,
      O => soft5_out
    );
dSyncSoft_int_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2BFF2BFF2B2B"
    )
        port map (
      I0 => word_0(6),
      I1 => p_0_in25_in,
      I2 => word(7),
      I3 => p_0_in16_in,
      I4 => p_0_in0_in,
      I5 => p_0_in7_in,
      O => dSyncSoft_int_i_10_n_0
    );
dSyncSoft_int_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in16_in,
      I1 => p_0_in0_in,
      I2 => p_0_in7_in,
      O => dSyncSoft_int_i_11_n_0
    );
dSyncSoft_int_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0014140014000014"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => word_0(4),
      I2 => p_0_in0_in,
      I3 => word_0(6),
      I4 => word_0(5),
      I5 => word(7),
      O => dSyncSoft_int_i_12_n_0
    );
dSyncSoft_int_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF0DFFDF"
    )
        port map (
      I0 => word_0(4),
      I1 => p_0_in0_in,
      I2 => word(7),
      I3 => word_0(5),
      I4 => word_0(6),
      O => dSyncSoft_int_i_13_n_0
    );
dSyncSoft_int_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04404004"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => word_0(4),
      I2 => word_0(6),
      I3 => word_0(5),
      I4 => word(7),
      O => dSyncSoft_int_i_14_n_0
    );
dSyncSoft_int_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_1_in13_in,
      I1 => p_0_in0_in,
      I2 => p_0_in7_in,
      O => dSyncSoft_int_i_15_n_0
    );
dSyncSoft_int_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE0CFFAE"
    )
        port map (
      I0 => p_1_in13_in,
      I1 => p_1_in,
      I2 => word_0(6),
      I3 => p_0_in0_in,
      I4 => p_0_in7_in,
      O => dSyncSoft_int_i_16_n_0
    );
dSyncSoft_int_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => word_0(6),
      I1 => p_1_in,
      O => dSyncSoft_int_i_17_n_0
    );
dSyncSoft_int_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[0][0]\,
      I1 => word_0(6),
      O => dSyncSoft_int_i_18_n_0
    );
dSyncSoft_int_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3515100"
    )
        port map (
      I0 => word_0(0),
      I1 => word_0(6),
      I2 => \dDataIn_reg_reg_n_0_[0][0]\,
      I3 => word_0(2),
      I4 => word_0(1),
      O => dSyncSoft_int_i_19_n_0
    );
dSyncSoft_int_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => dSyncSoft_int_i_7_n_0,
      I1 => \dAlignment_int[0]_i_3_n_0\,
      I2 => \dAlignment_int[2]_i_5_n_0\,
      I3 => dSyncSoft_int_i_8_n_0,
      O => dSyncSoft_int_i_2_n_0
    );
dSyncSoft_int_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => word_0(0),
      I1 => word_0(1),
      I2 => word_0(2),
      O => dSyncSoft_int_i_20_n_0
    );
dSyncSoft_int_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in25_in,
      I1 => word_0(1),
      O => dSyncSoft_int_i_21_n_0
    );
dSyncSoft_int_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word_0(2),
      I1 => word_0(4),
      I2 => word_0(3),
      O => dSyncSoft_int_i_22_n_0
    );
dSyncSoft_int_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3515100"
    )
        port map (
      I0 => word_0(2),
      I1 => p_0_in25_in,
      I2 => word_0(1),
      I3 => word_0(3),
      I4 => word_0(4),
      O => dSyncSoft_int_i_23_n_0
    );
dSyncSoft_int_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => word_0(5),
      I1 => word_0(4),
      I2 => word_0(3),
      O => dSyncSoft_int_i_24_n_0
    );
dSyncSoft_int_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4DFF4DFF4D4D"
    )
        port map (
      I0 => word_0(4),
      I1 => word_0(3),
      I2 => word_0(5),
      I3 => word_0(6),
      I4 => p_0_in25_in,
      I5 => word(7),
      O => dSyncSoft_int_i_25_n_0
    );
dSyncSoft_int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020029"
    )
        port map (
      I0 => word_0(5),
      I1 => p_1_in13_in,
      I2 => dSyncSoft_int_i_9_n_0,
      I3 => dSyncSoft_int_i_10_n_0,
      I4 => dSyncSoft_int_i_11_n_0,
      O => dSyncSoft_int_i_3_n_0
    );
dSyncSoft_int_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010301300000010"
    )
        port map (
      I0 => dSyncSoft_int_i_12_n_0,
      I1 => dSyncSoft_int_i_13_n_0,
      I2 => p_0_in25_in,
      I3 => p_0_in16_in,
      I4 => p_0_in7_in,
      I5 => dSyncSoft_int_i_14_n_0,
      O => dSyncSoft_int_i_4_n_0
    );
dSyncSoft_int_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000860800000800"
    )
        port map (
      I0 => dSyncSoft_int_i_15_n_0,
      I1 => p_0_in25_in,
      I2 => word(7),
      I3 => p_0_in16_in,
      I4 => dSyncSoft_int_i_16_n_0,
      I5 => dSyncSoft_int_i_17_n_0,
      O => dSyncSoft_int_i_5_n_0
    );
dSyncSoft_int_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800840800000800"
    )
        port map (
      I0 => dSyncSoft_int_i_18_n_0,
      I1 => dSyncSoft_int_i_19_n_0,
      I2 => word_0(5),
      I3 => word_0(3),
      I4 => word_0(4),
      I5 => dSyncSoft_int_i_20_n_0,
      O => dSyncSoft_int_i_6_n_0
    );
dSyncSoft_int_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010106100000000"
    )
        port map (
      I0 => dSyncSoft_int_i_21_n_0,
      I1 => word(7),
      I2 => word_0(5),
      I3 => word_0(6),
      I4 => dSyncSoft_int_i_22_n_0,
      I5 => dSyncSoft_int_i_23_n_0,
      O => dSyncSoft_int_i_7_n_0
    );
dSyncSoft_int_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008068"
    )
        port map (
      I0 => dSyncSoft_int_i_24_n_0,
      I1 => dSyncSoft_int_i_9_n_0,
      I2 => word_0(2),
      I3 => p_0_in16_in,
      I4 => dSyncSoft_int_i_25_n_0,
      O => dSyncSoft_int_i_8_n_0
    );
dSyncSoft_int_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word_0(6),
      I1 => p_0_in25_in,
      I2 => word(7),
      O => dSyncSoft_int_i_9_n_0
    );
dSyncSoft_int_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dSyncHard_int,
      D => soft5_out,
      Q => \^dsyncsoft_int_reg_0\,
      R => dLogicRst
    );
dValid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dValid_reg__0\(0),
      Q => rbD1RxValidHS,
      R => dDataOut80
    );
\dValid_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEEEEEEEEEEEEEE"
    )
        port map (
      I0 => \^dsynchard_int_reg_0\,
      I1 => \^dsyncsoft_int_reg_0\,
      I2 => \dLP[1]_0\(1),
      I3 => \dLP[0]_1\(0),
      I4 => \dLP[1]_0\(0),
      I5 => \dLP[0]_1\(1),
      O => p_1_out(1)
    );
\dValid_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(1),
      Q => \dValid_reg__0\(1),
      R => dLogicRst
    );
\dValid_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dValid_reg__0\(1),
      Q => \dValid_reg__0\(0),
      R => dLogicRst
    );
nextMust_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => word_0(1),
      I1 => word_0(2),
      I2 => word_0(0),
      I3 => \dDataIn_reg_reg_n_0_[0][0]\,
      I4 => dSyncHard_int_i_3_n_0,
      I5 => nextMust_reg_n_0,
      O => nextMust_i_1_n_0
    );
nextMust_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => nextMust_i_1_n_0,
      Q => nextMust_reg_n_0,
      R => dLogicRst
    );
rbD1ErrSotHS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dsyncerr_int_reg_0\,
      I1 => dSyncErr_reg,
      O => rbD1ErrSotHS
    );
rbD1ErrSotSyncHS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dsyncsoft_int_reg_0\,
      I1 => dSyncSoft_reg,
      O => rbD1ErrSotSyncHS
    );
rbD1RxActiveHS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^dsyncsoft_int_reg_0\,
      I1 => \^dsynchard_int_reg_0\,
      O => rbD1RxActiveHS
    );
rbD1RxSyncHS_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => dSyncSoft_reg,
      I1 => \^dsyncsoft_int_reg_0\,
      I2 => dSyncHard_reg,
      I3 => \^dsynchard_int_reg_0\,
      O => rbD1RxSyncHS
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Deserializer__parameterized0\ is
  port (
    aLP_int : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dSyncHard_int_reg_0 : out STD_LOGIC;
    dSyncSoft_int_reg_0 : out STD_LOGIC;
    rbD0RxValidHS : out STD_LOGIC;
    dSyncErr_int_reg_0 : out STD_LOGIC;
    rbD0RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD0RxActiveHS : out STD_LOGIC;
    rbD0RxSyncHS : out STD_LOGIC;
    rbD0ErrSotSyncHS : out STD_LOGIC;
    rbD0ErrSotHS : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    aHS : in STD_LOGIC;
    RxDDRClkHS : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    CLK : in STD_LOGIC;
    aLP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \oSyncStages_reg[0]\ : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    dSyncSoft_reg : in STD_LOGIC;
    dSyncHard_reg : in STD_LOGIC;
    dSyncErr_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Deserializer__parameterized0\ : entity is "HS_Deserializer";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Deserializer__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Deserializer__parameterized0\ is
  signal DataInDly : STD_LOGIC;
  signal InputDelay_n_1 : STD_LOGIC;
  signal InputDelay_n_2 : STD_LOGIC;
  signal InputDelay_n_3 : STD_LOGIC;
  signal InputDelay_n_4 : STD_LOGIC;
  signal InputDelay_n_5 : STD_LOGIC;
  signal SyncAsyncSettled_n_0 : STD_LOGIC;
  signal \alignment[0]_i_1_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \alignment[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \alignment[1]_i_1_n_0\ : STD_LOGIC;
  signal \alignment[2]_i_1_n_0\ : STD_LOGIC;
  signal alignment_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \alignment_reg_n_0_[0]\ : STD_LOGIC;
  signal \alignment_reg_n_0_[1]\ : STD_LOGIC;
  signal \alignment_reg_n_0_[2]\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_10__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_11__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_12__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_13__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_14__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_15__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_7__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_8__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int[2]_i_9__0_n_0\ : STD_LOGIC;
  signal \dAlignment_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \dAlignment_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \dAlignment_int_reg_n_0_[2]\ : STD_LOGIC;
  signal dDataIn_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dDataIn_reg_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \dDataIn_reg_reg_n_0_[3][6]\ : STD_LOGIC;
  signal dDataOut8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dDataOut80 : STD_LOGIC;
  signal \dDataOut8[0]_i_3_n_0\ : STD_LOGIC;
  signal \dDataOut8[0]_i_4_n_0\ : STD_LOGIC;
  signal \dDataOut8[0]_i_5_n_0\ : STD_LOGIC;
  signal \dDataOut8[0]_i_6_n_0\ : STD_LOGIC;
  signal \dDataOut8[1]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[2]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[3]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[4]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[5]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[6]_i_2_n_0\ : STD_LOGIC;
  signal \dDataOut8[7]_i_2_n_0\ : STD_LOGIC;
  signal \dLP[0]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \dLP[0]_0\ : signal is std.standard.true;
  signal \dLP[1]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH of \dLP[1]_1\ : signal is std.standard.true;
  signal dLogicRst : STD_LOGIC;
  signal dSerdesRst : STD_LOGIC;
  signal dSerdesRst_q : STD_LOGIC;
  signal dSyncErr_int_i_1_n_0 : STD_LOGIC;
  signal \dSyncErr_int_i_2__0_n_0\ : STD_LOGIC;
  signal \^dsyncerr_int_reg_0\ : STD_LOGIC;
  signal dSyncHard_int : STD_LOGIC;
  signal \dSyncHard_int_i_10__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_11__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_12__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_13__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_14__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_15__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_16__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_17__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_18__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_19__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_2__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_3__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_4__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_5__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_6__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_7__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_8__0_n_0\ : STD_LOGIC;
  signal \dSyncHard_int_i_9__0_n_0\ : STD_LOGIC;
  signal \^dsynchard_int_reg_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_10__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_11__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_12__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_13__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_14__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_15__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_16__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_17__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_18__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_19__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_20__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_21__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_22__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_23__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_24__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_25__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_2__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_3__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_4__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_5__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_6__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_7__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_8__0_n_0\ : STD_LOGIC;
  signal \dSyncSoft_int_i_9__0_n_0\ : STD_LOGIC;
  signal \^dsyncsoft_int_reg_0\ : STD_LOGIC;
  signal \dValid_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal nextMust_i_1_n_0 : STD_LOGIC;
  signal nextMust_reg_n_0 : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal soft5_out : STD_LOGIC;
  signal word : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_Deserializer_O_UNCONNECTED : STD_LOGIC;
  signal NLW_Deserializer_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_Deserializer_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of Deserializer : label is "MLO";
  attribute box_type : string;
  attribute box_type of Deserializer : label is "PRIMITIVE";
  attribute box_type of InputDelay : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \UseOwnLP.LPxx[0].LP_DeserializerX\ : label is "MLO";
  attribute box_type of \UseOwnLP.LPxx[0].LP_DeserializerX\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \UseOwnLP.LPxx[1].LP_DeserializerX\ : label is "MLO";
  attribute box_type of \UseOwnLP.LPxx[1].LP_DeserializerX\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \alignment[0]_i_3__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \alignment[0]_i_5__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \alignment[0]_i_8__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_12__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_13__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_14__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_15__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_2__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_5__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_6__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dAlignment_int[0]_i_9__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_2__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dAlignment_int[1]_i_3__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dAlignment_int[2]_i_3__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dAlignment_int[2]_i_5__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dAlignment_int[2]_i_7__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dDataOut8[0]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dDataOut8[0]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dDataOut8[1]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dDataOut8[2]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dDataOut8[3]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dDataOut8[4]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dDataOut8[5]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dDataOut8[6]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of dSyncErr_int_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dSyncErr_int_i_2__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_10__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_11__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_12__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_14__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_15__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_16__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_17__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_18__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_19__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_3__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_4__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dSyncHard_int_i_5__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_11__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_13__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_14__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_15__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_16__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_17__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_18__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_19__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_20__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_22__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_23__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_24__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dSyncSoft_int_i_9__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of rbD0ErrSotHS_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of rbD0ErrSotSyncHS_INST_0 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of rbD0RxActiveHS_INST_0 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of rbD0RxSyncHS_INST_0 : label is "soft_lutpair23";
begin
  dSyncErr_int_reg_0 <= \^dsyncerr_int_reg_0\;
  dSyncHard_int_reg_0 <= \^dsynchard_int_reg_0\;
  dSyncSoft_int_reg_0 <= \^dsyncsoft_int_reg_0\;
  \out\(7 downto 0) <= \dLP[0]_0\(7 downto 0);
Deserializer: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => RxDDRClkHS,
      CLKB => CLKB,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => '0',
      DDLY => DataInDly,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_Deserializer_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => dDataIn_int(0),
      Q2 => dDataIn_int(1),
      Q3 => dDataIn_int(2),
      Q4 => dDataIn_int(3),
      Q5 => dDataIn_int(4),
      Q6 => dDataIn_int(5),
      Q7 => dDataIn_int(6),
      Q8 => dDataIn_int(7),
      RST => dSerdesRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_Deserializer_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_Deserializer_SHIFTOUT2_UNCONNECTED
    );
InputDelay: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VARIABLE",
      IDELAY_VALUE => 12,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => RefClk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4) => InputDelay_n_1,
      CNTVALUEOUT(3) => InputDelay_n_2,
      CNTVALUEOUT(2) => InputDelay_n_3,
      CNTVALUEOUT(1) => InputDelay_n_4,
      CNTVALUEOUT(0) => InputDelay_n_5,
      DATAIN => '0',
      DATAOUT => DataInDly,
      IDATAIN => aHS,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
SerdesReset: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_16
     port map (
      AS(0) => AS(0),
      CLK => CLK,
      \out\(0) => dSerdesRst
    );
SyncAsyncSettled: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized1_17\
     port map (
      CLK => CLK,
      Q(0) => \dValid_reg__0\(0),
      dLogicRst => dLogicRst,
      dSerdesRst_q => dSerdesRst_q,
      dSerdesRst_q_reg => SyncAsyncSettled_n_0,
      \oSyncStages_reg[0]_0\ => \oSyncStages_reg[0]\
    );
\UseOwnLP.LPxx[0].LP_DeserializerX\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '1',
      INIT_Q2 => '1',
      INIT_Q3 => '1',
      INIT_Q4 => '1',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '1',
      SRVAL_Q2 => '1',
      SRVAL_Q3 => '1',
      SRVAL_Q4 => '1'
    )
        port map (
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => RxDDRClkHS,
      CLKB => CLKB,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => aLP(0),
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => aLP_int(0),
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => \dLP[0]_0\(0),
      Q2 => \dLP[0]_0\(1),
      Q3 => \dLP[0]_0\(2),
      Q4 => \dLP[0]_0\(3),
      Q5 => \dLP[0]_0\(4),
      Q6 => \dLP[0]_0\(5),
      Q7 => \dLP[0]_0\(6),
      Q8 => \dLP[0]_0\(7),
      RST => dSerdesRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_UseOwnLP.LPxx[0].LP_DeserializerX_SHIFTOUT2_UNCONNECTED\
    );
\UseOwnLP.LPxx[1].LP_DeserializerX\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 8,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '1',
      INIT_Q2 => '1',
      INIT_Q3 => '1',
      INIT_Q4 => '1',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 1,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '1',
      SRVAL_Q2 => '1',
      SRVAL_Q3 => '1',
      SRVAL_Q4 => '1'
    )
        port map (
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => RxDDRClkHS,
      CLKB => CLKB,
      CLKDIV => CLK,
      CLKDIVP => '0',
      D => aLP(1),
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => aLP_int(1),
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => \dLP[1]_1\(0),
      Q2 => \dLP[1]_1\(1),
      Q3 => \dLP[1]_1\(2),
      Q4 => \dLP[1]_1\(3),
      Q5 => \dLP[1]_1\(4),
      Q6 => \dLP[1]_1\(5),
      Q7 => \dLP[1]_1\(6),
      Q8 => \dLP[1]_1\(7),
      RST => dSerdesRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_UseOwnLP.LPxx[1].LP_DeserializerX_SHIFTOUT2_UNCONNECTED\
    );
\alignment[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0EFF00000E00"
    )
        port map (
      I0 => \alignment[0]_i_2__0_n_0\,
      I1 => \alignment[0]_i_3__0_n_0\,
      I2 => \alignment[0]_i_4__0_n_0\,
      I3 => dSyncHard_int,
      I4 => dLogicRst,
      I5 => \alignment_reg_n_0_[0]\,
      O => \alignment[0]_i_1_n_0\
    );
\alignment[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF4"
    )
        port map (
      I0 => \dAlignment_int[2]_i_3__0_n_0\,
      I1 => \dSyncSoft_int_i_8__0_n_0\,
      I2 => \dSyncHard_int_i_2__0_n_0\,
      I3 => \dSyncSoft_int_i_5__0_n_0\,
      I4 => \dSyncSoft_int_i_4__0_n_0\,
      O => \alignment[0]_i_2__0_n_0\
    );
\alignment[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404444"
    )
        port map (
      I0 => \dAlignment_int[2]_i_3__0_n_0\,
      I1 => \alignment[0]_i_5__0_n_0\,
      I2 => \dAlignment_int[0]_i_4__0_n_0\,
      I3 => \dSyncSoft_int_i_6__0_n_0\,
      I4 => \dAlignment_int[0]_i_3__0_n_0\,
      O => \alignment[0]_i_3__0_n_0\
    );
\alignment[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFF8"
    )
        port map (
      I0 => \dSyncHard_int_i_8__0_n_0\,
      I1 => \dSyncHard_int_i_9__0_n_0\,
      I2 => \dSyncHard_int_i_7__0_n_0\,
      I3 => \dAlignment_int[2]_i_2__0_n_0\,
      I4 => \alignment[0]_i_6__0_n_0\,
      O => \alignment[0]_i_4__0_n_0\
    );
\alignment[0]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \dAlignment_int[2]_i_5__0_n_0\,
      I1 => \dSyncSoft_int_i_8__0_n_0\,
      I2 => \dSyncSoft_int_i_7__0_n_0\,
      O => \alignment[0]_i_5__0_n_0\
    );
\alignment[0]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \dAlignment_int[0]_i_9__0_n_0\,
      I1 => \dSyncHard_int_i_5__0_n_0\,
      I2 => \alignment[0]_i_7__0_n_0\,
      O => \alignment[0]_i_6__0_n_0\
    );
\alignment[0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][5]\,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => \dDataIn_reg_reg_n_0_[1][3]\,
      I3 => \dDataIn_reg_reg_n_0_[1][4]\,
      I4 => \dSyncSoft_int_i_17__0_n_0\,
      I5 => \alignment[0]_i_8__0_n_0\,
      O => \alignment[0]_i_7__0_n_0\
    );
\alignment[0]_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      O => \alignment[0]_i_8__0_n_0\
    );
\alignment[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => alignment_out(1),
      I1 => dSyncHard_int,
      I2 => dLogicRst,
      I3 => \alignment_reg_n_0_[1]\,
      O => \alignment[1]_i_1_n_0\
    );
\alignment[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => alignment_out(2),
      I1 => dSyncHard_int,
      I2 => dLogicRst,
      I3 => \alignment_reg_n_0_[2]\,
      O => \alignment[2]_i_1_n_0\
    );
\alignment_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \alignment[0]_i_1_n_0\,
      Q => \alignment_reg_n_0_[0]\,
      R => '0'
    );
\alignment_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \alignment[1]_i_1_n_0\,
      Q => \alignment_reg_n_0_[1]\,
      R => '0'
    );
\alignment_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \alignment[2]_i_1_n_0\,
      Q => \alignment_reg_n_0_[2]\,
      R => '0'
    );
\dAlignment_int[0]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF0000FBFFFBFF"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][3]\,
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      I2 => \dAlignment_int[2]_i_7__0_n_0\,
      I3 => \dSyncHard_int_i_10__0_n_0\,
      I4 => \dAlignment_int[0]_i_13__0_n_0\,
      I5 => \dSyncHard_int_i_11__0_n_0\,
      O => \dAlignment_int[0]_i_10__0_n_0\
    );
\dAlignment_int[0]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D000DDFFDDFF"
    )
        port map (
      I0 => \dAlignment_int[0]_i_14__0_n_0\,
      I1 => \dAlignment_int[0]_i_7__0_n_0\,
      I2 => \dAlignment_int[0]_i_15__0_n_0\,
      I3 => \dSyncHard_int_i_17__0_n_0\,
      I4 => \dSyncHard_int_i_18__0_n_0\,
      I5 => \alignment_reg_n_0_[0]\,
      O => \dAlignment_int[0]_i_11__0_n_0\
    );
\dAlignment_int[0]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][4]\,
      I1 => \dDataIn_reg_reg_n_0_[1][3]\,
      I2 => \dDataIn_reg_reg_n_0_[1][2]\,
      I3 => \dDataIn_reg_reg_n_0_[1][5]\,
      O => \dAlignment_int[0]_i_12__0_n_0\
    );
\dAlignment_int[0]_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => word(6),
      I1 => word(5),
      I2 => word(4),
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      O => \dAlignment_int[0]_i_13__0_n_0\
    );
\dAlignment_int[0]_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => word(4),
      I1 => word(3),
      I2 => word(1),
      I3 => word(2),
      O => \dAlignment_int[0]_i_14__0_n_0\
    );
\dAlignment_int[0]_i_15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => word(4),
      I1 => word(0),
      I2 => word(2),
      I3 => \dDataIn_reg_reg_n_0_[0][0]\,
      O => \dAlignment_int[0]_i_15__0_n_0\
    );
\dAlignment_int[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEE0000AEEEAAEE"
    )
        port map (
      I0 => \alignment[0]_i_2__0_n_0\,
      I1 => \dAlignment_int[0]_i_2__0_n_0\,
      I2 => \dSyncSoft_int_i_6__0_n_0\,
      I3 => \dAlignment_int[0]_i_3__0_n_0\,
      I4 => \dAlignment_int[0]_i_4__0_n_0\,
      I5 => \dSyncHard_int_i_2__0_n_0\,
      O => alignment_out(0)
    );
\dAlignment_int[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \alignment[0]_i_5__0_n_0\,
      I1 => \dAlignment_int[2]_i_3__0_n_0\,
      O => \dAlignment_int[0]_i_2__0_n_0\
    );
\dAlignment_int[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFBB6FFFF"
    )
        port map (
      I0 => \dAlignment_int[0]_i_5__0_n_0\,
      I1 => word(4),
      I2 => word(5),
      I3 => word(6),
      I4 => \dAlignment_int[0]_i_6__0_n_0\,
      I5 => \dAlignment_int[0]_i_7__0_n_0\,
      O => \dAlignment_int[0]_i_3__0_n_0\
    );
\dAlignment_int[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEFEEE"
    )
        port map (
      I0 => \dAlignment_int[0]_i_8__0_n_0\,
      I1 => \dAlignment_int[0]_i_9__0_n_0\,
      I2 => \dAlignment_int[0]_i_10__0_n_0\,
      I3 => \dSyncHard_int_i_6__0_n_0\,
      I4 => \dSyncHard_int_i_7__0_n_0\,
      I5 => \dAlignment_int[0]_i_11__0_n_0\,
      O => \dAlignment_int[0]_i_4__0_n_0\
    );
\dAlignment_int[0]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word(3),
      I1 => word(1),
      I2 => word(2),
      O => \dAlignment_int[0]_i_5__0_n_0\
    );
\dAlignment_int[0]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0DD00D0"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][0]\,
      I1 => word(0),
      I2 => word(2),
      I3 => word(1),
      I4 => word(3),
      O => \dAlignment_int[0]_i_6__0_n_0\
    );
\dAlignment_int[0]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][0]\,
      I1 => word(0),
      O => \dAlignment_int[0]_i_7__0_n_0\
    );
\dAlignment_int[0]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][0]\,
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => \dSyncSoft_int_i_17__0_n_0\,
      I3 => \dAlignment_int[0]_i_12__0_n_0\,
      I4 => \dAlignment_int[0]_i_13__0_n_0\,
      I5 => \dSyncHard_int_i_11__0_n_0\,
      O => \dAlignment_int[0]_i_8__0_n_0\
    );
\dAlignment_int[0]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \dSyncHard_int_i_10__0_n_0\,
      I1 => word(2),
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      I3 => word(4),
      I4 => word(3),
      O => \dAlignment_int[0]_i_9__0_n_0\
    );
\dAlignment_int[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005D0055FF5DFF5D"
    )
        port map (
      I0 => \dAlignment_int[1]_i_2__0_n_0\,
      I1 => \dSyncSoft_int_i_2__0_n_0\,
      I2 => \dAlignment_int[1]_i_3__0_n_0\,
      I3 => \dSyncHard_int_i_2__0_n_0\,
      I4 => \alignment_reg_n_0_[1]\,
      I5 => \dAlignment_int[1]_i_4__0_n_0\,
      O => alignment_out(1)
    );
\dAlignment_int[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020203"
    )
        port map (
      I0 => \dSyncSoft_int_i_4__0_n_0\,
      I1 => \dSyncSoft_int_i_3__0_n_0\,
      I2 => \dSyncSoft_int_i_5__0_n_0\,
      I3 => \dSyncSoft_int_i_7__0_n_0\,
      I4 => \dSyncSoft_int_i_8__0_n_0\,
      O => \dAlignment_int[1]_i_2__0_n_0\
    );
\dAlignment_int[1]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dSyncSoft_int_i_3__0_n_0\,
      I1 => \dSyncSoft_int_i_4__0_n_0\,
      I2 => \dSyncSoft_int_i_5__0_n_0\,
      I3 => \dSyncSoft_int_i_6__0_n_0\,
      O => \dAlignment_int[1]_i_3__0_n_0\
    );
\dAlignment_int[1]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dSyncHard_int_i_6__0_n_0\,
      I1 => \dSyncHard_int_i_7__0_n_0\,
      O => \dAlignment_int[1]_i_4__0_n_0\
    );
\dAlignment_int[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEEFFEFFF"
    )
        port map (
      I0 => \dAlignment_int[2]_i_2__0_n_0\,
      I1 => \dAlignment_int[2]_i_3__0_n_0\,
      I2 => \dAlignment_int[2]_i_4__0_n_0\,
      I3 => \dAlignment_int[2]_i_5__0_n_0\,
      I4 => \dAlignment_int[2]_i_6__0_n_0\,
      I5 => \dSyncHard_int_i_2__0_n_0\,
      O => alignment_out(2)
    );
\dAlignment_int[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDFDDDDD"
    )
        port map (
      I0 => \dSyncHard_int_i_6__0_n_0\,
      I1 => \dSyncHard_int_i_5__0_n_0\,
      I2 => \dSyncHard_int_i_10__0_n_0\,
      I3 => \dAlignment_int[2]_i_7__0_n_0\,
      I4 => \dDataIn_reg_reg_n_0_[1][0]\,
      I5 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dAlignment_int[2]_i_2__0_n_0\
    );
\dAlignment_int[2]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \dSyncSoft_int_i_4__0_n_0\,
      I1 => \dSyncSoft_int_i_3__0_n_0\,
      I2 => \dSyncSoft_int_i_5__0_n_0\,
      O => \dAlignment_int[2]_i_3__0_n_0\
    );
\dAlignment_int[2]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \alignment_reg_n_0_[2]\,
      I1 => \dSyncSoft_int_i_6__0_n_0\,
      I2 => \dAlignment_int[0]_i_3__0_n_0\,
      O => \dAlignment_int[2]_i_4__0_n_0\
    );
\dAlignment_int[2]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFEB"
    )
        port map (
      I0 => \dAlignment_int[2]_i_8__0_n_0\,
      I1 => \dAlignment_int[2]_i_9__0_n_0\,
      I2 => word(3),
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dAlignment_int[2]_i_5__0_n_0\
    );
\dAlignment_int[2]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dSyncSoft_int_i_7__0_n_0\,
      I1 => \dSyncSoft_int_i_8__0_n_0\,
      O => \dAlignment_int[2]_i_6__0_n_0\
    );
\dAlignment_int[2]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => word(4),
      I1 => word(3),
      O => \dAlignment_int[2]_i_7__0_n_0\
    );
\dAlignment_int[2]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFB2FBFBFF"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][2]\,
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      I2 => \dDataIn_reg_reg_n_0_[1][1]\,
      I3 => word(6),
      I4 => word(5),
      I5 => word(4),
      O => \dAlignment_int[2]_i_8__0_n_0\
    );
\dAlignment_int[2]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0096960096000096"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      I3 => word(6),
      I4 => word(5),
      I5 => word(4),
      O => \dAlignment_int[2]_i_9__0_n_0\
    );
\dAlignment_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => dSyncHard_int,
      D => alignment_out(0),
      Q => \dAlignment_int_reg_n_0_[0]\,
      R => dLogicRst
    );
\dAlignment_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => dSyncHard_int,
      D => alignment_out(1),
      Q => \dAlignment_int_reg_n_0_[1]\,
      R => dLogicRst
    );
\dAlignment_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => dSyncHard_int,
      D => alignment_out(2),
      Q => \dAlignment_int_reg_n_0_[2]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(0),
      Q => \dDataIn_reg_reg_n_0_[0][0]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(1),
      Q => word(0),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(2),
      Q => word(1),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(3),
      Q => word(2),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(4),
      Q => word(3),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(5),
      Q => word(4),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(6),
      Q => word(5),
      R => dLogicRst
    );
\dDataIn_reg_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataIn_int(7),
      Q => word(6),
      R => dLogicRst
    );
\dDataIn_reg_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[0][0]\,
      Q => \dDataIn_reg_reg_n_0_[1][0]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(0),
      Q => \dDataIn_reg_reg_n_0_[1][1]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(1),
      Q => \dDataIn_reg_reg_n_0_[1][2]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(2),
      Q => \dDataIn_reg_reg_n_0_[1][3]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(3),
      Q => \dDataIn_reg_reg_n_0_[1][4]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(4),
      Q => \dDataIn_reg_reg_n_0_[1][5]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(5),
      Q => \dDataIn_reg_reg_n_0_[1][6]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => word(6),
      Q => \dDataIn_reg_reg_n_0_[1][7]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][0]\,
      Q => \dDataIn_reg_reg_n_0_[2][0]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][1]\,
      Q => \dDataIn_reg_reg_n_0_[2][1]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][2]\,
      Q => \dDataIn_reg_reg_n_0_[2][2]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][3]\,
      Q => \dDataIn_reg_reg_n_0_[2][3]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][4]\,
      Q => \dDataIn_reg_reg_n_0_[2][4]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][5]\,
      Q => \dDataIn_reg_reg_n_0_[2][5]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][6]\,
      Q => \dDataIn_reg_reg_n_0_[2][6]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[1][7]\,
      Q => \dDataIn_reg_reg_n_0_[2][7]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][0]\,
      Q => \dDataIn_reg_reg_n_0_[3][0]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][1]\,
      Q => \dDataIn_reg_reg_n_0_[3][1]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][2]\,
      Q => \dDataIn_reg_reg_n_0_[3][2]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][3]\,
      Q => \dDataIn_reg_reg_n_0_[3][3]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][4]\,
      Q => \dDataIn_reg_reg_n_0_[3][4]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][5]\,
      Q => \dDataIn_reg_reg_n_0_[3][5]\,
      R => dLogicRst
    );
\dDataIn_reg_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dDataIn_reg_reg_n_0_[2][6]\,
      Q => \dDataIn_reg_reg_n_0_[3][6]\,
      R => dLogicRst
    );
\dDataOut8[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => dLogicRst,
      I1 => \dValid_reg__0\(0),
      O => dDataOut80
    );
\dDataOut8[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEEFFAAFAEEAAAA"
    )
        port map (
      I0 => \dDataOut8[0]_i_3_n_0\,
      I1 => \dDataOut8[0]_i_4_n_0\,
      I2 => \dDataOut8[0]_i_5_n_0\,
      I3 => \dAlignment_int_reg_n_0_[0]\,
      I4 => \dAlignment_int_reg_n_0_[1]\,
      I5 => \dDataOut8[0]_i_6_n_0\,
      O => dDataOut8(0)
    );
\dDataOut8[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020300"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[2][4]\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataIn_reg_reg_n_0_[2][0]\,
      I4 => \dAlignment_int_reg_n_0_[2]\,
      O => \dDataOut8[0]_i_3_n_0\
    );
\dDataOut8[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[2][6]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][2]\,
      O => \dDataOut8[0]_i_4_n_0\
    );
\dDataOut8[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[2][7]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][3]\,
      O => \dDataOut8[0]_i_5_n_0\
    );
\dDataOut8[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[2][5]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][1]\,
      O => \dDataOut8[0]_i_6_n_0\
    );
\dDataOut8[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE3EF232CE0EC202"
    )
        port map (
      I0 => \dDataOut8[0]_i_6_n_0\,
      I1 => \dAlignment_int_reg_n_0_[1]\,
      I2 => \dAlignment_int_reg_n_0_[0]\,
      I3 => \dDataOut8[1]_i_2_n_0\,
      I4 => \dDataOut8[0]_i_5_n_0\,
      I5 => \dDataOut8[0]_i_4_n_0\,
      O => dDataOut8(1)
    );
\dDataOut8[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][0]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][4]\,
      O => \dDataOut8[1]_i_2_n_0\
    );
\dDataOut8[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[2]_i_2_n_0\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataOut8[1]_i_2_n_0\,
      I4 => \dDataOut8[0]_i_5_n_0\,
      I5 => \dDataOut8[0]_i_4_n_0\,
      O => dDataOut8(2)
    );
\dDataOut8[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][1]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][5]\,
      O => \dDataOut8[2]_i_2_n_0\
    );
\dDataOut8[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[3]_i_2_n_0\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataOut8[2]_i_2_n_0\,
      I4 => \dDataOut8[1]_i_2_n_0\,
      I5 => \dDataOut8[0]_i_5_n_0\,
      O => dDataOut8(3)
    );
\dDataOut8[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][2]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][6]\,
      O => \dDataOut8[3]_i_2_n_0\
    );
\dDataOut8[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[4]_i_2_n_0\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataOut8[3]_i_2_n_0\,
      I4 => \dDataOut8[2]_i_2_n_0\,
      I5 => \dDataOut8[1]_i_2_n_0\,
      O => dDataOut8(4)
    );
\dDataOut8[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][3]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[2][7]\,
      O => \dDataOut8[4]_i_2_n_0\
    );
\dDataOut8[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[5]_i_2_n_0\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataOut8[4]_i_2_n_0\,
      I4 => \dDataOut8[3]_i_2_n_0\,
      I5 => \dDataOut8[2]_i_2_n_0\,
      O => dDataOut8(5)
    );
\dDataOut8[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][4]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[3][0]\,
      O => \dDataOut8[5]_i_2_n_0\
    );
\dDataOut8[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => \dDataOut8[6]_i_2_n_0\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataOut8[5]_i_2_n_0\,
      I4 => \dDataOut8[4]_i_2_n_0\,
      I5 => \dDataOut8[3]_i_2_n_0\,
      O => dDataOut8(6)
    );
\dDataOut8[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][5]\,
      I1 => \dAlignment_int_reg_n_0_[2]\,
      I2 => \dDataIn_reg_reg_n_0_[3][1]\,
      O => \dDataOut8[6]_i_2_n_0\
    );
\dDataOut8[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAFFEEAAFAAAEE"
    )
        port map (
      I0 => \dDataOut8[7]_i_2_n_0\,
      I1 => \dDataOut8[4]_i_2_n_0\,
      I2 => \dDataOut8[5]_i_2_n_0\,
      I3 => \dAlignment_int_reg_n_0_[1]\,
      I4 => \dAlignment_int_reg_n_0_[0]\,
      I5 => \dDataOut8[6]_i_2_n_0\,
      O => dDataOut8(7)
    );
\dDataOut8[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080C000"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[3][6]\,
      I1 => \dAlignment_int_reg_n_0_[0]\,
      I2 => \dAlignment_int_reg_n_0_[1]\,
      I3 => \dDataIn_reg_reg_n_0_[3][2]\,
      I4 => \dAlignment_int_reg_n_0_[2]\,
      O => \dDataOut8[7]_i_2_n_0\
    );
\dDataOut8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(0),
      Q => rbD0RxDataHS(7),
      R => dDataOut80
    );
\dDataOut8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(1),
      Q => rbD0RxDataHS(6),
      R => dDataOut80
    );
\dDataOut8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(2),
      Q => rbD0RxDataHS(5),
      R => dDataOut80
    );
\dDataOut8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(3),
      Q => rbD0RxDataHS(4),
      R => dDataOut80
    );
\dDataOut8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(4),
      Q => rbD0RxDataHS(3),
      R => dDataOut80
    );
\dDataOut8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(5),
      Q => rbD0RxDataHS(2),
      R => dDataOut80
    );
\dDataOut8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(6),
      Q => rbD0RxDataHS(1),
      R => dDataOut80
    );
\dDataOut8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dDataOut8(7),
      Q => rbD0RxDataHS(0),
      R => dDataOut80
    );
dLogicRst_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => SyncAsyncSettled_n_0,
      PRE => dSerdesRst,
      Q => dLogicRst
    );
dSerdesRst_q_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => dSerdesRst,
      Q => dSerdesRst_q
    );
dSyncErr_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => \dSyncHard_int_i_2__0_n_0\,
      I1 => dSyncHard_int,
      I2 => \dSyncErr_int_i_2__0_n_0\,
      I3 => \^dsyncerr_int_reg_0\,
      O => dSyncErr_int_i_1_n_0
    );
\dSyncErr_int_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \dSyncSoft_int_i_6__0_n_0\,
      I1 => \dSyncSoft_int_i_5__0_n_0\,
      I2 => \dSyncSoft_int_i_4__0_n_0\,
      I3 => \dSyncSoft_int_i_3__0_n_0\,
      I4 => \dSyncSoft_int_i_2__0_n_0\,
      O => \dSyncErr_int_i_2__0_n_0\
    );
dSyncErr_int_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => dSyncErr_int_i_1_n_0,
      Q => \^dsyncerr_int_reg_0\,
      R => dLogicRst
    );
\dSyncHard_int_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][2]\,
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => word(5),
      I3 => word(6),
      O => \dSyncHard_int_i_10__0_n_0\
    );
\dSyncHard_int_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      I2 => \dDataIn_reg_reg_n_0_[1][4]\,
      I3 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dSyncHard_int_i_11__0_n_0\
    );
\dSyncHard_int_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][0]\,
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => \dDataIn_reg_reg_n_0_[1][6]\,
      I3 => word(6),
      O => \dSyncHard_int_i_12__0_n_0\
    );
\dSyncHard_int_i_13__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][5]\,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      O => \dSyncHard_int_i_13__0_n_0\
    );
\dSyncHard_int_i_14__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => word(6),
      I1 => word(5),
      O => \dSyncHard_int_i_14__0_n_0\
    );
\dSyncHard_int_i_15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => word(3),
      I1 => word(4),
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      I3 => word(2),
      O => \dSyncHard_int_i_15__0_n_0\
    );
\dSyncHard_int_i_16__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      I2 => word(4),
      I3 => word(2),
      O => \dSyncHard_int_i_16__0_n_0\
    );
\dSyncHard_int_i_17__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => word(6),
      I1 => word(5),
      O => \dSyncHard_int_i_17__0_n_0\
    );
\dSyncHard_int_i_18__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => word(1),
      I1 => word(3),
      O => \dSyncHard_int_i_18__0_n_0\
    );
\dSyncHard_int_i_19__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => word(2),
      I1 => word(1),
      O => \dSyncHard_int_i_19__0_n_0\
    );
\dSyncHard_int_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \dSyncHard_int_i_3__0_n_0\,
      I1 => nextMust_reg_n_0,
      I2 => word(4),
      I3 => word(3),
      I4 => word(6),
      I5 => word(5),
      O => dSyncHard_int
    );
\dSyncHard_int_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFFFFFF"
    )
        port map (
      I0 => \dSyncHard_int_i_4__0_n_0\,
      I1 => \dSyncHard_int_i_5__0_n_0\,
      I2 => \dSyncHard_int_i_6__0_n_0\,
      I3 => \dSyncHard_int_i_7__0_n_0\,
      I4 => \dSyncHard_int_i_8__0_n_0\,
      I5 => \dSyncHard_int_i_9__0_n_0\,
      O => \dSyncHard_int_i_2__0_n_0\
    );
\dSyncHard_int_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^dsyncerr_int_reg_0\,
      I1 => \^dsynchard_int_reg_0\,
      I2 => \^dsyncsoft_int_reg_0\,
      O => \dSyncHard_int_i_3__0_n_0\
    );
\dSyncHard_int_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => \dSyncHard_int_i_10__0_n_0\,
      I1 => word(4),
      I2 => word(3),
      I3 => \dDataIn_reg_reg_n_0_[1][0]\,
      I4 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dSyncHard_int_i_4__0_n_0\
    );
\dSyncHard_int_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \dSyncHard_int_i_11__0_n_0\,
      I1 => \dDataIn_reg_reg_n_0_[1][2]\,
      I2 => word(4),
      I3 => word(5),
      I4 => word(6),
      O => \dSyncHard_int_i_5__0_n_0\
    );
\dSyncHard_int_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFF00FFEFFFEF"
    )
        port map (
      I0 => \dSyncHard_int_i_12__0_n_0\,
      I1 => \dDataIn_reg_reg_n_0_[1][4]\,
      I2 => \dDataIn_reg_reg_n_0_[1][3]\,
      I3 => \dSyncHard_int_i_13__0_n_0\,
      I4 => \dSyncHard_int_i_14__0_n_0\,
      I5 => \dSyncHard_int_i_11__0_n_0\,
      O => \dSyncHard_int_i_6__0_n_0\
    );
\dSyncHard_int_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444F44444444444"
    )
        port map (
      I0 => \dSyncHard_int_i_15__0_n_0\,
      I1 => \dSyncHard_int_i_10__0_n_0\,
      I2 => word(3),
      I3 => word(1),
      I4 => \dSyncHard_int_i_14__0_n_0\,
      I5 => \dSyncHard_int_i_16__0_n_0\,
      O => \dSyncHard_int_i_7__0_n_0\
    );
\dSyncHard_int_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[0][0]\,
      I1 => word(2),
      I2 => word(0),
      I3 => word(4),
      I4 => \dSyncHard_int_i_17__0_n_0\,
      I5 => \dSyncHard_int_i_18__0_n_0\,
      O => \dSyncHard_int_i_8__0_n_0\
    );
\dSyncHard_int_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \dSyncHard_int_i_17__0_n_0\,
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      I2 => word(0),
      I3 => \dSyncHard_int_i_19__0_n_0\,
      I4 => word(3),
      I5 => word(4),
      O => \dSyncHard_int_i_9__0_n_0\
    );
dSyncHard_int_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dSyncHard_int,
      D => \dSyncHard_int_i_2__0_n_0\,
      Q => \^dsynchard_int_reg_0\,
      R => dLogicRst
    );
\dSyncSoft_int_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2BFF2BFF2B2B"
    )
        port map (
      I0 => word(6),
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      I4 => \dDataIn_reg_reg_n_0_[1][4]\,
      I5 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dSyncSoft_int_i_10__0_n_0\
    );
\dSyncSoft_int_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][2]\,
      I1 => \dDataIn_reg_reg_n_0_[1][4]\,
      I2 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dSyncSoft_int_i_11__0_n_0\
    );
\dSyncSoft_int_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0014140014000014"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][3]\,
      I1 => word(4),
      I2 => \dDataIn_reg_reg_n_0_[1][4]\,
      I3 => word(6),
      I4 => word(5),
      I5 => \dDataIn_reg_reg_n_0_[1][0]\,
      O => \dSyncSoft_int_i_12__0_n_0\
    );
\dSyncSoft_int_i_13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF0DFFDF"
    )
        port map (
      I0 => word(4),
      I1 => \dDataIn_reg_reg_n_0_[1][4]\,
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      I3 => word(5),
      I4 => word(6),
      O => \dSyncSoft_int_i_13__0_n_0\
    );
\dSyncSoft_int_i_14__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04404004"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][4]\,
      I1 => word(4),
      I2 => word(6),
      I3 => word(5),
      I4 => \dDataIn_reg_reg_n_0_[1][0]\,
      O => \dSyncSoft_int_i_14__0_n_0\
    );
\dSyncSoft_int_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][5]\,
      I1 => \dDataIn_reg_reg_n_0_[1][4]\,
      I2 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dSyncSoft_int_i_15__0_n_0\
    );
\dSyncSoft_int_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE0CFFAE"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][5]\,
      I1 => \dDataIn_reg_reg_n_0_[1][6]\,
      I2 => word(6),
      I3 => \dDataIn_reg_reg_n_0_[1][4]\,
      I4 => \dDataIn_reg_reg_n_0_[1][3]\,
      O => \dSyncSoft_int_i_16__0_n_0\
    );
\dSyncSoft_int_i_17__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => word(6),
      I1 => \dDataIn_reg_reg_n_0_[1][6]\,
      O => \dSyncSoft_int_i_17__0_n_0\
    );
\dSyncSoft_int_i_18__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[0][0]\,
      I1 => word(6),
      O => \dSyncSoft_int_i_18__0_n_0\
    );
\dSyncSoft_int_i_19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3515100"
    )
        port map (
      I0 => word(0),
      I1 => word(6),
      I2 => \dDataIn_reg_reg_n_0_[0][0]\,
      I3 => word(2),
      I4 => word(1),
      O => \dSyncSoft_int_i_19__0_n_0\
    );
\dSyncSoft_int_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFD"
    )
        port map (
      I0 => \dSyncSoft_int_i_2__0_n_0\,
      I1 => \dSyncSoft_int_i_3__0_n_0\,
      I2 => \dSyncSoft_int_i_4__0_n_0\,
      I3 => \dSyncSoft_int_i_5__0_n_0\,
      I4 => \dSyncSoft_int_i_6__0_n_0\,
      I5 => \dSyncHard_int_i_2__0_n_0\,
      O => soft5_out
    );
\dSyncSoft_int_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => word(0),
      I1 => word(1),
      I2 => word(2),
      O => \dSyncSoft_int_i_20__0_n_0\
    );
\dSyncSoft_int_i_21__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \dDataIn_reg_reg_n_0_[1][1]\,
      I1 => word(1),
      O => \dSyncSoft_int_i_21__0_n_0\
    );
\dSyncSoft_int_i_22__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word(2),
      I1 => word(4),
      I2 => word(3),
      O => \dSyncSoft_int_i_22__0_n_0\
    );
\dSyncSoft_int_i_23__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3515100"
    )
        port map (
      I0 => word(2),
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => word(1),
      I3 => word(3),
      I4 => word(4),
      O => \dSyncSoft_int_i_23__0_n_0\
    );
\dSyncSoft_int_i_24__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => word(5),
      I1 => word(4),
      I2 => word(3),
      O => \dSyncSoft_int_i_24__0_n_0\
    );
\dSyncSoft_int_i_25__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4DFF4DFF4D4D"
    )
        port map (
      I0 => word(4),
      I1 => word(3),
      I2 => word(5),
      I3 => word(6),
      I4 => \dDataIn_reg_reg_n_0_[1][1]\,
      I5 => \dDataIn_reg_reg_n_0_[1][0]\,
      O => \dSyncSoft_int_i_25__0_n_0\
    );
\dSyncSoft_int_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \dSyncSoft_int_i_7__0_n_0\,
      I1 => \dAlignment_int[0]_i_3__0_n_0\,
      I2 => \dAlignment_int[2]_i_5__0_n_0\,
      I3 => \dSyncSoft_int_i_8__0_n_0\,
      O => \dSyncSoft_int_i_2__0_n_0\
    );
\dSyncSoft_int_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020029"
    )
        port map (
      I0 => word(5),
      I1 => \dDataIn_reg_reg_n_0_[1][5]\,
      I2 => \dSyncSoft_int_i_9__0_n_0\,
      I3 => \dSyncSoft_int_i_10__0_n_0\,
      I4 => \dSyncSoft_int_i_11__0_n_0\,
      O => \dSyncSoft_int_i_3__0_n_0\
    );
\dSyncSoft_int_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010301300000010"
    )
        port map (
      I0 => \dSyncSoft_int_i_12__0_n_0\,
      I1 => \dSyncSoft_int_i_13__0_n_0\,
      I2 => \dDataIn_reg_reg_n_0_[1][1]\,
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      I4 => \dDataIn_reg_reg_n_0_[1][3]\,
      I5 => \dSyncSoft_int_i_14__0_n_0\,
      O => \dSyncSoft_int_i_4__0_n_0\
    );
\dSyncSoft_int_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000860800000800"
    )
        port map (
      I0 => \dSyncSoft_int_i_15__0_n_0\,
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      I4 => \dSyncSoft_int_i_16__0_n_0\,
      I5 => \dSyncSoft_int_i_17__0_n_0\,
      O => \dSyncSoft_int_i_5__0_n_0\
    );
\dSyncSoft_int_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800840800000800"
    )
        port map (
      I0 => \dSyncSoft_int_i_18__0_n_0\,
      I1 => \dSyncSoft_int_i_19__0_n_0\,
      I2 => word(5),
      I3 => word(3),
      I4 => word(4),
      I5 => \dSyncSoft_int_i_20__0_n_0\,
      O => \dSyncSoft_int_i_6__0_n_0\
    );
\dSyncSoft_int_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010106100000000"
    )
        port map (
      I0 => \dSyncSoft_int_i_21__0_n_0\,
      I1 => \dDataIn_reg_reg_n_0_[1][0]\,
      I2 => word(5),
      I3 => word(6),
      I4 => \dSyncSoft_int_i_22__0_n_0\,
      I5 => \dSyncSoft_int_i_23__0_n_0\,
      O => \dSyncSoft_int_i_7__0_n_0\
    );
\dSyncSoft_int_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008068"
    )
        port map (
      I0 => \dSyncSoft_int_i_24__0_n_0\,
      I1 => \dSyncSoft_int_i_9__0_n_0\,
      I2 => word(2),
      I3 => \dDataIn_reg_reg_n_0_[1][2]\,
      I4 => \dSyncSoft_int_i_25__0_n_0\,
      O => \dSyncSoft_int_i_8__0_n_0\
    );
\dSyncSoft_int_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => word(6),
      I1 => \dDataIn_reg_reg_n_0_[1][1]\,
      I2 => \dDataIn_reg_reg_n_0_[1][0]\,
      O => \dSyncSoft_int_i_9__0_n_0\
    );
dSyncSoft_int_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => dSyncHard_int,
      D => soft5_out,
      Q => \^dsyncsoft_int_reg_0\,
      R => dLogicRst
    );
dValid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dValid_reg__0\(0),
      Q => rbD0RxValidHS,
      R => dDataOut80
    );
\dValid_reg[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEEEEEEEEEEEEEE"
    )
        port map (
      I0 => \^dsynchard_int_reg_0\,
      I1 => \^dsyncsoft_int_reg_0\,
      I2 => \dLP[1]_1\(1),
      I3 => \dLP[0]_0\(0),
      I4 => \dLP[1]_1\(0),
      I5 => \dLP[0]_0\(1),
      O => p_1_out(1)
    );
\dValid_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(1),
      Q => \dValid_reg__0\(1),
      R => dLogicRst
    );
\dValid_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \dValid_reg__0\(1),
      Q => \dValid_reg__0\(0),
      R => dLogicRst
    );
nextMust_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => word(1),
      I1 => word(2),
      I2 => word(0),
      I3 => \dDataIn_reg_reg_n_0_[0][0]\,
      I4 => \dSyncHard_int_i_3__0_n_0\,
      I5 => nextMust_reg_n_0,
      O => nextMust_i_1_n_0
    );
nextMust_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => nextMust_i_1_n_0,
      Q => nextMust_reg_n_0,
      R => dLogicRst
    );
rbD0ErrSotHS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dsyncerr_int_reg_0\,
      I1 => dSyncErr_reg,
      O => rbD0ErrSotHS
    );
rbD0ErrSotSyncHS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dsyncsoft_int_reg_0\,
      I1 => dSyncSoft_reg,
      O => rbD0ErrSotSyncHS
    );
rbD0RxActiveHS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^dsyncsoft_int_reg_0\,
      I1 => \^dsynchard_int_reg_0\,
      O => rbD0RxActiveHS
    );
rbD0RxSyncHS_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => dSyncSoft_reg,
      I1 => \^dsyncsoft_int_reg_0\,
      I2 => dSyncHard_reg,
      I3 => \^dsynchard_int_reg_0\,
      O => rbD0RxSyncHS
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSFEN is
  port (
    rbD1RxValidHS : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    aD1Stopstate : out STD_LOGIC;
    rbD1RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD1RxActiveHS : out STD_LOGIC;
    rbD1RxSyncHS : out STD_LOGIC;
    rbD1ErrSotSyncHS : out STD_LOGIC;
    rbD1ErrSotHS : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    HS_Data_1 : in STD_LOGIC;
    RxDDRClkHS : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \cLP_in[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aD1ForceRxmode : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSFEN;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSFEN is
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal HSDeserializerX_n_0 : STD_LOGIC;
  signal HSDeserializerX_n_1 : STD_LOGIC;
  signal HSDeserializerX_n_3 : STD_LOGIC;
  signal RxClkActiveHSResetBridge_n_0 : STD_LOGIC;
  signal SyncAsyncEnable_n_1 : STD_LOGIC;
  signal SyncAsyncEnable_n_2 : STD_LOGIC;
  signal SyncAsyncForceRxMode_n_0 : STD_LOGIC;
  signal SyncAsyncForceRxMode_n_1 : STD_LOGIC;
  signal SyncAsyncValid_n_0 : STD_LOGIC;
  signal SyncAsyncValid_n_1 : STD_LOGIC;
  signal \cDelayCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cDelayCnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \cDelayCnt[0]_i_4_n_0\ : STD_LOGIC;
  signal cDelayCnt_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \cDelayCnt_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal cEnable : STD_LOGIC;
  signal cHSReset : STD_LOGIC;
  signal cHSSettled : STD_LOGIC;
  signal cHSSettled_i_2_n_0 : STD_LOGIC;
  signal cHSSettled_i_3_n_0 : STD_LOGIC;
  signal dSyncErr_reg : STD_LOGIC;
  signal dSyncHard_reg : STD_LOGIC;
  signal dSyncSoft_reg : STD_LOGIC;
  signal \^rbd1rxvalidhs\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \NLW_cDelayCnt_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cDelayCnt_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair63";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "stinitcountdown:101,stwaitforstop:100,sths_rqst:011,sths_settle:010,sths_rcv:000,ststop:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "stinitcountdown:101,stwaitforstop:100,sths_rqst:011,sths_settle:010,sths_rcv:000,ststop:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "stinitcountdown:101,stwaitforstop:100,sths_rqst:011,sths_settle:010,sths_rcv:000,ststop:001";
  attribute SOFT_HLUTNM of aD1Stopstate_INST_0 : label is "soft_lutpair63";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cDelayCnt_reg[0]_i_2__0\ : label is 11;
  attribute ADDER_THRESHOLD of \cDelayCnt_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \cDelayCnt_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \cDelayCnt_reg[8]_i_1__0\ : label is 11;
begin
  \FSM_sequential_state_reg[0]_0\(0) <= \^fsm_sequential_state_reg[0]_0\(0);
  rbD1RxValidHS <= \^rbd1rxvalidhs\;
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8FFFF"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[0]_0\(0),
      I1 => \cLP_in[1]\(0),
      I2 => \cLP_in[1]\(1),
      I3 => state(2),
      I4 => state(1),
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33020202FF0FFFFF"
    )
        port map (
      I0 => cHSSettled_i_2_n_0,
      I1 => state(2),
      I2 => \^fsm_sequential_state_reg[0]_0\(0),
      I3 => \cLP_in[1]\(1),
      I4 => \cLP_in[1]\(0),
      I5 => state(1),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => cDelayCnt_reg(4),
      I1 => cDelayCnt_reg(14),
      I2 => cDelayCnt_reg(5),
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cDelayCnt_reg(12),
      I1 => cDelayCnt_reg(13),
      I2 => cDelayCnt_reg(3),
      I3 => cDelayCnt_reg(9),
      I4 => cDelayCnt_reg(11),
      I5 => cDelayCnt_reg(10),
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cDelayCnt_reg(1),
      I1 => cDelayCnt_reg(0),
      I2 => cDelayCnt_reg(2),
      I3 => cDelayCnt_reg(6),
      I4 => cDelayCnt_reg(8),
      I5 => cDelayCnt_reg(7),
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => SyncAsyncForceRxMode_n_1,
      Q => \^fsm_sequential_state_reg[0]_0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => SyncAsyncForceRxMode_n_0,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => SyncAsyncEnable_n_2,
      Q => state(2),
      R => '0'
    );
HSDeserializerX: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Deserializer
     port map (
      AS(0) => cHSReset,
      CLK => CLK,
      CLKB => CLKB,
      HS_Data_1 => HS_Data_1,
      RefClk => RefClk,
      RxDDRClkHS => RxDDRClkHS,
      cHSSettled => cHSSettled,
      dSyncErr_int_reg_0 => HSDeserializerX_n_3,
      dSyncErr_reg => dSyncErr_reg,
      dSyncHard_int_reg_0 => HSDeserializerX_n_0,
      dSyncHard_reg => dSyncHard_reg,
      dSyncSoft_int_reg_0 => HSDeserializerX_n_1,
      dSyncSoft_reg => dSyncSoft_reg,
      \out\(7 downto 0) => \out\(7 downto 0),
      rbD1ErrSotHS => rbD1ErrSotHS,
      rbD1ErrSotSyncHS => rbD1ErrSotSyncHS,
      rbD1RxActiveHS => rbD1RxActiveHS,
      rbD1RxDataHS(7 downto 0) => rbD1RxDataHS(7 downto 0),
      rbD1RxSyncHS => rbD1RxSyncHS,
      rbD1RxValidHS => \^rbd1rxvalidhs\
    );
RxClkActiveHSResetBridge: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_1
     port map (
      AR(0) => RxClkActiveHSResetBridge_n_0,
      AS(0) => AS(0),
      RefClk => RefClk
    );
SyncAsyncEnable: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_2\
     port map (
      AR(0) => SyncAsyncEnable_n_1,
      D(0) => D(0),
      \FSM_sequential_state_reg[2]\ => SyncAsyncEnable_n_2,
      \FSM_sequential_state_reg[2]_0\ => \^fsm_sequential_state_reg[0]_0\(0),
      RefClk => RefClk,
      \cLP_in[1]\(1 downto 0) => \cLP_in[1]\(1 downto 0),
      \out\(0) => cEnable,
      state(0) => state(2)
    );
SyncAsyncForceRxMode: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_3\
     port map (
      AR(0) => SyncAsyncEnable_n_1,
      \FSM_sequential_state_reg[0]\ => \^fsm_sequential_state_reg[0]_0\(0),
      \FSM_sequential_state_reg[0]_0\ => \FSM_sequential_state[1]_i_5_n_0\,
      \FSM_sequential_state_reg[0]_1\ => \FSM_sequential_state[1]_i_6_n_0\,
      \FSM_sequential_state_reg[0]_2\ => \FSM_sequential_state[1]_i_7_n_0\,
      \FSM_sequential_state_reg[0]_3\ => \FSM_sequential_state_reg[0]_1\,
      \FSM_sequential_state_reg[0]_4\ => \FSM_sequential_state[0]_i_3_n_0\,
      \FSM_sequential_state_reg[1]\ => SyncAsyncForceRxMode_n_0,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state[1]_i_2_n_0\,
      \FSM_sequential_state_reg[1]_1\ => \FSM_sequential_state_reg[1]_0\,
      \FSM_sequential_state_reg[2]\ => SyncAsyncForceRxMode_n_1,
      RefClk => RefClk,
      aD1ForceRxmode => aD1ForceRxmode,
      \out\(0) => cEnable,
      state(1 downto 0) => state(2 downto 1)
    );
SyncAsyncValid: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_4\
     port map (
      AR(0) => RxClkActiveHSResetBridge_n_0,
      AS(0) => cHSReset,
      \FSM_sequential_state_reg[2]\ => SyncAsyncValid_n_1,
      RefClk => RefClk,
      cHSReset_reg => \cDelayCnt[0]_i_3_n_0\,
      cHSSettled => cHSSettled,
      cHSSettled_reg => \^fsm_sequential_state_reg[0]_0\(0),
      cHSSettled_reg_0 => cHSSettled_i_2_n_0,
      \oSyncStages_reg[1]_0\ => SyncAsyncValid_n_0,
      rbD1RxValidHS => \^rbd1rxvalidhs\,
      state(1 downto 0) => state(2 downto 1)
    );
aD1Stopstate_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(2),
      I1 => \^fsm_sequential_state_reg[0]_0\(0),
      I2 => state(1),
      O => aD1Stopstate
    );
\cDelayCnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \^fsm_sequential_state_reg[0]_0\(0),
      I3 => \cDelayCnt[0]_i_3_n_0\,
      O => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000020222"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => \^fsm_sequential_state_reg[0]_0\(0),
      I3 => \cLP_in[1]\(0),
      I4 => \cLP_in[1]\(1),
      I5 => cHSSettled_i_2_n_0,
      O => \cDelayCnt[0]_i_3_n_0\
    );
\cDelayCnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cDelayCnt_reg(0),
      O => \cDelayCnt[0]_i_4_n_0\
    );
\cDelayCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2__0_n_7\,
      Q => cDelayCnt_reg(0),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cDelayCnt_reg[0]_i_2__0_n_0\,
      CO(2) => \cDelayCnt_reg[0]_i_2__0_n_1\,
      CO(1) => \cDelayCnt_reg[0]_i_2__0_n_2\,
      CO(0) => \cDelayCnt_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cDelayCnt_reg[0]_i_2__0_n_4\,
      O(2) => \cDelayCnt_reg[0]_i_2__0_n_5\,
      O(1) => \cDelayCnt_reg[0]_i_2__0_n_6\,
      O(0) => \cDelayCnt_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => cDelayCnt_reg(3 downto 1),
      S(0) => \cDelayCnt[0]_i_4_n_0\
    );
\cDelayCnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__0_n_5\,
      Q => cDelayCnt_reg(10),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__0_n_4\,
      Q => cDelayCnt_reg(11),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1__0_n_7\,
      Q => cDelayCnt_reg(12),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[8]_i_1__0_n_0\,
      CO(3 downto 2) => \NLW_cDelayCnt_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cDelayCnt_reg[12]_i_1__0_n_2\,
      CO(0) => \cDelayCnt_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cDelayCnt_reg[12]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \cDelayCnt_reg[12]_i_1__0_n_5\,
      O(1) => \cDelayCnt_reg[12]_i_1__0_n_6\,
      O(0) => \cDelayCnt_reg[12]_i_1__0_n_7\,
      S(3) => '0',
      S(2 downto 0) => cDelayCnt_reg(14 downto 12)
    );
\cDelayCnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1__0_n_6\,
      Q => cDelayCnt_reg(13),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1__0_n_5\,
      Q => cDelayCnt_reg(14),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2__0_n_6\,
      Q => cDelayCnt_reg(1),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2__0_n_5\,
      Q => cDelayCnt_reg(2),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2__0_n_4\,
      Q => cDelayCnt_reg(3),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__0_n_7\,
      Q => cDelayCnt_reg(4),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[0]_i_2__0_n_0\,
      CO(3) => \cDelayCnt_reg[4]_i_1__0_n_0\,
      CO(2) => \cDelayCnt_reg[4]_i_1__0_n_1\,
      CO(1) => \cDelayCnt_reg[4]_i_1__0_n_2\,
      CO(0) => \cDelayCnt_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cDelayCnt_reg[4]_i_1__0_n_4\,
      O(2) => \cDelayCnt_reg[4]_i_1__0_n_5\,
      O(1) => \cDelayCnt_reg[4]_i_1__0_n_6\,
      O(0) => \cDelayCnt_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => cDelayCnt_reg(7 downto 4)
    );
\cDelayCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__0_n_6\,
      Q => cDelayCnt_reg(5),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__0_n_5\,
      Q => cDelayCnt_reg(6),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__0_n_4\,
      Q => cDelayCnt_reg(7),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__0_n_7\,
      Q => cDelayCnt_reg(8),
      R => \cDelayCnt[0]_i_1_n_0\
    );
\cDelayCnt_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[4]_i_1__0_n_0\,
      CO(3) => \cDelayCnt_reg[8]_i_1__0_n_0\,
      CO(2) => \cDelayCnt_reg[8]_i_1__0_n_1\,
      CO(1) => \cDelayCnt_reg[8]_i_1__0_n_2\,
      CO(0) => \cDelayCnt_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cDelayCnt_reg[8]_i_1__0_n_4\,
      O(2) => \cDelayCnt_reg[8]_i_1__0_n_5\,
      O(1) => \cDelayCnt_reg[8]_i_1__0_n_6\,
      O(0) => \cDelayCnt_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => cDelayCnt_reg(11 downto 8)
    );
\cDelayCnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__0_n_6\,
      Q => cDelayCnt_reg(9),
      R => \cDelayCnt[0]_i_1_n_0\
    );
cHSReset_reg: unisim.vcomponents.FDPE
     port map (
      C => RefClk,
      CE => '1',
      D => SyncAsyncValid_n_0,
      PRE => RxClkActiveHSResetBridge_n_0,
      Q => cHSReset
    );
cHSSettled_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_7_n_0\,
      I1 => cHSSettled_i_3_n_0,
      I2 => cDelayCnt_reg(3),
      I3 => cDelayCnt_reg(11),
      I4 => cDelayCnt_reg(5),
      O => cHSSettled_i_2_n_0
    );
cHSSettled_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => cDelayCnt_reg(12),
      I1 => cDelayCnt_reg(13),
      I2 => cDelayCnt_reg(10),
      I3 => cDelayCnt_reg(4),
      I4 => cDelayCnt_reg(9),
      I5 => cDelayCnt_reg(14),
      O => cHSSettled_i_3_n_0
    );
cHSSettled_reg: unisim.vcomponents.FDCE
     port map (
      C => RefClk,
      CE => '1',
      CLR => RxClkActiveHSResetBridge_n_0,
      D => SyncAsyncValid_n_1,
      Q => cHSSettled
    );
dSyncErr_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => HSDeserializerX_n_3,
      Q => dSyncErr_reg,
      R => '0'
    );
dSyncHard_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => HSDeserializerX_n_0,
      Q => dSyncHard_reg,
      R => '0'
    );
dSyncSoft_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => HSDeserializerX_n_1,
      Q => dSyncSoft_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSFEN__parameterized0\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD0RxValidHS : out STD_LOGIC;
    \cLP_in[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    \Filter.sOut_reg\ : out STD_LOGIC;
    aD0Stopstate : out STD_LOGIC;
    rbD0RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD0RxActiveHS : out STD_LOGIC;
    rbD0RxSyncHS : out STD_LOGIC;
    rbD0ErrSotSyncHS : out STD_LOGIC;
    rbD0ErrSotHS : out STD_LOGIC;
    RefClk : in STD_LOGIC;
    aHS : in STD_LOGIC;
    RxDDRClkHS : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    CLK : in STD_LOGIC;
    aLP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    state : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aD0ForceRxmode : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSFEN__parameterized0\ : entity is "DPHY_LaneSFEN";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSFEN__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSFEN__parameterized0\ is
  signal \FSM_sequential_state[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7__0_n_0\ : STD_LOGIC;
  signal HSDeserializerX_n_10 : STD_LOGIC;
  signal HSDeserializerX_n_11 : STD_LOGIC;
  signal HSDeserializerX_n_13 : STD_LOGIC;
  signal RxClkActiveHSResetBridge_n_0 : STD_LOGIC;
  signal SyncAsyncEnable_n_1 : STD_LOGIC;
  signal SyncAsyncForceRxMode_n_0 : STD_LOGIC;
  signal SyncAsyncValid_n_0 : STD_LOGIC;
  signal SyncAsyncValid_n_1 : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_3\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_3\ : STD_LOGIC;
  signal \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_4\ : STD_LOGIC;
  signal aLP_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cDelayCnt[0]_i_4__0_n_0\ : STD_LOGIC;
  signal cDelayCnt_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \cDelayCnt_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__1_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__1_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[0]_i_2__1_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \cDelayCnt_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal cEnable : STD_LOGIC;
  signal cHSReset_reg_n_0 : STD_LOGIC;
  signal \cHSSettled_i_2__0_n_0\ : STD_LOGIC;
  signal \cHSSettled_i_3__0_n_0\ : STD_LOGIC;
  signal cHSSettled_reg_n_0 : STD_LOGIC;
  signal cLPGlitch_0 : STD_LOGIC;
  signal cLPGlitch_1 : STD_LOGIC;
  signal \^clp_in[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dSyncErr_reg : STD_LOGIC;
  signal dSyncHard_reg : STD_LOGIC;
  signal dSyncSoft_reg : STD_LOGIC;
  signal \^rbd0rxvalidhs\ : STD_LOGIC;
  signal state_2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cDelayCnt_reg[12]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cDelayCnt_reg[12]_i_1__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "stinitcountdown:101,stwaitforstop:100,sths_rqst:011,sths_settle:010,sths_rcv:000,ststop:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "stinitcountdown:101,stwaitforstop:100,sths_rqst:011,sths_settle:010,sths_rcv:000,ststop:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "stinitcountdown:101,stwaitforstop:100,sths_rqst:011,sths_settle:010,sths_rcv:000,ststop:001";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cDelayCnt_reg[0]_i_2__1\ : label is 11;
  attribute ADDER_THRESHOLD of \cDelayCnt_reg[12]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \cDelayCnt_reg[4]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \cDelayCnt_reg[8]_i_1__1\ : label is 11;
begin
  \cLP_in[1]\(1 downto 0) <= \^clp_in[1]\(1 downto 0);
  rbD0RxValidHS <= \^rbd0rxvalidhs\;
\FSM_sequential_state[1]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cDelayCnt_reg(11),
      I1 => cDelayCnt_reg(14),
      I2 => cDelayCnt_reg(9),
      O => \FSM_sequential_state[1]_i_5__0_n_0\
    );
\FSM_sequential_state[1]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => cDelayCnt_reg(12),
      I1 => cDelayCnt_reg(13),
      I2 => cDelayCnt_reg(5),
      I3 => cDelayCnt_reg(10),
      I4 => cDelayCnt_reg(4),
      I5 => cDelayCnt_reg(3),
      O => \FSM_sequential_state[1]_i_6__0_n_0\
    );
\FSM_sequential_state[1]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cDelayCnt_reg(1),
      I1 => cDelayCnt_reg(0),
      I2 => cDelayCnt_reg(2),
      I3 => cDelayCnt_reg(6),
      I4 => cDelayCnt_reg(8),
      I5 => cDelayCnt_reg(7),
      O => \FSM_sequential_state[1]_i_7__0_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_4\,
      Q => state_2(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2\,
      Q => state_2(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_3\,
      Q => state_2(2),
      R => '0'
    );
HSDeserializerX: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_HS_Deserializer__parameterized0\
     port map (
      AS(0) => cHSReset_reg_n_0,
      CLK => CLK,
      CLKB => CLKB,
      RefClk => RefClk,
      RxDDRClkHS => RxDDRClkHS,
      aHS => aHS,
      aLP(1 downto 0) => aLP(1 downto 0),
      aLP_int(1 downto 0) => aLP_int(1 downto 0),
      dSyncErr_int_reg_0 => HSDeserializerX_n_13,
      dSyncErr_reg => dSyncErr_reg,
      dSyncHard_int_reg_0 => HSDeserializerX_n_10,
      dSyncHard_reg => dSyncHard_reg,
      dSyncSoft_int_reg_0 => HSDeserializerX_n_11,
      dSyncSoft_reg => dSyncSoft_reg,
      \oSyncStages_reg[0]\ => cHSSettled_reg_n_0,
      \out\(7 downto 0) => \out\(7 downto 0),
      rbD0ErrSotHS => rbD0ErrSotHS,
      rbD0ErrSotSyncHS => rbD0ErrSotSyncHS,
      rbD0RxActiveHS => rbD0RxActiveHS,
      rbD0RxDataHS(7 downto 0) => rbD0RxDataHS(7 downto 0),
      rbD0RxSyncHS => rbD0RxSyncHS,
      rbD0RxValidHS => \^rbd0rxvalidhs\
    );
RxClkActiveHSResetBridge: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_8
     port map (
      AR(0) => RxClkActiveHSResetBridge_n_0,
      AS(0) => AS(0),
      RefClk => RefClk
    );
SyncAsyncEnable: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_9\
     port map (
      AR(0) => SyncAsyncEnable_n_1,
      D(0) => D(0),
      RefClk => RefClk,
      \out\(0) => cEnable
    );
SyncAsyncForceRxMode: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_10\
     port map (
      AR(0) => SyncAsyncEnable_n_1,
      \FSM_sequential_state_reg[1]\ => \FSM_sequential_state[1]_i_5__0_n_0\,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state[1]_i_6__0_n_0\,
      \FSM_sequential_state_reg[1]_1\ => \FSM_sequential_state[1]_i_7__0_n_0\,
      RefClk => RefClk,
      aD0ForceRxmode => aD0ForceRxmode,
      \oSyncStages_reg[1]_0\ => SyncAsyncForceRxMode_n_0,
      state_2(0) => state_2(0)
    );
SyncAsyncValid: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_11\
     port map (
      AR(0) => RxClkActiveHSResetBridge_n_0,
      AS(0) => cHSReset_reg_n_0,
      \FSM_sequential_state_reg[2]\ => SyncAsyncValid_n_1,
      RefClk => RefClk,
      cHSReset_reg => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\,
      cHSSettled_reg => \cHSSettled_i_2__0_n_0\,
      cHSSettled_reg_0 => cHSSettled_reg_n_0,
      \oSyncStages_reg[1]_0\ => SyncAsyncValid_n_0,
      rbD0RxValidHS => \^rbd0rxvalidhs\,
      state_2(2 downto 0) => state_2(2 downto 0)
    );
\UseOwnLP.GenSyncLP[0].GlitchFilterLPC\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter
     port map (
      \FSM_sequential_state_reg[0]\ => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_3\,
      \FSM_sequential_state_reg[0]_0\ => \FSM_sequential_state_reg[0]_0\,
      \FSM_sequential_state_reg[1]\ => \^clp_in[1]\(1),
      \FSM_sequential_state_reg[2]\ => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\,
      \FSM_sequential_state_reg[2]_0\ => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_2\,
      \Filter.sOut_reg_0\ => \^clp_in[1]\(0),
      RefClk => RefClk,
      \cDelayCnt_reg[0]\ => \cHSSettled_i_2__0_n_0\,
      \out\(0) => cLPGlitch_0,
      state(0) => state(0),
      state_2(2 downto 0) => state_2(2 downto 0)
    );
\UseOwnLP.GenSyncLP[0].SyncAsyncx\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_12\
     port map (
      D(0) => aLP_int(0),
      RefClk => RefClk,
      \out\(0) => cLPGlitch_0
    );
\UseOwnLP.GenSyncLP[1].GlitchFilterLPC\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GlitchFilter_13
     port map (
      \FSM_sequential_state_reg[1]\ => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_2\,
      \FSM_sequential_state_reg[1]_0\ => \cHSSettled_i_2__0_n_0\,
      \FSM_sequential_state_reg[1]_1\ => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_3\,
      \FSM_sequential_state_reg[1]_2\ => SyncAsyncForceRxMode_n_0,
      \FSM_sequential_state_reg[1]_3\(0) => cEnable,
      \FSM_sequential_state_reg[2]\ => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_3\,
      \FSM_sequential_state_reg[2]_0\ => \UseOwnLP.GenSyncLP[1].GlitchFilterLPC_n_4\,
      \FSM_sequential_state_reg[2]_1\ => \^clp_in[1]\(0),
      \Filter.sOut_reg_0\ => \^clp_in[1]\(1),
      \Filter.sOut_reg_1\ => \Filter.sOut_reg\,
      RefClk => RefClk,
      \out\(0) => cLPGlitch_1,
      state_2(2 downto 0) => state_2(2 downto 0)
    );
\UseOwnLP.GenSyncLP[1].SyncAsyncx\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0_14\
     port map (
      D(0) => aLP_int(1),
      RefClk => RefClk,
      \out\(0) => cLPGlitch_1
    );
aD0Stopstate_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_2(2),
      I1 => state_2(0),
      I2 => state_2(1),
      O => aD0Stopstate
    );
\cDelayCnt[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cDelayCnt_reg(0),
      O => \cDelayCnt[0]_i_4__0_n_0\
    );
\cDelayCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2__1_n_7\,
      Q => cDelayCnt_reg(0),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[0]_i_2__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cDelayCnt_reg[0]_i_2__1_n_0\,
      CO(2) => \cDelayCnt_reg[0]_i_2__1_n_1\,
      CO(1) => \cDelayCnt_reg[0]_i_2__1_n_2\,
      CO(0) => \cDelayCnt_reg[0]_i_2__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cDelayCnt_reg[0]_i_2__1_n_4\,
      O(2) => \cDelayCnt_reg[0]_i_2__1_n_5\,
      O(1) => \cDelayCnt_reg[0]_i_2__1_n_6\,
      O(0) => \cDelayCnt_reg[0]_i_2__1_n_7\,
      S(3 downto 1) => cDelayCnt_reg(3 downto 1),
      S(0) => \cDelayCnt[0]_i_4__0_n_0\
    );
\cDelayCnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__1_n_5\,
      Q => cDelayCnt_reg(10),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__1_n_4\,
      Q => cDelayCnt_reg(11),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1__1_n_7\,
      Q => cDelayCnt_reg(12),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[8]_i_1__1_n_0\,
      CO(3 downto 2) => \NLW_cDelayCnt_reg[12]_i_1__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cDelayCnt_reg[12]_i_1__1_n_2\,
      CO(0) => \cDelayCnt_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cDelayCnt_reg[12]_i_1__1_O_UNCONNECTED\(3),
      O(2) => \cDelayCnt_reg[12]_i_1__1_n_5\,
      O(1) => \cDelayCnt_reg[12]_i_1__1_n_6\,
      O(0) => \cDelayCnt_reg[12]_i_1__1_n_7\,
      S(3) => '0',
      S(2 downto 0) => cDelayCnt_reg(14 downto 12)
    );
\cDelayCnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1__1_n_6\,
      Q => cDelayCnt_reg(13),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[12]_i_1__1_n_5\,
      Q => cDelayCnt_reg(14),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2__1_n_6\,
      Q => cDelayCnt_reg(1),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2__1_n_5\,
      Q => cDelayCnt_reg(2),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[0]_i_2__1_n_4\,
      Q => cDelayCnt_reg(3),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__1_n_7\,
      Q => cDelayCnt_reg(4),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[0]_i_2__1_n_0\,
      CO(3) => \cDelayCnt_reg[4]_i_1__1_n_0\,
      CO(2) => \cDelayCnt_reg[4]_i_1__1_n_1\,
      CO(1) => \cDelayCnt_reg[4]_i_1__1_n_2\,
      CO(0) => \cDelayCnt_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cDelayCnt_reg[4]_i_1__1_n_4\,
      O(2) => \cDelayCnt_reg[4]_i_1__1_n_5\,
      O(1) => \cDelayCnt_reg[4]_i_1__1_n_6\,
      O(0) => \cDelayCnt_reg[4]_i_1__1_n_7\,
      S(3 downto 0) => cDelayCnt_reg(7 downto 4)
    );
\cDelayCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__1_n_6\,
      Q => cDelayCnt_reg(5),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__1_n_5\,
      Q => cDelayCnt_reg(6),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[4]_i_1__1_n_4\,
      Q => cDelayCnt_reg(7),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__1_n_7\,
      Q => cDelayCnt_reg(8),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
\cDelayCnt_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cDelayCnt_reg[4]_i_1__1_n_0\,
      CO(3) => \cDelayCnt_reg[8]_i_1__1_n_0\,
      CO(2) => \cDelayCnt_reg[8]_i_1__1_n_1\,
      CO(1) => \cDelayCnt_reg[8]_i_1__1_n_2\,
      CO(0) => \cDelayCnt_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cDelayCnt_reg[8]_i_1__1_n_4\,
      O(2) => \cDelayCnt_reg[8]_i_1__1_n_5\,
      O(1) => \cDelayCnt_reg[8]_i_1__1_n_6\,
      O(0) => \cDelayCnt_reg[8]_i_1__1_n_7\,
      S(3 downto 0) => cDelayCnt_reg(11 downto 8)
    );
\cDelayCnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \cDelayCnt_reg[8]_i_1__1_n_6\,
      Q => cDelayCnt_reg(9),
      R => \UseOwnLP.GenSyncLP[0].GlitchFilterLPC_n_1\
    );
cHSReset_reg: unisim.vcomponents.FDPE
     port map (
      C => RefClk,
      CE => '1',
      D => SyncAsyncValid_n_0,
      PRE => RxClkActiveHSResetBridge_n_0,
      Q => cHSReset_reg_n_0
    );
\cHSSettled_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_7__0_n_0\,
      I1 => \cHSSettled_i_3__0_n_0\,
      I2 => cDelayCnt_reg(3),
      I3 => cDelayCnt_reg(11),
      I4 => cDelayCnt_reg(5),
      O => \cHSSettled_i_2__0_n_0\
    );
\cHSSettled_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => cDelayCnt_reg(12),
      I1 => cDelayCnt_reg(13),
      I2 => cDelayCnt_reg(10),
      I3 => cDelayCnt_reg(4),
      I4 => cDelayCnt_reg(9),
      I5 => cDelayCnt_reg(14),
      O => \cHSSettled_i_3__0_n_0\
    );
cHSSettled_reg: unisim.vcomponents.FDCE
     port map (
      C => RefClk,
      CE => '1',
      CLR => RxClkActiveHSResetBridge_n_0,
      D => SyncAsyncValid_n_1,
      Q => cHSSettled_reg_n_0
    );
dSyncErr_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => HSDeserializerX_n_13,
      Q => dSyncErr_reg,
      R => '0'
    );
dSyncHard_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => HSDeserializerX_n_10,
      Q => dSyncHard_reg,
      R => '0'
    );
dSyncSoft_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => HSDeserializerX_n_11,
      Q => dSyncSoft_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver is
  port (
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_p : in STD_LOGIC;
    dphy_data_lp_n : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    aRst : in STD_LOGIC;
    rDlyCtrlLockedIn : in STD_LOGIC;
    rDlyCtrlLockedOut : out STD_LOGIC;
    RxDDRClkHS : out STD_LOGIC;
    aRxClkActiveHS : out STD_LOGIC;
    aClkStopstate : out STD_LOGIC;
    aClkEnable : in STD_LOGIC;
    aClkUlpsActiveNot : out STD_LOGIC;
    aRxUlpsClkNot : out STD_LOGIC;
    aClkForceRxmode : in STD_LOGIC;
    aClkErrControl : out STD_LOGIC;
    RxByteClkHS : out STD_LOGIC;
    aD0Stopstate : out STD_LOGIC;
    aD0Enable : in STD_LOGIC;
    aD0UlpsActiveNot : out STD_LOGIC;
    rbD0RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD0RxValidHS : out STD_LOGIC;
    rbD0RxActiveHS : out STD_LOGIC;
    rbD0RxSyncHS : out STD_LOGIC;
    rbD0ErrSotHS : out STD_LOGIC;
    rbD0ErrSotSyncHS : out STD_LOGIC;
    aD0ForceRxmode : in STD_LOGIC;
    D0RxClkEsc : out STD_LOGIC;
    aD0RxDataEsc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aD0RxValidEsc : out STD_LOGIC;
    aD0RxLpdtEsc : out STD_LOGIC;
    aD0RxUlpsEsc : out STD_LOGIC;
    aD0RxTriggerEsc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aD0ErrEsc : out STD_LOGIC;
    aD0ErrControl : out STD_LOGIC;
    aD1Stopstate : out STD_LOGIC;
    aD1Enable : in STD_LOGIC;
    aD1UlpsActiveNot : out STD_LOGIC;
    rbD1RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD1RxValidHS : out STD_LOGIC;
    rbD1RxActiveHS : out STD_LOGIC;
    rbD1RxSyncHS : out STD_LOGIC;
    rbD1ErrSotHS : out STD_LOGIC;
    rbD1ErrSotSyncHS : out STD_LOGIC;
    aD1ForceRxmode : in STD_LOGIC;
    D1RxClkEsc : out STD_LOGIC;
    aD1RxDataEsc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aD1RxValidEsc : out STD_LOGIC;
    aD1RxLpdtEsc : out STD_LOGIC;
    aD1RxUlpsEsc : out STD_LOGIC;
    aD1RxTriggerEsc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aD1ErrEsc : out STD_LOGIC;
    aD1ErrControl : out STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC
  );
  attribute C_S_AXI_LITE_ADDR_WIDTH : integer;
  attribute C_S_AXI_LITE_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is 4;
  attribute C_S_AXI_LITE_DATA_WIDTH : integer;
  attribute C_S_AXI_LITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is 32;
  attribute C_S_AXI_LITE_FREQ_HZ : integer;
  attribute C_S_AXI_LITE_FREQ_HZ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is 100000000;
  attribute kAddDelayClk_ps : integer;
  attribute kAddDelayClk_ps of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is 0;
  attribute kAddDelayData0_ps : integer;
  attribute kAddDelayData0_ps of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is 0;
  attribute kAddDelayData1_ps : integer;
  attribute kAddDelayData1_ps of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is 0;
  attribute kDebug : string;
  attribute kDebug of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is "TRUE";
  attribute kGenerateAXIL : string;
  attribute kGenerateAXIL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is "TRUE";
  attribute kGenerateMMCM : string;
  attribute kGenerateMMCM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is "FALSE";
  attribute kLPFromLane0 : string;
  attribute kLPFromLane0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is "TRUE";
  attribute kNoOfDataLanes : integer;
  attribute kNoOfDataLanes of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is 2;
  attribute kRefClkFreqHz : integer;
  attribute kRefClkFreqHz of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is 200000000;
  attribute kSharedLogic : string;
  attribute kSharedLogic of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is "TRUE";
  attribute kVersionMajor : integer;
  attribute kVersionMajor of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is 1;
  attribute kVersionMinor : integer;
  attribute kVersionMinor of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver : entity is 3;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver is
  signal \<const0>\ : STD_LOGIC;
  signal \DataLaneGen[0].DPHY_LaneSFEN_X_n_11\ : STD_LOGIC;
  signal \DataLaneGen[0].DPHY_LaneSFEN_X_n_12\ : STD_LOGIC;
  signal \GenIDELAYCTRL.rDlyRstCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \GenIDELAYCTRL.rDlyRstCnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \GenIDELAYCTRL.rDlyRstCnt_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal HS_Clock : STD_LOGIC;
  signal HS_Data_0 : STD_LOGIC;
  signal HS_Data_1 : STD_LOGIC;
  signal LP_Clock : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal RST : STD_LOGIC;
  signal \^rxbyteclkhs\ : STD_LOGIC;
  signal \^rxddrclkhs\ : STD_LOGIC;
  signal \YesAXILITE.CoreSoftReset_n_1\ : STD_LOGIC;
  signal \aLPBuf[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aLaneSCNNEnable : STD_LOGIC;
  signal aLaneSFENEnable_0 : STD_LOGIC;
  signal aLaneSFENEnable_1 : STD_LOGIC;
  signal aNotRxClkActiveHS : STD_LOGIC;
  signal \cLP_in[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \dLP0_in[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rdlyctrllockedout\ : STD_LOGIC;
  signal rDlyRstCnt0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rExtRst : STD_LOGIC;
  signal rIntRst : STD_LOGIC;
  signal rSoftRst : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute box_type : string;
  attribute box_type of \GenIDELAYCTRL.IDelayCtrlX\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GenIDELAYCTRL.rDlyRstCnt[0]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \GenIDELAYCTRL.rDlyRstCnt[1]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \GenIDELAYCTRL.rDlyRstCnt[2]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \GenIDELAYCTRL.rDlyRstCnt[3]_i_3\ : label is "soft_lutpair83";
begin
  D0RxClkEsc <= \<const0>\;
  D1RxClkEsc <= \<const0>\;
  RxByteClkHS <= \^rxbyteclkhs\;
  RxDDRClkHS <= \^rxddrclkhs\;
  aClkErrControl <= \<const0>\;
  aD0ErrControl <= \<const0>\;
  aD0ErrEsc <= \<const0>\;
  aD0RxDataEsc(7) <= \<const0>\;
  aD0RxDataEsc(6) <= \<const0>\;
  aD0RxDataEsc(5) <= \<const0>\;
  aD0RxDataEsc(4) <= \<const0>\;
  aD0RxDataEsc(3) <= \<const0>\;
  aD0RxDataEsc(2) <= \<const0>\;
  aD0RxDataEsc(1) <= \<const0>\;
  aD0RxDataEsc(0) <= \<const0>\;
  aD0RxLpdtEsc <= \<const0>\;
  aD0RxTriggerEsc(3) <= \<const0>\;
  aD0RxTriggerEsc(2) <= \<const0>\;
  aD0RxTriggerEsc(1) <= \<const0>\;
  aD0RxTriggerEsc(0) <= \<const0>\;
  aD0RxUlpsEsc <= \<const0>\;
  aD0RxValidEsc <= \<const0>\;
  aD0UlpsActiveNot <= \<const0>\;
  aD1ErrControl <= \<const0>\;
  aD1ErrEsc <= \<const0>\;
  aD1RxDataEsc(7) <= \<const0>\;
  aD1RxDataEsc(6) <= \<const0>\;
  aD1RxDataEsc(5) <= \<const0>\;
  aD1RxDataEsc(4) <= \<const0>\;
  aD1RxDataEsc(3) <= \<const0>\;
  aD1RxDataEsc(2) <= \<const0>\;
  aD1RxDataEsc(1) <= \<const0>\;
  aD1RxDataEsc(0) <= \<const0>\;
  aD1RxLpdtEsc <= \<const0>\;
  aD1RxTriggerEsc(3) <= \<const0>\;
  aD1RxTriggerEsc(2) <= \<const0>\;
  aD1RxTriggerEsc(1) <= \<const0>\;
  aD1RxTriggerEsc(0) <= \<const0>\;
  aD1RxUlpsEsc <= \<const0>\;
  aD1RxValidEsc <= \<const0>\;
  aD1UlpsActiveNot <= \<const0>\;
  rDlyCtrlLockedOut <= \^rdlyctrllockedout\;
  s_axi_lite_bresp(1) <= \<const0>\;
  s_axi_lite_bresp(0) <= \<const0>\;
  s_axi_lite_rresp(1) <= \<const0>\;
  s_axi_lite_rresp(0) <= \<const0>\;
ClockInputBuffer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer
     port map (
      aHS => HS_Clock,
      aLP(1 downto 0) => LP_Clock(1 downto 0),
      dphy_clk_hs_n => dphy_clk_hs_n,
      dphy_clk_hs_p => dphy_clk_hs_p,
      dphy_clk_lp_n => dphy_clk_lp_n,
      dphy_clk_lp_p => dphy_clk_lp_p
    );
ClockLane: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSCNN
     port map (
      AS(0) => aNotRxClkActiveHS,
      CLK => \^rxbyteclkhs\,
      D(0) => aLaneSCNNEnable,
      Q(0) => aClkStopstate,
      RefClk => RefClk,
      RxDDRClkHS => \^rxddrclkhs\,
      aClkUlpsActiveNot => aClkUlpsActiveNot,
      aHS => HS_Clock,
      aLP(1 downto 0) => LP_Clock(1 downto 0),
      aRxClkActiveHS => aRxClkActiveHS,
      aRxUlpsClkNot => aRxUlpsClkNot
    );
CoreAsyncReset: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge
     port map (
      \GenIDELAYCTRL.rDlyRstCnt_reg[4]\(0) => rSoftRst,
      RefClk => RefClk,
      SS(0) => rIntRst,
      aRst => aRst,
      \out\(0) => rExtRst
    );
\DataLaneGen[0].DPHY_LaneSFEN_X\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSFEN__parameterized0\
     port map (
      AS(0) => aNotRxClkActiveHS,
      CLK => \^rxbyteclkhs\,
      CLKB => \^rxddrclkhs\,
      D(0) => aLaneSFENEnable_0,
      \FSM_sequential_state_reg[0]_0\ => \DataLaneGen[0].DPHY_LaneSFEN_X_n_11\,
      \Filter.sOut_reg\ => \DataLaneGen[0].DPHY_LaneSFEN_X_n_12\,
      RefClk => RefClk,
      RxDDRClkHS => \^rxddrclkhs\,
      aD0ForceRxmode => aD0ForceRxmode,
      aD0Stopstate => aD0Stopstate,
      aHS => HS_Data_0,
      aLP(1 downto 0) => \aLPBuf[0]\(1 downto 0),
      \cLP_in[1]\(1 downto 0) => \cLP_in[1]\(1 downto 0),
      \out\(7 downto 0) => \dLP0_in[1]\(7 downto 0),
      rbD0ErrSotHS => rbD0ErrSotHS,
      rbD0ErrSotSyncHS => rbD0ErrSotSyncHS,
      rbD0RxActiveHS => rbD0RxActiveHS,
      rbD0RxDataHS(7 downto 0) => rbD0RxDataHS(7 downto 0),
      rbD0RxSyncHS => rbD0RxSyncHS,
      rbD0RxValidHS => rbD0RxValidHS,
      state(0) => state(0)
    );
\DataLaneGen[0].InputBufferDataX\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer__parameterized1\
     port map (
      aHS => HS_Data_0,
      aLP(1 downto 0) => \aLPBuf[0]\(1 downto 0),
      dphy_data_hs_n(0) => dphy_data_hs_n(0),
      dphy_data_hs_p(0) => dphy_data_hs_p(0),
      dphy_data_lp_n => dphy_data_lp_n,
      dphy_data_lp_p => dphy_data_lp_p
    );
\DataLaneGen[1].DPHY_LaneSFEN_X\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DPHY_LaneSFEN
     port map (
      AS(0) => aNotRxClkActiveHS,
      CLK => \^rxbyteclkhs\,
      CLKB => \^rxddrclkhs\,
      D(0) => aLaneSFENEnable_1,
      \FSM_sequential_state_reg[0]_0\(0) => state(0),
      \FSM_sequential_state_reg[0]_1\ => \DataLaneGen[0].DPHY_LaneSFEN_X_n_12\,
      \FSM_sequential_state_reg[1]_0\ => \DataLaneGen[0].DPHY_LaneSFEN_X_n_11\,
      HS_Data_1 => HS_Data_1,
      RefClk => RefClk,
      RxDDRClkHS => \^rxddrclkhs\,
      aD1ForceRxmode => aD1ForceRxmode,
      aD1Stopstate => aD1Stopstate,
      \cLP_in[1]\(1 downto 0) => \cLP_in[1]\(1 downto 0),
      \out\(7 downto 0) => \dLP0_in[1]\(7 downto 0),
      rbD1ErrSotHS => rbD1ErrSotHS,
      rbD1ErrSotSyncHS => rbD1ErrSotSyncHS,
      rbD1RxActiveHS => rbD1RxActiveHS,
      rbD1RxDataHS(7 downto 0) => rbD1RxDataHS(7 downto 0),
      rbD1RxSyncHS => rbD1RxSyncHS,
      rbD1RxValidHS => rbD1RxValidHS
    );
\DataLaneGen[1].InputBufferDataX\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_InputBuffer__parameterized0\
     port map (
      HS_Data_1 => HS_Data_1,
      dphy_data_hs_n(0) => dphy_data_hs_n(1),
      dphy_data_hs_p(0) => dphy_data_hs_p(1)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\GenIDELAYCTRL.IDelayCtrlX\: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => \^rdlyctrllockedout\,
      REFCLK => RefClk,
      RST => RST
    );
\GenIDELAYCTRL.rDlyRstCnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg\(0),
      O => rDlyRstCnt0(0)
    );
\GenIDELAYCTRL.rDlyRstCnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg\(0),
      I1 => \GenIDELAYCTRL.rDlyRstCnt_reg\(1),
      O => \GenIDELAYCTRL.rDlyRstCnt[1]_i_1_n_0\
    );
\GenIDELAYCTRL.rDlyRstCnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg\(2),
      I1 => \GenIDELAYCTRL.rDlyRstCnt_reg\(1),
      I2 => \GenIDELAYCTRL.rDlyRstCnt_reg\(0),
      O => rDlyRstCnt0(2)
    );
\GenIDELAYCTRL.rDlyRstCnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg\(4),
      I1 => \GenIDELAYCTRL.rDlyRstCnt_reg\(2),
      I2 => \GenIDELAYCTRL.rDlyRstCnt_reg\(0),
      I3 => \GenIDELAYCTRL.rDlyRstCnt_reg\(1),
      I4 => \GenIDELAYCTRL.rDlyRstCnt_reg\(3),
      O => sel
    );
\GenIDELAYCTRL.rDlyRstCnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg\(3),
      I1 => \GenIDELAYCTRL.rDlyRstCnt_reg\(2),
      I2 => \GenIDELAYCTRL.rDlyRstCnt_reg\(0),
      I3 => \GenIDELAYCTRL.rDlyRstCnt_reg\(1),
      O => rDlyRstCnt0(3)
    );
\GenIDELAYCTRL.rDlyRstCnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \GenIDELAYCTRL.rDlyRstCnt_reg\(4),
      I1 => \GenIDELAYCTRL.rDlyRstCnt_reg\(2),
      I2 => \GenIDELAYCTRL.rDlyRstCnt_reg\(0),
      I3 => \GenIDELAYCTRL.rDlyRstCnt_reg\(1),
      I4 => \GenIDELAYCTRL.rDlyRstCnt_reg\(3),
      O => \GenIDELAYCTRL.rDlyRstCnt[4]_i_1_n_0\
    );
\GenIDELAYCTRL.rDlyRstCnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => sel,
      D => rDlyRstCnt0(0),
      Q => \GenIDELAYCTRL.rDlyRstCnt_reg\(0),
      S => rIntRst
    );
\GenIDELAYCTRL.rDlyRstCnt_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => sel,
      D => \GenIDELAYCTRL.rDlyRstCnt[1]_i_1_n_0\,
      Q => \GenIDELAYCTRL.rDlyRstCnt_reg\(1),
      S => rIntRst
    );
\GenIDELAYCTRL.rDlyRstCnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => sel,
      D => rDlyRstCnt0(2),
      Q => \GenIDELAYCTRL.rDlyRstCnt_reg\(2),
      S => rIntRst
    );
\GenIDELAYCTRL.rDlyRstCnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => sel,
      D => rDlyRstCnt0(3),
      Q => \GenIDELAYCTRL.rDlyRstCnt_reg\(3),
      S => rIntRst
    );
\GenIDELAYCTRL.rDlyRstCnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RefClk,
      CE => '1',
      D => \GenIDELAYCTRL.rDlyRstCnt[4]_i_1_n_0\,
      Q => \GenIDELAYCTRL.rDlyRstCnt_reg\(4),
      S => rIntRst
    );
\GenIDELAYCTRL.rDlyRst_reg\: unisim.vcomponents.FDRE
     port map (
      C => RefClk,
      CE => '1',
      D => \YesAXILITE.CoreSoftReset_n_1\,
      Q => RST,
      R => '0'
    );
\YesAXILITE.AXI_Lite_Control\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver_S_AXI_Lite
     port map (
      Q(1 downto 0) => control_reg(1 downto 0),
      axi_arready_reg_0 => s_axi_lite_arready,
      axi_awready_reg_0 => s_axi_lite_awready,
      axi_wready_reg_0 => s_axi_lite_wready,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_araddr(1 downto 0) => s_axi_lite_araddr(3 downto 2),
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_awaddr(1 downto 0) => s_axi_lite_awaddr(3 downto 2),
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_rdata(31 downto 0),
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_wdata(31 downto 0) => s_axi_lite_wdata(31 downto 0),
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_wstrb(3 downto 0),
      s_axi_lite_wvalid => s_axi_lite_wvalid
    );
\YesAXILITE.CoreSoftReset\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ResetBridge_0
     port map (
      AS(0) => control_reg(0),
      \GenIDELAYCTRL.rDlyRstCnt_reg\(4 downto 0) => \GenIDELAYCTRL.rDlyRstCnt_reg\(4 downto 0),
      \GenIDELAYCTRL.rDlyRst_reg\ => \YesAXILITE.CoreSoftReset_n_1\,
      \GenIDELAYCTRL.rDlyRst_reg_0\(0) => rExtRst,
      RST => RST,
      RefClk => RefClk,
      \out\(0) => rSoftRst
    );
\YesAXILITE.SyncAsyncClkEnable\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SyncAsync__parameterized0\
     port map (
      D(0) => control_reg(1),
      RefClk => RefClk,
      aClkEnable => aClkEnable,
      aD0Enable => aD0Enable,
      aD1Enable => aD1Enable,
      \oSyncStages_reg[0]_0\ => \^rdlyctrllockedout\,
      \oSyncStages_reg[1]_0\(0) => aLaneSFENEnable_0,
      \oSyncStages_reg[1]_1\(0) => aLaneSCNNEnable,
      \oSyncStages_reg[1]_2\(0) => aLaneSFENEnable_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    dphy_clk_hs_p : in STD_LOGIC;
    dphy_clk_hs_n : in STD_LOGIC;
    dphy_clk_lp_p : in STD_LOGIC;
    dphy_clk_lp_n : in STD_LOGIC;
    dphy_data_hs_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_hs_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dphy_data_lp_p : in STD_LOGIC;
    dphy_data_lp_n : in STD_LOGIC;
    RefClk : in STD_LOGIC;
    aRst : in STD_LOGIC;
    rDlyCtrlLockedOut : out STD_LOGIC;
    RxDDRClkHS : out STD_LOGIC;
    aRxClkActiveHS : out STD_LOGIC;
    aClkStopstate : out STD_LOGIC;
    aClkEnable : in STD_LOGIC;
    aClkUlpsActiveNot : out STD_LOGIC;
    aRxUlpsClkNot : out STD_LOGIC;
    aClkForceRxmode : in STD_LOGIC;
    aClkErrControl : out STD_LOGIC;
    RxByteClkHS : out STD_LOGIC;
    aD0Stopstate : out STD_LOGIC;
    aD0Enable : in STD_LOGIC;
    aD0UlpsActiveNot : out STD_LOGIC;
    rbD0RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD0RxValidHS : out STD_LOGIC;
    rbD0RxActiveHS : out STD_LOGIC;
    rbD0RxSyncHS : out STD_LOGIC;
    rbD0ErrSotHS : out STD_LOGIC;
    rbD0ErrSotSyncHS : out STD_LOGIC;
    aD0ForceRxmode : in STD_LOGIC;
    D0RxClkEsc : out STD_LOGIC;
    aD0RxDataEsc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aD0RxValidEsc : out STD_LOGIC;
    aD0RxLpdtEsc : out STD_LOGIC;
    aD0RxUlpsEsc : out STD_LOGIC;
    aD0RxTriggerEsc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aD0ErrEsc : out STD_LOGIC;
    aD0ErrControl : out STD_LOGIC;
    aD1Stopstate : out STD_LOGIC;
    aD1Enable : in STD_LOGIC;
    aD1UlpsActiveNot : out STD_LOGIC;
    rbD1RxDataHS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rbD1RxValidHS : out STD_LOGIC;
    rbD1RxActiveHS : out STD_LOGIC;
    rbD1RxSyncHS : out STD_LOGIC;
    rbD1ErrSotHS : out STD_LOGIC;
    rbD1ErrSotSyncHS : out STD_LOGIC;
    aD1ForceRxmode : in STD_LOGIC;
    D1RxClkEsc : out STD_LOGIC;
    aD1RxDataEsc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aD1RxValidEsc : out STD_LOGIC;
    aD1RxLpdtEsc : out STD_LOGIC;
    aD1RxUlpsEsc : out STD_LOGIC;
    aD1RxTriggerEsc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aD1ErrEsc : out STD_LOGIC;
    aD1ErrControl : out STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_MIPI_D_PHY_RX_0_0,MIPI_DPHY_Receiver,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MIPI_DPHY_Receiver,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_D0RxClkEsc_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_D1RxClkEsc_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aClkErrControl_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD0ErrControl_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD0ErrEsc_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD0RxLpdtEsc_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD0RxUlpsEsc_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD0RxValidEsc_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD0UlpsActiveNot_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD1ErrControl_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD1ErrEsc_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD1RxLpdtEsc_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD1RxUlpsEsc_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD1RxValidEsc_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD1UlpsActiveNot_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD0RxDataEsc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_aD0RxTriggerEsc_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_aD1RxDataEsc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_aD1RxTriggerEsc_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_lite_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_lite_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_LITE_ADDR_WIDTH : integer;
  attribute C_S_AXI_LITE_ADDR_WIDTH of U0 : label is 4;
  attribute C_S_AXI_LITE_DATA_WIDTH : integer;
  attribute C_S_AXI_LITE_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_LITE_FREQ_HZ : integer;
  attribute C_S_AXI_LITE_FREQ_HZ of U0 : label is 100000000;
  attribute kAddDelayClk_ps : integer;
  attribute kAddDelayClk_ps of U0 : label is 0;
  attribute kAddDelayData0_ps : integer;
  attribute kAddDelayData0_ps of U0 : label is 0;
  attribute kAddDelayData1_ps : integer;
  attribute kAddDelayData1_ps of U0 : label is 0;
  attribute kDebug : string;
  attribute kDebug of U0 : label is "TRUE";
  attribute kGenerateAXIL : string;
  attribute kGenerateAXIL of U0 : label is "TRUE";
  attribute kGenerateMMCM : string;
  attribute kGenerateMMCM of U0 : label is "FALSE";
  attribute kLPFromLane0 : string;
  attribute kLPFromLane0 of U0 : label is "TRUE";
  attribute kNoOfDataLanes : integer;
  attribute kNoOfDataLanes of U0 : label is 2;
  attribute kRefClkFreqHz : integer;
  attribute kRefClkFreqHz of U0 : label is 200000000;
  attribute kSharedLogic : string;
  attribute kSharedLogic of U0 : label is "TRUE";
  attribute kVersionMajor : integer;
  attribute kVersionMajor of U0 : label is 1;
  attribute kVersionMinor : integer;
  attribute kVersionMinor of U0 : label is 3;
  attribute x_interface_info : string;
  attribute x_interface_info of D0RxClkEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXCLKESC";
  attribute x_interface_info of D1RxClkEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXCLKESC";
  attribute x_interface_info of RefClk : signal is "xilinx.com:signal:clock:1.0 RefClk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of RefClk : signal is "XIL_INTERFACENAME RefClk, ASSOCIATED_RESET aRst, FREQ_HZ 199999985, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute x_interface_info of RxByteClkHS : signal is "xilinx.com:signal:clock:1.0 RxByteClkHS CLK";
  attribute x_interface_parameter of RxByteClkHS : signal is "XIL_INTERFACENAME RxByteClkHS, FREQ_HZ 25000000, ASSOCIATED_BUSIF D_PHY_PPI, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_MIPI_D_PHY_RX_0_0_RxByteClkHS, INSERT_VIP 0";
  attribute x_interface_info of aClkEnable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_ENABLE";
  attribute x_interface_info of aClkStopstate : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_STOPSTATE";
  attribute x_interface_info of aClkUlpsActiveNot : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_ULPSACTIVENOT";
  attribute x_interface_info of aD0Enable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ENABLE";
  attribute x_interface_info of aD0ErrControl : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRCONTROL";
  attribute x_interface_info of aD0ErrEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRESC";
  attribute x_interface_info of aD0ForceRxmode : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_FORCERXMODE";
  attribute x_interface_info of aD0RxLpdtEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXLPDTESC";
  attribute x_interface_info of aD0RxUlpsEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXULPSESC";
  attribute x_interface_info of aD0RxValidEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXVALIDESC";
  attribute x_interface_info of aD0Stopstate : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_STOPSTATE";
  attribute x_interface_info of aD0UlpsActiveNot : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ULPSACTIVENOT";
  attribute x_interface_info of aD1Enable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ENABLE";
  attribute x_interface_info of aD1ErrControl : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRCONTROL";
  attribute x_interface_info of aD1ErrEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRESC";
  attribute x_interface_info of aD1ForceRxmode : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_FORCERXMODE";
  attribute x_interface_info of aD1RxLpdtEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXLPDTESC";
  attribute x_interface_info of aD1RxUlpsEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXULPSESC";
  attribute x_interface_info of aD1RxValidEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXVALIDESC";
  attribute x_interface_info of aD1Stopstate : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_STOPSTATE";
  attribute x_interface_info of aD1UlpsActiveNot : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ULPSACTIVENOT";
  attribute x_interface_info of aRst : signal is "xilinx.com:signal:reset:1.0 aRst RST";
  attribute x_interface_parameter of aRst : signal is "XIL_INTERFACENAME aRst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of aRxClkActiveHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_RXCLKACTIVEHS";
  attribute x_interface_info of aRxUlpsClkNot : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI CL_RXULPSCLKNOT";
  attribute x_interface_info of dphy_clk_hs_n : signal is "xilinx.com:interface:diff_clock:1.0 dphy_hs_clock CLK_N";
  attribute x_interface_info of dphy_clk_hs_p : signal is "xilinx.com:interface:diff_clock:1.0 dphy_hs_clock CLK_P";
  attribute x_interface_parameter of dphy_clk_hs_p : signal is "XIL_INTERFACENAME dphy_hs_clock, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute x_interface_info of rbD0ErrSotHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRSOTHS";
  attribute x_interface_info of rbD0ErrSotSyncHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_ERRSOTSYNCHS";
  attribute x_interface_info of rbD0RxActiveHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXACTIVEHS";
  attribute x_interface_info of rbD0RxSyncHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXSYNCHS";
  attribute x_interface_info of rbD0RxValidHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXVALIDHS";
  attribute x_interface_info of rbD1ErrSotHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRSOTHS";
  attribute x_interface_info of rbD1ErrSotSyncHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_ERRSOTSYNCHS";
  attribute x_interface_info of rbD1RxActiveHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXACTIVEHS";
  attribute x_interface_info of rbD1RxSyncHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXSYNCHS";
  attribute x_interface_info of rbD1RxValidHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXVALIDHS";
  attribute x_interface_info of s_axi_lite_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK";
  attribute x_interface_parameter of s_axi_lite_aclk : signal is "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_RESET s_axi_lite_aresetn, ASSOCIATED_BUSIF S_AXI_LITE, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_lite_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST";
  attribute x_interface_parameter of s_axi_lite_aresetn : signal is "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_lite_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY";
  attribute x_interface_info of s_axi_lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID";
  attribute x_interface_info of s_axi_lite_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY";
  attribute x_interface_info of s_axi_lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID";
  attribute x_interface_info of s_axi_lite_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY";
  attribute x_interface_info of s_axi_lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID";
  attribute x_interface_info of s_axi_lite_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY";
  attribute x_interface_info of s_axi_lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID";
  attribute x_interface_info of s_axi_lite_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY";
  attribute x_interface_info of s_axi_lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID";
  attribute x_interface_info of aD0RxDataEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXDATAESC";
  attribute x_interface_info of aD0RxTriggerEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXTRIGGERESC";
  attribute x_interface_info of aD1RxDataEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXDATAESC";
  attribute x_interface_info of aD1RxTriggerEsc : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXTRIGGERESC";
  attribute x_interface_info of rbD0RxDataHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL0_RXDATAHS";
  attribute x_interface_info of rbD1RxDataHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 D_PHY_PPI DL1_RXDATAHS";
  attribute x_interface_info of s_axi_lite_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR";
  attribute x_interface_info of s_axi_lite_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT";
  attribute x_interface_info of s_axi_lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR";
  attribute x_interface_parameter of s_axi_lite_awaddr : signal is "XIL_INTERFACENAME S_AXI_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_lite_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT";
  attribute x_interface_info of s_axi_lite_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP";
  attribute x_interface_info of s_axi_lite_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA";
  attribute x_interface_info of s_axi_lite_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP";
  attribute x_interface_info of s_axi_lite_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA";
  attribute x_interface_info of s_axi_lite_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB";
begin
  D0RxClkEsc <= \<const0>\;
  D1RxClkEsc <= \<const0>\;
  aClkErrControl <= \<const0>\;
  aD0ErrControl <= \<const0>\;
  aD0ErrEsc <= \<const0>\;
  aD0RxDataEsc(7) <= \<const0>\;
  aD0RxDataEsc(6) <= \<const0>\;
  aD0RxDataEsc(5) <= \<const0>\;
  aD0RxDataEsc(4) <= \<const0>\;
  aD0RxDataEsc(3) <= \<const0>\;
  aD0RxDataEsc(2) <= \<const0>\;
  aD0RxDataEsc(1) <= \<const0>\;
  aD0RxDataEsc(0) <= \<const0>\;
  aD0RxLpdtEsc <= \<const0>\;
  aD0RxTriggerEsc(3) <= \<const0>\;
  aD0RxTriggerEsc(2) <= \<const0>\;
  aD0RxTriggerEsc(1) <= \<const0>\;
  aD0RxTriggerEsc(0) <= \<const0>\;
  aD0RxUlpsEsc <= \<const0>\;
  aD0RxValidEsc <= \<const0>\;
  aD0UlpsActiveNot <= \<const0>\;
  aD1ErrControl <= \<const0>\;
  aD1ErrEsc <= \<const0>\;
  aD1RxDataEsc(7) <= \<const0>\;
  aD1RxDataEsc(6) <= \<const0>\;
  aD1RxDataEsc(5) <= \<const0>\;
  aD1RxDataEsc(4) <= \<const0>\;
  aD1RxDataEsc(3) <= \<const0>\;
  aD1RxDataEsc(2) <= \<const0>\;
  aD1RxDataEsc(1) <= \<const0>\;
  aD1RxDataEsc(0) <= \<const0>\;
  aD1RxLpdtEsc <= \<const0>\;
  aD1RxTriggerEsc(3) <= \<const0>\;
  aD1RxTriggerEsc(2) <= \<const0>\;
  aD1RxTriggerEsc(1) <= \<const0>\;
  aD1RxTriggerEsc(0) <= \<const0>\;
  aD1RxUlpsEsc <= \<const0>\;
  aD1RxValidEsc <= \<const0>\;
  aD1UlpsActiveNot <= \<const0>\;
  s_axi_lite_bresp(1) <= \<const0>\;
  s_axi_lite_bresp(0) <= \<const0>\;
  s_axi_lite_rresp(1) <= \<const0>\;
  s_axi_lite_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MIPI_DPHY_Receiver
     port map (
      D0RxClkEsc => NLW_U0_D0RxClkEsc_UNCONNECTED,
      D1RxClkEsc => NLW_U0_D1RxClkEsc_UNCONNECTED,
      RefClk => RefClk,
      RxByteClkHS => RxByteClkHS,
      RxDDRClkHS => RxDDRClkHS,
      aClkEnable => aClkEnable,
      aClkErrControl => NLW_U0_aClkErrControl_UNCONNECTED,
      aClkForceRxmode => '0',
      aClkStopstate => aClkStopstate,
      aClkUlpsActiveNot => aClkUlpsActiveNot,
      aD0Enable => aD0Enable,
      aD0ErrControl => NLW_U0_aD0ErrControl_UNCONNECTED,
      aD0ErrEsc => NLW_U0_aD0ErrEsc_UNCONNECTED,
      aD0ForceRxmode => aD0ForceRxmode,
      aD0RxDataEsc(7 downto 0) => NLW_U0_aD0RxDataEsc_UNCONNECTED(7 downto 0),
      aD0RxLpdtEsc => NLW_U0_aD0RxLpdtEsc_UNCONNECTED,
      aD0RxTriggerEsc(3 downto 0) => NLW_U0_aD0RxTriggerEsc_UNCONNECTED(3 downto 0),
      aD0RxUlpsEsc => NLW_U0_aD0RxUlpsEsc_UNCONNECTED,
      aD0RxValidEsc => NLW_U0_aD0RxValidEsc_UNCONNECTED,
      aD0Stopstate => aD0Stopstate,
      aD0UlpsActiveNot => NLW_U0_aD0UlpsActiveNot_UNCONNECTED,
      aD1Enable => aD1Enable,
      aD1ErrControl => NLW_U0_aD1ErrControl_UNCONNECTED,
      aD1ErrEsc => NLW_U0_aD1ErrEsc_UNCONNECTED,
      aD1ForceRxmode => aD1ForceRxmode,
      aD1RxDataEsc(7 downto 0) => NLW_U0_aD1RxDataEsc_UNCONNECTED(7 downto 0),
      aD1RxLpdtEsc => NLW_U0_aD1RxLpdtEsc_UNCONNECTED,
      aD1RxTriggerEsc(3 downto 0) => NLW_U0_aD1RxTriggerEsc_UNCONNECTED(3 downto 0),
      aD1RxUlpsEsc => NLW_U0_aD1RxUlpsEsc_UNCONNECTED,
      aD1RxValidEsc => NLW_U0_aD1RxValidEsc_UNCONNECTED,
      aD1Stopstate => aD1Stopstate,
      aD1UlpsActiveNot => NLW_U0_aD1UlpsActiveNot_UNCONNECTED,
      aRst => aRst,
      aRxClkActiveHS => aRxClkActiveHS,
      aRxUlpsClkNot => aRxUlpsClkNot,
      dphy_clk_hs_n => dphy_clk_hs_n,
      dphy_clk_hs_p => dphy_clk_hs_p,
      dphy_clk_lp_n => dphy_clk_lp_n,
      dphy_clk_lp_p => dphy_clk_lp_p,
      dphy_data_hs_n(1 downto 0) => dphy_data_hs_n(1 downto 0),
      dphy_data_hs_p(1 downto 0) => dphy_data_hs_p(1 downto 0),
      dphy_data_lp_n => dphy_data_lp_n,
      dphy_data_lp_p => dphy_data_lp_p,
      rDlyCtrlLockedIn => '1',
      rDlyCtrlLockedOut => rDlyCtrlLockedOut,
      rbD0ErrSotHS => rbD0ErrSotHS,
      rbD0ErrSotSyncHS => rbD0ErrSotSyncHS,
      rbD0RxActiveHS => rbD0RxActiveHS,
      rbD0RxDataHS(7 downto 0) => rbD0RxDataHS(7 downto 0),
      rbD0RxSyncHS => rbD0RxSyncHS,
      rbD0RxValidHS => rbD0RxValidHS,
      rbD1ErrSotHS => rbD1ErrSotHS,
      rbD1ErrSotSyncHS => rbD1ErrSotSyncHS,
      rbD1RxActiveHS => rbD1RxActiveHS,
      rbD1RxDataHS(7 downto 0) => rbD1RxDataHS(7 downto 0),
      rbD1RxSyncHS => rbD1RxSyncHS,
      rbD1RxValidHS => rbD1RxValidHS,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_araddr(3 downto 2) => s_axi_lite_araddr(3 downto 2),
      s_axi_lite_araddr(1 downto 0) => B"00",
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      s_axi_lite_arprot(2 downto 0) => B"000",
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_awaddr(3 downto 2) => s_axi_lite_awaddr(3 downto 2),
      s_axi_lite_awaddr(1 downto 0) => B"00",
      s_axi_lite_awprot(2 downto 0) => B"000",
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bresp(1 downto 0) => NLW_U0_s_axi_lite_bresp_UNCONNECTED(1 downto 0),
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_rdata(31 downto 0),
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rresp(1 downto 0) => NLW_U0_s_axi_lite_rresp_UNCONNECTED(1 downto 0),
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_wdata(31 downto 0) => s_axi_lite_wdata(31 downto 0),
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_wstrb(3 downto 0),
      s_axi_lite_wvalid => s_axi_lite_wvalid
    );
end STRUCTURE;
