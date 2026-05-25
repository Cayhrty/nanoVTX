-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Sep 12 20:29:01 2023
-- Host        : DESKTOP-EV5Q276 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_fft_config_0_0_sim_netlist.vhdl
-- Design      : top_fft_config_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    m_axis_config_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_config_tready : in STD_LOGIC;
    m_axis_config_tvalid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_fft_config_0_0,fft_config,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fft_config,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_config_tready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axis_config_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_config TREADY";
  attribute X_INTERFACE_INFO of m_axis_config_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_config TVALID";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_config_tvalid : signal is "XIL_INTERFACENAME m_axis_config, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 97875000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_config_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_config TDATA";
begin
  \^m_axis_config_tready\ <= m_axis_config_tready;
  m_axis_config_tdata(31) <= \<const0>\;
  m_axis_config_tdata(30) <= \<const0>\;
  m_axis_config_tdata(29) <= \<const0>\;
  m_axis_config_tdata(28) <= \<const0>\;
  m_axis_config_tdata(27) <= \<const0>\;
  m_axis_config_tdata(26) <= \<const1>\;
  m_axis_config_tdata(25) <= \<const0>\;
  m_axis_config_tdata(24) <= \<const1>\;
  m_axis_config_tdata(23) <= \<const0>\;
  m_axis_config_tdata(22) <= \<const0>\;
  m_axis_config_tdata(21) <= \<const1>\;
  m_axis_config_tdata(20) <= \<const0>\;
  m_axis_config_tdata(19) <= \<const1>\;
  m_axis_config_tdata(18) <= \<const0>\;
  m_axis_config_tdata(17) <= \<const1>\;
  m_axis_config_tdata(16) <= \<const0>\;
  m_axis_config_tdata(15) <= \<const0>\;
  m_axis_config_tdata(14) <= \<const0>\;
  m_axis_config_tdata(13) <= \<const0>\;
  m_axis_config_tdata(12) <= \<const0>\;
  m_axis_config_tdata(11) <= \<const0>\;
  m_axis_config_tdata(10) <= \<const0>\;
  m_axis_config_tdata(9) <= \<const0>\;
  m_axis_config_tdata(8) <= \<const0>\;
  m_axis_config_tdata(7) <= \<const1>\;
  m_axis_config_tdata(6) <= \<const0>\;
  m_axis_config_tdata(5) <= \<const0>\;
  m_axis_config_tdata(4) <= \<const0>\;
  m_axis_config_tdata(3) <= \<const0>\;
  m_axis_config_tdata(2) <= \<const0>\;
  m_axis_config_tdata(1) <= \<const0>\;
  m_axis_config_tdata(0) <= \<const0>\;
  m_axis_config_tvalid <= \^m_axis_config_tready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
