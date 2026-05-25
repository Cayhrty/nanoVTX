-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Sep 20 17:50:26 2023
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
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SampleControl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SampleControl is
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal dataCnt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \dataCnt0_carry__0_n_0\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_1\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_2\ : STD_LOGIC;
  signal \dataCnt0_carry__0_n_3\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_0\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_1\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_2\ : STD_LOGIC;
  signal \dataCnt0_carry__1_n_3\ : STD_LOGIC;
  signal \dataCnt0_carry__2_n_2\ : STD_LOGIC;
  signal \dataCnt0_carry__2_n_3\ : STD_LOGIC;
  signal dataCnt0_carry_n_0 : STD_LOGIC;
  signal dataCnt0_carry_n_1 : STD_LOGIC;
  signal dataCnt0_carry_n_2 : STD_LOGIC;
  signal dataCnt0_carry_n_3 : STD_LOGIC;
  signal \dataCnt[15]_i_3_n_0\ : STD_LOGIC;
  signal last_trig : STD_LOGIC;
  signal last_trig_r1 : STD_LOGIC;
  signal last_trig_r2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tvalid0 : STD_LOGIC;
  signal tvalid_i_2_n_0 : STD_LOGIC;
  signal tvalid_i_3_n_0 : STD_LOGIC;
  signal tvalid_i_4_n_0 : STD_LOGIC;
  signal tvalid_i_5_n_0 : STD_LOGIC;
  signal \NLW_dataCnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dataCnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dataCnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \dataCnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \dataCnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \dataCnt0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dataCnt[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dataCnt[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dataCnt[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dataCnt[12]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dataCnt[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dataCnt[14]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dataCnt[15]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dataCnt[15]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dataCnt[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dataCnt[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dataCnt[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dataCnt[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dataCnt[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dataCnt[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dataCnt[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dataCnt[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dataCnt[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of tvalid_i_5 : label is "soft_lutpair0";
begin
dataCnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dataCnt0_carry_n_0,
      CO(2) => dataCnt0_carry_n_1,
      CO(1) => dataCnt0_carry_n_2,
      CO(0) => dataCnt0_carry_n_3,
      CYINIT => dataCnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => dataCnt(4 downto 1)
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
      S(3 downto 0) => dataCnt(8 downto 5)
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
      S(3 downto 0) => dataCnt(12 downto 9)
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
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => dataCnt(15 downto 13)
    );
\dataCnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => last_trig,
      I1 => last_trig_r1,
      I2 => dataCnt(0),
      I3 => tvalid0,
      O => p_1_in(0)
    );
\dataCnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(10),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(10)
    );
\dataCnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(11),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(11)
    );
\dataCnt[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(12),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(12)
    );
\dataCnt[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(13),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(13)
    );
\dataCnt[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(14),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(14)
    );
\dataCnt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \dataCnt[15]_i_3_n_0\,
      I1 => dataCnt(7),
      I2 => dataCnt(2),
      I3 => dataCnt(10),
      I4 => dataCnt(3),
      I5 => tvalid_i_3_n_0,
      O => p_0_in
    );
\dataCnt[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(15),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(15)
    );
\dataCnt[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => dataCnt(13),
      I1 => dataCnt(15),
      I2 => dataCnt(12),
      I3 => dataCnt(14),
      I4 => tvalid_i_4_n_0,
      O => \dataCnt[15]_i_3_n_0\
    );
\dataCnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(1),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(1)
    );
\dataCnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(2),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(2)
    );
\dataCnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(3),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(3)
    );
\dataCnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(4),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(4)
    );
\dataCnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(5),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(5)
    );
\dataCnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(6),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(6)
    );
\dataCnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(7),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(7)
    );
\dataCnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(8),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(8)
    );
\dataCnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => tvalid0,
      I1 => data0(9),
      I2 => last_trig_r1,
      I3 => last_trig,
      O => p_1_in(9)
    );
\dataCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(0),
      Q => dataCnt(0),
      R => p_0_in
    );
\dataCnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(10),
      Q => dataCnt(10),
      R => p_0_in
    );
\dataCnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(11),
      Q => dataCnt(11),
      R => p_0_in
    );
\dataCnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(12),
      Q => dataCnt(12),
      R => p_0_in
    );
\dataCnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(13),
      Q => dataCnt(13),
      R => p_0_in
    );
\dataCnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(14),
      Q => dataCnt(14),
      R => p_0_in
    );
\dataCnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(15),
      Q => dataCnt(15),
      R => p_0_in
    );
\dataCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => dataCnt(1),
      R => p_0_in
    );
\dataCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(2),
      Q => dataCnt(2),
      R => p_0_in
    );
\dataCnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(3),
      Q => dataCnt(3),
      R => p_0_in
    );
\dataCnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(4),
      Q => dataCnt(4),
      R => p_0_in
    );
\dataCnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(5),
      Q => dataCnt(5),
      R => p_0_in
    );
\dataCnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(6),
      Q => dataCnt(6),
      R => p_0_in
    );
\dataCnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(7),
      Q => dataCnt(7),
      R => p_0_in
    );
\dataCnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(8),
      Q => dataCnt(8),
      R => p_0_in
    );
\dataCnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(9),
      Q => dataCnt(9),
      R => p_0_in
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
tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => tvalid_i_2_n_0,
      I1 => dataCnt(10),
      I2 => dataCnt(3),
      I3 => tvalid_i_3_n_0,
      I4 => tvalid_i_4_n_0,
      I5 => tvalid_i_5_n_0,
      O => tvalid0
    );
tvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dataCnt(2),
      I1 => dataCnt(7),
      O => tvalid_i_2_n_0
    );
tvalid_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => dataCnt(8),
      I1 => dataCnt(9),
      I2 => dataCnt(11),
      I3 => dataCnt(6),
      O => tvalid_i_3_n_0
    );
tvalid_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => dataCnt(1),
      I1 => dataCnt(5),
      I2 => dataCnt(4),
      I3 => dataCnt(0),
      O => tvalid_i_4_n_0
    );
tvalid_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => dataCnt(14),
      I1 => dataCnt(12),
      I2 => dataCnt(15),
      I3 => dataCnt(13),
      O => tvalid_i_5_n_0
    );
tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tvalid0,
      Q => tvalid,
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
    sample_trig : in STD_LOGIC;
    tvalid : out STD_LOGIC
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
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SampleControl
     port map (
      clk => clk,
      sample_trig => sample_trig,
      tvalid => tvalid
    );
end STRUCTURE;
