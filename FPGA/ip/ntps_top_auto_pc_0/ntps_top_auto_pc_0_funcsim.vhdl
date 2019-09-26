-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Thu Sep 26 15:22:41 2019
-- Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/wingel/work/FPGA_NTP_INTERNAL/FPGA_NTP_SERVER/FPGA/ip/ntps_top_auto_pc_0/ntps_top_auto_pc_0_funcsim.vhdl
-- Design      : ntps_top_auto_pc_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd is
  port (
    next_pending_r_reg_0 : out STD_LOGIC;
    axaddr_incr_reg : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \axlen_cnt_reg[3]_0\ : out STD_LOGIC;
    \axlen_cnt_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[5]_0\ : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    incr_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    sel_first_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[35]\ : in STD_LOGIC;
    \m_payload_i_reg[36]\ : in STD_LOGIC;
    \m_payload_i_reg[35]_0\ : in STD_LOGIC;
    \m_payload_i_reg[35]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \m_payload_i_reg[47]\ : in STD_LOGIC;
    b_push : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    si_rs_awvalid : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    axaddr_incr0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd : entity is "axi_protocol_converter_v2_1_b2s_incr_cmd";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd is
  signal C : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \axaddr_incr[0]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr[10]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[11]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[1]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[2]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[4]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[5]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[6]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[8]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr[9]_i_2_n_0\ : STD_LOGIC;
  signal \^axaddr_incr_reg\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \axaddr_incr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[0]_i_4_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[0]_i_4_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[0]_i_4_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_4_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_4_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_4_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_4_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_4_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_4_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \axlen_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \axlen_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \axlen_cnt[7]_i_6_n_0\ : STD_LOGIC;
  signal \^axlen_cnt_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axlen_cnt_reg[3]_0\ : STD_LOGIC;
  signal \^axlen_cnt_reg[5]_0\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal next_pending_r_i_5_n_0 : STD_LOGIC;
  signal sel_first_i_1_n_0 : STD_LOGIC;
  signal \^sel_first_reg_0\ : STD_LOGIC;
  signal \NLW_axaddr_incr_reg[8]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_axaddr_incr_reg[9]_i_3_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axaddr_incr_reg[9]_i_3_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \axaddr_incr_reg[1]_i_3_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \axaddr_incr_reg[1]_i_3_CARRY4\ : label is "LO:O";
  attribute XILINX_LEGACY_PRIM of \axaddr_incr_reg[5]_i_3_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP of \axaddr_incr_reg[5]_i_3_CARRY4\ : label is "LO:O";
  attribute XILINX_LEGACY_PRIM of \axaddr_incr_reg[9]_i_3_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP of \axaddr_incr_reg[9]_i_3_CARRY4\ : label is "LO:O";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axlen_cnt[4]_i_2\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \axlen_cnt[7]_i_4\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \axlen_cnt[7]_i_6\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of next_pending_r_i_5 : label is "soft_lutpair98";
begin
  axaddr_incr_reg(11 downto 0) <= \^axaddr_incr_reg\(11 downto 0);
  \axlen_cnt_reg[2]_0\(0) <= \^axlen_cnt_reg[2]_0\(0);
  \axlen_cnt_reg[3]_0\ <= \^axlen_cnt_reg[3]_0\;
  \axlen_cnt_reg[5]_0\ <= \^axlen_cnt_reg[5]_0\;
  sel_first_reg_0 <= \^sel_first_reg_0\;
\axaddr_incr[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE100E1"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^axaddr_incr_reg\(0),
      I3 => \^sel_first_reg_0\,
      I4 => C(0),
      O => \axaddr_incr[0]_i_3_n_0\
    );
\axaddr_incr[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => C(10),
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(10),
      O => \axaddr_incr[10]_i_2_n_0\
    );
\axaddr_incr[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => C(11),
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(11),
      O => \axaddr_incr[11]_i_2_n_0\
    );
\axaddr_incr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD200D2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => \^axaddr_incr_reg\(1),
      I3 => \^sel_first_reg_0\,
      I4 => C(1),
      O => \axaddr_incr[1]_i_2_n_0\
    );
\axaddr_incr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD200D2"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^axaddr_incr_reg\(2),
      I3 => \^sel_first_reg_0\,
      I4 => C(2),
      O => \axaddr_incr[2]_i_2_n_0\
    );
\axaddr_incr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF780078"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^axaddr_incr_reg\(3),
      I3 => \^sel_first_reg_0\,
      I4 => C(3),
      O => \axaddr_incr[3]_i_2_n_0\
    );
\axaddr_incr[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => C(4),
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(4),
      O => \axaddr_incr[4]_i_2_n_0\
    );
\axaddr_incr[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => C(5),
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(5),
      O => \axaddr_incr[5]_i_2_n_0\
    );
\axaddr_incr[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => C(6),
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(6),
      O => \axaddr_incr[6]_i_2_n_0\
    );
\axaddr_incr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => C(7),
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(7),
      O => \axaddr_incr[7]_i_2_n_0\
    );
\axaddr_incr[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => C(8),
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(8),
      O => \axaddr_incr[8]_i_2_n_0\
    );
\axaddr_incr[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => C(9),
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(9),
      O => \axaddr_incr[9]_i_2_n_0\
    );
\axaddr_incr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[0]_i_2_n_0\,
      Q => \^axaddr_incr_reg\(0),
      R => '0'
    );
\axaddr_incr_reg[0]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axaddr_incr_reg[0]_i_4_n_0\,
      CO(2) => \axaddr_incr_reg[0]_i_4_n_1\,
      CO(1) => \axaddr_incr_reg[0]_i_4_n_2\,
      CO(0) => \axaddr_incr_reg[0]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => Q(0),
      DI(2 downto 0) => axaddr_incr0(2 downto 0),
      O(3 downto 0) => C(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\axaddr_incr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[10]_i_1_n_0\,
      Q => \^axaddr_incr_reg\(10),
      R => '0'
    );
\axaddr_incr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[11]_i_1_n_0\,
      Q => \^axaddr_incr_reg\(11),
      R => '0'
    );
\axaddr_incr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[1]_i_1_n_0\,
      Q => \^axaddr_incr_reg\(1),
      R => '0'
    );
\axaddr_incr_reg[1]_i_3_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axaddr_incr_reg[4]_i_3_n_0\,
      CO(2) => \axaddr_incr_reg[3]_i_3_n_0\,
      CO(1) => \axaddr_incr_reg[2]_i_3_n_0\,
      CO(0) => \axaddr_incr_reg[1]_i_3_n_0\,
      CYINIT => '0',
      DI(3) => \m_payload_i_reg[35]_1\,
      DI(2) => \m_payload_i_reg[35]_0\,
      DI(1) => \m_payload_i_reg[36]\,
      DI(0) => \m_payload_i_reg[35]\,
      O(3) => \axaddr_incr_reg[3]_i_1_n_0\,
      O(2) => \axaddr_incr_reg[2]_i_1_n_0\,
      O(1) => \axaddr_incr_reg[1]_i_1_n_0\,
      O(0) => \axaddr_incr_reg[0]_i_2_n_0\,
      S(3) => \axaddr_incr[3]_i_2_n_0\,
      S(2) => \axaddr_incr[2]_i_2_n_0\,
      S(1) => \axaddr_incr[1]_i_2_n_0\,
      S(0) => \axaddr_incr[0]_i_3_n_0\
    );
\axaddr_incr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[2]_i_1_n_0\,
      Q => \^axaddr_incr_reg\(2),
      R => '0'
    );
\axaddr_incr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[3]_i_1_n_0\,
      Q => \^axaddr_incr_reg\(3),
      R => '0'
    );
\axaddr_incr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[4]_i_1_n_0\,
      Q => \^axaddr_incr_reg\(4),
      R => '0'
    );
\axaddr_incr_reg[4]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[0]_i_4_n_0\,
      CO(3) => \axaddr_incr_reg[4]_i_4_n_0\,
      CO(2) => \axaddr_incr_reg[4]_i_4_n_1\,
      CO(1) => \axaddr_incr_reg[4]_i_4_n_2\,
      CO(0) => \axaddr_incr_reg[4]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => C(7 downto 4),
      S(3 downto 0) => \m_payload_i_reg[7]\(3 downto 0)
    );
\axaddr_incr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[5]_i_1_n_0\,
      Q => \^axaddr_incr_reg\(5),
      R => '0'
    );
\axaddr_incr_reg[5]_i_3_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[4]_i_3_n_0\,
      CO(3) => \axaddr_incr_reg[8]_i_3_n_0\,
      CO(2) => \axaddr_incr_reg[7]_i_3_n_0\,
      CO(1) => \axaddr_incr_reg[6]_i_3_n_0\,
      CO(0) => \axaddr_incr_reg[5]_i_3_n_0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \axaddr_incr_reg[7]_i_1_n_0\,
      O(2) => \axaddr_incr_reg[6]_i_1_n_0\,
      O(1) => \axaddr_incr_reg[5]_i_1_n_0\,
      O(0) => \axaddr_incr_reg[4]_i_1_n_0\,
      S(3) => \axaddr_incr[7]_i_2_n_0\,
      S(2) => \axaddr_incr[6]_i_2_n_0\,
      S(1) => \axaddr_incr[5]_i_2_n_0\,
      S(0) => \axaddr_incr[4]_i_2_n_0\
    );
\axaddr_incr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[6]_i_1_n_0\,
      Q => \^axaddr_incr_reg\(6),
      R => '0'
    );
\axaddr_incr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[7]_i_1_n_0\,
      Q => \^axaddr_incr_reg\(7),
      R => '0'
    );
\axaddr_incr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[8]_i_1_n_0\,
      Q => \^axaddr_incr_reg\(8),
      R => '0'
    );
\axaddr_incr_reg[8]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[4]_i_4_n_0\,
      CO(3) => \NLW_axaddr_incr_reg[8]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \axaddr_incr_reg[8]_i_4_n_1\,
      CO(1) => \axaddr_incr_reg[8]_i_4_n_2\,
      CO(0) => \axaddr_incr_reg[8]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => C(11 downto 8),
      S(3 downto 0) => \m_payload_i_reg[11]\(3 downto 0)
    );
\axaddr_incr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[9]_i_1_n_0\,
      Q => \^axaddr_incr_reg\(9),
      R => '0'
    );
\axaddr_incr_reg[9]_i_3_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[8]_i_3_n_0\,
      CO(3 downto 2) => \NLW_axaddr_incr_reg[9]_i_3_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \axaddr_incr_reg[10]_i_3_n_0\,
      CO(0) => \axaddr_incr_reg[9]_i_3_n_0\,
      CYINIT => '0',
      DI(3) => \NLW_axaddr_incr_reg[9]_i_3_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \axaddr_incr_reg[11]_i_1_n_0\,
      O(2) => \axaddr_incr_reg[10]_i_1_n_0\,
      O(1) => \axaddr_incr_reg[9]_i_1_n_0\,
      O(0) => \axaddr_incr_reg[8]_i_1_n_0\,
      S(3) => \axaddr_incr[11]_i_2_n_0\,
      S(2) => \axaddr_incr[10]_i_2_n_0\,
      S(1) => \axaddr_incr[9]_i_2_n_0\,
      S(0) => \axaddr_incr[8]_i_2_n_0\
    );
\axlen_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88888B8"
    )
        port map (
      I0 => Q(3),
      I1 => E(0),
      I2 => \^axlen_cnt_reg[5]_0\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \^axlen_cnt_reg[2]_0\(0),
      O => \axlen_cnt[1]_i_1_n_0\
    );
\axlen_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B888888888B8"
    )
        port map (
      I0 => Q(4),
      I1 => E(0),
      I2 => \^axlen_cnt_reg[5]_0\,
      I3 => \^axlen_cnt_reg[2]_0\(0),
      I4 => \axlen_cnt_reg_n_0_[1]\,
      I5 => \axlen_cnt_reg_n_0_[2]\,
      O => \axlen_cnt[2]_i_1_n_0\
    );
\axlen_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5D5D5D5D5D55D"
    )
        port map (
      I0 => \m_payload_i_reg[47]\,
      I1 => \^axlen_cnt_reg[3]_0\,
      I2 => \axlen_cnt_reg_n_0_[3]\,
      I3 => \^axlen_cnt_reg[2]_0\(0),
      I4 => \axlen_cnt_reg_n_0_[1]\,
      I5 => \axlen_cnt_reg_n_0_[2]\,
      O => \axlen_cnt[3]_i_1_n_0\
    );
\axlen_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B8B888"
    )
        port map (
      I0 => Q(5),
      I1 => E(0),
      I2 => \^axlen_cnt_reg[5]_0\,
      I3 => \axlen_cnt[4]_i_2_n_0\,
      I4 => \axlen_cnt_reg_n_0_[4]\,
      O => \axlen_cnt[4]_i_1_n_0\
    );
\axlen_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \^axlen_cnt_reg[2]_0\(0),
      O => \axlen_cnt[4]_i_2_n_0\
    );
\axlen_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B8B888"
    )
        port map (
      I0 => Q(6),
      I1 => E(0),
      I2 => \^axlen_cnt_reg[5]_0\,
      I3 => \axlen_cnt[7]_i_4_n_0\,
      I4 => \axlen_cnt_reg_n_0_[5]\,
      O => \axlen_cnt[5]_i_1_n_0\
    );
\axlen_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88FF8F888888888"
    )
        port map (
      I0 => E(0),
      I1 => Q(7),
      I2 => \axlen_cnt_reg_n_0_[6]\,
      I3 => \axlen_cnt_reg_n_0_[5]\,
      I4 => \axlen_cnt[7]_i_4_n_0\,
      I5 => \^axlen_cnt_reg[3]_0\,
      O => \axlen_cnt[6]_i_1_n_0\
    );
\axlen_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88FF8F888888888"
    )
        port map (
      I0 => E(0),
      I1 => Q(8),
      I2 => \axlen_cnt_reg_n_0_[7]\,
      I3 => \axlen_cnt[7]_i_3_n_0\,
      I4 => \axlen_cnt[7]_i_4_n_0\,
      I5 => \^axlen_cnt_reg[3]_0\,
      O => \axlen_cnt[7]_i_2_n_0\
    );
\axlen_cnt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[5]\,
      I1 => \axlen_cnt_reg_n_0_[6]\,
      O => \axlen_cnt[7]_i_3_n_0\
    );
\axlen_cnt[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^axlen_cnt_reg[2]_0\(0),
      I1 => \axlen_cnt_reg_n_0_[1]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \axlen_cnt_reg_n_0_[3]\,
      I4 => \axlen_cnt_reg_n_0_[4]\,
      O => \axlen_cnt[7]_i_4_n_0\
    );
\axlen_cnt[7]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => E(0),
      I1 => \axlen_cnt[7]_i_6_n_0\,
      I2 => \axlen_cnt_reg_n_0_[4]\,
      I3 => \axlen_cnt_reg_n_0_[5]\,
      I4 => \axlen_cnt_reg_n_0_[1]\,
      O => \^axlen_cnt_reg[3]_0\
    );
\axlen_cnt[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[7]\,
      I3 => \axlen_cnt_reg_n_0_[6]\,
      O => \axlen_cnt[7]_i_6_n_0\
    );
\axlen_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => D(0),
      Q => \^axlen_cnt_reg[2]_0\(0),
      R => '0'
    );
\axlen_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[1]_i_1_n_0\,
      Q => \axlen_cnt_reg_n_0_[1]\,
      R => '0'
    );
\axlen_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[2]_i_1_n_0\,
      Q => \axlen_cnt_reg_n_0_[2]\,
      R => '0'
    );
\axlen_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[3]_i_1_n_0\,
      Q => \axlen_cnt_reg_n_0_[3]\,
      R => '0'
    );
\axlen_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[4]_i_1_n_0\,
      Q => \axlen_cnt_reg_n_0_[4]\,
      R => '0'
    );
\axlen_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[5]_i_1_n_0\,
      Q => \axlen_cnt_reg_n_0_[5]\,
      R => '0'
    );
\axlen_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[6]_i_1_n_0\,
      Q => \axlen_cnt_reg_n_0_[6]\,
      R => '0'
    );
\axlen_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[7]_i_2_n_0\,
      Q => \axlen_cnt_reg_n_0_[7]\,
      R => '0'
    );
\next_pending_r_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[4]\,
      I1 => next_pending_r_i_5_n_0,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[7]\,
      I4 => \axlen_cnt_reg_n_0_[5]\,
      I5 => \axlen_cnt_reg_n_0_[6]\,
      O => \^axlen_cnt_reg[5]_0\
    );
next_pending_r_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[2]\,
      I1 => \axlen_cnt_reg_n_0_[3]\,
      O => next_pending_r_i_5_n_0
    );
next_pending_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => incr_next_pending,
      Q => next_pending_r_reg_0,
      R => '0'
    );
sel_first_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44440F04"
    )
        port map (
      I0 => b_push,
      I1 => \^sel_first_reg_0\,
      I2 => \state_reg[1]\(1),
      I3 => si_rs_awvalid,
      I4 => \state_reg[1]\(0),
      I5 => areset_d1,
      O => sel_first_i_1_n_0
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_i_1_n_0,
      Q => \^sel_first_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd_2 is
  port (
    next_pending_r_reg_0 : out STD_LOGIC;
    axaddr_incr_reg : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axlen_cnt_reg[7]_0\ : out STD_LOGIC;
    next_pending_r_reg_1 : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    \axlen_cnt_reg[4]_0\ : out STD_LOGIC;
    incr_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    sel_first_reg_1 : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \m_payload_i_reg[47]\ : in STD_LOGIC;
    \m_payload_i_reg[35]\ : in STD_LOGIC;
    \m_payload_i_reg[36]\ : in STD_LOGIC;
    \m_payload_i_reg[35]_0\ : in STD_LOGIC;
    \m_payload_i_reg[35]_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[51]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arready : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    si_rs_arvalid : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I26 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd_2 : entity is "axi_protocol_converter_v2_1_b2s_incr_cmd";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd_2;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd_2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \axaddr_incr[0]_i_10_n_0\ : STD_LOGIC;
  signal \axaddr_incr[0]_i_11_n_0\ : STD_LOGIC;
  signal \axaddr_incr[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[0]_i_8_n_0\ : STD_LOGIC;
  signal \axaddr_incr[0]_i_9_n_0\ : STD_LOGIC;
  signal \axaddr_incr[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \^axaddr_incr_reg\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \axaddr_incr_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[0]_i_4_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[0]_i_4_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[0]_i_4_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[0]_i_4_n_4\ : STD_LOGIC;
  signal \axaddr_incr_reg[0]_i_4_n_5\ : STD_LOGIC;
  signal \axaddr_incr_reg[0]_i_4_n_6\ : STD_LOGIC;
  signal \axaddr_incr_reg[0]_i_4_n_7\ : STD_LOGIC;
  signal \axaddr_incr_reg[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[10]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_4_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_4_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_4_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_4_n_4\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_4_n_5\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_4_n_6\ : STD_LOGIC;
  signal \axaddr_incr_reg[4]_i_4_n_7\ : STD_LOGIC;
  signal \axaddr_incr_reg[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_4_n_1\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_4_n_2\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_4_n_3\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_4_n_4\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_4_n_5\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_4_n_6\ : STD_LOGIC;
  signal \axaddr_incr_reg[8]_i_4_n_7\ : STD_LOGIC;
  signal \axaddr_incr_reg[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_incr_reg[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \^axlen_cnt_reg[7]_0\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal sel_first_i_1_n_0 : STD_LOGIC;
  signal \^sel_first_reg_0\ : STD_LOGIC;
  signal \NLW_axaddr_incr_reg[8]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_axaddr_incr_reg[9]_i_3__0_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axaddr_incr_reg[9]_i_3__0_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \axaddr_incr_reg[1]_i_3__0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \axaddr_incr_reg[1]_i_3__0_CARRY4\ : label is "LO:O";
  attribute XILINX_LEGACY_PRIM of \axaddr_incr_reg[5]_i_3__0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP of \axaddr_incr_reg[5]_i_3__0_CARRY4\ : label is "LO:O";
  attribute XILINX_LEGACY_PRIM of \axaddr_incr_reg[9]_i_3__0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP of \axaddr_incr_reg[9]_i_3__0_CARRY4\ : label is "LO:O";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axlen_cnt[4]_i_2__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axlen_cnt[7]_i_3__0\ : label is "soft_lutpair6";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  axaddr_incr_reg(11 downto 0) <= \^axaddr_incr_reg\(11 downto 0);
  \axlen_cnt_reg[7]_0\ <= \^axlen_cnt_reg[7]_0\;
  sel_first_reg_0 <= \^sel_first_reg_0\;
\axaddr_incr[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A060A0A0A0A0A"
    )
        port map (
      I0 => \m_payload_i_reg[51]\(1),
      I1 => \m_payload_i_reg[51]\(4),
      I2 => \m_payload_i_reg[51]\(5),
      I3 => m_axi_arready,
      I4 => \state_reg[1]\(1),
      I5 => \state_reg[1]\(0),
      O => \axaddr_incr[0]_i_10_n_0\
    );
\axaddr_incr[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202010202020202"
    )
        port map (
      I0 => \m_payload_i_reg[51]\(0),
      I1 => \m_payload_i_reg[51]\(5),
      I2 => \m_payload_i_reg[51]\(4),
      I3 => m_axi_arready,
      I4 => \state_reg[1]\(1),
      I5 => \state_reg[1]\(0),
      O => \axaddr_incr[0]_i_11_n_0\
    );
\axaddr_incr[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE100E1"
    )
        port map (
      I0 => \m_payload_i_reg[51]\(5),
      I1 => \m_payload_i_reg[51]\(4),
      I2 => \^axaddr_incr_reg\(0),
      I3 => \^sel_first_reg_0\,
      I4 => \axaddr_incr_reg[0]_i_4_n_7\,
      O => \axaddr_incr[0]_i_3__0_n_0\
    );
\axaddr_incr[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => \m_payload_i_reg[51]\(3),
      I1 => \m_payload_i_reg[51]\(5),
      I2 => \m_payload_i_reg[51]\(4),
      I3 => m_axi_arready,
      I4 => \state_reg[1]\(1),
      I5 => \state_reg[1]\(0),
      O => \axaddr_incr[0]_i_8_n_0\
    );
\axaddr_incr[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A262A2A2A2A2A"
    )
        port map (
      I0 => \m_payload_i_reg[51]\(2),
      I1 => \m_payload_i_reg[51]\(5),
      I2 => \m_payload_i_reg[51]\(4),
      I3 => m_axi_arready,
      I4 => \state_reg[1]\(1),
      I5 => \state_reg[1]\(0),
      O => \axaddr_incr[0]_i_9_n_0\
    );
\axaddr_incr[10]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[8]_i_4_n_5\,
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(10),
      O => \axaddr_incr[10]_i_2__0_n_0\
    );
\axaddr_incr[11]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[8]_i_4_n_4\,
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(11),
      O => \axaddr_incr[11]_i_2__0_n_0\
    );
\axaddr_incr[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD200D2"
    )
        port map (
      I0 => \m_payload_i_reg[51]\(4),
      I1 => \m_payload_i_reg[51]\(5),
      I2 => \^axaddr_incr_reg\(1),
      I3 => \^sel_first_reg_0\,
      I4 => \axaddr_incr_reg[0]_i_4_n_6\,
      O => \axaddr_incr[1]_i_2__0_n_0\
    );
\axaddr_incr[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD200D2"
    )
        port map (
      I0 => \m_payload_i_reg[51]\(5),
      I1 => \m_payload_i_reg[51]\(4),
      I2 => \^axaddr_incr_reg\(2),
      I3 => \^sel_first_reg_0\,
      I4 => \axaddr_incr_reg[0]_i_4_n_5\,
      O => \axaddr_incr[2]_i_2__0_n_0\
    );
\axaddr_incr[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF780078"
    )
        port map (
      I0 => \m_payload_i_reg[51]\(5),
      I1 => \m_payload_i_reg[51]\(4),
      I2 => \^axaddr_incr_reg\(3),
      I3 => \^sel_first_reg_0\,
      I4 => \axaddr_incr_reg[0]_i_4_n_4\,
      O => \axaddr_incr[3]_i_2__0_n_0\
    );
\axaddr_incr[4]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[4]_i_4_n_7\,
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(4),
      O => \axaddr_incr[4]_i_2__0_n_0\
    );
\axaddr_incr[5]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[4]_i_4_n_6\,
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(5),
      O => \axaddr_incr[5]_i_2__0_n_0\
    );
\axaddr_incr[6]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[4]_i_4_n_5\,
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(6),
      O => \axaddr_incr[6]_i_2__0_n_0\
    );
\axaddr_incr[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[4]_i_4_n_4\,
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(7),
      O => \axaddr_incr[7]_i_2__0_n_0\
    );
\axaddr_incr[8]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[8]_i_4_n_7\,
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(8),
      O => \axaddr_incr[8]_i_2__0_n_0\
    );
\axaddr_incr[9]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axaddr_incr_reg[8]_i_4_n_6\,
      I1 => \^sel_first_reg_0\,
      I2 => \^axaddr_incr_reg\(9),
      O => \axaddr_incr[9]_i_2__0_n_0\
    );
\axaddr_incr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[0]_i_2__0_n_0\,
      Q => \^axaddr_incr_reg\(0),
      R => '0'
    );
\axaddr_incr_reg[0]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axaddr_incr_reg[0]_i_4_n_0\,
      CO(2) => \axaddr_incr_reg[0]_i_4_n_1\,
      CO(1) => \axaddr_incr_reg[0]_i_4_n_2\,
      CO(0) => \axaddr_incr_reg[0]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \m_payload_i_reg[51]\(3),
      DI(2 downto 0) => I26(2 downto 0),
      O(3) => \axaddr_incr_reg[0]_i_4_n_4\,
      O(2) => \axaddr_incr_reg[0]_i_4_n_5\,
      O(1) => \axaddr_incr_reg[0]_i_4_n_6\,
      O(0) => \axaddr_incr_reg[0]_i_4_n_7\,
      S(3) => \axaddr_incr[0]_i_8_n_0\,
      S(2) => \axaddr_incr[0]_i_9_n_0\,
      S(1) => \axaddr_incr[0]_i_10_n_0\,
      S(0) => \axaddr_incr[0]_i_11_n_0\
    );
\axaddr_incr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[10]_i_1__0_n_0\,
      Q => \^axaddr_incr_reg\(10),
      R => '0'
    );
\axaddr_incr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[11]_i_1__0_n_0\,
      Q => \^axaddr_incr_reg\(11),
      R => '0'
    );
\axaddr_incr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[1]_i_1__0_n_0\,
      Q => \^axaddr_incr_reg\(1),
      R => '0'
    );
\axaddr_incr_reg[1]_i_3__0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axaddr_incr_reg[4]_i_3__0_n_0\,
      CO(2) => \axaddr_incr_reg[3]_i_3__0_n_0\,
      CO(1) => \axaddr_incr_reg[2]_i_3__0_n_0\,
      CO(0) => \axaddr_incr_reg[1]_i_3__0_n_0\,
      CYINIT => '0',
      DI(3) => \m_payload_i_reg[35]_1\,
      DI(2) => \m_payload_i_reg[35]_0\,
      DI(1) => \m_payload_i_reg[36]\,
      DI(0) => \m_payload_i_reg[35]\,
      O(3) => \axaddr_incr_reg[3]_i_1__0_n_0\,
      O(2) => \axaddr_incr_reg[2]_i_1__0_n_0\,
      O(1) => \axaddr_incr_reg[1]_i_1__0_n_0\,
      O(0) => \axaddr_incr_reg[0]_i_2__0_n_0\,
      S(3) => \axaddr_incr[3]_i_2__0_n_0\,
      S(2) => \axaddr_incr[2]_i_2__0_n_0\,
      S(1) => \axaddr_incr[1]_i_2__0_n_0\,
      S(0) => \axaddr_incr[0]_i_3__0_n_0\
    );
\axaddr_incr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[2]_i_1__0_n_0\,
      Q => \^axaddr_incr_reg\(2),
      R => '0'
    );
\axaddr_incr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[3]_i_1__0_n_0\,
      Q => \^axaddr_incr_reg\(3),
      R => '0'
    );
\axaddr_incr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[4]_i_1__0_n_0\,
      Q => \^axaddr_incr_reg\(4),
      R => '0'
    );
\axaddr_incr_reg[4]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[0]_i_4_n_0\,
      CO(3) => \axaddr_incr_reg[4]_i_4_n_0\,
      CO(2) => \axaddr_incr_reg[4]_i_4_n_1\,
      CO(1) => \axaddr_incr_reg[4]_i_4_n_2\,
      CO(0) => \axaddr_incr_reg[4]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \axaddr_incr_reg[4]_i_4_n_4\,
      O(2) => \axaddr_incr_reg[4]_i_4_n_5\,
      O(1) => \axaddr_incr_reg[4]_i_4_n_6\,
      O(0) => \axaddr_incr_reg[4]_i_4_n_7\,
      S(3 downto 0) => S(3 downto 0)
    );
\axaddr_incr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[5]_i_1__0_n_0\,
      Q => \^axaddr_incr_reg\(5),
      R => '0'
    );
\axaddr_incr_reg[5]_i_3__0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[4]_i_3__0_n_0\,
      CO(3) => \axaddr_incr_reg[8]_i_3__0_n_0\,
      CO(2) => \axaddr_incr_reg[7]_i_3__0_n_0\,
      CO(1) => \axaddr_incr_reg[6]_i_3__0_n_0\,
      CO(0) => \axaddr_incr_reg[5]_i_3__0_n_0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \axaddr_incr_reg[7]_i_1__0_n_0\,
      O(2) => \axaddr_incr_reg[6]_i_1__0_n_0\,
      O(1) => \axaddr_incr_reg[5]_i_1__0_n_0\,
      O(0) => \axaddr_incr_reg[4]_i_1__0_n_0\,
      S(3) => \axaddr_incr[7]_i_2__0_n_0\,
      S(2) => \axaddr_incr[6]_i_2__0_n_0\,
      S(1) => \axaddr_incr[5]_i_2__0_n_0\,
      S(0) => \axaddr_incr[4]_i_2__0_n_0\
    );
\axaddr_incr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[6]_i_1__0_n_0\,
      Q => \^axaddr_incr_reg\(6),
      R => '0'
    );
\axaddr_incr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[7]_i_1__0_n_0\,
      Q => \^axaddr_incr_reg\(7),
      R => '0'
    );
\axaddr_incr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[8]_i_1__0_n_0\,
      Q => \^axaddr_incr_reg\(8),
      R => '0'
    );
\axaddr_incr_reg[8]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[4]_i_4_n_0\,
      CO(3) => \NLW_axaddr_incr_reg[8]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \axaddr_incr_reg[8]_i_4_n_1\,
      CO(1) => \axaddr_incr_reg[8]_i_4_n_2\,
      CO(0) => \axaddr_incr_reg[8]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \axaddr_incr_reg[8]_i_4_n_4\,
      O(2) => \axaddr_incr_reg[8]_i_4_n_5\,
      O(1) => \axaddr_incr_reg[8]_i_4_n_6\,
      O(0) => \axaddr_incr_reg[8]_i_4_n_7\,
      S(3 downto 0) => \m_payload_i_reg[11]\(3 downto 0)
    );
\axaddr_incr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel_first_reg_1,
      D => \axaddr_incr_reg[9]_i_1__0_n_0\,
      Q => \^axaddr_incr_reg\(9),
      R => '0'
    );
\axaddr_incr_reg[9]_i_3__0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_incr_reg[8]_i_3__0_n_0\,
      CO(3 downto 2) => \NLW_axaddr_incr_reg[9]_i_3__0_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \axaddr_incr_reg[10]_i_3__0_n_0\,
      CO(0) => \axaddr_incr_reg[9]_i_3__0_n_0\,
      CYINIT => '0',
      DI(3) => \NLW_axaddr_incr_reg[9]_i_3__0_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \axaddr_incr_reg[11]_i_1__0_n_0\,
      O(2) => \axaddr_incr_reg[10]_i_1__0_n_0\,
      O(1) => \axaddr_incr_reg[9]_i_1__0_n_0\,
      O(0) => \axaddr_incr_reg[8]_i_1__0_n_0\,
      S(3) => \axaddr_incr[11]_i_2__0_n_0\,
      S(2) => \axaddr_incr[10]_i_2__0_n_0\,
      S(1) => \axaddr_incr[9]_i_2__0_n_0\,
      S(0) => \axaddr_incr[8]_i_2__0_n_0\
    );
\axlen_cnt[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F88F88888888"
    )
        port map (
      I0 => E(0),
      I1 => \m_payload_i_reg[51]\(6),
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \state_reg[0]\,
      O => \axlen_cnt[2]_i_1__1_n_0\
    );
\axlen_cnt[3]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA90000FFFFFFFF"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \axlen_cnt_reg_n_0_[2]\,
      I4 => \state_reg[0]\,
      I5 => \m_payload_i_reg[47]\,
      O => \axlen_cnt[3]_i_1__2_n_0\
    );
\axlen_cnt[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \axlen_cnt_reg_n_0_[2]\,
      O => \axlen_cnt_reg[4]_0\
    );
\axlen_cnt[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F88F88888888"
    )
        port map (
      I0 => E(0),
      I1 => \m_payload_i_reg[51]\(7),
      I2 => \axlen_cnt_reg_n_0_[6]\,
      I3 => \^axlen_cnt_reg[7]_0\,
      I4 => \^q\(3),
      I5 => \state_reg[0]\,
      O => \axlen_cnt[6]_i_1__0_n_0\
    );
\axlen_cnt[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F88F88888888"
    )
        port map (
      I0 => E(0),
      I1 => \m_payload_i_reg[51]\(8),
      I2 => \axlen_cnt_reg_n_0_[7]\,
      I3 => \^axlen_cnt_reg[7]_0\,
      I4 => \axlen_cnt[7]_i_4__0_n_0\,
      I5 => \state_reg[0]\,
      O => \axlen_cnt[7]_i_2__0_n_0\
    );
\axlen_cnt[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \axlen_cnt_reg_n_0_[3]\,
      O => \^axlen_cnt_reg[7]_0\
    );
\axlen_cnt[7]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \axlen_cnt_reg_n_0_[6]\,
      O => \axlen_cnt[7]_i_4__0_n_0\
    );
\axlen_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\axlen_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
\axlen_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[2]_i_1__1_n_0\,
      Q => \axlen_cnt_reg_n_0_[2]\,
      R => '0'
    );
\axlen_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[3]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[3]\,
      R => '0'
    );
\axlen_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => D(2),
      Q => \^q\(2),
      R => '0'
    );
\axlen_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => D(3),
      Q => \^q\(3),
      R => '0'
    );
\axlen_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[6]_i_1__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[6]\,
      R => '0'
    );
\axlen_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[7]_i_2__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[7]\,
      R => '0'
    );
\next_pending_r_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \axlen_cnt_reg_n_0_[2]\,
      I4 => \axlen_cnt_reg_n_0_[7]\,
      I5 => \axlen_cnt[7]_i_4__0_n_0\,
      O => next_pending_r_reg_1
    );
next_pending_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => incr_next_pending,
      Q => next_pending_r_reg_0,
      R => '0'
    );
sel_first_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC4C4CFCC"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^sel_first_reg_0\,
      I2 => \state_reg[1]\(1),
      I3 => si_rs_arvalid,
      I4 => \state_reg[1]\(0),
      I5 => areset_d1,
      O => sel_first_i_1_n_0
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_i_1_n_0,
      Q => \^sel_first_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_rd_cmd_fsm is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \axlen_cnt_reg[5]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axlen_cnt_reg[4]\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]_rep_0\ : out STD_LOGIC;
    \state_reg[0]_rep_1\ : out STD_LOGIC;
    \axaddr_offset_r_reg[2]\ : out STD_LOGIC;
    \axaddr_offset_r_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axburst_eq0_reg : out STD_LOGIC;
    wrap_next_pending : out STD_LOGIC;
    sel_first_i : out STD_LOGIC;
    incr_next_pending : out STD_LOGIC;
    s_axburst_eq1_reg : out STD_LOGIC;
    r_push_r_reg : out STD_LOGIC;
    \axlen_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_wrap_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_incr_reg[0]\ : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    \m_payload_i_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[44]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    si_rs_arvalid : in STD_LOGIC;
    \m_payload_i_reg[49]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \wrap_second_len_r_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[0]_0\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_payload_i_reg[47]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axaddr_offset_r_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[35]\ : in STD_LOGIC;
    \axlen_cnt_reg[3]\ : in STD_LOGIC;
    \axlen_cnt_reg[4]_0\ : in STD_LOGIC;
    \axlen_cnt_reg[3]_0\ : in STD_LOGIC;
    \m_payload_i_reg[5]\ : in STD_LOGIC;
    \m_payload_i_reg[46]\ : in STD_LOGIC;
    \state_reg[0]_rep_2\ : in STD_LOGIC;
    next_pending_r_reg : in STD_LOGIC;
    \m_payload_i_reg[48]\ : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    sel_first_reg : in STD_LOGIC;
    sel_first_reg_0 : in STD_LOGIC;
    s_axburst_eq1_reg_0 : in STD_LOGIC;
    \cnt_read_reg[4]\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_rd_cmd_fsm : entity is "axi_protocol_converter_v2_1_b2s_rd_cmd_fsm";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_rd_cmd_fsm;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_rd_cmd_fsm is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axaddr_offset_r_reg[2]\ : STD_LOGIC;
  signal \^axlen_cnt_reg[4]\ : STD_LOGIC;
  signal \^incr_next_pending\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^r_push_r_reg\ : STD_LOGIC;
  signal \^sel_first_i\ : STD_LOGIC;
  signal \state[0]_rep_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_rep_i_1_n_0\ : STD_LOGIC;
  signal \^state_reg[0]_rep_0\ : STD_LOGIC;
  signal \^state_reg[0]_rep_1\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^wrap_next_pending\ : STD_LOGIC;
  signal \wrap_second_len_r[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \^wrap_second_len_r_reg[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_incr[0]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axaddr_wrap[11]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axlen_cnt[3]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axlen_cnt[7]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_axi_arvalid_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of r_push_r_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axburst_eq0_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axburst_eq1_i_1__0\ : label is "soft_lutpair0";
  attribute KEEP : string;
  attribute KEEP of \state_reg[0]\ : label is "yes";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \state_reg[0]\ : label is "state_reg[0]";
  attribute KEEP of \state_reg[0]_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \state_reg[0]_rep\ : label is "state_reg[0]";
  attribute KEEP of \state_reg[1]\ : label is "yes";
  attribute ORIG_CELL_NAME of \state_reg[1]\ : label is "state_reg[1]";
  attribute KEEP of \state_reg[1]_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \state_reg[1]_rep\ : label is "state_reg[1]";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[11]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wrap_cnt_r[1]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wrap_cnt_r[3]_i_1__0\ : label is "soft_lutpair1";
begin
  E(0) <= \^e\(0);
  \axaddr_offset_r_reg[2]\ <= \^axaddr_offset_r_reg[2]\;
  \axlen_cnt_reg[4]\ <= \^axlen_cnt_reg[4]\;
  incr_next_pending <= \^incr_next_pending\;
  r_push_r_reg <= \^r_push_r_reg\;
  sel_first_i <= \^sel_first_i\;
  \state_reg[0]_rep_0\ <= \^state_reg[0]_rep_0\;
  \state_reg[0]_rep_1\ <= \^state_reg[0]_rep_1\;
  \state_reg[1]_0\(1 downto 0) <= \^state_reg[1]_0\(1 downto 0);
  wrap_next_pending <= \^wrap_next_pending\;
  \wrap_second_len_r_reg[3]\(2 downto 0) <= \^wrap_second_len_r_reg[3]\(2 downto 0);
\axaddr_incr[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => sel_first_reg_0,
      I1 => \^state_reg[0]_rep_1\,
      I2 => \^state_reg[0]_rep_0\,
      I3 => m_axi_arready,
      O => \axaddr_incr_reg[0]\
    );
\axaddr_offset_r[2]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axaddr_offset_r_reg[2]\,
      O => \axaddr_offset_r_reg[2]_0\(0)
    );
\axaddr_offset_r[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555553F5555"
    )
        port map (
      I0 => \axaddr_offset_r_reg[3]\(0),
      I1 => \m_payload_i_reg[49]\(3),
      I2 => \m_payload_i_reg[5]\,
      I3 => \^state_reg[1]_0\(1),
      I4 => si_rs_arvalid,
      I5 => \^state_reg[1]_0\(0),
      O => \^axaddr_offset_r_reg[2]\
    );
\axaddr_wrap[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => si_rs_arvalid,
      I1 => \^state_reg[0]_rep_1\,
      I2 => \^state_reg[0]_rep_0\,
      I3 => m_axi_arready,
      O => \axaddr_wrap_reg[0]\(0)
    );
\axlen_cnt[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => Q(0),
      I1 => \^axlen_cnt_reg[4]\,
      I2 => \^state_reg[1]_0\(1),
      I3 => si_rs_arvalid,
      I4 => \^state_reg[1]_0\(0),
      I5 => \m_payload_i_reg[49]\(1),
      O => \axlen_cnt_reg[5]\(0)
    );
\axlen_cnt[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88F8888"
    )
        port map (
      I0 => \^e\(0),
      I1 => \m_payload_i_reg[49]\(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^axlen_cnt_reg[4]\,
      O => \axlen_cnt_reg[5]\(1)
    );
\axlen_cnt[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => si_rs_arvalid,
      I1 => \^state_reg[0]_rep_1\,
      I2 => \^state_reg[0]_rep_0\,
      I3 => m_axi_arready,
      O => \axlen_cnt_reg[0]\(0)
    );
\axlen_cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88F8888"
    )
        port map (
      I0 => \^e\(0),
      I1 => \m_payload_i_reg[49]\(4),
      I2 => Q(2),
      I3 => \axlen_cnt_reg[3]\,
      I4 => \^axlen_cnt_reg[4]\,
      O => \axlen_cnt_reg[5]\(2)
    );
\axlen_cnt[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F88F8888"
    )
        port map (
      I0 => \^e\(0),
      I1 => \m_payload_i_reg[49]\(5),
      I2 => Q(3),
      I3 => \axlen_cnt_reg[4]_0\,
      I4 => \^axlen_cnt_reg[4]\,
      O => \axlen_cnt_reg[5]\(3)
    );
\axlen_cnt[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => si_rs_arvalid,
      I1 => \^state_reg[0]_rep_1\,
      I2 => \^state_reg[0]_rep_0\,
      I3 => m_axi_arready,
      O => \axlen_cnt_reg[0]_0\(0)
    );
\axlen_cnt[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \axlen_cnt_reg[3]_0\,
      I1 => \^state_reg[1]_0\(0),
      I2 => si_rs_arvalid,
      I3 => \^state_reg[1]_0\(1),
      O => \^axlen_cnt_reg[4]\
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^state_reg[0]_rep_1\,
      I1 => \^state_reg[0]_rep_0\,
      O => m_axi_arvalid
    );
\m_payload_i[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^state_reg[0]_rep_0\,
      I1 => \^state_reg[0]_rep_1\,
      I2 => si_rs_arvalid,
      O => \m_payload_i_reg[0]\(0)
    );
\next_pending_r_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF53DC50"
    )
        port map (
      I0 => \m_payload_i_reg[46]\,
      I1 => \^r_push_r_reg\,
      I2 => \^e\(0),
      I3 => \state_reg[0]_rep_2\,
      I4 => next_pending_r_reg,
      O => \^wrap_next_pending\
    );
\next_pending_r_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \m_payload_i_reg[48]\,
      I1 => \^e\(0),
      I2 => \axlen_cnt_reg[3]_0\,
      I3 => \^r_push_r_reg\,
      I4 => next_pending_r_reg_0,
      O => \^incr_next_pending\
    );
r_push_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^state_reg[0]_rep_0\,
      I2 => \^state_reg[0]_rep_1\,
      O => \^r_push_r_reg\
    );
\s_axburst_eq0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^wrap_next_pending\,
      I1 => \m_payload_i_reg[49]\(0),
      I2 => \^sel_first_i\,
      I3 => \^incr_next_pending\,
      O => s_axburst_eq0_reg
    );
\s_axburst_eq1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^wrap_next_pending\,
      I1 => \m_payload_i_reg[49]\(0),
      I2 => \^sel_first_i\,
      I3 => \^incr_next_pending\,
      O => s_axburst_eq1_reg
    );
\sel_first_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFFFFCCCCCCEE"
    )
        port map (
      I0 => si_rs_arvalid,
      I1 => areset_d1,
      I2 => m_axi_arready,
      I3 => \^state_reg[0]_rep_0\,
      I4 => \^state_reg[0]_rep_1\,
      I5 => sel_first_reg,
      O => \^sel_first_i\
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000F00FF70F070"
    )
        port map (
      I0 => m_axi_arready,
      I1 => s_axburst_eq1_reg_0,
      I2 => \^state_reg[1]_0\(0),
      I3 => \cnt_read_reg[4]\,
      I4 => si_rs_arvalid,
      I5 => \^state_reg[0]_rep_0\,
      O => next_state(0)
    );
\state[0]_rep_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000F00FF70F070"
    )
        port map (
      I0 => m_axi_arready,
      I1 => s_axburst_eq1_reg_0,
      I2 => \^state_reg[0]_rep_1\,
      I3 => \cnt_read_reg[4]\,
      I4 => si_rs_arvalid,
      I5 => \^state_reg[0]_rep_0\,
      O => \state[0]_rep_i_1_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00337000"
    )
        port map (
      I0 => s_axburst_eq1_reg_0,
      I1 => \cnt_read_reg[4]\,
      I2 => m_axi_arready,
      I3 => \^state_reg[0]_rep_1\,
      I4 => \^state_reg[1]_0\(1),
      O => next_state(1)
    );
\state[1]_rep_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00337000"
    )
        port map (
      I0 => s_axburst_eq1_reg_0,
      I1 => \cnt_read_reg[4]\,
      I2 => m_axi_arready,
      I3 => \^state_reg[1]_0\(0),
      I4 => \^state_reg[0]_rep_0\,
      O => \state[1]_rep_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => next_state(0),
      Q => \^state_reg[1]_0\(0),
      R => areset_d1
    );
\state_reg[0]_rep\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_rep_i_1_n_0\,
      Q => \^state_reg[0]_rep_1\,
      R => areset_d1
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => next_state(1),
      Q => \^state_reg[1]_0\(1),
      R => areset_d1
    );
\state_reg[1]_rep\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_rep_i_1_n_0\,
      Q => \^state_reg[0]_rep_0\,
      R => areset_d1
    );
\wrap_boundary_axaddr_r[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^state_reg[0]_rep_0\,
      I1 => si_rs_arvalid,
      I2 => \^state_reg[0]_rep_1\,
      O => \^e\(0)
    );
\wrap_cnt_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDD8DDAAAAA8AA"
    )
        port map (
      I0 => \wrap_second_len_r[0]_i_2__0_n_0\,
      I1 => \m_payload_i_reg[0]_0\,
      I2 => \^state_reg[1]_0\(1),
      I3 => si_rs_arvalid,
      I4 => \^state_reg[1]_0\(0),
      I5 => \wrap_second_len_r_reg[3]_0\(0),
      O => D(0)
    );
\wrap_cnt_r[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wrap_second_len_r_reg[3]\(1),
      I1 => \m_payload_i_reg[44]\,
      O => D(1)
    );
\wrap_cnt_r[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \^wrap_second_len_r_reg[3]\(2),
      I1 => \^wrap_second_len_r_reg[3]\(1),
      I2 => \m_payload_i_reg[44]\,
      I3 => \wrap_second_len_r_reg[2]\(0),
      O => D(2)
    );
\wrap_second_len_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCCACC"
    )
        port map (
      I0 => \wrap_second_len_r[0]_i_2__0_n_0\,
      I1 => \wrap_second_len_r_reg[3]_0\(0),
      I2 => \^state_reg[1]_0\(0),
      I3 => si_rs_arvalid,
      I4 => \^state_reg[1]_0\(1),
      I5 => \m_payload_i_reg[0]_0\,
      O => \^wrap_second_len_r_reg[3]\(0)
    );
\wrap_second_len_r[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF2FFFFFFFF"
    )
        port map (
      I0 => \axaddr_offset_r_reg[3]\(1),
      I1 => \^e\(0),
      I2 => \m_payload_i_reg[35]\,
      I3 => \m_payload_i_reg[47]\(1),
      I4 => \m_payload_i_reg[47]\(0),
      I5 => \^axaddr_offset_r_reg[2]\,
      O => \wrap_second_len_r[0]_i_2__0_n_0\
    );
\wrap_second_len_r[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3AAC0AAC3AAC3AA"
    )
        port map (
      I0 => \wrap_second_len_r_reg[3]_0\(1),
      I1 => \m_payload_i_reg[47]\(0),
      I2 => \m_payload_i_reg[47]\(1),
      I3 => \^e\(0),
      I4 => \m_payload_i_reg[47]\(2),
      I5 => \^axaddr_offset_r_reg[2]\,
      O => \^wrap_second_len_r_reg[3]\(1)
    );
\wrap_second_len_r[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \^axaddr_offset_r_reg[2]\,
      I1 => \m_payload_i_reg[47]\(0),
      I2 => \m_payload_i_reg[47]\(1),
      I3 => \m_payload_i_reg[35]\,
      I4 => \^e\(0),
      I5 => \wrap_second_len_r_reg[3]_0\(2),
      O => \^wrap_second_len_r_reg[3]\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo is
  port (
    bresp_push : out STD_LOGIC;
    \cnt_read_reg[0]_rep__0_0\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_rep\ : out STD_LOGIC;
    \state_reg[0]_rep\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_rep_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_push : in STD_LOGIC;
    shandshake_r : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mhandshake_r : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \state_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[0]_rep_0\ : in STD_LOGIC;
    s_axburst_eq0 : in STD_LOGIC;
    \m_payload_i_reg[39]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axburst_eq1 : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \state_reg[1]_rep_1\ : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo : entity is "axi_protocol_converter_v2_1_b2s_simple_fifo";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo is
  signal cnt_read : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \cnt_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[0]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[0]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[0]_rep_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_rep_i_1_n_0\ : STD_LOGIC;
  signal cnt_read_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^cnt_read_reg[0]_rep__0_0\ : STD_LOGIC;
  signal \cnt_read_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_i_2__0_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_i_3_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_i_4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_i_5_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_i_6_n_0\ : STD_LOGIC;
  signal \memory_reg[3][0]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][1]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][2]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][3]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][4]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][5]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][6]_srl4_n_0\ : STD_LOGIC;
  signal \memory_reg[3][7]_srl4_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \^state_reg[1]\ : STD_LOGIC;
  signal \^state_reg[1]_rep\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bresp_cnt[7]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \cnt_read[0]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \cnt_read[0]_rep__0_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \cnt_read[0]_rep__1_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \cnt_read[0]_rep_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \cnt_read[1]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \cnt_read[1]_rep_i_1\ : label is "soft_lutpair103";
  attribute KEEP : string;
  attribute KEEP of \cnt_read_reg[0]\ : label is "yes";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \cnt_read_reg[0]\ : label is "cnt_read_reg[0]";
  attribute KEEP of \cnt_read_reg[0]_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[0]_rep\ : label is "cnt_read_reg[0]";
  attribute KEEP of \cnt_read_reg[0]_rep__0\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[0]_rep__0\ : label is "cnt_read_reg[0]";
  attribute KEEP of \cnt_read_reg[0]_rep__1\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[0]_rep__1\ : label is "cnt_read_reg[0]";
  attribute KEEP of \cnt_read_reg[1]\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[1]\ : label is "cnt_read_reg[1]";
  attribute KEEP of \cnt_read_reg[1]_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[1]_rep\ : label is "cnt_read_reg[1]";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \memory_reg[3][0]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \memory_reg[3][0]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][0]_srl4 ";
  attribute SOFT_HLUTNM of \memory_reg[3][0]_srl4_i_1__0\ : label is "soft_lutpair101";
  attribute srl_bus_name of \memory_reg[3][1]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][1]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][1]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][2]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][2]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][2]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][3]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][3]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][3]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][4]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][4]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][4]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][5]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][5]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][5]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][6]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][6]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][6]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][7]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][7]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][7]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][8]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][8]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][8]_srl4 ";
  attribute SOFT_HLUTNM of \state[0]_i_2\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair100";
begin
  \cnt_read_reg[0]_rep__0_0\ <= \^cnt_read_reg[0]_rep__0_0\;
  \state_reg[1]\ <= \^state_reg[1]\;
  \state_reg[1]_rep\ <= \^state_reg[1]_rep\;
\bresp_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => areset_d1,
      I1 => \memory_reg[3][0]_srl4_i_5_n_0\,
      I2 => \memory_reg[3][0]_srl4_i_4_n_0\,
      I3 => \memory_reg[3][0]_srl4_i_3_n_0\,
      I4 => \memory_reg[3][0]_srl4_i_2__0_n_0\,
      O => SR(0)
    );
\cnt_read[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt_read_0(0),
      I1 => b_push,
      I2 => shandshake_r,
      O => \cnt_read[0]_i_1_n_0\
    );
\cnt_read[0]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^cnt_read_reg[0]_rep__0_0\,
      I1 => b_push,
      I2 => shandshake_r,
      O => \cnt_read[0]_rep__0_i_1_n_0\
    );
\cnt_read[0]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^state_reg[1]\,
      I1 => b_push,
      I2 => shandshake_r,
      O => \cnt_read[0]_rep__1_i_1_n_0\
    );
\cnt_read[0]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep_n_0\,
      I1 => b_push,
      I2 => shandshake_r,
      O => \cnt_read[0]_rep_i_1_n_0\
    );
\cnt_read[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E718"
    )
        port map (
      I0 => \^cnt_read_reg[0]_rep__0_0\,
      I1 => b_push,
      I2 => shandshake_r,
      I3 => cnt_read_0(1),
      O => cnt_read(1)
    );
\cnt_read[1]_rep_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E718"
    )
        port map (
      I0 => \^cnt_read_reg[0]_rep__0_0\,
      I1 => b_push,
      I2 => shandshake_r,
      I3 => \^state_reg[1]_rep\,
      O => \cnt_read[1]_rep_i_1_n_0\
    );
\cnt_read_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_i_1_n_0\,
      Q => cnt_read_0(0),
      S => areset_d1
    );
\cnt_read_reg[0]_rep\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_rep_i_1_n_0\,
      Q => \cnt_read_reg[0]_rep_n_0\,
      S => areset_d1
    );
\cnt_read_reg[0]_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_rep__0_i_1_n_0\,
      Q => \^cnt_read_reg[0]_rep__0_0\,
      S => areset_d1
    );
\cnt_read_reg[0]_rep__1\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_rep__1_i_1_n_0\,
      Q => \^state_reg[1]\,
      S => areset_d1
    );
\cnt_read_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => cnt_read(1),
      Q => cnt_read_0(1),
      S => areset_d1
    );
\cnt_read_reg[1]_rep\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[1]_rep_i_1_n_0\,
      Q => \^state_reg[1]_rep\,
      S => areset_d1
    );
\memory_reg[3][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \cnt_read_reg[0]_rep_n_0\,
      A1 => cnt_read_0(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(0),
      Q => \memory_reg[3][0]_srl4_n_0\
    );
\memory_reg[3][0]_srl4_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \memory_reg[3][0]_srl4_i_2__0_n_0\,
      I1 => \memory_reg[3][0]_srl4_i_3_n_0\,
      I2 => \memory_reg[3][0]_srl4_i_4_n_0\,
      I3 => \memory_reg[3][0]_srl4_i_5_n_0\,
      O => bresp_push
    );
\memory_reg[3][0]_srl4_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D00DD00D0000D00D"
    )
        port map (
      I0 => Q(1),
      I1 => \memory_reg[3][1]_srl4_n_0\,
      I2 => \memory_reg[3][3]_srl4_n_0\,
      I3 => Q(3),
      I4 => \memory_reg[3][4]_srl4_n_0\,
      I5 => Q(4),
      O => \memory_reg[3][0]_srl4_i_2__0_n_0\
    );
\memory_reg[3][0]_srl4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D00D00000000D00D"
    )
        port map (
      I0 => Q(7),
      I1 => \memory_reg[3][7]_srl4_n_0\,
      I2 => Q(5),
      I3 => \memory_reg[3][5]_srl4_n_0\,
      I4 => \memory_reg[3][2]_srl4_n_0\,
      I5 => Q(2),
      O => \memory_reg[3][0]_srl4_i_3_n_0\
    );
\memory_reg[3][0]_srl4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D00D0000"
    )
        port map (
      I0 => \memory_reg[3][7]_srl4_n_0\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => \memory_reg[3][6]_srl4_n_0\,
      I4 => mhandshake_r,
      I5 => \memory_reg[3][0]_srl4_i_6_n_0\,
      O => \memory_reg[3][0]_srl4_i_4_n_0\
    );
\memory_reg[3][0]_srl4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0D00000000DD0D"
    )
        port map (
      I0 => Q(4),
      I1 => \memory_reg[3][4]_srl4_n_0\,
      I2 => \memory_reg[3][1]_srl4_n_0\,
      I3 => Q(1),
      I4 => \memory_reg[3][0]_srl4_n_0\,
      I5 => Q(0),
      O => \memory_reg[3][0]_srl4_i_5_n_0\
    );
\memory_reg[3][0]_srl4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg[1]\,
      I1 => \^state_reg[1]_rep\,
      O => \memory_reg[3][0]_srl4_i_6_n_0\
    );
\memory_reg[3][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \cnt_read_reg[0]_rep_n_0\,
      A1 => cnt_read_0(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(1),
      Q => \memory_reg[3][1]_srl4_n_0\
    );
\memory_reg[3][2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \cnt_read_reg[0]_rep_n_0\,
      A1 => cnt_read_0(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(2),
      Q => \memory_reg[3][2]_srl4_n_0\
    );
\memory_reg[3][3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => \cnt_read_reg[0]_rep_n_0\,
      A1 => cnt_read_0(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(3),
      Q => \memory_reg[3][3]_srl4_n_0\
    );
\memory_reg[3][4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => cnt_read_0(0),
      A1 => cnt_read_0(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(4),
      Q => \memory_reg[3][4]_srl4_n_0\
    );
\memory_reg[3][5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => cnt_read_0(0),
      A1 => cnt_read_0(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(5),
      Q => \memory_reg[3][5]_srl4_n_0\
    );
\memory_reg[3][6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => cnt_read_0(0),
      A1 => cnt_read_0(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(6),
      Q => \memory_reg[3][6]_srl4_n_0\
    );
\memory_reg[3][7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => cnt_read_0(0),
      A1 => cnt_read_0(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(7),
      Q => \memory_reg[3][7]_srl4_n_0\
    );
\memory_reg[3][8]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => cnt_read_0(0),
      A1 => cnt_read_0(1),
      A2 => '0',
      A3 => '0',
      CE => b_push,
      CLK => aclk,
      D => \in\(8),
      Q => \out\(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^state_reg[1]_rep\,
      I1 => \^state_reg[1]\,
      O => \state_reg[0]_rep\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002E220000"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \state_reg[1]_1\(1),
      I2 => \^state_reg[1]\,
      I3 => \^state_reg[1]_rep\,
      I4 => \state_reg[0]_rep_0\,
      I5 => \state[1]_i_2_n_0\,
      O => \state_reg[1]_0\(0)
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000BBB0B"
    )
        port map (
      I0 => \^state_reg[1]\,
      I1 => \^state_reg[1]_rep\,
      I2 => s_axburst_eq0,
      I3 => \m_payload_i_reg[39]\(0),
      I4 => s_axburst_eq1,
      O => \state[1]_i_2_n_0\
    );
\state[1]_rep_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002E220000"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \state_reg[1]_rep_1\,
      I2 => \^state_reg[1]\,
      I3 => \^state_reg[1]_rep\,
      I4 => \state_reg[1]_1\(0),
      I5 => \state[1]_i_2_n_0\,
      O => \state_reg[1]_rep_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized0\ is
  port (
    bvalid_i_reg : out STD_LOGIC;
    mhandshake : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    \skid_buffer_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bresp_push : in STD_LOGIC;
    shandshake_r : in STD_LOGIC;
    \cnt_read_reg[1]_rep\ : in STD_LOGIC;
    \cnt_read_reg[0]_rep__1\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    mhandshake_r : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized0\ : entity is "axi_protocol_converter_v2_1_b2s_simple_fifo";
end \ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized0\;

architecture STRUCTURE of \ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized0\ is
  signal cnt_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cnt_read[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_read[0]_i_1__0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \cnt_read[1]_i_1__0\ : label is "soft_lutpair106";
  attribute KEEP : string;
  attribute KEEP of \cnt_read_reg[0]\ : label is "yes";
  attribute KEEP of \cnt_read_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of m_axi_bready_INST_0 : label is "soft_lutpair105";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \memory_reg[3][0]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \memory_reg[3][0]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3][0]_srl4 ";
  attribute srl_bus_name of \memory_reg[3][1]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3] ";
  attribute srl_name of \memory_reg[3][1]_srl4\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3][1]_srl4 ";
  attribute SOFT_HLUTNM of mhandshake_r_i_1 : label is "soft_lutpair105";
begin
bvalid_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070707"
    )
        port map (
      I0 => cnt_read(0),
      I1 => cnt_read(1),
      I2 => shandshake_r,
      I3 => \cnt_read_reg[1]_rep\,
      I4 => \cnt_read_reg[0]_rep__1\,
      O => bvalid_i_reg
    );
\cnt_read[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt_read(0),
      I1 => bresp_push,
      I2 => shandshake_r,
      O => \cnt_read[0]_i_1__0_n_0\
    );
\cnt_read[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E718"
    )
        port map (
      I0 => cnt_read(0),
      I1 => bresp_push,
      I2 => shandshake_r,
      I3 => cnt_read(1),
      O => \cnt_read[1]_i_1__0_n_0\
    );
\cnt_read_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_i_1__0_n_0\,
      Q => cnt_read(0),
      S => areset_d1
    );
\cnt_read_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[1]_i_1__0_n_0\,
      Q => cnt_read(1),
      S => areset_d1
    );
m_axi_bready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_read(1),
      I1 => cnt_read(0),
      I2 => mhandshake_r,
      O => m_axi_bready
    );
\memory_reg[3][0]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => cnt_read(0),
      A1 => cnt_read(1),
      A2 => '0',
      A3 => '0',
      CE => bresp_push,
      CLK => aclk,
      D => \in\(0),
      Q => \skid_buffer_reg[1]\(0)
    );
\memory_reg[3][1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => cnt_read(0),
      A1 => cnt_read(1),
      A2 => '0',
      A3 => '0',
      CE => bresp_push,
      CLK => aclk,
      D => \in\(1),
      Q => \skid_buffer_reg[1]\(1)
    );
mhandshake_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => mhandshake_r,
      I2 => cnt_read(0),
      I3 => cnt_read(1),
      O => mhandshake
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized1\ is
  port (
    \cnt_read_reg[0]_rep__2_rep__0_0\ : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \state_reg[0]_rep\ : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    si_rs_rready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    \cnt_read_reg[4]_0\ : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized1\ : entity is "axi_protocol_converter_v2_1_b2s_simple_fifo";
end \ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized1\;

architecture STRUCTURE of \ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized1\ is
  signal cnt_read : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cnt_read[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt_read[0]_rep__0_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[0]_rep__1_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[0]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[0]_rep__2_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[0]_rep__2_rep_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[0]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_rep__3_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[2]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[2]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[2]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[2]_rep__2_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[2]_rep__2_rep_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[2]_rep_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[3]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[3]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[3]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[3]_rep__3_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[3]_rep__3_rep_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[3]_rep_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_rep__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_rep__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_rep__3_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_rep_i_1_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[0]_rep__0_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[0]_rep__1_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[0]_rep__2_n_0\ : STD_LOGIC;
  signal \^cnt_read_reg[0]_rep__2_rep__0_0\ : STD_LOGIC;
  signal \cnt_read_reg[0]_rep__2_rep__0_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[0]_rep__2_rep_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[1]_rep__0_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[1]_rep__1_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[1]_rep__2_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[1]_rep__3_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[2]_rep__0_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[2]_rep__1_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[2]_rep__2_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[2]_rep__2_rep__0_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[2]_rep__2_rep_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[2]_rep_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[3]_rep__0_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[3]_rep__1_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[3]_rep__2_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[3]_rep__3_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[3]_rep__3_rep_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[3]_rep_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[4]_rep__0_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[4]_rep__1_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[4]_rep__2_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[4]_rep__3_n_0\ : STD_LOGIC;
  signal \cnt_read_reg[4]_rep_n_0\ : STD_LOGIC;
  signal wr_en0 : STD_LOGIC;
  signal \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][13]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][14]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][15]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][16]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][17]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][18]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][19]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][20]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][21]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][22]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][23]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][24]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][25]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][26]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][27]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][28]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][29]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][30]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][31]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][32]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][33]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_read[0]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_read[0]_rep__0_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_read[0]_rep__1_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_read[0]_rep__2_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_read[0]_rep__2_rep__0_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_read[0]_rep__2_rep_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_read[0]_rep_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_read[1]_i_1__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_read[1]_rep__1_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_read[1]_rep_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_read[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_read[3]_rep__0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_read[3]_rep__1_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_read[3]_rep__2_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_read[3]_rep__3_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_read[3]_rep__3_rep_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_read[3]_rep_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_read[4]_rep_i_1\ : label is "soft_lutpair9";
  attribute KEEP : string;
  attribute KEEP of \cnt_read_reg[0]\ : label is "yes";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \cnt_read_reg[0]\ : label is "cnt_read_reg[0]";
  attribute KEEP of \cnt_read_reg[0]_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[0]_rep\ : label is "cnt_read_reg[0]";
  attribute KEEP of \cnt_read_reg[0]_rep__0\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[0]_rep__0\ : label is "cnt_read_reg[0]";
  attribute KEEP of \cnt_read_reg[0]_rep__1\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[0]_rep__1\ : label is "cnt_read_reg[0]";
  attribute KEEP of \cnt_read_reg[0]_rep__2\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[0]_rep__2\ : label is "cnt_read_reg[0]";
  attribute KEEP of \cnt_read_reg[0]_rep__2_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[0]_rep__2_rep\ : label is "cnt_read_reg[0]";
  attribute KEEP of \cnt_read_reg[0]_rep__2_rep__0\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[0]_rep__2_rep__0\ : label is "cnt_read_reg[0]";
  attribute KEEP of \cnt_read_reg[1]\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[1]\ : label is "cnt_read_reg[1]";
  attribute KEEP of \cnt_read_reg[1]_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[1]_rep\ : label is "cnt_read_reg[1]";
  attribute KEEP of \cnt_read_reg[1]_rep__0\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[1]_rep__0\ : label is "cnt_read_reg[1]";
  attribute KEEP of \cnt_read_reg[1]_rep__1\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[1]_rep__1\ : label is "cnt_read_reg[1]";
  attribute KEEP of \cnt_read_reg[1]_rep__2\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[1]_rep__2\ : label is "cnt_read_reg[1]";
  attribute KEEP of \cnt_read_reg[1]_rep__3\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[1]_rep__3\ : label is "cnt_read_reg[1]";
  attribute KEEP of \cnt_read_reg[2]\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[2]\ : label is "cnt_read_reg[2]";
  attribute KEEP of \cnt_read_reg[2]_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[2]_rep\ : label is "cnt_read_reg[2]";
  attribute KEEP of \cnt_read_reg[2]_rep__0\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[2]_rep__0\ : label is "cnt_read_reg[2]";
  attribute KEEP of \cnt_read_reg[2]_rep__1\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[2]_rep__1\ : label is "cnt_read_reg[2]";
  attribute KEEP of \cnt_read_reg[2]_rep__2\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[2]_rep__2\ : label is "cnt_read_reg[2]";
  attribute KEEP of \cnt_read_reg[2]_rep__2_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[2]_rep__2_rep\ : label is "cnt_read_reg[2]";
  attribute KEEP of \cnt_read_reg[2]_rep__2_rep__0\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[2]_rep__2_rep__0\ : label is "cnt_read_reg[2]";
  attribute KEEP of \cnt_read_reg[3]\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[3]\ : label is "cnt_read_reg[3]";
  attribute KEEP of \cnt_read_reg[3]_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[3]_rep\ : label is "cnt_read_reg[3]";
  attribute KEEP of \cnt_read_reg[3]_rep__0\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[3]_rep__0\ : label is "cnt_read_reg[3]";
  attribute KEEP of \cnt_read_reg[3]_rep__1\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[3]_rep__1\ : label is "cnt_read_reg[3]";
  attribute KEEP of \cnt_read_reg[3]_rep__2\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[3]_rep__2\ : label is "cnt_read_reg[3]";
  attribute KEEP of \cnt_read_reg[3]_rep__3\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[3]_rep__3\ : label is "cnt_read_reg[3]";
  attribute KEEP of \cnt_read_reg[3]_rep__3_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[3]_rep__3_rep\ : label is "cnt_read_reg[3]";
  attribute KEEP of \cnt_read_reg[4]\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[4]\ : label is "cnt_read_reg[4]";
  attribute KEEP of \cnt_read_reg[4]_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[4]_rep\ : label is "cnt_read_reg[4]";
  attribute KEEP of \cnt_read_reg[4]_rep__0\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[4]_rep__0\ : label is "cnt_read_reg[4]";
  attribute KEEP of \cnt_read_reg[4]_rep__1\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[4]_rep__1\ : label is "cnt_read_reg[4]";
  attribute KEEP of \cnt_read_reg[4]_rep__2\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[4]_rep__2\ : label is "cnt_read_reg[4]";
  attribute KEEP of \cnt_read_reg[4]_rep__3\ : label is "yes";
  attribute ORIG_CELL_NAME of \cnt_read_reg[4]_rep__3\ : label is "cnt_read_reg[4]";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \memory_reg[31][0]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \memory_reg[31][0]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][0]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][10]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][10]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][10]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][11]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][11]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][11]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][12]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][12]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][12]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][13]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][13]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][13]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][14]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][14]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][14]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][15]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][15]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][15]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][16]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][16]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][16]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][17]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][17]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][17]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][18]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][18]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][18]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][19]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][19]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][19]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][1]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][1]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][1]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][20]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][20]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][20]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][21]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][21]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][21]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][22]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][22]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][22]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][23]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][23]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][23]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][24]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][24]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][24]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][25]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][25]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][25]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][26]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][26]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][26]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][27]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][27]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][27]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][28]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][28]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][28]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][29]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][29]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][29]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][2]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][2]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][2]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][30]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][30]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][30]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][31]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][31]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][31]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][32]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][32]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][32]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][33]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][33]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][33]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][3]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][3]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][3]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][4]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][4]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][4]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][5]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][5]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][5]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][6]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][6]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][6]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][7]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][7]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][7]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][8]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][8]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][8]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][9]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][9]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][9]_srl32 ";
begin
  \cnt_read_reg[0]_rep__2_rep__0_0\ <= \^cnt_read_reg[0]_rep__2_rep__0_0\;
\cnt_read[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => cnt_read(0),
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      O => \cnt_read[0]_i_1__1_n_0\
    );
\cnt_read[0]_rep__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__0_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      O => \cnt_read[0]_rep__0_i_1__0_n_0\
    );
\cnt_read[0]_rep__1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__1_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      O => \cnt_read[0]_rep__1_i_1__0_n_0\
    );
\cnt_read[0]_rep__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__2_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      O => \cnt_read[0]_rep__2_i_1_n_0\
    );
\cnt_read[0]_rep__2_rep__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__2_rep__0_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      O => \cnt_read[0]_rep__2_rep__0_i_1_n_0\
    );
\cnt_read[0]_rep__2_rep_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__2_rep_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      O => \cnt_read[0]_rep__2_rep_i_1_n_0\
    );
\cnt_read[0]_rep_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"659A"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      O => \cnt_read[0]_rep_i_1__0_n_0\
    );
\cnt_read[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75EF8A10"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__2_rep_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      I4 => cnt_read(1),
      O => \cnt_read[1]_i_1__1_n_0\
    );
\cnt_read[1]_rep__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75EF8A10"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__2_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      I4 => \cnt_read_reg[1]_rep__0_n_0\,
      O => \cnt_read[1]_rep__0_i_1_n_0\
    );
\cnt_read[1]_rep__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75EF8A10"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__2_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      I4 => \cnt_read_reg[1]_rep__1_n_0\,
      O => \cnt_read[1]_rep__1_i_1_n_0\
    );
\cnt_read[1]_rep__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75EF8A10"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__2_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      I4 => \cnt_read_reg[1]_rep__2_n_0\,
      O => \cnt_read[1]_rep__2_i_1_n_0\
    );
\cnt_read[1]_rep__3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75EF8A10"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__2_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      I4 => \cnt_read_reg[1]_rep__3_n_0\,
      O => \cnt_read[1]_rep__3_i_1_n_0\
    );
\cnt_read[1]_rep_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75EF8A10"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__2_rep__0_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      I4 => \cnt_read_reg[1]_rep_n_0\,
      O => \cnt_read[1]_rep_i_1__0_n_0\
    );
\cnt_read[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F77FEFF80880100"
    )
        port map (
      I0 => \cnt_read_reg[1]_rep__3_n_0\,
      I1 => \cnt_read_reg[0]_rep__2_rep_n_0\,
      I2 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I3 => si_rs_rready,
      I4 => wr_en0,
      I5 => cnt_read(2),
      O => \cnt_read[2]_i_1_n_0\
    );
\cnt_read[2]_rep__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F77FEFF80880100"
    )
        port map (
      I0 => \cnt_read_reg[1]_rep__2_n_0\,
      I1 => \cnt_read_reg[0]_rep__2_rep__0_n_0\,
      I2 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I3 => si_rs_rready,
      I4 => wr_en0,
      I5 => \cnt_read_reg[2]_rep__0_n_0\,
      O => \cnt_read[2]_rep__0_i_1_n_0\
    );
\cnt_read[2]_rep__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F77FEFF80880100"
    )
        port map (
      I0 => \cnt_read_reg[1]_rep__2_n_0\,
      I1 => \cnt_read_reg[0]_rep__2_rep__0_n_0\,
      I2 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I3 => si_rs_rready,
      I4 => wr_en0,
      I5 => \cnt_read_reg[2]_rep__1_n_0\,
      O => \cnt_read[2]_rep__1_i_1_n_0\
    );
\cnt_read[2]_rep__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F77FEFF80880100"
    )
        port map (
      I0 => \cnt_read_reg[1]_rep__2_n_0\,
      I1 => \cnt_read_reg[0]_rep__2_rep__0_n_0\,
      I2 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I3 => si_rs_rready,
      I4 => wr_en0,
      I5 => \cnt_read_reg[2]_rep__2_n_0\,
      O => \cnt_read[2]_rep__2_i_1_n_0\
    );
\cnt_read[2]_rep__2_rep__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F77FEFF80880100"
    )
        port map (
      I0 => \cnt_read_reg[1]_rep__2_n_0\,
      I1 => \cnt_read_reg[0]_rep__2_n_0\,
      I2 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I3 => si_rs_rready,
      I4 => wr_en0,
      I5 => \cnt_read_reg[2]_rep__2_rep__0_n_0\,
      O => \cnt_read[2]_rep__2_rep__0_i_1_n_0\
    );
\cnt_read[2]_rep__2_rep_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F77FEFF80880100"
    )
        port map (
      I0 => \cnt_read_reg[1]_rep__2_n_0\,
      I1 => \cnt_read_reg[0]_rep__2_n_0\,
      I2 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I3 => si_rs_rready,
      I4 => wr_en0,
      I5 => \cnt_read_reg[2]_rep__2_rep_n_0\,
      O => \cnt_read[2]_rep__2_rep_i_1_n_0\
    );
\cnt_read[2]_rep_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F77FEFF80880100"
    )
        port map (
      I0 => \cnt_read_reg[1]_rep__2_n_0\,
      I1 => \cnt_read_reg[0]_rep__2_rep__0_n_0\,
      I2 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I3 => si_rs_rready,
      I4 => wr_en0,
      I5 => \cnt_read_reg[2]_rep_n_0\,
      O => \cnt_read[2]_rep_i_1_n_0\
    );
\cnt_read[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_read[4]_i_3_n_0\,
      I1 => cnt_read(3),
      I2 => \cnt_read_reg[2]_rep__2_rep_n_0\,
      O => \cnt_read[3]_i_1_n_0\
    );
\cnt_read[3]_rep__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_read[4]_i_3_n_0\,
      I1 => \cnt_read_reg[3]_rep__0_n_0\,
      I2 => \cnt_read_reg[2]_rep__2_rep__0_n_0\,
      O => \cnt_read[3]_rep__0_i_1_n_0\
    );
\cnt_read[3]_rep__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_read[4]_i_3_n_0\,
      I1 => \cnt_read_reg[3]_rep__1_n_0\,
      I2 => \cnt_read_reg[2]_rep__2_rep__0_n_0\,
      O => \cnt_read[3]_rep__1_i_1_n_0\
    );
\cnt_read[3]_rep__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_read[4]_i_3_n_0\,
      I1 => \cnt_read_reg[3]_rep__2_n_0\,
      I2 => \cnt_read_reg[2]_rep__2_rep__0_n_0\,
      O => \cnt_read[3]_rep__2_i_1_n_0\
    );
\cnt_read[3]_rep__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_read[4]_i_3_n_0\,
      I1 => \cnt_read_reg[3]_rep__3_n_0\,
      I2 => \cnt_read_reg[2]_rep__2_rep__0_n_0\,
      O => \cnt_read[3]_rep__3_i_1_n_0\
    );
\cnt_read[3]_rep__3_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_read[4]_i_3_n_0\,
      I1 => \cnt_read_reg[3]_rep__3_rep_n_0\,
      I2 => \cnt_read_reg[2]_rep__2_n_0\,
      O => \cnt_read[3]_rep__3_rep_i_1_n_0\
    );
\cnt_read[3]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_read[4]_i_3_n_0\,
      I1 => \cnt_read_reg[3]_rep_n_0\,
      I2 => \cnt_read_reg[2]_rep__2_rep_n_0\,
      O => \cnt_read[3]_rep_i_1_n_0\
    );
\cnt_read[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AA59AAA"
    )
        port map (
      I0 => cnt_read(4),
      I1 => \cnt_read[4]_i_2_n_0\,
      I2 => \cnt_read_reg[3]_rep__3_rep_n_0\,
      I3 => \cnt_read_reg[2]_rep__2_rep_n_0\,
      I4 => \cnt_read[4]_i_3_n_0\,
      O => \cnt_read[4]_i_1_n_0\
    );
\cnt_read[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75FFFFFF"
    )
        port map (
      I0 => \cnt_read_reg[1]_rep__3_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      I4 => \cnt_read_reg[0]_rep__2_rep_n_0\,
      O => \cnt_read[4]_i_2_n_0\
    );
\cnt_read[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75FFFFFF00000010"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__2_rep_n_0\,
      I1 => \^cnt_read_reg[0]_rep__2_rep__0_0\,
      I2 => si_rs_rready,
      I3 => wr_en0,
      I4 => \cnt_read_reg[1]_rep__2_n_0\,
      I5 => \cnt_read_reg[2]_rep__2_rep_n_0\,
      O => \cnt_read[4]_i_3_n_0\
    );
\cnt_read[4]_rep__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AA59AAA"
    )
        port map (
      I0 => \cnt_read_reg[4]_rep__0_n_0\,
      I1 => \cnt_read[4]_i_2_n_0\,
      I2 => \cnt_read_reg[3]_rep__3_n_0\,
      I3 => \cnt_read_reg[2]_rep__2_n_0\,
      I4 => \cnt_read[4]_i_3_n_0\,
      O => \cnt_read[4]_rep__0_i_1_n_0\
    );
\cnt_read[4]_rep__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AA59AAA"
    )
        port map (
      I0 => \cnt_read_reg[4]_rep__1_n_0\,
      I1 => \cnt_read[4]_i_2_n_0\,
      I2 => \cnt_read_reg[3]_rep__3_n_0\,
      I3 => \cnt_read_reg[2]_rep__2_n_0\,
      I4 => \cnt_read[4]_i_3_n_0\,
      O => \cnt_read[4]_rep__1_i_1_n_0\
    );
\cnt_read[4]_rep__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AA59AAA"
    )
        port map (
      I0 => \cnt_read_reg[4]_rep__2_n_0\,
      I1 => \cnt_read[4]_i_2_n_0\,
      I2 => \cnt_read_reg[3]_rep__3_n_0\,
      I3 => \cnt_read_reg[2]_rep__2_n_0\,
      I4 => \cnt_read[4]_i_3_n_0\,
      O => \cnt_read[4]_rep__2_i_1_n_0\
    );
\cnt_read[4]_rep__3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AA59AAA"
    )
        port map (
      I0 => \cnt_read_reg[4]_rep__3_n_0\,
      I1 => \cnt_read[4]_i_2_n_0\,
      I2 => \cnt_read_reg[3]_rep__3_n_0\,
      I3 => \cnt_read_reg[2]_rep__2_n_0\,
      I4 => \cnt_read[4]_i_3_n_0\,
      O => \cnt_read[4]_rep__3_i_1_n_0\
    );
\cnt_read[4]_rep_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AA59AAA"
    )
        port map (
      I0 => \cnt_read_reg[4]_rep_n_0\,
      I1 => \cnt_read[4]_i_2_n_0\,
      I2 => \cnt_read_reg[3]_rep__3_n_0\,
      I3 => \cnt_read_reg[2]_rep__2_rep__0_n_0\,
      I4 => \cnt_read[4]_i_3_n_0\,
      O => \cnt_read[4]_rep_i_1_n_0\
    );
\cnt_read_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_i_1__1_n_0\,
      Q => cnt_read(0),
      S => areset_d1
    );
\cnt_read_reg[0]_rep\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_rep_i_1__0_n_0\,
      Q => \cnt_read_reg[0]_rep_n_0\,
      S => areset_d1
    );
\cnt_read_reg[0]_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_rep__0_i_1__0_n_0\,
      Q => \cnt_read_reg[0]_rep__0_n_0\,
      S => areset_d1
    );
\cnt_read_reg[0]_rep__1\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_rep__1_i_1__0_n_0\,
      Q => \cnt_read_reg[0]_rep__1_n_0\,
      S => areset_d1
    );
\cnt_read_reg[0]_rep__2\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_rep__2_i_1_n_0\,
      Q => \cnt_read_reg[0]_rep__2_n_0\,
      S => areset_d1
    );
\cnt_read_reg[0]_rep__2_rep\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_rep__2_rep_i_1_n_0\,
      Q => \cnt_read_reg[0]_rep__2_rep_n_0\,
      S => areset_d1
    );
\cnt_read_reg[0]_rep__2_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_rep__2_rep__0_i_1_n_0\,
      Q => \cnt_read_reg[0]_rep__2_rep__0_n_0\,
      S => areset_d1
    );
\cnt_read_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[1]_i_1__1_n_0\,
      Q => cnt_read(1),
      S => areset_d1
    );
\cnt_read_reg[1]_rep\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[1]_rep_i_1__0_n_0\,
      Q => \cnt_read_reg[1]_rep_n_0\,
      S => areset_d1
    );
\cnt_read_reg[1]_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[1]_rep__0_i_1_n_0\,
      Q => \cnt_read_reg[1]_rep__0_n_0\,
      S => areset_d1
    );
\cnt_read_reg[1]_rep__1\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[1]_rep__1_i_1_n_0\,
      Q => \cnt_read_reg[1]_rep__1_n_0\,
      S => areset_d1
    );
\cnt_read_reg[1]_rep__2\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[1]_rep__2_i_1_n_0\,
      Q => \cnt_read_reg[1]_rep__2_n_0\,
      S => areset_d1
    );
\cnt_read_reg[1]_rep__3\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[1]_rep__3_i_1_n_0\,
      Q => \cnt_read_reg[1]_rep__3_n_0\,
      S => areset_d1
    );
\cnt_read_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[2]_i_1_n_0\,
      Q => cnt_read(2),
      S => areset_d1
    );
\cnt_read_reg[2]_rep\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[2]_rep_i_1_n_0\,
      Q => \cnt_read_reg[2]_rep_n_0\,
      S => areset_d1
    );
\cnt_read_reg[2]_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[2]_rep__0_i_1_n_0\,
      Q => \cnt_read_reg[2]_rep__0_n_0\,
      S => areset_d1
    );
\cnt_read_reg[2]_rep__1\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[2]_rep__1_i_1_n_0\,
      Q => \cnt_read_reg[2]_rep__1_n_0\,
      S => areset_d1
    );
\cnt_read_reg[2]_rep__2\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[2]_rep__2_i_1_n_0\,
      Q => \cnt_read_reg[2]_rep__2_n_0\,
      S => areset_d1
    );
\cnt_read_reg[2]_rep__2_rep\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[2]_rep__2_rep_i_1_n_0\,
      Q => \cnt_read_reg[2]_rep__2_rep_n_0\,
      S => areset_d1
    );
\cnt_read_reg[2]_rep__2_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[2]_rep__2_rep__0_i_1_n_0\,
      Q => \cnt_read_reg[2]_rep__2_rep__0_n_0\,
      S => areset_d1
    );
\cnt_read_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[3]_i_1_n_0\,
      Q => cnt_read(3),
      S => areset_d1
    );
\cnt_read_reg[3]_rep\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[3]_rep_i_1_n_0\,
      Q => \cnt_read_reg[3]_rep_n_0\,
      S => areset_d1
    );
\cnt_read_reg[3]_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[3]_rep__0_i_1_n_0\,
      Q => \cnt_read_reg[3]_rep__0_n_0\,
      S => areset_d1
    );
\cnt_read_reg[3]_rep__1\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[3]_rep__1_i_1_n_0\,
      Q => \cnt_read_reg[3]_rep__1_n_0\,
      S => areset_d1
    );
\cnt_read_reg[3]_rep__2\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[3]_rep__2_i_1_n_0\,
      Q => \cnt_read_reg[3]_rep__2_n_0\,
      S => areset_d1
    );
\cnt_read_reg[3]_rep__3\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[3]_rep__3_i_1_n_0\,
      Q => \cnt_read_reg[3]_rep__3_n_0\,
      S => areset_d1
    );
\cnt_read_reg[3]_rep__3_rep\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[3]_rep__3_rep_i_1_n_0\,
      Q => \cnt_read_reg[3]_rep__3_rep_n_0\,
      S => areset_d1
    );
\cnt_read_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[4]_i_1_n_0\,
      Q => cnt_read(4),
      S => areset_d1
    );
\cnt_read_reg[4]_rep\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[4]_rep_i_1_n_0\,
      Q => \cnt_read_reg[4]_rep_n_0\,
      S => areset_d1
    );
\cnt_read_reg[4]_rep__0\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[4]_rep__0_i_1_n_0\,
      Q => \cnt_read_reg[4]_rep__0_n_0\,
      S => areset_d1
    );
\cnt_read_reg[4]_rep__1\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[4]_rep__1_i_1_n_0\,
      Q => \cnt_read_reg[4]_rep__1_n_0\,
      S => areset_d1
    );
\cnt_read_reg[4]_rep__2\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[4]_rep__2_i_1_n_0\,
      Q => \cnt_read_reg[4]_rep__2_n_0\,
      S => areset_d1
    );
\cnt_read_reg[4]_rep__3\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[4]_rep__3_i_1_n_0\,
      Q => \cnt_read_reg[4]_rep__3_n_0\,
      S => areset_d1
    );
m_axi_rready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F77F777F"
    )
        port map (
      I0 => \cnt_read_reg[4]_rep__3_n_0\,
      I1 => \cnt_read_reg[3]_rep__3_rep_n_0\,
      I2 => \cnt_read_reg[1]_rep__2_n_0\,
      I3 => \cnt_read_reg[2]_rep__2_rep_n_0\,
      I4 => \cnt_read_reg[0]_rep__2_rep_n_0\,
      O => m_axi_rready
    );
m_valid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => \cnt_read_reg[3]_rep__3_rep_n_0\,
      I1 => \cnt_read_reg[4]_rep__3_n_0\,
      I2 => \cnt_read_reg[0]_rep__2_rep_n_0\,
      I3 => \cnt_read_reg[2]_rep__2_rep_n_0\,
      I4 => \cnt_read_reg[1]_rep__3_n_0\,
      I5 => \cnt_read_reg[4]_0\,
      O => \^cnt_read_reg[0]_rep__2_rep__0_0\
    );
\memory_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__2_n_0\,
      A(3) => \cnt_read_reg[3]_rep__2_n_0\,
      A(2) => \cnt_read_reg[2]_rep__1_n_0\,
      A(1) => \cnt_read_reg[1]_rep__1_n_0\,
      A(0) => \cnt_read_reg[0]_rep__1_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(0),
      Q => \out\(0),
      Q31 => \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][0]_srl32_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2A2AAA2A2A2AAA"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => \cnt_read_reg[4]_rep__3_n_0\,
      I2 => \cnt_read_reg[3]_rep__3_rep_n_0\,
      I3 => \cnt_read_reg[1]_rep__3_n_0\,
      I4 => \cnt_read_reg[2]_rep__2_rep_n_0\,
      I5 => \cnt_read_reg[0]_rep__2_rep_n_0\,
      O => wr_en0
    );
\memory_reg[31][10]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__1_n_0\,
      A(3) => \cnt_read_reg[3]_rep__1_n_0\,
      A(2) => \cnt_read_reg[2]_rep__0_n_0\,
      A(1) => \cnt_read_reg[1]_rep__0_n_0\,
      A(0) => \cnt_read_reg[0]_rep__0_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(10),
      Q => \out\(10),
      Q31 => \NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][11]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__1_n_0\,
      A(3) => \cnt_read_reg[3]_rep__1_n_0\,
      A(2) => \cnt_read_reg[2]_rep__0_n_0\,
      A(1) => \cnt_read_reg[1]_rep__0_n_0\,
      A(0) => \cnt_read_reg[0]_rep__0_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(11),
      Q => \out\(11),
      Q31 => \NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][12]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__1_n_0\,
      A(3) => \cnt_read_reg[3]_rep__1_n_0\,
      A(2) => \cnt_read_reg[2]_rep__0_n_0\,
      A(1) => \cnt_read_reg[1]_rep__0_n_0\,
      A(0) => \cnt_read_reg[0]_rep__0_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(12),
      Q => \out\(12),
      Q31 => \NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][13]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__0_n_0\,
      A(3) => \cnt_read_reg[3]_rep__0_n_0\,
      A(2) => \cnt_read_reg[2]_rep__0_n_0\,
      A(1) => \cnt_read_reg[1]_rep__0_n_0\,
      A(0) => \cnt_read_reg[0]_rep__0_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(13),
      Q => \out\(13),
      Q31 => \NLW_memory_reg[31][13]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][14]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__0_n_0\,
      A(3) => \cnt_read_reg[3]_rep__0_n_0\,
      A(2) => \cnt_read_reg[2]_rep__0_n_0\,
      A(1) => \cnt_read_reg[1]_rep__0_n_0\,
      A(0) => \cnt_read_reg[0]_rep__0_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(14),
      Q => \out\(14),
      Q31 => \NLW_memory_reg[31][14]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][15]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__0_n_0\,
      A(3) => \cnt_read_reg[3]_rep__0_n_0\,
      A(2) => \cnt_read_reg[2]_rep__0_n_0\,
      A(1) => \cnt_read_reg[1]_rep__0_n_0\,
      A(0) => \cnt_read_reg[0]_rep__0_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(15),
      Q => \out\(15),
      Q31 => \NLW_memory_reg[31][15]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][16]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__0_n_0\,
      A(3) => \cnt_read_reg[3]_rep__0_n_0\,
      A(2) => \cnt_read_reg[2]_rep_n_0\,
      A(1) => \cnt_read_reg[1]_rep_n_0\,
      A(0) => \cnt_read_reg[0]_rep_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(16),
      Q => \out\(16),
      Q31 => \NLW_memory_reg[31][16]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][17]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__0_n_0\,
      A(3) => \cnt_read_reg[3]_rep__0_n_0\,
      A(2) => \cnt_read_reg[2]_rep_n_0\,
      A(1) => \cnt_read_reg[1]_rep_n_0\,
      A(0) => \cnt_read_reg[0]_rep_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(17),
      Q => \out\(17),
      Q31 => \NLW_memory_reg[31][17]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][18]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__0_n_0\,
      A(3) => \cnt_read_reg[3]_rep__0_n_0\,
      A(2) => \cnt_read_reg[2]_rep_n_0\,
      A(1) => \cnt_read_reg[1]_rep_n_0\,
      A(0) => \cnt_read_reg[0]_rep_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(18),
      Q => \out\(18),
      Q31 => \NLW_memory_reg[31][18]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][19]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__0_n_0\,
      A(3) => \cnt_read_reg[3]_rep__0_n_0\,
      A(2) => \cnt_read_reg[2]_rep_n_0\,
      A(1) => \cnt_read_reg[1]_rep_n_0\,
      A(0) => \cnt_read_reg[0]_rep_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(19),
      Q => \out\(19),
      Q31 => \NLW_memory_reg[31][19]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__2_n_0\,
      A(3) => \cnt_read_reg[3]_rep__2_n_0\,
      A(2) => \cnt_read_reg[2]_rep__1_n_0\,
      A(1) => \cnt_read_reg[1]_rep__1_n_0\,
      A(0) => \cnt_read_reg[0]_rep__1_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(1),
      Q => \out\(1),
      Q31 => \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][20]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep_n_0\,
      A(3) => \cnt_read_reg[3]_rep_n_0\,
      A(2) => \cnt_read_reg[2]_rep_n_0\,
      A(1) => \cnt_read_reg[1]_rep_n_0\,
      A(0) => \cnt_read_reg[0]_rep_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(20),
      Q => \out\(20),
      Q31 => \NLW_memory_reg[31][20]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][21]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep_n_0\,
      A(3) => \cnt_read_reg[3]_rep_n_0\,
      A(2) => \cnt_read_reg[2]_rep_n_0\,
      A(1) => \cnt_read_reg[1]_rep_n_0\,
      A(0) => \cnt_read_reg[0]_rep_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(21),
      Q => \out\(21),
      Q31 => \NLW_memory_reg[31][21]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][22]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep_n_0\,
      A(3) => \cnt_read_reg[3]_rep_n_0\,
      A(2) => \cnt_read_reg[2]_rep_n_0\,
      A(1) => \cnt_read_reg[1]_rep_n_0\,
      A(0) => \cnt_read_reg[0]_rep_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(22),
      Q => \out\(22),
      Q31 => \NLW_memory_reg[31][22]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][23]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep_n_0\,
      A(3) => \cnt_read_reg[3]_rep_n_0\,
      A(2) => \cnt_read_reg[2]_rep_n_0\,
      A(1) => \cnt_read_reg[1]_rep_n_0\,
      A(0) => \cnt_read_reg[0]_rep_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(23),
      Q => \out\(23),
      Q31 => \NLW_memory_reg[31][23]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][24]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep_n_0\,
      A(3) => \cnt_read_reg[3]_rep_n_0\,
      A(2) => \cnt_read_reg[2]_rep_n_0\,
      A(1) => \cnt_read_reg[1]_rep_n_0\,
      A(0) => \cnt_read_reg[0]_rep_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(24),
      Q => \out\(24),
      Q31 => \NLW_memory_reg[31][24]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][25]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep_n_0\,
      A(3) => \cnt_read_reg[3]_rep_n_0\,
      A(2 downto 0) => cnt_read(2 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(25),
      Q => \out\(25),
      Q31 => \NLW_memory_reg[31][25]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][26]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep_n_0\,
      A(3) => \cnt_read_reg[3]_rep_n_0\,
      A(2 downto 0) => cnt_read(2 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(26),
      Q => \out\(26),
      Q31 => \NLW_memory_reg[31][26]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][27]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(27),
      Q => \out\(27),
      Q31 => \NLW_memory_reg[31][27]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][28]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(28),
      Q => \out\(28),
      Q31 => \NLW_memory_reg[31][28]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][29]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(29),
      Q => \out\(29),
      Q31 => \NLW_memory_reg[31][29]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__2_n_0\,
      A(3) => \cnt_read_reg[3]_rep__2_n_0\,
      A(2) => \cnt_read_reg[2]_rep__1_n_0\,
      A(1) => \cnt_read_reg[1]_rep__1_n_0\,
      A(0) => \cnt_read_reg[0]_rep__1_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(2),
      Q => \out\(2),
      Q31 => \NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][30]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(30),
      Q => \out\(30),
      Q31 => \NLW_memory_reg[31][30]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(31),
      Q => \out\(31),
      Q31 => \NLW_memory_reg[31][31]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][32]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(32),
      Q => \out\(32),
      Q31 => \NLW_memory_reg[31][32]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][33]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read(4 downto 0),
      CE => wr_en0,
      CLK => aclk,
      D => \in\(33),
      Q => \out\(33),
      Q31 => \NLW_memory_reg[31][33]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__2_n_0\,
      A(3) => \cnt_read_reg[3]_rep__2_n_0\,
      A(2) => \cnt_read_reg[2]_rep__1_n_0\,
      A(1) => \cnt_read_reg[1]_rep__1_n_0\,
      A(0) => \cnt_read_reg[0]_rep__1_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(3),
      Q => \out\(3),
      Q31 => \NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][4]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__2_n_0\,
      A(3) => \cnt_read_reg[3]_rep__2_n_0\,
      A(2) => \cnt_read_reg[2]_rep__1_n_0\,
      A(1) => \cnt_read_reg[1]_rep__1_n_0\,
      A(0) => \cnt_read_reg[0]_rep__1_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(4),
      Q => \out\(4),
      Q31 => \NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][5]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__2_n_0\,
      A(3) => \cnt_read_reg[3]_rep__2_n_0\,
      A(2) => \cnt_read_reg[2]_rep__1_n_0\,
      A(1) => \cnt_read_reg[1]_rep__1_n_0\,
      A(0) => \cnt_read_reg[0]_rep__1_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(5),
      Q => \out\(5),
      Q31 => \NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][6]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__1_n_0\,
      A(3) => \cnt_read_reg[3]_rep__1_n_0\,
      A(2) => \cnt_read_reg[2]_rep__1_n_0\,
      A(1) => \cnt_read_reg[1]_rep__1_n_0\,
      A(0) => \cnt_read_reg[0]_rep__1_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(6),
      Q => \out\(6),
      Q31 => \NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][7]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__1_n_0\,
      A(3) => \cnt_read_reg[3]_rep__1_n_0\,
      A(2) => \cnt_read_reg[2]_rep__0_n_0\,
      A(1) => \cnt_read_reg[1]_rep__0_n_0\,
      A(0) => \cnt_read_reg[0]_rep__0_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(7),
      Q => \out\(7),
      Q31 => \NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][8]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__1_n_0\,
      A(3) => \cnt_read_reg[3]_rep__1_n_0\,
      A(2) => \cnt_read_reg[2]_rep__0_n_0\,
      A(1) => \cnt_read_reg[1]_rep__0_n_0\,
      A(0) => \cnt_read_reg[0]_rep__0_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(8),
      Q => \out\(8),
      Q31 => \NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][9]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => \cnt_read_reg[4]_rep__1_n_0\,
      A(3) => \cnt_read_reg[3]_rep__1_n_0\,
      A(2) => \cnt_read_reg[2]_rep__0_n_0\,
      A(1) => \cnt_read_reg[1]_rep__0_n_0\,
      A(0) => \cnt_read_reg[0]_rep__0_n_0\,
      CE => wr_en0,
      CLK => aclk,
      D => \in\(9),
      Q => \out\(9),
      Q31 => \NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED\
    );
\state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7C000000"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__2_rep_n_0\,
      I1 => \cnt_read_reg[2]_rep__2_rep_n_0\,
      I2 => \cnt_read_reg[1]_rep__3_n_0\,
      I3 => \cnt_read_reg[3]_rep__3_rep_n_0\,
      I4 => \cnt_read_reg[4]_rep__3_n_0\,
      O => \state_reg[0]_rep\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized2\ is
  port (
    \state_reg[0]_rep\ : out STD_LOGIC;
    \cnt_read_reg[0]_rep__2_rep__0\ : out STD_LOGIC;
    \skid_buffer_reg[35]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    si_rs_rready : in STD_LOGIC;
    \cnt_read_reg[3]_rep__3_rep\ : in STD_LOGIC;
    r_push_r : in STD_LOGIC;
    \cnt_read_reg[0]_rep__2_rep\ : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized2\ : entity is "axi_protocol_converter_v2_1_b2s_simple_fifo";
end \ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized2\;

architecture STRUCTURE of \ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized2\ is
  signal cnt_read : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cnt_read[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt_read[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt_read[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_read[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_read[1]_i_1__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_read[3]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_read[4]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_read[4]_i_2__0\ : label is "soft_lutpair18";
  attribute KEEP : string;
  attribute KEEP of \cnt_read_reg[0]\ : label is "yes";
  attribute KEEP of \cnt_read_reg[1]\ : label is "yes";
  attribute KEEP of \cnt_read_reg[2]\ : label is "yes";
  attribute KEEP of \cnt_read_reg[3]\ : label is "yes";
  attribute KEEP of \cnt_read_reg[4]\ : label is "yes";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \memory_reg[31][0]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \memory_reg[31][0]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][0]_srl32 ";
  attribute srl_bus_name of \memory_reg[31][1]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] ";
  attribute srl_name of \memory_reg[31][1]_srl32\ : label is "inst/\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][1]_srl32 ";
begin
\cnt_read[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => cnt_read(0),
      I1 => si_rs_rready,
      I2 => \cnt_read_reg[3]_rep__3_rep\,
      I3 => r_push_r,
      O => \cnt_read[0]_i_1__2_n_0\
    );
\cnt_read[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77E78818"
    )
        port map (
      I0 => cnt_read(0),
      I1 => r_push_r,
      I2 => si_rs_rready,
      I3 => \cnt_read_reg[3]_rep__3_rep\,
      I4 => cnt_read(1),
      O => \cnt_read[1]_i_1__2_n_0\
    );
\cnt_read[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7FFE7F80800180"
    )
        port map (
      I0 => cnt_read(1),
      I1 => cnt_read(0),
      I2 => r_push_r,
      I3 => si_rs_rready,
      I4 => \cnt_read_reg[3]_rep__3_rep\,
      I5 => cnt_read(2),
      O => \cnt_read[2]_i_1__0_n_0\
    );
\cnt_read[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_read[4]_i_3__0_n_0\,
      I1 => cnt_read(3),
      I2 => cnt_read(2),
      O => \cnt_read[3]_i_1__0_n_0\
    );
\cnt_read[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AA59AAA"
    )
        port map (
      I0 => cnt_read(4),
      I1 => \cnt_read[4]_i_2__0_n_0\,
      I2 => cnt_read(3),
      I3 => cnt_read(2),
      I4 => \cnt_read[4]_i_3__0_n_0\,
      O => \cnt_read[4]_i_1__0_n_0\
    );
\cnt_read[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5DFFFFFF"
    )
        port map (
      I0 => cnt_read(1),
      I1 => si_rs_rready,
      I2 => \cnt_read_reg[3]_rep__3_rep\,
      I3 => r_push_r,
      I4 => cnt_read(0),
      O => \cnt_read[4]_i_2__0_n_0\
    );
\cnt_read[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7FFFF00000010"
    )
        port map (
      I0 => cnt_read(0),
      I1 => r_push_r,
      I2 => si_rs_rready,
      I3 => \cnt_read_reg[3]_rep__3_rep\,
      I4 => cnt_read(1),
      I5 => cnt_read(2),
      O => \cnt_read[4]_i_3__0_n_0\
    );
\cnt_read_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[0]_i_1__2_n_0\,
      Q => cnt_read(0),
      S => areset_d1
    );
\cnt_read_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[1]_i_1__2_n_0\,
      Q => cnt_read(1),
      S => areset_d1
    );
\cnt_read_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[2]_i_1__0_n_0\,
      Q => cnt_read(2),
      S => areset_d1
    );
\cnt_read_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[3]_i_1__0_n_0\,
      Q => cnt_read(3),
      S => areset_d1
    );
\cnt_read_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt_read[4]_i_1__0_n_0\,
      Q => cnt_read(4),
      S => areset_d1
    );
m_valid_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt_read(4),
      I1 => cnt_read(3),
      I2 => cnt_read(1),
      I3 => cnt_read(2),
      I4 => cnt_read(0),
      O => \cnt_read_reg[0]_rep__2_rep__0\
    );
\memory_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(0),
      Q => \skid_buffer_reg[35]\(0),
      Q31 => \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\memory_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => cnt_read(4 downto 0),
      CE => r_push_r,
      CLK => aclk,
      D => \in\(1),
      Q => \skid_buffer_reg[35]\(1),
      Q31 => \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED\
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515155515151555"
    )
        port map (
      I0 => \cnt_read_reg[0]_rep__2_rep\,
      I1 => cnt_read(4),
      I2 => cnt_read(3),
      I3 => cnt_read(1),
      I4 => cnt_read(2),
      I5 => cnt_read(0),
      O => \state_reg[0]_rep\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wr_cmd_fsm is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]_rep_0\ : out STD_LOGIC;
    \state_reg[0]_rep_1\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[0]\ : out STD_LOGIC;
    s_axburst_eq0_reg : out STD_LOGIC;
    wrap_next_pending : out STD_LOGIC;
    sel_first_i : out STD_LOGIC;
    incr_next_pending : out STD_LOGIC;
    s_axburst_eq1_reg : out STD_LOGIC;
    next_pending_r_reg : out STD_LOGIC;
    \wrap_cnt_r_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[2]\ : out STD_LOGIC;
    \axlen_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_offset_r_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_wrap_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_incr_reg[0]\ : out STD_LOGIC;
    \m_payload_i_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    \m_payload_i_reg[44]\ : in STD_LOGIC;
    si_rs_awvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \m_payload_i_reg[48]\ : in STD_LOGIC;
    next_pending_r_reg_0 : in STD_LOGIC;
    \axlen_cnt_reg[4]\ : in STD_LOGIC;
    \wrap_second_len_r_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[0]_1\ : in STD_LOGIC;
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_payload_i_reg[47]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axaddr_offset_r_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[35]\ : in STD_LOGIC;
    \axlen_cnt_reg[4]_0\ : in STD_LOGIC;
    \axlen_cnt_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[5]\ : in STD_LOGIC;
    \m_payload_i_reg[46]\ : in STD_LOGIC;
    \axlen_cnt_reg[3]\ : in STD_LOGIC;
    next_pending_r_reg_1 : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    sel_first_reg : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    s_axburst_eq1_reg_0 : in STD_LOGIC;
    \cnt_read_reg[1]_rep\ : in STD_LOGIC;
    sel_first_reg_0 : in STD_LOGIC;
    \cnt_read_reg[1]_rep_0\ : in STD_LOGIC;
    \cnt_read_reg[0]_rep__0\ : in STD_LOGIC;
    \state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \state_reg[1]_rep_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wr_cmd_fsm : entity is "axi_protocol_converter_v2_1_b2s_wr_cmd_fsm";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wr_cmd_fsm;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wr_cmd_fsm is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axaddr_offset_r_reg[2]\ : STD_LOGIC;
  signal \^incr_next_pending\ : STD_LOGIC;
  signal \^m_payload_i_reg[0]\ : STD_LOGIC;
  signal \next\ : STD_LOGIC;
  signal \^next_pending_r_reg\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sel_first_i\ : STD_LOGIC;
  signal \state[0]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \^state_reg[0]_rep_0\ : STD_LOGIC;
  signal \^state_reg[0]_rep_1\ : STD_LOGIC;
  signal \^wrap_cnt_r_reg[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^wrap_next_pending\ : STD_LOGIC;
  signal \wrap_second_len_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \^wrap_second_len_r_reg[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_incr[0]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \axaddr_wrap[11]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \axlen_cnt[3]_i_1__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \axlen_cnt[7]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of m_axi_awvalid_INST_0 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of s_axburst_eq0_i_1 : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of s_axburst_eq1_i_1 : label is "soft_lutpair95";
  attribute KEEP : string;
  attribute KEEP of \state_reg[0]\ : label is "yes";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \state_reg[0]\ : label is "state_reg[0]";
  attribute KEEP of \state_reg[0]_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \state_reg[0]_rep\ : label is "state_reg[0]";
  attribute KEEP of \state_reg[1]\ : label is "yes";
  attribute ORIG_CELL_NAME of \state_reg[1]\ : label is "state_reg[1]";
  attribute KEEP of \state_reg[1]_rep\ : label is "yes";
  attribute ORIG_CELL_NAME of \state_reg[1]_rep\ : label is "state_reg[1]";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[11]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \wrap_cnt_r[1]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \wrap_cnt_r[3]_i_1\ : label is "soft_lutpair94";
begin
  E(0) <= \^e\(0);
  \axaddr_offset_r_reg[2]\ <= \^axaddr_offset_r_reg[2]\;
  incr_next_pending <= \^incr_next_pending\;
  \m_payload_i_reg[0]\ <= \^m_payload_i_reg[0]\;
  next_pending_r_reg <= \^next_pending_r_reg\;
  sel_first_i <= \^sel_first_i\;
  \state_reg[0]_rep_0\ <= \^state_reg[0]_rep_0\;
  \state_reg[0]_rep_1\ <= \^state_reg[0]_rep_1\;
  \wrap_cnt_r_reg[0]\(1 downto 0) <= \^wrap_cnt_r_reg[0]\(1 downto 0);
  wrap_next_pending <= \^wrap_next_pending\;
  \wrap_second_len_r_reg[3]\(2 downto 0) <= \^wrap_second_len_r_reg[3]\(2 downto 0);
\axaddr_incr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => sel_first_reg_0,
      I1 => \^m_payload_i_reg[0]\,
      I2 => \^state_reg[0]_rep_0\,
      I3 => \^state_reg[0]_rep_1\,
      O => \axaddr_incr_reg[0]\
    );
\axaddr_incr[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060C060C030C060C"
    )
        port map (
      I0 => \^m_payload_i_reg[0]\,
      I1 => Q(1),
      I2 => Q(5),
      I3 => Q(4),
      I4 => \^state_reg[0]_rep_0\,
      I5 => \^state_reg[0]_rep_1\,
      O => S(1)
    );
\axaddr_incr[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006366"
    )
        port map (
      I0 => \^m_payload_i_reg[0]\,
      I1 => Q(0),
      I2 => \^state_reg[0]_rep_1\,
      I3 => \^state_reg[0]_rep_0\,
      I4 => Q(5),
      I5 => Q(4),
      O => S(0)
    );
\axaddr_incr[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6366CCCCCCCCCCCC"
    )
        port map (
      I0 => \^m_payload_i_reg[0]\,
      I1 => Q(3),
      I2 => \^state_reg[0]_rep_1\,
      I3 => \^state_reg[0]_rep_0\,
      I4 => Q(5),
      I5 => Q(4),
      O => S(3)
    );
\axaddr_incr[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CCCC6366CCCC"
    )
        port map (
      I0 => \^m_payload_i_reg[0]\,
      I1 => Q(2),
      I2 => \^state_reg[0]_rep_1\,
      I3 => \^state_reg[0]_rep_0\,
      I4 => Q(5),
      I5 => Q(4),
      O => S(2)
    );
\axaddr_offset_r[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axaddr_offset_r_reg[2]\,
      O => \axaddr_offset_r_reg[2]_0\(0)
    );
\axaddr_offset_r[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555553F5555"
    )
        port map (
      I0 => \axaddr_offset_r_reg[3]\(0),
      I1 => Q(8),
      I2 => \m_payload_i_reg[5]\,
      I3 => \^wrap_cnt_r_reg[0]\(1),
      I4 => si_rs_awvalid,
      I5 => \^wrap_cnt_r_reg[0]\(0),
      O => \^axaddr_offset_r_reg[2]\
    );
\axaddr_wrap[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCFE"
    )
        port map (
      I0 => si_rs_awvalid,
      I1 => \^m_payload_i_reg[0]\,
      I2 => \^wrap_cnt_r_reg[0]\(1),
      I3 => \^wrap_cnt_r_reg[0]\(0),
      O => \axaddr_wrap_reg[0]\(0)
    );
\axlen_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04000400FFFF0400"
    )
        port map (
      I0 => \^wrap_cnt_r_reg[0]\(1),
      I1 => si_rs_awvalid,
      I2 => \^wrap_cnt_r_reg[0]\(0),
      I3 => Q(7),
      I4 => \axlen_cnt_reg[4]_0\,
      I5 => \axlen_cnt_reg[0]_2\(0),
      O => \axlen_cnt_reg[0]\(0)
    );
\axlen_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCFE"
    )
        port map (
      I0 => si_rs_awvalid,
      I1 => \^m_payload_i_reg[0]\,
      I2 => \^wrap_cnt_r_reg[0]\(1),
      I3 => \^wrap_cnt_r_reg[0]\(0),
      O => \axlen_cnt_reg[0]_0\(0)
    );
\axlen_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCFE"
    )
        port map (
      I0 => si_rs_awvalid,
      I1 => \^m_payload_i_reg[0]\,
      I2 => \^state_reg[0]_rep_0\,
      I3 => \^state_reg[0]_rep_1\,
      O => \axlen_cnt_reg[0]_1\(0)
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^state_reg[0]_rep_1\,
      I1 => \^state_reg[0]_rep_0\,
      O => m_axi_awvalid
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^m_payload_i_reg[0]\,
      I1 => si_rs_awvalid,
      O => \m_payload_i_reg[0]_0\(0)
    );
\memory_reg[3][0]_srl4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F400F4F400000000"
    )
        port map (
      I0 => s_axburst_eq1_reg_0,
      I1 => m_axi_awready,
      I2 => \^state_reg[0]_rep_0\,
      I3 => \cnt_read_reg[0]_rep__0\,
      I4 => \cnt_read_reg[1]_rep_0\,
      I5 => \^state_reg[0]_rep_1\,
      O => \^m_payload_i_reg[0]\
    );
next_pending_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \m_payload_i_reg[48]\,
      I1 => \^e\(0),
      I2 => next_pending_r_reg_0,
      I3 => \^next_pending_r_reg\,
      I4 => \axlen_cnt_reg[4]\,
      O => \^incr_next_pending\
    );
\next_pending_r_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => \m_payload_i_reg[46]\,
      I1 => \^e\(0),
      I2 => \axlen_cnt_reg[3]\,
      I3 => \next\,
      I4 => next_pending_r_reg_1,
      O => \^wrap_next_pending\
    );
next_pending_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FF08FF085D08FF"
    )
        port map (
      I0 => \^state_reg[0]_rep_1\,
      I1 => \cnt_read_reg[1]_rep_0\,
      I2 => \cnt_read_reg[0]_rep__0\,
      I3 => \^state_reg[0]_rep_0\,
      I4 => m_axi_awready,
      I5 => s_axburst_eq1_reg_0,
      O => \^next_pending_r_reg\
    );
next_pending_r_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700F700F7A2F700"
    )
        port map (
      I0 => \^state_reg[0]_rep_1\,
      I1 => \cnt_read_reg[1]_rep_0\,
      I2 => \cnt_read_reg[0]_rep__0\,
      I3 => \^state_reg[0]_rep_0\,
      I4 => m_axi_awready,
      I5 => s_axburst_eq1_reg_0,
      O => \next\
    );
s_axburst_eq0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^wrap_next_pending\,
      I1 => Q(6),
      I2 => \^sel_first_i\,
      I3 => \^incr_next_pending\,
      O => s_axburst_eq0_reg
    );
s_axburst_eq1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^wrap_next_pending\,
      I1 => Q(6),
      I2 => \^sel_first_i\,
      I3 => \^incr_next_pending\,
      O => s_axburst_eq1_reg
    );
sel_first_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCEFCFFCCCECCCE"
    )
        port map (
      I0 => si_rs_awvalid,
      I1 => areset_d1,
      I2 => \^state_reg[0]_rep_1\,
      I3 => \^state_reg[0]_rep_0\,
      I4 => \^m_payload_i_reg[0]\,
      I5 => sel_first_reg,
      O => \^sel_first_i\
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FEFEFE323E323E"
    )
        port map (
      I0 => si_rs_awvalid,
      I1 => \^wrap_cnt_r_reg[0]\(0),
      I2 => \^state_reg[0]_rep_0\,
      I3 => m_axi_awready,
      I4 => s_axburst_eq1_reg_0,
      I5 => \cnt_read_reg[1]_rep\,
      O => next_state(0)
    );
\state[0]_rep_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FEFEFE323E323E"
    )
        port map (
      I0 => si_rs_awvalid,
      I1 => \^state_reg[0]_rep_1\,
      I2 => \^state_reg[0]_rep_0\,
      I3 => m_axi_awready,
      I4 => s_axburst_eq1_reg_0,
      I5 => \cnt_read_reg[1]_rep\,
      O => \state[0]_rep_i_1__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => next_state(0),
      Q => \^wrap_cnt_r_reg[0]\(0),
      R => areset_d1
    );
\state_reg[0]_rep\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_rep_i_1__0_n_0\,
      Q => \^state_reg[0]_rep_1\,
      R => areset_d1
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state_reg[1]_0\(0),
      Q => \^wrap_cnt_r_reg[0]\(1),
      R => areset_d1
    );
\state_reg[1]_rep\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state_reg[1]_rep_0\,
      Q => \^state_reg[0]_rep_0\,
      R => areset_d1
    );
\wrap_boundary_axaddr_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^state_reg[0]_rep_0\,
      I1 => si_rs_awvalid,
      I2 => \^state_reg[0]_rep_1\,
      O => \^e\(0)
    );
\wrap_cnt_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDD8DDAAAAA8AA"
    )
        port map (
      I0 => \wrap_second_len_r[0]_i_2_n_0\,
      I1 => \m_payload_i_reg[0]_1\,
      I2 => \^wrap_cnt_r_reg[0]\(1),
      I3 => si_rs_awvalid,
      I4 => \^wrap_cnt_r_reg[0]\(0),
      I5 => \wrap_second_len_r_reg[3]_0\(0),
      O => D(0)
    );
\wrap_cnt_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wrap_second_len_r_reg[3]\(1),
      I1 => \m_payload_i_reg[44]\,
      O => D(1)
    );
\wrap_cnt_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \^wrap_second_len_r_reg[3]\(2),
      I1 => \^wrap_second_len_r_reg[3]\(1),
      I2 => \m_payload_i_reg[44]\,
      I3 => \wrap_second_len_r_reg[2]\(0),
      O => D(2)
    );
\wrap_second_len_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCCACC"
    )
        port map (
      I0 => \wrap_second_len_r[0]_i_2_n_0\,
      I1 => \wrap_second_len_r_reg[3]_0\(0),
      I2 => \^wrap_cnt_r_reg[0]\(0),
      I3 => si_rs_awvalid,
      I4 => \^wrap_cnt_r_reg[0]\(1),
      I5 => \m_payload_i_reg[0]_1\,
      O => \^wrap_second_len_r_reg[3]\(0)
    );
\wrap_second_len_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF2FFFFFFFF"
    )
        port map (
      I0 => \axaddr_offset_r_reg[3]\(1),
      I1 => \^e\(0),
      I2 => \m_payload_i_reg[35]\,
      I3 => \m_payload_i_reg[47]\(1),
      I4 => \m_payload_i_reg[47]\(0),
      I5 => \^axaddr_offset_r_reg[2]\,
      O => \wrap_second_len_r[0]_i_2_n_0\
    );
\wrap_second_len_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3AAC0AAC3AAC3AA"
    )
        port map (
      I0 => \wrap_second_len_r_reg[3]_0\(1),
      I1 => \m_payload_i_reg[47]\(0),
      I2 => \m_payload_i_reg[47]\(1),
      I3 => \^e\(0),
      I4 => \m_payload_i_reg[47]\(2),
      I5 => \^axaddr_offset_r_reg[2]\,
      O => \^wrap_second_len_r_reg[3]\(1)
    );
\wrap_second_len_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \^axaddr_offset_r_reg[2]\,
      I1 => \m_payload_i_reg[47]\(0),
      I2 => \m_payload_i_reg[47]\(1),
      I3 => \m_payload_i_reg[35]\,
      I4 => \^e\(0),
      I5 => \wrap_second_len_r_reg[3]_0\(2),
      O => \^wrap_second_len_r_reg[3]\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd is
  port (
    next_pending_r_reg_0 : out STD_LOGIC;
    next_pending_r_reg_1 : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \axaddr_offset_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrap_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 18 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]_rep\ : in STD_LOGIC;
    axaddr_incr_reg : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \m_payload_i_reg[38]\ : in STD_LOGIC;
    \m_payload_i_reg[47]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_valid_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_valid_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    b_push : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    si_rs_awvalid : in STD_LOGIC;
    areset_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd : entity is "axi_protocol_converter_v2_1_b2s_wrap_cmd";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd is
  signal axaddr_wrap : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axaddr_wrap0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \axaddr_wrap[0]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[10]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_5_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_6_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_7_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_8_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_9_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[1]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[2]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_5_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_6_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[4]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[5]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[6]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_5_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_6_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[8]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[9]_i_1_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \axlen_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal sel_first_i_1_n_0 : STD_LOGIC;
  signal sel_first_reg_n_0 : STD_LOGIC;
  signal wrap_boundary_axaddr_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wrap_cnt_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_wrap[11]_i_4\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \next_pending_r_i_3__0\ : label is "soft_lutpair99";
begin
\axaddr_offset_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[47]\(0),
      Q => \axaddr_offset_r_reg[3]_0\(0),
      R => '0'
    );
\axaddr_offset_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[47]\(1),
      Q => \axaddr_offset_r_reg[3]_0\(1),
      R => '0'
    );
\axaddr_offset_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[47]\(2),
      Q => \axaddr_offset_r_reg[3]_0\(2),
      R => '0'
    );
\axaddr_offset_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[47]\(3),
      Q => \axaddr_offset_r_reg[3]_0\(3),
      R => '0'
    );
\axaddr_wrap[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(0),
      I1 => \state_reg[0]_rep\,
      I2 => axaddr_wrap0(0),
      I3 => \axaddr_wrap[11]_i_4_n_0\,
      I4 => wrap_boundary_axaddr_r(0),
      O => \axaddr_wrap[0]_i_1_n_0\
    );
\axaddr_wrap[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(10),
      I1 => \state_reg[0]_rep\,
      I2 => axaddr_wrap0(10),
      I3 => \axaddr_wrap[11]_i_4_n_0\,
      I4 => wrap_boundary_axaddr_r(10),
      O => \axaddr_wrap[10]_i_1_n_0\
    );
\axaddr_wrap[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(11),
      I1 => \state_reg[0]_rep\,
      I2 => axaddr_wrap0(11),
      I3 => \axaddr_wrap[11]_i_4_n_0\,
      I4 => wrap_boundary_axaddr_r(11),
      O => \axaddr_wrap[11]_i_2_n_0\
    );
\axaddr_wrap[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => wrap_cnt_r(3),
      I1 => \axlen_cnt_reg_n_0_[3]\,
      I2 => \axaddr_wrap[11]_i_9_n_0\,
      O => \axaddr_wrap[11]_i_4_n_0\
    );
\axaddr_wrap[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axaddr_wrap(11),
      O => \axaddr_wrap[11]_i_5_n_0\
    );
\axaddr_wrap[11]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axaddr_wrap(10),
      O => \axaddr_wrap[11]_i_6_n_0\
    );
\axaddr_wrap[11]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axaddr_wrap(9),
      O => \axaddr_wrap[11]_i_7_n_0\
    );
\axaddr_wrap[11]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axaddr_wrap(8),
      O => \axaddr_wrap[11]_i_8_n_0\
    );
\axaddr_wrap[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wrap_cnt_r(0),
      I1 => \axlen_cnt_reg_n_0_[0]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => wrap_cnt_r(2),
      I4 => \axlen_cnt_reg_n_0_[1]\,
      I5 => wrap_cnt_r(1),
      O => \axaddr_wrap[11]_i_9_n_0\
    );
\axaddr_wrap[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(1),
      I1 => \state_reg[0]_rep\,
      I2 => axaddr_wrap0(1),
      I3 => \axaddr_wrap[11]_i_4_n_0\,
      I4 => wrap_boundary_axaddr_r(1),
      O => \axaddr_wrap[1]_i_1_n_0\
    );
\axaddr_wrap[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(2),
      I1 => \state_reg[0]_rep\,
      I2 => axaddr_wrap0(2),
      I3 => \axaddr_wrap[11]_i_4_n_0\,
      I4 => wrap_boundary_axaddr_r(2),
      O => \axaddr_wrap[2]_i_1_n_0\
    );
\axaddr_wrap[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(3),
      I1 => \state_reg[0]_rep\,
      I2 => axaddr_wrap0(3),
      I3 => \axaddr_wrap[11]_i_4_n_0\,
      I4 => wrap_boundary_axaddr_r(3),
      O => \axaddr_wrap[3]_i_1_n_0\
    );
\axaddr_wrap[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => axaddr_wrap(3),
      I1 => Q(12),
      I2 => Q(13),
      O => \axaddr_wrap[3]_i_3_n_0\
    );
\axaddr_wrap[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => axaddr_wrap(2),
      I1 => Q(12),
      I2 => Q(13),
      O => \axaddr_wrap[3]_i_4_n_0\
    );
\axaddr_wrap[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => axaddr_wrap(1),
      I1 => Q(13),
      I2 => Q(12),
      O => \axaddr_wrap[3]_i_5_n_0\
    );
\axaddr_wrap[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => axaddr_wrap(0),
      I1 => Q(12),
      I2 => Q(13),
      O => \axaddr_wrap[3]_i_6_n_0\
    );
\axaddr_wrap[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(4),
      I1 => \state_reg[0]_rep\,
      I2 => axaddr_wrap0(4),
      I3 => \axaddr_wrap[11]_i_4_n_0\,
      I4 => wrap_boundary_axaddr_r(4),
      O => \axaddr_wrap[4]_i_1_n_0\
    );
\axaddr_wrap[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(5),
      I1 => \state_reg[0]_rep\,
      I2 => axaddr_wrap0(5),
      I3 => \axaddr_wrap[11]_i_4_n_0\,
      I4 => wrap_boundary_axaddr_r(5),
      O => \axaddr_wrap[5]_i_1_n_0\
    );
\axaddr_wrap[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(6),
      I1 => \state_reg[0]_rep\,
      I2 => axaddr_wrap0(6),
      I3 => \axaddr_wrap[11]_i_4_n_0\,
      I4 => wrap_boundary_axaddr_r(6),
      O => \axaddr_wrap[6]_i_1_n_0\
    );
\axaddr_wrap[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(7),
      I1 => \state_reg[0]_rep\,
      I2 => axaddr_wrap0(7),
      I3 => \axaddr_wrap[11]_i_4_n_0\,
      I4 => wrap_boundary_axaddr_r(7),
      O => \axaddr_wrap[7]_i_1_n_0\
    );
\axaddr_wrap[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axaddr_wrap(7),
      O => \axaddr_wrap[7]_i_3_n_0\
    );
\axaddr_wrap[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axaddr_wrap(6),
      O => \axaddr_wrap[7]_i_4_n_0\
    );
\axaddr_wrap[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axaddr_wrap(5),
      O => \axaddr_wrap[7]_i_5_n_0\
    );
\axaddr_wrap[7]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axaddr_wrap(4),
      O => \axaddr_wrap[7]_i_6_n_0\
    );
\axaddr_wrap[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(8),
      I1 => \state_reg[0]_rep\,
      I2 => axaddr_wrap0(8),
      I3 => \axaddr_wrap[11]_i_4_n_0\,
      I4 => wrap_boundary_axaddr_r(8),
      O => \axaddr_wrap[8]_i_1_n_0\
    );
\axaddr_wrap[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Q(9),
      I1 => \state_reg[0]_rep\,
      I2 => axaddr_wrap0(9),
      I3 => \axaddr_wrap[11]_i_4_n_0\,
      I4 => wrap_boundary_axaddr_r(9),
      O => \axaddr_wrap[9]_i_1_n_0\
    );
\axaddr_wrap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[0]_i_1_n_0\,
      Q => axaddr_wrap(0),
      R => '0'
    );
\axaddr_wrap_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[10]_i_1_n_0\,
      Q => axaddr_wrap(10),
      R => '0'
    );
\axaddr_wrap_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[11]_i_2_n_0\,
      Q => axaddr_wrap(11),
      R => '0'
    );
\axaddr_wrap_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_wrap_reg[7]_i_2_n_0\,
      CO(3) => \NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \axaddr_wrap_reg[11]_i_3_n_1\,
      CO(1) => \axaddr_wrap_reg[11]_i_3_n_2\,
      CO(0) => \axaddr_wrap_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => axaddr_wrap0(11 downto 8),
      S(3) => \axaddr_wrap[11]_i_5_n_0\,
      S(2) => \axaddr_wrap[11]_i_6_n_0\,
      S(1) => \axaddr_wrap[11]_i_7_n_0\,
      S(0) => \axaddr_wrap[11]_i_8_n_0\
    );
\axaddr_wrap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[1]_i_1_n_0\,
      Q => axaddr_wrap(1),
      R => '0'
    );
\axaddr_wrap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[2]_i_1_n_0\,
      Q => axaddr_wrap(2),
      R => '0'
    );
\axaddr_wrap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[3]_i_1_n_0\,
      Q => axaddr_wrap(3),
      R => '0'
    );
\axaddr_wrap_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axaddr_wrap_reg[3]_i_2_n_0\,
      CO(2) => \axaddr_wrap_reg[3]_i_2_n_1\,
      CO(1) => \axaddr_wrap_reg[3]_i_2_n_2\,
      CO(0) => \axaddr_wrap_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => axaddr_wrap(3 downto 0),
      O(3 downto 0) => axaddr_wrap0(3 downto 0),
      S(3) => \axaddr_wrap[3]_i_3_n_0\,
      S(2) => \axaddr_wrap[3]_i_4_n_0\,
      S(1) => \axaddr_wrap[3]_i_5_n_0\,
      S(0) => \axaddr_wrap[3]_i_6_n_0\
    );
\axaddr_wrap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[4]_i_1_n_0\,
      Q => axaddr_wrap(4),
      R => '0'
    );
\axaddr_wrap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[5]_i_1_n_0\,
      Q => axaddr_wrap(5),
      R => '0'
    );
\axaddr_wrap_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[6]_i_1_n_0\,
      Q => axaddr_wrap(6),
      R => '0'
    );
\axaddr_wrap_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[7]_i_1_n_0\,
      Q => axaddr_wrap(7),
      R => '0'
    );
\axaddr_wrap_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_wrap_reg[3]_i_2_n_0\,
      CO(3) => \axaddr_wrap_reg[7]_i_2_n_0\,
      CO(2) => \axaddr_wrap_reg[7]_i_2_n_1\,
      CO(1) => \axaddr_wrap_reg[7]_i_2_n_2\,
      CO(0) => \axaddr_wrap_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => axaddr_wrap0(7 downto 4),
      S(3) => \axaddr_wrap[7]_i_3_n_0\,
      S(2) => \axaddr_wrap[7]_i_4_n_0\,
      S(1) => \axaddr_wrap[7]_i_5_n_0\,
      S(0) => \axaddr_wrap[7]_i_6_n_0\
    );
\axaddr_wrap_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[8]_i_1_n_0\,
      Q => axaddr_wrap(8),
      R => '0'
    );
\axaddr_wrap_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[9]_i_1_n_0\,
      Q => axaddr_wrap(9),
      R => '0'
    );
\axlen_cnt[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBBBBBB8"
    )
        port map (
      I0 => Q(15),
      I1 => E(0),
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[2]\,
      I4 => \axlen_cnt_reg_n_0_[3]\,
      I5 => \axlen_cnt_reg_n_0_[0]\,
      O => \axlen_cnt[0]_i_1__0_n_0\
    );
\axlen_cnt[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88BB88BB88BB888"
    )
        port map (
      I0 => Q(16),
      I1 => E(0),
      I2 => \axlen_cnt_reg_n_0_[0]\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg_n_0_[2]\,
      I5 => \axlen_cnt_reg_n_0_[3]\,
      O => \axlen_cnt[1]_i_1__0_n_0\
    );
\axlen_cnt[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8888BBBB88888"
    )
        port map (
      I0 => Q(17),
      I1 => E(0),
      I2 => \axlen_cnt_reg_n_0_[0]\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg_n_0_[2]\,
      I5 => \axlen_cnt_reg_n_0_[3]\,
      O => \axlen_cnt[2]_i_1__0_n_0\
    );
\axlen_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB8888BBB88888"
    )
        port map (
      I0 => Q(18),
      I1 => E(0),
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[2]\,
      I4 => \axlen_cnt_reg_n_0_[3]\,
      I5 => \axlen_cnt_reg_n_0_[0]\,
      O => \axlen_cnt[3]_i_2_n_0\
    );
\axlen_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[0]_i_1__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[0]\,
      R => '0'
    );
\axlen_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[1]_i_1__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[1]\,
      R => '0'
    );
\axlen_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[2]_i_1__0_n_0\,
      Q => \axlen_cnt_reg_n_0_[2]\,
      R => '0'
    );
\axlen_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[3]_i_2_n_0\,
      Q => \axlen_cnt_reg_n_0_[3]\,
      R => '0'
    );
\m_axi_awaddr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => axaddr_wrap(0),
      I2 => Q(14),
      I3 => axaddr_incr_reg(0),
      I4 => \m_payload_i_reg[38]\,
      I5 => Q(0),
      O => m_axi_awaddr(0)
    );
\m_axi_awaddr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => axaddr_wrap(10),
      I2 => Q(14),
      I3 => axaddr_incr_reg(10),
      I4 => \m_payload_i_reg[38]\,
      I5 => Q(10),
      O => m_axi_awaddr(10)
    );
\m_axi_awaddr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => axaddr_wrap(11),
      I2 => Q(14),
      I3 => axaddr_incr_reg(11),
      I4 => \m_payload_i_reg[38]\,
      I5 => Q(11),
      O => m_axi_awaddr(11)
    );
\m_axi_awaddr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => axaddr_wrap(1),
      I2 => Q(14),
      I3 => axaddr_incr_reg(1),
      I4 => \m_payload_i_reg[38]\,
      I5 => Q(1),
      O => m_axi_awaddr(1)
    );
\m_axi_awaddr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => axaddr_wrap(2),
      I2 => Q(14),
      I3 => axaddr_incr_reg(2),
      I4 => \m_payload_i_reg[38]\,
      I5 => Q(2),
      O => m_axi_awaddr(2)
    );
\m_axi_awaddr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => axaddr_wrap(3),
      I2 => Q(14),
      I3 => axaddr_incr_reg(3),
      I4 => \m_payload_i_reg[38]\,
      I5 => Q(3),
      O => m_axi_awaddr(3)
    );
\m_axi_awaddr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => axaddr_wrap(4),
      I2 => Q(14),
      I3 => axaddr_incr_reg(4),
      I4 => \m_payload_i_reg[38]\,
      I5 => Q(4),
      O => m_axi_awaddr(4)
    );
\m_axi_awaddr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => axaddr_wrap(5),
      I2 => Q(14),
      I3 => axaddr_incr_reg(5),
      I4 => \m_payload_i_reg[38]\,
      I5 => Q(5),
      O => m_axi_awaddr(5)
    );
\m_axi_awaddr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => axaddr_wrap(6),
      I2 => Q(14),
      I3 => axaddr_incr_reg(6),
      I4 => \m_payload_i_reg[38]\,
      I5 => Q(6),
      O => m_axi_awaddr(6)
    );
\m_axi_awaddr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => axaddr_wrap(7),
      I2 => Q(14),
      I3 => axaddr_incr_reg(7),
      I4 => \m_payload_i_reg[38]\,
      I5 => Q(7),
      O => m_axi_awaddr(7)
    );
\m_axi_awaddr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => axaddr_wrap(8),
      I2 => Q(14),
      I3 => axaddr_incr_reg(8),
      I4 => \m_payload_i_reg[38]\,
      I5 => Q(8),
      O => m_axi_awaddr(8)
    );
\m_axi_awaddr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => axaddr_wrap(9),
      I2 => Q(14),
      I3 => axaddr_incr_reg(9),
      I4 => \m_payload_i_reg[38]\,
      I5 => Q(9),
      O => m_axi_awaddr(9)
    );
\next_pending_r_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      O => next_pending_r_reg_1
    );
next_pending_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wrap_next_pending,
      Q => next_pending_r_reg_0,
      R => '0'
    );
sel_first_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44440F04"
    )
        port map (
      I0 => b_push,
      I1 => sel_first_reg_n_0,
      I2 => \state_reg[1]\(1),
      I3 => si_rs_awvalid,
      I4 => \state_reg[1]\(0),
      I5 => areset_d1,
      O => sel_first_i_1_n_0
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_i_1_n_0,
      Q => sel_first_reg_n_0,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(0),
      Q => wrap_boundary_axaddr_r(0),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => Q(10),
      Q => wrap_boundary_axaddr_r(10),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => Q(11),
      Q => wrap_boundary_axaddr_r(11),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(1),
      Q => wrap_boundary_axaddr_r(1),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(2),
      Q => wrap_boundary_axaddr_r(2),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(3),
      Q => wrap_boundary_axaddr_r(3),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(4),
      Q => wrap_boundary_axaddr_r(4),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(5),
      Q => wrap_boundary_axaddr_r(5),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(6),
      Q => wrap_boundary_axaddr_r(6),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => Q(7),
      Q => wrap_boundary_axaddr_r(7),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => Q(8),
      Q => wrap_boundary_axaddr_r(8),
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => Q(9),
      Q => wrap_boundary_axaddr_r(9),
      R => '0'
    );
\wrap_cnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_2\(0),
      Q => wrap_cnt_r(0),
      R => '0'
    );
\wrap_cnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_2\(1),
      Q => wrap_cnt_r(1),
      R => '0'
    );
\wrap_cnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_2\(2),
      Q => wrap_cnt_r(2),
      R => '0'
    );
\wrap_cnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_2\(3),
      Q => wrap_cnt_r(3),
      R => '0'
    );
\wrap_second_len_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(0),
      Q => \wrap_second_len_r_reg[3]_0\(0),
      R => '0'
    );
\wrap_second_len_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(1),
      Q => \wrap_second_len_r_reg[3]_0\(1),
      R => '0'
    );
\wrap_second_len_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(2),
      Q => \wrap_second_len_r_reg[3]_0\(2),
      R => '0'
    );
\wrap_second_len_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(3),
      Q => \wrap_second_len_r_reg[3]_0\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd_3 is
  port (
    next_pending_r_reg_0 : out STD_LOGIC;
    next_pending_r_reg_1 : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \axaddr_offset_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrap_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[47]\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \state_reg[0]_rep\ : in STD_LOGIC;
    si_rs_arvalid : in STD_LOGIC;
    \state_reg[1]_rep\ : in STD_LOGIC;
    \state_reg[1]_rep_0\ : in STD_LOGIC;
    axaddr_incr_reg : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \m_payload_i_reg[38]\ : in STD_LOGIC;
    \m_payload_i_reg[47]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_valid_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_valid_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    areset_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd_3 : entity is "axi_protocol_converter_v2_1_b2s_wrap_cmd";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd_3;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd_3 is
  signal \axaddr_wrap[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_4__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_5__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_6__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_7__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_8__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[11]_i_9__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_4_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_5_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[3]_i_6_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[7]_i_6__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_4\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_5\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \axaddr_wrap_reg[11]_i_3_n_7\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \axaddr_wrap_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \axaddr_wrap_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[0]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[10]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[11]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[1]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[2]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[3]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[4]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[5]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[6]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[7]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[8]\ : STD_LOGIC;
  signal \axaddr_wrap_reg_n_0_[9]\ : STD_LOGIC;
  signal \axlen_cnt[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt[3]_i_2__2_n_0\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axlen_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal sel_first_i_1_n_0 : STD_LOGIC;
  signal sel_first_reg_n_0 : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r_reg_n_0_[9]\ : STD_LOGIC;
  signal \wrap_cnt_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \wrap_cnt_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \wrap_cnt_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \wrap_cnt_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\axaddr_offset_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[47]_0\(0),
      Q => \axaddr_offset_r_reg[3]_0\(0),
      R => '0'
    );
\axaddr_offset_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[47]_0\(1),
      Q => \axaddr_offset_r_reg[3]_0\(1),
      R => '0'
    );
\axaddr_offset_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[47]_0\(2),
      Q => \axaddr_offset_r_reg[3]_0\(2),
      R => '0'
    );
\axaddr_offset_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[47]_0\(3),
      Q => \axaddr_offset_r_reg[3]_0\(3),
      R => '0'
    );
\axaddr_wrap[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axaddr_wrap_reg[3]_i_2_n_7\,
      I1 => \axaddr_wrap[11]_i_4__0_n_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[0]\,
      I3 => \state_reg[1]_rep_0\,
      I4 => \m_payload_i_reg[47]\(0),
      O => \axaddr_wrap[0]_i_1__0_n_0\
    );
\axaddr_wrap[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axaddr_wrap_reg[11]_i_3_n_5\,
      I1 => \axaddr_wrap[11]_i_4__0_n_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[10]\,
      I3 => \state_reg[1]_rep_0\,
      I4 => \m_payload_i_reg[47]\(10),
      O => \axaddr_wrap[10]_i_1__0_n_0\
    );
\axaddr_wrap[11]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axaddr_wrap_reg[11]_i_3_n_4\,
      I1 => \axaddr_wrap[11]_i_4__0_n_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[11]\,
      I3 => \state_reg[1]_rep_0\,
      I4 => \m_payload_i_reg[47]\(11),
      O => \axaddr_wrap[11]_i_2__0_n_0\
    );
\axaddr_wrap[11]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \wrap_cnt_r_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[3]\,
      I2 => \axaddr_wrap[11]_i_9__0_n_0\,
      O => \axaddr_wrap[11]_i_4__0_n_0\
    );
\axaddr_wrap[11]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[11]\,
      O => \axaddr_wrap[11]_i_5__0_n_0\
    );
\axaddr_wrap[11]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[10]\,
      O => \axaddr_wrap[11]_i_6__0_n_0\
    );
\axaddr_wrap[11]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[9]\,
      O => \axaddr_wrap[11]_i_7__0_n_0\
    );
\axaddr_wrap[11]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[8]\,
      O => \axaddr_wrap[11]_i_8__0_n_0\
    );
\axaddr_wrap[11]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \wrap_cnt_r_reg_n_0_[0]\,
      I1 => \axlen_cnt_reg_n_0_[0]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \wrap_cnt_r_reg_n_0_[2]\,
      I4 => \axlen_cnt_reg_n_0_[1]\,
      I5 => \wrap_cnt_r_reg_n_0_[1]\,
      O => \axaddr_wrap[11]_i_9__0_n_0\
    );
\axaddr_wrap[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axaddr_wrap_reg[3]_i_2_n_6\,
      I1 => \axaddr_wrap[11]_i_4__0_n_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[1]\,
      I3 => \state_reg[1]_rep_0\,
      I4 => \m_payload_i_reg[47]\(1),
      O => \axaddr_wrap[1]_i_1__0_n_0\
    );
\axaddr_wrap[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axaddr_wrap_reg[3]_i_2_n_5\,
      I1 => \axaddr_wrap[11]_i_4__0_n_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[2]\,
      I3 => \state_reg[1]_rep_0\,
      I4 => \m_payload_i_reg[47]\(2),
      O => \axaddr_wrap[2]_i_1__0_n_0\
    );
\axaddr_wrap[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axaddr_wrap_reg[3]_i_2_n_4\,
      I1 => \axaddr_wrap[11]_i_4__0_n_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[3]\,
      I3 => \state_reg[1]_rep_0\,
      I4 => \m_payload_i_reg[47]\(3),
      O => \axaddr_wrap[3]_i_1__0_n_0\
    );
\axaddr_wrap[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[3]\,
      I1 => \m_payload_i_reg[47]\(12),
      I2 => \m_payload_i_reg[47]\(13),
      O => \axaddr_wrap[3]_i_3_n_0\
    );
\axaddr_wrap[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[2]\,
      I1 => \m_payload_i_reg[47]\(12),
      I2 => \m_payload_i_reg[47]\(13),
      O => \axaddr_wrap[3]_i_4_n_0\
    );
\axaddr_wrap[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[1]\,
      I1 => \m_payload_i_reg[47]\(13),
      I2 => \m_payload_i_reg[47]\(12),
      O => \axaddr_wrap[3]_i_5_n_0\
    );
\axaddr_wrap[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[0]\,
      I1 => \m_payload_i_reg[47]\(12),
      I2 => \m_payload_i_reg[47]\(13),
      O => \axaddr_wrap[3]_i_6_n_0\
    );
\axaddr_wrap[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axaddr_wrap_reg[7]_i_2_n_7\,
      I1 => \axaddr_wrap[11]_i_4__0_n_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[4]\,
      I3 => \state_reg[1]_rep_0\,
      I4 => \m_payload_i_reg[47]\(4),
      O => \axaddr_wrap[4]_i_1__0_n_0\
    );
\axaddr_wrap[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axaddr_wrap_reg[7]_i_2_n_6\,
      I1 => \axaddr_wrap[11]_i_4__0_n_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[5]\,
      I3 => \state_reg[1]_rep_0\,
      I4 => \m_payload_i_reg[47]\(5),
      O => \axaddr_wrap[5]_i_1__0_n_0\
    );
\axaddr_wrap[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axaddr_wrap_reg[7]_i_2_n_5\,
      I1 => \axaddr_wrap[11]_i_4__0_n_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[6]\,
      I3 => \state_reg[1]_rep_0\,
      I4 => \m_payload_i_reg[47]\(6),
      O => \axaddr_wrap[6]_i_1__0_n_0\
    );
\axaddr_wrap[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axaddr_wrap_reg[7]_i_2_n_4\,
      I1 => \axaddr_wrap[11]_i_4__0_n_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[7]\,
      I3 => \state_reg[1]_rep_0\,
      I4 => \m_payload_i_reg[47]\(7),
      O => \axaddr_wrap[7]_i_1__0_n_0\
    );
\axaddr_wrap[7]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[7]\,
      O => \axaddr_wrap[7]_i_3__0_n_0\
    );
\axaddr_wrap[7]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[6]\,
      O => \axaddr_wrap[7]_i_4__0_n_0\
    );
\axaddr_wrap[7]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[5]\,
      O => \axaddr_wrap[7]_i_5__0_n_0\
    );
\axaddr_wrap[7]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axaddr_wrap_reg_n_0_[4]\,
      O => \axaddr_wrap[7]_i_6__0_n_0\
    );
\axaddr_wrap[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axaddr_wrap_reg[11]_i_3_n_7\,
      I1 => \axaddr_wrap[11]_i_4__0_n_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[8]\,
      I3 => \state_reg[1]_rep_0\,
      I4 => \m_payload_i_reg[47]\(8),
      O => \axaddr_wrap[8]_i_1__0_n_0\
    );
\axaddr_wrap[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axaddr_wrap_reg[11]_i_3_n_6\,
      I1 => \axaddr_wrap[11]_i_4__0_n_0\,
      I2 => \wrap_boundary_axaddr_r_reg_n_0_[9]\,
      I3 => \state_reg[1]_rep_0\,
      I4 => \m_payload_i_reg[47]\(9),
      O => \axaddr_wrap[9]_i_1__0_n_0\
    );
\axaddr_wrap_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[0]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[0]\,
      R => '0'
    );
\axaddr_wrap_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[10]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[10]\,
      R => '0'
    );
\axaddr_wrap_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[11]_i_2__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[11]\,
      R => '0'
    );
\axaddr_wrap_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_wrap_reg[7]_i_2_n_0\,
      CO(3) => \NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \axaddr_wrap_reg[11]_i_3_n_1\,
      CO(1) => \axaddr_wrap_reg[11]_i_3_n_2\,
      CO(0) => \axaddr_wrap_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \axaddr_wrap_reg[11]_i_3_n_4\,
      O(2) => \axaddr_wrap_reg[11]_i_3_n_5\,
      O(1) => \axaddr_wrap_reg[11]_i_3_n_6\,
      O(0) => \axaddr_wrap_reg[11]_i_3_n_7\,
      S(3) => \axaddr_wrap[11]_i_5__0_n_0\,
      S(2) => \axaddr_wrap[11]_i_6__0_n_0\,
      S(1) => \axaddr_wrap[11]_i_7__0_n_0\,
      S(0) => \axaddr_wrap[11]_i_8__0_n_0\
    );
\axaddr_wrap_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[1]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[1]\,
      R => '0'
    );
\axaddr_wrap_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[2]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[2]\,
      R => '0'
    );
\axaddr_wrap_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[3]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[3]\,
      R => '0'
    );
\axaddr_wrap_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axaddr_wrap_reg[3]_i_2_n_0\,
      CO(2) => \axaddr_wrap_reg[3]_i_2_n_1\,
      CO(1) => \axaddr_wrap_reg[3]_i_2_n_2\,
      CO(0) => \axaddr_wrap_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \axaddr_wrap_reg_n_0_[3]\,
      DI(2) => \axaddr_wrap_reg_n_0_[2]\,
      DI(1) => \axaddr_wrap_reg_n_0_[1]\,
      DI(0) => \axaddr_wrap_reg_n_0_[0]\,
      O(3) => \axaddr_wrap_reg[3]_i_2_n_4\,
      O(2) => \axaddr_wrap_reg[3]_i_2_n_5\,
      O(1) => \axaddr_wrap_reg[3]_i_2_n_6\,
      O(0) => \axaddr_wrap_reg[3]_i_2_n_7\,
      S(3) => \axaddr_wrap[3]_i_3_n_0\,
      S(2) => \axaddr_wrap[3]_i_4_n_0\,
      S(1) => \axaddr_wrap[3]_i_5_n_0\,
      S(0) => \axaddr_wrap[3]_i_6_n_0\
    );
\axaddr_wrap_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[4]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[4]\,
      R => '0'
    );
\axaddr_wrap_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[5]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[5]\,
      R => '0'
    );
\axaddr_wrap_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[6]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[6]\,
      R => '0'
    );
\axaddr_wrap_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[7]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[7]\,
      R => '0'
    );
\axaddr_wrap_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axaddr_wrap_reg[3]_i_2_n_0\,
      CO(3) => \axaddr_wrap_reg[7]_i_2_n_0\,
      CO(2) => \axaddr_wrap_reg[7]_i_2_n_1\,
      CO(1) => \axaddr_wrap_reg[7]_i_2_n_2\,
      CO(0) => \axaddr_wrap_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \axaddr_wrap_reg[7]_i_2_n_4\,
      O(2) => \axaddr_wrap_reg[7]_i_2_n_5\,
      O(1) => \axaddr_wrap_reg[7]_i_2_n_6\,
      O(0) => \axaddr_wrap_reg[7]_i_2_n_7\,
      S(3) => \axaddr_wrap[7]_i_3__0_n_0\,
      S(2) => \axaddr_wrap[7]_i_4__0_n_0\,
      S(1) => \axaddr_wrap[7]_i_5__0_n_0\,
      S(0) => \axaddr_wrap[7]_i_6__0_n_0\
    );
\axaddr_wrap_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[8]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[8]\,
      R => '0'
    );
\axaddr_wrap_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg_0(0),
      D => \axaddr_wrap[9]_i_1__0_n_0\,
      Q => \axaddr_wrap_reg_n_0_[9]\,
      R => '0'
    );
\axlen_cnt[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF555400005554"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[0]\,
      I1 => \axlen_cnt_reg_n_0_[1]\,
      I2 => \axlen_cnt_reg_n_0_[2]\,
      I3 => \axlen_cnt_reg_n_0_[3]\,
      I4 => E(0),
      I5 => \m_payload_i_reg[47]\(15),
      O => \axlen_cnt[0]_i_1__2_n_0\
    );
\axlen_cnt[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC3AAC3AAC3AAC0"
    )
        port map (
      I0 => \m_payload_i_reg[47]\(16),
      I1 => \axlen_cnt_reg_n_0_[0]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => E(0),
      I4 => \axlen_cnt_reg_n_0_[2]\,
      I5 => \axlen_cnt_reg_n_0_[3]\,
      O => \axlen_cnt[1]_i_1__2_n_0\
    );
\axlen_cnt[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACCC3AAAACCC0"
    )
        port map (
      I0 => \m_payload_i_reg[47]\(17),
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[1]\,
      I3 => \axlen_cnt_reg_n_0_[0]\,
      I4 => E(0),
      I5 => \axlen_cnt_reg_n_0_[3]\,
      O => \axlen_cnt[2]_i_1__2_n_0\
    );
\axlen_cnt[3]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA80000AAA8"
    )
        port map (
      I0 => \axlen_cnt_reg_n_0_[3]\,
      I1 => \axlen_cnt_reg_n_0_[2]\,
      I2 => \axlen_cnt_reg_n_0_[0]\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => E(0),
      I5 => \m_payload_i_reg[47]\(18),
      O => \axlen_cnt[3]_i_2__2_n_0\
    );
\axlen_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[0]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[0]\,
      R => '0'
    );
\axlen_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[1]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[1]\,
      R => '0'
    );
\axlen_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[2]_i_1__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[2]\,
      R => '0'
    );
\axlen_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_valid_i_reg(0),
      D => \axlen_cnt[3]_i_2__2_n_0\,
      Q => \axlen_cnt_reg_n_0_[3]\,
      R => '0'
    );
\m_axi_araddr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => \axaddr_wrap_reg_n_0_[0]\,
      I2 => \m_payload_i_reg[47]\(14),
      I3 => axaddr_incr_reg(0),
      I4 => \m_payload_i_reg[38]\,
      I5 => \m_payload_i_reg[47]\(0),
      O => m_axi_araddr(0)
    );
\m_axi_araddr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => \axaddr_wrap_reg_n_0_[10]\,
      I2 => \m_payload_i_reg[47]\(14),
      I3 => axaddr_incr_reg(10),
      I4 => \m_payload_i_reg[38]\,
      I5 => \m_payload_i_reg[47]\(10),
      O => m_axi_araddr(10)
    );
\m_axi_araddr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => \axaddr_wrap_reg_n_0_[11]\,
      I2 => \m_payload_i_reg[47]\(14),
      I3 => axaddr_incr_reg(11),
      I4 => \m_payload_i_reg[38]\,
      I5 => \m_payload_i_reg[47]\(11),
      O => m_axi_araddr(11)
    );
\m_axi_araddr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => \axaddr_wrap_reg_n_0_[1]\,
      I2 => \m_payload_i_reg[47]\(14),
      I3 => axaddr_incr_reg(1),
      I4 => \m_payload_i_reg[38]\,
      I5 => \m_payload_i_reg[47]\(1),
      O => m_axi_araddr(1)
    );
\m_axi_araddr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => \axaddr_wrap_reg_n_0_[2]\,
      I2 => \m_payload_i_reg[47]\(14),
      I3 => axaddr_incr_reg(2),
      I4 => \m_payload_i_reg[38]\,
      I5 => \m_payload_i_reg[47]\(2),
      O => m_axi_araddr(2)
    );
\m_axi_araddr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => \axaddr_wrap_reg_n_0_[3]\,
      I2 => \m_payload_i_reg[47]\(14),
      I3 => axaddr_incr_reg(3),
      I4 => \m_payload_i_reg[38]\,
      I5 => \m_payload_i_reg[47]\(3),
      O => m_axi_araddr(3)
    );
\m_axi_araddr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => \axaddr_wrap_reg_n_0_[4]\,
      I2 => \m_payload_i_reg[47]\(14),
      I3 => axaddr_incr_reg(4),
      I4 => \m_payload_i_reg[38]\,
      I5 => \m_payload_i_reg[47]\(4),
      O => m_axi_araddr(4)
    );
\m_axi_araddr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => \axaddr_wrap_reg_n_0_[5]\,
      I2 => \m_payload_i_reg[47]\(14),
      I3 => axaddr_incr_reg(5),
      I4 => \m_payload_i_reg[38]\,
      I5 => \m_payload_i_reg[47]\(5),
      O => m_axi_araddr(5)
    );
\m_axi_araddr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => \axaddr_wrap_reg_n_0_[6]\,
      I2 => \m_payload_i_reg[47]\(14),
      I3 => axaddr_incr_reg(6),
      I4 => \m_payload_i_reg[38]\,
      I5 => \m_payload_i_reg[47]\(6),
      O => m_axi_araddr(6)
    );
\m_axi_araddr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => \axaddr_wrap_reg_n_0_[7]\,
      I2 => \m_payload_i_reg[47]\(14),
      I3 => axaddr_incr_reg(7),
      I4 => \m_payload_i_reg[38]\,
      I5 => \m_payload_i_reg[47]\(7),
      O => m_axi_araddr(7)
    );
\m_axi_araddr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => \axaddr_wrap_reg_n_0_[8]\,
      I2 => \m_payload_i_reg[47]\(14),
      I3 => axaddr_incr_reg(8),
      I4 => \m_payload_i_reg[38]\,
      I5 => \m_payload_i_reg[47]\(8),
      O => m_axi_araddr(8)
    );
\m_axi_araddr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => sel_first_reg_n_0,
      I1 => \axaddr_wrap_reg_n_0_[9]\,
      I2 => \m_payload_i_reg[47]\(14),
      I3 => axaddr_incr_reg(9),
      I4 => \m_payload_i_reg[38]\,
      I5 => \m_payload_i_reg[47]\(9),
      O => m_axi_araddr(9)
    );
\next_pending_r_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFBFB00"
    )
        port map (
      I0 => \state_reg[0]_rep\,
      I1 => si_rs_arvalid,
      I2 => \state_reg[1]_rep\,
      I3 => \axlen_cnt_reg_n_0_[1]\,
      I4 => \axlen_cnt_reg_n_0_[2]\,
      I5 => \axlen_cnt_reg_n_0_[3]\,
      O => next_pending_r_reg_1
    );
next_pending_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wrap_next_pending,
      Q => next_pending_r_reg_0,
      R => '0'
    );
sel_first_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC4C4CFCC"
    )
        port map (
      I0 => m_axi_arready,
      I1 => sel_first_reg_n_0,
      I2 => \state_reg[1]\(1),
      I3 => si_rs_arvalid,
      I4 => \state_reg[1]\(0),
      I5 => areset_d1,
      O => sel_first_i_1_n_0
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_i_1_n_0,
      Q => sel_first_reg_n_0,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(0),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[0]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[47]\(10),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[10]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[47]\(11),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[11]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(1),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[1]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(2),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[2]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(3),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[3]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(4),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[4]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(5),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[5]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[6]\(6),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[6]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[47]\(7),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[7]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[47]\(8),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[8]\,
      R => '0'
    );
\wrap_boundary_axaddr_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i_reg[47]\(9),
      Q => \wrap_boundary_axaddr_r_reg_n_0_[9]\,
      R => '0'
    );
\wrap_cnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_2\(0),
      Q => \wrap_cnt_r_reg_n_0_[0]\,
      R => '0'
    );
\wrap_cnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_2\(1),
      Q => \wrap_cnt_r_reg_n_0_[1]\,
      R => '0'
    );
\wrap_cnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_2\(2),
      Q => \wrap_cnt_r_reg_n_0_[2]\,
      R => '0'
    );
\wrap_cnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_2\(3),
      Q => \wrap_cnt_r_reg_n_0_[3]\,
      R => '0'
    );
\wrap_second_len_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(0),
      Q => \wrap_second_len_r_reg[3]_0\(0),
      R => '0'
    );
\wrap_second_len_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(1),
      Q => \wrap_second_len_r_reg[3]_0\(1),
      R => '0'
    );
\wrap_second_len_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(2),
      Q => \wrap_second_len_r_reg[3]_0\(2),
      R => '0'
    );
\wrap_second_len_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wrap_second_len_r_reg[3]_1\(3),
      Q => \wrap_second_len_r_reg[3]_0\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    \axaddr_incr_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 46 downto 0 );
    \axaddr_incr_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_cnt_r_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_cnt_r_reg[2]_0\ : out STD_LOGIC;
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \wrap_second_len_r_reg[0]\ : out STD_LOGIC;
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC;
    \axlen_cnt_reg[3]\ : out STD_LOGIC;
    next_pending_r_reg : out STD_LOGIC;
    next_pending_r_reg_0 : out STD_LOGIC;
    \axaddr_incr_reg[1]\ : out STD_LOGIC;
    I26 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \axaddr_incr_reg[2]\ : out STD_LOGIC;
    \axaddr_incr_reg[3]\ : out STD_LOGIC;
    \axaddr_incr_reg[4]\ : out STD_LOGIC;
    \axaddr_offset_r_reg[2]\ : out STD_LOGIC;
    \wrap_boundary_axaddr_r_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \m_axi_araddr[10]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \state_reg[0]_rep\ : in STD_LOGIC;
    \state_reg[1]_rep\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \wrap_second_len_r_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_offset_r_reg[2]_0\ : in STD_LOGIC;
    \state_reg[1]_rep_0\ : in STD_LOGIC;
    \wrap_second_len_r_reg[2]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sel_first_0 : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aresetn : in STD_LOGIC;
    \state_reg[1]_rep_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice : entity is "axi_register_slice_v2_1_axic_register_slice";
end ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 46 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \aresetn_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \aresetn_d_reg_n_0_[1]\ : STD_LOGIC;
  signal \axaddr_offset_r[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \^axaddr_offset_r_reg[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^axlen_cnt_reg[3]\ : STD_LOGIC;
  signal \m_payload_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[33]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[34]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[35]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[36]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[38]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[39]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[44]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[45]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[46]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[47]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[49]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[50]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[51]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[53]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i_reg_n_0_[38]\ : STD_LOGIC;
  signal \m_valid_i_i_1__2_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \^next_pending_r_reg_0\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \s_ready_i_i_1__2_n_0\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[44]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[45]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[46]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[47]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[48]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[49]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[50]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[51]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[53]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \wrap_cnt_r[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \^wrap_cnt_r_reg[2]_0\ : STD_LOGIC;
  signal \wrap_second_len_r[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \wrap_second_len_r[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \^wrap_second_len_r_reg[2]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_offset_r[1]_i_3__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_payload_i[0]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_2__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[39]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_payload_i[44]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_payload_i[45]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[46]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[47]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[49]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_payload_i[50]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_payload_i[51]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_payload_i[53]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[3]_i_2__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[5]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \wrap_second_len_r[3]_i_3__0\ : label is "soft_lutpair20";
begin
  Q(46 downto 0) <= \^q\(46 downto 0);
  SR(0) <= \^sr\(0);
  \axaddr_offset_r_reg[3]\(2 downto 0) <= \^axaddr_offset_r_reg[3]\(2 downto 0);
  \axlen_cnt_reg[3]\ <= \^axlen_cnt_reg[3]\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  next_pending_r_reg_0 <= \^next_pending_r_reg_0\;
  s_axi_arready <= \^s_axi_arready\;
  \wrap_cnt_r_reg[2]_0\ <= \^wrap_cnt_r_reg[2]_0\;
  \wrap_second_len_r_reg[2]\(0) <= \^wrap_second_len_r_reg[2]\(0);
\aresetn_d[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^sr\(0)
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \aresetn_d_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg_n_0_[0]\,
      Q => \aresetn_d_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\axaddr_incr[0]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(35),
      I2 => \^q\(36),
      O => I26(2)
    );
\axaddr_incr[0]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(36),
      O => I26(1)
    );
\axaddr_incr[0]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(35),
      I2 => \^q\(36),
      O => I26(0)
    );
\axaddr_incr[1]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(36),
      I2 => sel_first_0,
      O => \axaddr_incr_reg[1]\
    );
\axaddr_incr[2]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(35),
      I2 => sel_first_0,
      O => \axaddr_incr_reg[2]\
    );
\axaddr_incr[3]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(36),
      I2 => sel_first_0,
      O => \axaddr_incr_reg[3]\
    );
\axaddr_incr[4]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(36),
      I2 => sel_first_0,
      O => \axaddr_incr_reg[4]\
    );
\axaddr_incr[4]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      O => \axaddr_incr_reg[7]\(3)
    );
\axaddr_incr[4]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      O => \axaddr_incr_reg[7]\(2)
    );
\axaddr_incr[4]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      O => \axaddr_incr_reg[7]\(1)
    );
\axaddr_incr[4]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      O => \axaddr_incr_reg[7]\(0)
    );
\axaddr_incr[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(11),
      O => \axaddr_incr_reg[11]\(3)
    );
\axaddr_incr[8]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(10),
      O => \axaddr_incr_reg[11]\(2)
    );
\axaddr_incr[8]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      O => \axaddr_incr_reg[11]\(1)
    );
\axaddr_incr[8]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      O => \axaddr_incr_reg[11]\(0)
    );
\axaddr_offset_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FF00000800"
    )
        port map (
      I0 => \^q\(38),
      I1 => \axaddr_offset_r[0]_i_2__0_n_0\,
      I2 => \state_reg[1]\(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => \state_reg[1]\(0),
      I5 => \axaddr_offset_r_reg[3]_0\(0),
      O => \^axaddr_offset_r_reg[3]\(0)
    );
\axaddr_offset_r[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(35),
      I3 => \^q\(2),
      I4 => \^q\(36),
      I5 => \^q\(0),
      O => \axaddr_offset_r[0]_i_2__0_n_0\
    );
\axaddr_offset_r[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC00FFFFAC000000"
    )
        port map (
      I0 => \axaddr_offset_r[1]_i_2__0_n_0\,
      I1 => \axaddr_offset_r[1]_i_3__0_n_0\,
      I2 => \^q\(35),
      I3 => \^q\(39),
      I4 => \state_reg[1]_rep_0\,
      I5 => \axaddr_offset_r_reg[3]_0\(1),
      O => \^axaddr_offset_r_reg[3]\(1)
    );
\axaddr_offset_r[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(36),
      I2 => \^q\(2),
      O => \axaddr_offset_r[1]_i_2__0_n_0\
    );
\axaddr_offset_r[1]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(36),
      I2 => \^q\(1),
      O => \axaddr_offset_r[1]_i_3__0_n_0\
    );
\axaddr_offset_r[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(35),
      I3 => \^q\(4),
      I4 => \^q\(36),
      I5 => \^q\(2),
      O => \axaddr_offset_r_reg[2]\
    );
\axaddr_offset_r[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FF00000800"
    )
        port map (
      I0 => \^q\(41),
      I1 => \axaddr_offset_r[3]_i_2__0_n_0\,
      I2 => \state_reg[1]\(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => \state_reg[0]_rep\,
      I5 => \axaddr_offset_r_reg[3]_0\(2),
      O => \^axaddr_offset_r_reg[3]\(2)
    );
\axaddr_offset_r[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(35),
      I3 => \^q\(5),
      I4 => \^q\(36),
      I5 => \^q\(3),
      O => \axaddr_offset_r[3]_i_2__0_n_0\
    );
\axlen_cnt[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^q\(41),
      I1 => \state_reg[0]_rep\,
      I2 => \^m_valid_i_reg_0\,
      I3 => \state_reg[1]_rep\,
      O => \^axlen_cnt_reg[3]\
    );
\m_axi_araddr[11]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_payload_i_reg_n_0_[38]\,
      I1 => sel_first_0,
      O => \m_axi_araddr[10]\
    );
\m_payload_i[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => \m_payload_i[0]_i_1__0_n_0\
    );
\m_payload_i[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => \m_payload_i[10]_i_1__0_n_0\
    );
\m_payload_i[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => \m_payload_i[11]_i_1__0_n_0\
    );
\m_payload_i[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => \m_payload_i[12]_i_1__0_n_0\
    );
\m_payload_i[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => \m_payload_i[13]_i_1__0_n_0\
    );
\m_payload_i[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => \m_payload_i[14]_i_1__0_n_0\
    );
\m_payload_i[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => \m_payload_i[15]_i_1__0_n_0\
    );
\m_payload_i[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(16),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => \m_payload_i[16]_i_1__0_n_0\
    );
\m_payload_i[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(17),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => \m_payload_i[17]_i_1__0_n_0\
    );
\m_payload_i[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(18),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => \m_payload_i[18]_i_1__0_n_0\
    );
\m_payload_i[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(19),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => \m_payload_i[19]_i_1__0_n_0\
    );
\m_payload_i[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => \m_payload_i[1]_i_1__0_n_0\
    );
\m_payload_i[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(20),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => \m_payload_i[20]_i_1__0_n_0\
    );
\m_payload_i[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(21),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => \m_payload_i[21]_i_1__0_n_0\
    );
\m_payload_i[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(22),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => \m_payload_i[22]_i_1__0_n_0\
    );
\m_payload_i[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(23),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => \m_payload_i[23]_i_1__0_n_0\
    );
\m_payload_i[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(24),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => \m_payload_i[24]_i_1__0_n_0\
    );
\m_payload_i[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(25),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => \m_payload_i[25]_i_1__0_n_0\
    );
\m_payload_i[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(26),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => \m_payload_i[26]_i_1__0_n_0\
    );
\m_payload_i[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(27),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => \m_payload_i[27]_i_1__0_n_0\
    );
\m_payload_i[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(28),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => \m_payload_i[28]_i_1__0_n_0\
    );
\m_payload_i[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(29),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => \m_payload_i[29]_i_1__0_n_0\
    );
\m_payload_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => \m_payload_i[2]_i_1__0_n_0\
    );
\m_payload_i[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(30),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => \m_payload_i[30]_i_1__0_n_0\
    );
\m_payload_i[31]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(31),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => \m_payload_i[31]_i_2__0_n_0\
    );
\m_payload_i[32]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arprot(0),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => \m_payload_i[32]_i_1__0_n_0\
    );
\m_payload_i[33]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arprot(1),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => \m_payload_i[33]_i_1__0_n_0\
    );
\m_payload_i[34]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arprot(2),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => \m_payload_i[34]_i_1__0_n_0\
    );
\m_payload_i[35]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => \m_payload_i[35]_i_1__1_n_0\
    );
\m_payload_i[36]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => \m_payload_i[36]_i_1__0_n_0\
    );
\m_payload_i[38]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[38]\,
      O => \m_payload_i[38]_i_1__0_n_0\
    );
\m_payload_i[39]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[39]\,
      O => \m_payload_i[39]_i_1__0_n_0\
    );
\m_payload_i[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => \m_payload_i[3]_i_1__0_n_0\
    );
\m_payload_i[44]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[44]\,
      O => \m_payload_i[44]_i_1__0_n_0\
    );
\m_payload_i[45]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[45]\,
      O => \m_payload_i[45]_i_1__0_n_0\
    );
\m_payload_i[46]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[46]\,
      O => \m_payload_i[46]_i_1__0_n_0\
    );
\m_payload_i[47]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[47]\,
      O => \m_payload_i[47]_i_1__0_n_0\
    );
\m_payload_i[48]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[48]\,
      O => \m_payload_i[48]_i_1__0_n_0\
    );
\m_payload_i[49]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[49]\,
      O => \m_payload_i[49]_i_1__0_n_0\
    );
\m_payload_i[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => \m_payload_i[4]_i_1__0_n_0\
    );
\m_payload_i[50]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[50]\,
      O => \m_payload_i[50]_i_1__0_n_0\
    );
\m_payload_i[51]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[51]\,
      O => \m_payload_i[51]_i_1__0_n_0\
    );
\m_payload_i[53]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arid(0),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[53]\,
      O => \m_payload_i[53]_i_1__0_n_0\
    );
\m_payload_i[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => \m_payload_i[5]_i_1__0_n_0\
    );
\m_payload_i[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => \m_payload_i[6]_i_1__0_n_0\
    );
\m_payload_i[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => \m_payload_i[7]_i_1__0_n_0\
    );
\m_payload_i[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => \m_payload_i[8]_i_1__0_n_0\
    );
\m_payload_i[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => \^s_axi_arready\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => \m_payload_i[9]_i_1__0_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[10]_i_1__0_n_0\,
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[11]_i_1__0_n_0\,
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[12]_i_1__0_n_0\,
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[13]_i_1__0_n_0\,
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[14]_i_1__0_n_0\,
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[15]_i_1__0_n_0\,
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[16]_i_1__0_n_0\,
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[17]_i_1__0_n_0\,
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[18]_i_1__0_n_0\,
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[19]_i_1__0_n_0\,
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[20]_i_1__0_n_0\,
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[21]_i_1__0_n_0\,
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[22]_i_1__0_n_0\,
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[23]_i_1__0_n_0\,
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[24]_i_1__0_n_0\,
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[25]_i_1__0_n_0\,
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[26]_i_1__0_n_0\,
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[27]_i_1__0_n_0\,
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[28]_i_1__0_n_0\,
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[29]_i_1__0_n_0\,
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[30]_i_1__0_n_0\,
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[31]_i_2__0_n_0\,
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[32]_i_1__0_n_0\,
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[33]_i_1__0_n_0\,
      Q => \^q\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[34]_i_1__0_n_0\,
      Q => \^q\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[35]_i_1__1_n_0\,
      Q => \^q\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[36]_i_1__0_n_0\,
      Q => \^q\(36),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[38]_i_1__0_n_0\,
      Q => \m_payload_i_reg_n_0_[38]\,
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[39]_i_1__0_n_0\,
      Q => \^q\(37),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[44]_i_1__0_n_0\,
      Q => \^q\(38),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[45]_i_1__0_n_0\,
      Q => \^q\(39),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[46]_i_1__0_n_0\,
      Q => \^q\(40),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[47]_i_1__0_n_0\,
      Q => \^q\(41),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[48]_i_1__0_n_0\,
      Q => \^q\(42),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[49]_i_1__0_n_0\,
      Q => \^q\(43),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[50]_i_1__0_n_0\,
      Q => \^q\(44),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[51]_i_1__0_n_0\,
      Q => \^q\(45),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[53]_i_1__0_n_0\,
      Q => \^q\(46),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[8]_i_1__0_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \state_reg[1]_rep_1\(0),
      D => \m_payload_i[9]_i_1__0_n_0\,
      Q => \^q\(9),
      R => '0'
    );
\m_valid_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2AAA2AAA2AAA2"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[1]\,
      I1 => \^s_axi_arready\,
      I2 => s_axi_arvalid,
      I3 => \^m_valid_i_reg_0\,
      I4 => \state_reg[0]_rep\,
      I5 => \state_reg[1]_rep\,
      O => \m_valid_i_i_1__2_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_1__2_n_0\,
      Q => \^m_valid_i_reg_0\,
      R => '0'
    );
\next_pending_r_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \^next_pending_r_reg_0\,
      I1 => \^q\(42),
      I2 => \^q\(45),
      I3 => \^q\(43),
      I4 => \^q\(44),
      O => next_pending_r_reg
    );
\next_pending_r_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(40),
      I1 => \^q\(39),
      I2 => \^q\(41),
      I3 => \^q\(38),
      O => \^next_pending_r_reg_0\
    );
\s_ready_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A222A222AAAAA222"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      I1 => \^m_valid_i_reg_0\,
      I2 => \state_reg[0]_rep\,
      I3 => \state_reg[1]_rep\,
      I4 => \^s_axi_arready\,
      I5 => s_axi_arvalid,
      O => \s_ready_i_i_1__2_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__2_n_0\,
      Q => \^s_axi_arready\,
      R => '0'
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arprot(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arprot(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arprot(2),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arsize(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arsize(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arburst(0),
      Q => \skid_buffer_reg_n_0_[38]\,
      R => '0'
    );
\skid_buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arburst(1),
      Q => \skid_buffer_reg_n_0_[39]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(0),
      Q => \skid_buffer_reg_n_0_[44]\,
      R => '0'
    );
\skid_buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(1),
      Q => \skid_buffer_reg_n_0_[45]\,
      R => '0'
    );
\skid_buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(2),
      Q => \skid_buffer_reg_n_0_[46]\,
      R => '0'
    );
\skid_buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(3),
      Q => \skid_buffer_reg_n_0_[47]\,
      R => '0'
    );
\skid_buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(4),
      Q => \skid_buffer_reg_n_0_[48]\,
      R => '0'
    );
\skid_buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(5),
      Q => \skid_buffer_reg_n_0_[49]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(6),
      Q => \skid_buffer_reg_n_0_[50]\,
      R => '0'
    );
\skid_buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(7),
      Q => \skid_buffer_reg_n_0_[51]\,
      R => '0'
    );
\skid_buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_arid(0),
      Q => \skid_buffer_reg_n_0_[53]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
\wrap_boundary_axaddr_r[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(36),
      I2 => \^q\(38),
      I3 => \^q\(35),
      O => \wrap_boundary_axaddr_r_reg[6]\(0)
    );
\wrap_boundary_axaddr_r[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A888AAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(36),
      I2 => \^q\(38),
      I3 => \^q\(35),
      I4 => \^q\(39),
      O => \wrap_boundary_axaddr_r_reg[6]\(1)
    );
\wrap_boundary_axaddr_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A002A2AAAA02A2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(40),
      I2 => \^q\(35),
      I3 => \^q\(39),
      I4 => \^q\(36),
      I5 => \^q\(38),
      O => \wrap_boundary_axaddr_r_reg[6]\(2)
    );
\wrap_boundary_axaddr_r[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \wrap_boundary_axaddr_r[3]_i_2__0_n_0\,
      I2 => \^q\(36),
      I3 => \^q\(39),
      I4 => \^q\(35),
      I5 => \^q\(38),
      O => \wrap_boundary_axaddr_r_reg[6]\(3)
    );
\wrap_boundary_axaddr_r[3]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(40),
      I1 => \^q\(35),
      I2 => \^q\(41),
      O => \wrap_boundary_axaddr_r[3]_i_2__0_n_0\
    );
\wrap_boundary_axaddr_r[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A0A2AA02AAA2A"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(41),
      I2 => \^q\(35),
      I3 => \^q\(36),
      I4 => \^q\(40),
      I5 => \^q\(39),
      O => \wrap_boundary_axaddr_r_reg[6]\(4)
    );
\wrap_boundary_axaddr_r[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A222AAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(36),
      I2 => \^q\(40),
      I3 => \^q\(35),
      I4 => \^q\(41),
      O => \wrap_boundary_axaddr_r_reg[6]\(5)
    );
\wrap_boundary_axaddr_r[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(36),
      I2 => \^q\(35),
      I3 => \^q\(41),
      O => \wrap_boundary_axaddr_r_reg[6]\(6)
    );
\wrap_cnt_r[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^wrap_second_len_r_reg[2]\(0),
      I1 => \^wrap_cnt_r_reg[2]_0\,
      I2 => \wrap_second_len_r_reg[1]\(0),
      O => \wrap_cnt_r_reg[2]\(0)
    );
\wrap_cnt_r[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \wrap_cnt_r[3]_i_3__0_n_0\,
      I1 => \axaddr_offset_r_reg[2]_0\,
      I2 => \^axaddr_offset_r_reg[3]\(0),
      I3 => \^axaddr_offset_r_reg[3]\(1),
      I4 => \^axaddr_offset_r_reg[3]\(2),
      O => \^wrap_cnt_r_reg[2]_0\
    );
\wrap_cnt_r[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000800FFFFF8FF"
    )
        port map (
      I0 => \^q\(38),
      I1 => \axaddr_offset_r[0]_i_2__0_n_0\,
      I2 => \state_reg[1]\(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => \state_reg[1]\(0),
      I5 => \wrap_second_len_r_reg[2]_0\(0),
      O => \wrap_cnt_r[3]_i_3__0_n_0\
    );
\wrap_second_len_r[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(36),
      I2 => \^q\(2),
      I3 => \^q\(35),
      I4 => \axaddr_offset_r[1]_i_3__0_n_0\,
      I5 => \wrap_second_len_r[0]_i_4__0_n_0\,
      O => \wrap_second_len_r_reg[0]\
    );
\wrap_second_len_r[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^q\(38),
      I1 => \state_reg[1]\(0),
      I2 => \^m_valid_i_reg_0\,
      I3 => \state_reg[1]\(1),
      O => \wrap_second_len_r[0]_i_4__0_n_0\
    );
\wrap_second_len_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FCFFFF02FC0000"
    )
        port map (
      I0 => \^axaddr_offset_r_reg[3]\(2),
      I1 => \^axaddr_offset_r_reg[3]\(1),
      I2 => \^axaddr_offset_r_reg[3]\(0),
      I3 => \axaddr_offset_r_reg[2]_0\,
      I4 => \state_reg[1]_rep_0\,
      I5 => \wrap_second_len_r_reg[2]_0\(1),
      O => \^wrap_second_len_r_reg[2]\(0)
    );
\wrap_second_len_r[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \wrap_second_len_r[3]_i_3__0_n_0\,
      I1 => \^q\(35),
      I2 => \^q\(4),
      I3 => \^q\(36),
      I4 => \^q\(6),
      I5 => \^axlen_cnt_reg[3]\,
      O => \wrap_second_len_r_reg[3]\
    );
\wrap_second_len_r[3]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(36),
      I2 => \^q\(3),
      O => \wrap_second_len_r[3]_i_3__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice_0 is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 46 downto 0 );
    \axaddr_incr_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_cnt_r_reg[2]\ : out STD_LOGIC;
    axaddr_offset : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \wrap_second_len_r_reg[0]\ : out STD_LOGIC;
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC;
    \axlen_cnt_reg[3]\ : out STD_LOGIC;
    next_pending_r_reg : out STD_LOGIC;
    next_pending_r_reg_0 : out STD_LOGIC;
    \axaddr_incr_reg[1]\ : out STD_LOGIC;
    axaddr_incr0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \axaddr_incr_reg[2]\ : out STD_LOGIC;
    \axaddr_incr_reg[3]\ : out STD_LOGIC;
    \axaddr_incr_reg[4]\ : out STD_LOGIC;
    \axaddr_offset_r_reg[2]\ : out STD_LOGIC;
    \wrap_boundary_axaddr_r_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \m_axi_awaddr[10]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    b_push : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    wrap_second_len : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_offset_r_reg[2]_0\ : in STD_LOGIC;
    \state_reg[1]_rep\ : in STD_LOGIC;
    \wrap_second_len_r_reg[2]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sel_first : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice_0 : entity is "axi_register_slice_v2_1_axic_register_slice";
end ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice_0;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 46 downto 0 );
  signal \aresetn_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \aresetn_d_reg_n_0_[1]\ : STD_LOGIC;
  signal \^axaddr_offset\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \axaddr_offset_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \axaddr_offset_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \^axlen_cnt_reg[3]\ : STD_LOGIC;
  signal \m_payload_i_reg_n_0_[38]\ : STD_LOGIC;
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \^next_pending_r_reg_0\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[44]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[45]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[46]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[47]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[48]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[49]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[50]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[51]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[53]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal \wrap_boundary_axaddr_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \wrap_cnt_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \^wrap_cnt_r_reg[2]\ : STD_LOGIC;
  signal \wrap_second_len_r[0]_i_4_n_0\ : STD_LOGIC;
  signal \wrap_second_len_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \^wrap_second_len_r_reg[2]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axaddr_offset_r[1]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \axlen_cnt[3]_i_2__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_payload_i[0]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_payload_i[39]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_payload_i[44]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_payload_i[45]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_payload_i[46]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_payload_i[47]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_payload_i[49]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_payload_i[50]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_payload_i[51]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_payload_i[53]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[3]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \wrap_boundary_axaddr_r[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \wrap_second_len_r[0]_i_4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \wrap_second_len_r[3]_i_3\ : label is "soft_lutpair47";
begin
  Q(46 downto 0) <= \^q\(46 downto 0);
  axaddr_offset(2 downto 0) <= \^axaddr_offset\(2 downto 0);
  \axlen_cnt_reg[3]\ <= \^axlen_cnt_reg[3]\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  next_pending_r_reg_0 <= \^next_pending_r_reg_0\;
  s_axi_awready <= \^s_axi_awready\;
  \wrap_cnt_r_reg[2]\ <= \^wrap_cnt_r_reg[2]\;
  \wrap_second_len_r_reg[2]\(0) <= \^wrap_second_len_r_reg[2]\(0);
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \aresetn_d_reg_n_0_[0]\,
      R => SR(0)
    );
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg_n_0_[0]\,
      Q => \aresetn_d_reg_n_0_[1]\,
      R => SR(0)
    );
\axaddr_incr[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(35),
      I2 => \^q\(36),
      O => axaddr_incr0(2)
    );
\axaddr_incr[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(36),
      O => axaddr_incr0(1)
    );
\axaddr_incr[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(35),
      I2 => \^q\(36),
      O => axaddr_incr0(0)
    );
\axaddr_incr[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(36),
      I2 => sel_first,
      O => \axaddr_incr_reg[1]\
    );
\axaddr_incr[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(35),
      I2 => sel_first,
      O => \axaddr_incr_reg[2]\
    );
\axaddr_incr[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(36),
      I2 => sel_first,
      O => \axaddr_incr_reg[3]\
    );
\axaddr_incr[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(36),
      I2 => sel_first,
      O => \axaddr_incr_reg[4]\
    );
\axaddr_incr[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      O => S(3)
    );
\axaddr_incr[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      O => S(2)
    );
\axaddr_incr[4]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      O => S(1)
    );
\axaddr_incr[4]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      O => S(0)
    );
\axaddr_incr[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(11),
      O => \axaddr_incr_reg[11]\(3)
    );
\axaddr_incr[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(10),
      O => \axaddr_incr_reg[11]\(2)
    );
\axaddr_incr[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      O => \axaddr_incr_reg[11]\(1)
    );
\axaddr_incr[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      O => \axaddr_incr_reg[11]\(0)
    );
\axaddr_offset_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FF00000800"
    )
        port map (
      I0 => \^q\(38),
      I1 => \axaddr_offset_r[0]_i_2_n_0\,
      I2 => \state_reg[1]\(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => \state_reg[1]\(0),
      I5 => \axaddr_offset_r_reg[3]\(0),
      O => \^axaddr_offset\(0)
    );
\axaddr_offset_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(35),
      I3 => \^q\(2),
      I4 => \^q\(36),
      I5 => \^q\(0),
      O => \axaddr_offset_r[0]_i_2_n_0\
    );
\axaddr_offset_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC00FFFFAC000000"
    )
        port map (
      I0 => \axaddr_offset_r[1]_i_2_n_0\,
      I1 => \axaddr_offset_r[1]_i_3_n_0\,
      I2 => \^q\(35),
      I3 => \^q\(39),
      I4 => \state_reg[1]_rep\,
      I5 => \axaddr_offset_r_reg[3]\(1),
      O => \^axaddr_offset\(1)
    );
\axaddr_offset_r[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(36),
      I2 => \^q\(2),
      O => \axaddr_offset_r[1]_i_2_n_0\
    );
\axaddr_offset_r[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(36),
      I2 => \^q\(1),
      O => \axaddr_offset_r[1]_i_3_n_0\
    );
\axaddr_offset_r[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(35),
      I3 => \^q\(4),
      I4 => \^q\(36),
      I5 => \^q\(2),
      O => \axaddr_offset_r_reg[2]\
    );
\axaddr_offset_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FF00000800"
    )
        port map (
      I0 => \^q\(41),
      I1 => \axaddr_offset_r[3]_i_2_n_0\,
      I2 => \state_reg[1]\(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => \state_reg[1]\(0),
      I5 => \axaddr_offset_r_reg[3]\(2),
      O => \^axaddr_offset\(2)
    );
\axaddr_offset_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(35),
      I3 => \^q\(5),
      I4 => \^q\(36),
      I5 => \^q\(3),
      O => \axaddr_offset_r[3]_i_2_n_0\
    );
\axlen_cnt[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^q\(41),
      I1 => \state_reg[1]\(0),
      I2 => \^m_valid_i_reg_0\,
      I3 => \state_reg[1]\(1),
      O => \^axlen_cnt_reg[3]\
    );
\m_axi_awaddr[11]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_payload_i_reg_n_0_[38]\,
      I1 => sel_first,
      O => \m_axi_awaddr[10]\
    );
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => skid_buffer(0)
    );
\m_payload_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => skid_buffer(10)
    );
\m_payload_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => skid_buffer(11)
    );
\m_payload_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(12),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => skid_buffer(12)
    );
\m_payload_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(13),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => skid_buffer(13)
    );
\m_payload_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(14),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => skid_buffer(14)
    );
\m_payload_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(15),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => skid_buffer(15)
    );
\m_payload_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(16),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => skid_buffer(16)
    );
\m_payload_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(17),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => skid_buffer(17)
    );
\m_payload_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(18),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => skid_buffer(18)
    );
\m_payload_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(19),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => skid_buffer(19)
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => skid_buffer(1)
    );
\m_payload_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(20),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => skid_buffer(20)
    );
\m_payload_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(21),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => skid_buffer(21)
    );
\m_payload_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(22),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => skid_buffer(22)
    );
\m_payload_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(23),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => skid_buffer(23)
    );
\m_payload_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(24),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => skid_buffer(24)
    );
\m_payload_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(25),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => skid_buffer(25)
    );
\m_payload_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(26),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => skid_buffer(26)
    );
\m_payload_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(27),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => skid_buffer(27)
    );
\m_payload_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(28),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => skid_buffer(28)
    );
\m_payload_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(29),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => skid_buffer(29)
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => skid_buffer(2)
    );
\m_payload_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(30),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => skid_buffer(30)
    );
\m_payload_i[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(31),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => skid_buffer(31)
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(0),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => skid_buffer(32)
    );
\m_payload_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(1),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => skid_buffer(33)
    );
\m_payload_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(2),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\m_payload_i[35]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\m_payload_i[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => skid_buffer(36)
    );
\m_payload_i[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[38]\,
      O => skid_buffer(38)
    );
\m_payload_i[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[39]\,
      O => skid_buffer(39)
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => skid_buffer(3)
    );
\m_payload_i[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[44]\,
      O => skid_buffer(44)
    );
\m_payload_i[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[45]\,
      O => skid_buffer(45)
    );
\m_payload_i[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[46]\,
      O => skid_buffer(46)
    );
\m_payload_i[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[47]\,
      O => skid_buffer(47)
    );
\m_payload_i[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[48]\,
      O => skid_buffer(48)
    );
\m_payload_i[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[49]\,
      O => skid_buffer(49)
    );
\m_payload_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => skid_buffer(4)
    );
\m_payload_i[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[50]\,
      O => skid_buffer(50)
    );
\m_payload_i[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[51]\,
      O => skid_buffer(51)
    );
\m_payload_i[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[53]\,
      O => skid_buffer(53)
    );
\m_payload_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => skid_buffer(5)
    );
\m_payload_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => skid_buffer(6)
    );
\m_payload_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => skid_buffer(7)
    );
\m_payload_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => skid_buffer(8)
    );
\m_payload_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \^s_axi_awready\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => skid_buffer(9)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(0),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(10),
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(11),
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(12),
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(13),
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(14),
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(15),
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(16),
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(17),
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(18),
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(19),
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(1),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(20),
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(21),
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(22),
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(23),
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(24),
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(25),
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(26),
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(27),
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(28),
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(29),
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(2),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(30),
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(31),
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(32),
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(33),
      Q => \^q\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(34),
      Q => \^q\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(35),
      Q => \^q\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(36),
      Q => \^q\(36),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(38),
      Q => \m_payload_i_reg_n_0_[38]\,
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(39),
      Q => \^q\(37),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(3),
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(44),
      Q => \^q\(38),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(45),
      Q => \^q\(39),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(46),
      Q => \^q\(40),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(47),
      Q => \^q\(41),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(48),
      Q => \^q\(42),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(49),
      Q => \^q\(43),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(4),
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(50),
      Q => \^q\(44),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(51),
      Q => \^q\(45),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(53),
      Q => \^q\(46),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(5),
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(6),
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(7),
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(8),
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(9),
      Q => \^q\(9),
      R => '0'
    );
m_valid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A2AAA2"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[1]\,
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => \^m_valid_i_reg_0\,
      I4 => b_push,
      O => m_valid_i_i_1_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_i_1_n_0,
      Q => \^m_valid_i_reg_0\,
      R => '0'
    );
next_pending_r_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^next_pending_r_reg_0\,
      I1 => \^q\(42),
      I2 => \^q\(43),
      I3 => \^q\(44),
      I4 => \^q\(45),
      O => next_pending_r_reg
    );
\next_pending_r_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(40),
      I1 => \^q\(39),
      I2 => \^q\(41),
      I3 => \^q\(38),
      O => \^next_pending_r_reg_0\
    );
s_ready_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A2AAA2"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      I1 => \^m_valid_i_reg_0\,
      I2 => b_push,
      I3 => \^s_axi_awready\,
      I4 => s_axi_awvalid,
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => \^s_axi_awready\,
      R => '0'
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awprot(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awprot(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awprot(2),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awsize(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awsize(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awburst(0),
      Q => \skid_buffer_reg_n_0_[38]\,
      R => '0'
    );
\skid_buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awburst(1),
      Q => \skid_buffer_reg_n_0_[39]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(0),
      Q => \skid_buffer_reg_n_0_[44]\,
      R => '0'
    );
\skid_buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(1),
      Q => \skid_buffer_reg_n_0_[45]\,
      R => '0'
    );
\skid_buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(2),
      Q => \skid_buffer_reg_n_0_[46]\,
      R => '0'
    );
\skid_buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(3),
      Q => \skid_buffer_reg_n_0_[47]\,
      R => '0'
    );
\skid_buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(4),
      Q => \skid_buffer_reg_n_0_[48]\,
      R => '0'
    );
\skid_buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(5),
      Q => \skid_buffer_reg_n_0_[49]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(6),
      Q => \skid_buffer_reg_n_0_[50]\,
      R => '0'
    );
\skid_buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(7),
      Q => \skid_buffer_reg_n_0_[51]\,
      R => '0'
    );
\skid_buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awid(0),
      Q => \skid_buffer_reg_n_0_[53]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
\wrap_boundary_axaddr_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(36),
      I2 => \^q\(38),
      I3 => \^q\(35),
      O => \wrap_boundary_axaddr_r_reg[6]\(0)
    );
\wrap_boundary_axaddr_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A888AAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(36),
      I2 => \^q\(38),
      I3 => \^q\(35),
      I4 => \^q\(39),
      O => \wrap_boundary_axaddr_r_reg[6]\(1)
    );
\wrap_boundary_axaddr_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A002A2AAAA02A2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(40),
      I2 => \^q\(35),
      I3 => \^q\(39),
      I4 => \^q\(36),
      I5 => \^q\(38),
      O => \wrap_boundary_axaddr_r_reg[6]\(2)
    );
\wrap_boundary_axaddr_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \wrap_boundary_axaddr_r[3]_i_2_n_0\,
      I2 => \^q\(36),
      I3 => \^q\(39),
      I4 => \^q\(35),
      I5 => \^q\(38),
      O => \wrap_boundary_axaddr_r_reg[6]\(3)
    );
\wrap_boundary_axaddr_r[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(40),
      I1 => \^q\(35),
      I2 => \^q\(41),
      O => \wrap_boundary_axaddr_r[3]_i_2_n_0\
    );
\wrap_boundary_axaddr_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A0A2AA02AAA2A"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(41),
      I2 => \^q\(35),
      I3 => \^q\(36),
      I4 => \^q\(40),
      I5 => \^q\(39),
      O => \wrap_boundary_axaddr_r_reg[6]\(4)
    );
\wrap_boundary_axaddr_r[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A222AAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(36),
      I2 => \^q\(40),
      I3 => \^q\(35),
      I4 => \^q\(41),
      O => \wrap_boundary_axaddr_r_reg[6]\(5)
    );
\wrap_boundary_axaddr_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(36),
      I2 => \^q\(35),
      I3 => \^q\(41),
      O => \wrap_boundary_axaddr_r_reg[6]\(6)
    );
\wrap_cnt_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^wrap_second_len_r_reg[2]\(0),
      I1 => \^wrap_cnt_r_reg[2]\,
      I2 => wrap_second_len(0),
      O => D(0)
    );
\wrap_cnt_r[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \wrap_cnt_r[3]_i_3_n_0\,
      I1 => \axaddr_offset_r_reg[2]_0\,
      I2 => \^axaddr_offset\(0),
      I3 => \^axaddr_offset\(1),
      I4 => \^axaddr_offset\(2),
      O => \^wrap_cnt_r_reg[2]\
    );
\wrap_cnt_r[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000800FFFFF8FF"
    )
        port map (
      I0 => \^q\(38),
      I1 => \axaddr_offset_r[0]_i_2_n_0\,
      I2 => \state_reg[1]\(1),
      I3 => \^m_valid_i_reg_0\,
      I4 => \state_reg[1]\(0),
      I5 => \wrap_second_len_r_reg[2]_0\(0),
      O => \wrap_cnt_r[3]_i_3_n_0\
    );
\wrap_second_len_r[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(36),
      I2 => \^q\(2),
      I3 => \^q\(35),
      I4 => \axaddr_offset_r[1]_i_3_n_0\,
      I5 => \wrap_second_len_r[0]_i_4_n_0\,
      O => \wrap_second_len_r_reg[0]\
    );
\wrap_second_len_r[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^q\(38),
      I1 => \state_reg[1]\(0),
      I2 => \^m_valid_i_reg_0\,
      I3 => \state_reg[1]\(1),
      O => \wrap_second_len_r[0]_i_4_n_0\
    );
\wrap_second_len_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FCFFFF02FC0000"
    )
        port map (
      I0 => \^axaddr_offset\(2),
      I1 => \^axaddr_offset\(1),
      I2 => \^axaddr_offset\(0),
      I3 => \axaddr_offset_r_reg[2]_0\,
      I4 => \state_reg[1]_rep\,
      I5 => \wrap_second_len_r_reg[2]_0\(1),
      O => \^wrap_second_len_r_reg[2]\(0)
    );
\wrap_second_len_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \wrap_second_len_r[3]_i_3_n_0\,
      I1 => \^q\(35),
      I2 => \^q\(4),
      I3 => \^q\(36),
      I4 => \^q\(6),
      I5 => \^axlen_cnt_reg[3]\,
      O => \wrap_second_len_r_reg[3]\
    );
\wrap_second_len_r[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(36),
      I2 => \^q\(3),
      O => \wrap_second_len_r[3]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized1\ is
  port (
    s_axi_bvalid : out STD_LOGIC;
    \skid_buffer_reg[0]_0\ : out STD_LOGIC;
    shandshake : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    si_rs_bvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_bresp_acc_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized1\ : entity is "axi_register_slice_v2_1_axic_register_slice";
end \ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized1\;

architecture STRUCTURE of \ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized1\ is
  signal \aresetn_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \aresetn_d_reg_n_0_[1]\ : STD_LOGIC;
  signal \m_payload_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_valid_i_i_1__1_n_0\ : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \s_ready_i_i_1__1_n_0\ : STD_LOGIC;
  signal \skid_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \skid_buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \skid_buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \^skid_buffer_reg[0]_0\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_valid_i_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of shandshake_r_i_1 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \skid_buffer[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \skid_buffer[2]_i_1\ : label is "soft_lutpair73";
begin
  s_axi_bid(0) <= \^s_axi_bid\(0);
  s_axi_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  \skid_buffer_reg[0]_0\ <= \^skid_buffer_reg[0]_0\;
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \aresetn_d_reg_n_0_[0]\,
      R => SR(0)
    );
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg_n_0_[0]\,
      Q => \aresetn_d_reg_n_0_[1]\,
      R => SR(0)
    );
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8B8B800B8B8"
    )
        port map (
      I0 => \s_bresp_acc_reg[1]\(0),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      I5 => \^s_axi_bresp\(0),
      O => \m_payload_i[0]_i_1_n_0\
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8B8B800B8B8"
    )
        port map (
      I0 => \s_bresp_acc_reg[1]\(1),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      I5 => \^s_axi_bresp\(1),
      O => \m_payload_i[1]_i_1_n_0\
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8B8B800B8B8"
    )
        port map (
      I0 => \out\(0),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      I5 => \^s_axi_bid\(0),
      O => \m_payload_i[2]_i_1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[0]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(1),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[2]_i_1_n_0\,
      Q => \^s_axi_bid\(0),
      R => '0'
    );
\m_valid_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A2AAA2"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[1]\,
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => si_rs_bvalid,
      I3 => \^s_axi_bvalid\,
      I4 => s_axi_bready,
      O => \m_valid_i_i_1__1_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_1__1_n_0\,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\s_ready_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A2AAA2"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_bready,
      I3 => \^skid_buffer_reg[0]_0\,
      I4 => si_rs_bvalid,
      O => \s_ready_i_i_1__1_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__1_n_0\,
      Q => \^skid_buffer_reg[0]_0\,
      R => '0'
    );
shandshake_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^skid_buffer_reg[0]_0\,
      I1 => si_rs_bvalid,
      O => shandshake
    );
\skid_buffer[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_bresp_acc_reg[1]\(0),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => \skid_buffer[0]_i_1_n_0\
    );
\skid_buffer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_bresp_acc_reg[1]\(1),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => \skid_buffer[1]_i_1_n_0\
    );
\skid_buffer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\(0),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => \skid_buffer[2]_i_1_n_0\
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \skid_buffer[0]_i_1_n_0\,
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \skid_buffer[1]_i_1_n_0\,
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \skid_buffer[2]_i_1_n_0\,
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized2\ is
  port (
    s_axi_rvalid : out STD_LOGIC;
    \skid_buffer_reg[0]_0\ : out STD_LOGIC;
    UNCONN_OUT : out STD_LOGIC_VECTOR ( 35 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \cnt_read_reg[3]_rep__3_rep\ : in STD_LOGIC;
    r_push_r_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_read_reg[4]\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized2\ : entity is "axi_register_slice_v2_1_axic_register_slice";
end \ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized2\;

architecture STRUCTURE of \ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized2\ is
  signal \aresetn_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \aresetn_d_reg_n_0_[1]\ : STD_LOGIC;
  signal \m_payload_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[13]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[14]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[17]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[18]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[19]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[21]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[22]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[23]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[25]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[26]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[27]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[28]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[29]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[30]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[31]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[33]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[34]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[35]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_valid_i_i_1__0_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \s_ready_i_i_1__0_n_0\ : STD_LOGIC;
  signal \^skid_buffer_reg[0]_0\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_payload_i[0]_i_1__1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1__1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1__1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1__1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1__1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1__1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1__1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1__1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1__1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1__1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1__1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1__1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1__1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1__1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1__1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1__1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1__1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1__1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1__1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1__1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1__1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1__1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1__1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1__1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1__1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1__1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1__1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1__1\ : label is "soft_lutpair87";
begin
  s_axi_rvalid <= \^s_axi_rvalid\;
  \skid_buffer_reg[0]_0\ <= \^skid_buffer_reg[0]_0\;
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \aresetn_d_reg_n_0_[0]\,
      R => SR(0)
    );
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg_n_0_[0]\,
      Q => \aresetn_d_reg_n_0_[1]\,
      R => SR(0)
    );
\m_payload_i[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(0),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => \m_payload_i[0]_i_1__1_n_0\
    );
\m_payload_i[10]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(10),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => \m_payload_i[10]_i_1__1_n_0\
    );
\m_payload_i[11]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(11),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => \m_payload_i[11]_i_1__1_n_0\
    );
\m_payload_i[12]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(12),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => \m_payload_i[12]_i_1__1_n_0\
    );
\m_payload_i[13]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(13),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => \m_payload_i[13]_i_1__1_n_0\
    );
\m_payload_i[14]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(14),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => \m_payload_i[14]_i_1__1_n_0\
    );
\m_payload_i[15]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(15),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => \m_payload_i[15]_i_1__1_n_0\
    );
\m_payload_i[16]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(16),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => \m_payload_i[16]_i_1__1_n_0\
    );
\m_payload_i[17]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(17),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => \m_payload_i[17]_i_1__1_n_0\
    );
\m_payload_i[18]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(18),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => \m_payload_i[18]_i_1__1_n_0\
    );
\m_payload_i[19]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(19),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => \m_payload_i[19]_i_1__1_n_0\
    );
\m_payload_i[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(1),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => \m_payload_i[1]_i_1__1_n_0\
    );
\m_payload_i[20]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(20),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => \m_payload_i[20]_i_1__1_n_0\
    );
\m_payload_i[21]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(21),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => \m_payload_i[21]_i_1__1_n_0\
    );
\m_payload_i[22]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(22),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => \m_payload_i[22]_i_1__1_n_0\
    );
\m_payload_i[23]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(23),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => \m_payload_i[23]_i_1__1_n_0\
    );
\m_payload_i[24]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(24),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => \m_payload_i[24]_i_1__1_n_0\
    );
\m_payload_i[25]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(25),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => \m_payload_i[25]_i_1__1_n_0\
    );
\m_payload_i[26]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(26),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => \m_payload_i[26]_i_1__1_n_0\
    );
\m_payload_i[27]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(27),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => \m_payload_i[27]_i_1__1_n_0\
    );
\m_payload_i[28]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(28),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => \m_payload_i[28]_i_1__1_n_0\
    );
\m_payload_i[29]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(29),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => \m_payload_i[29]_i_1__1_n_0\
    );
\m_payload_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(2),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => \m_payload_i[2]_i_1__1_n_0\
    );
\m_payload_i[30]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(30),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => \m_payload_i[30]_i_1__1_n_0\
    );
\m_payload_i[31]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(31),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => \m_payload_i[31]_i_1__1_n_0\
    );
\m_payload_i[32]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(32),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => \m_payload_i[32]_i_1__1_n_0\
    );
\m_payload_i[33]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(33),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => \m_payload_i[33]_i_1__1_n_0\
    );
\m_payload_i[34]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_push_r_reg(0),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => \m_payload_i[34]_i_1__1_n_0\
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      O => p_1_in
    );
\m_payload_i[35]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_push_r_reg(1),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => \m_payload_i[35]_i_2_n_0\
    );
\m_payload_i[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(3),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => \m_payload_i[3]_i_1__1_n_0\
    );
\m_payload_i[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(4),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => \m_payload_i[4]_i_1__1_n_0\
    );
\m_payload_i[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(5),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => \m_payload_i[5]_i_1__1_n_0\
    );
\m_payload_i[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(6),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => \m_payload_i[6]_i_1__1_n_0\
    );
\m_payload_i[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(7),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => \m_payload_i[7]_i_1__1_n_0\
    );
\m_payload_i[8]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(8),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => \m_payload_i[8]_i_1__1_n_0\
    );
\m_payload_i[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cnt_read_reg[4]\(9),
      I1 => \^skid_buffer_reg[0]_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => \m_payload_i[9]_i_1__1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[0]_i_1__1_n_0\,
      Q => UNCONN_OUT(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[10]_i_1__1_n_0\,
      Q => UNCONN_OUT(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[11]_i_1__1_n_0\,
      Q => UNCONN_OUT(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[12]_i_1__1_n_0\,
      Q => UNCONN_OUT(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[13]_i_1__1_n_0\,
      Q => UNCONN_OUT(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[14]_i_1__1_n_0\,
      Q => UNCONN_OUT(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[15]_i_1__1_n_0\,
      Q => UNCONN_OUT(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[16]_i_1__1_n_0\,
      Q => UNCONN_OUT(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[17]_i_1__1_n_0\,
      Q => UNCONN_OUT(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[18]_i_1__1_n_0\,
      Q => UNCONN_OUT(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[19]_i_1__1_n_0\,
      Q => UNCONN_OUT(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[1]_i_1__1_n_0\,
      Q => UNCONN_OUT(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[20]_i_1__1_n_0\,
      Q => UNCONN_OUT(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[21]_i_1__1_n_0\,
      Q => UNCONN_OUT(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[22]_i_1__1_n_0\,
      Q => UNCONN_OUT(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[23]_i_1__1_n_0\,
      Q => UNCONN_OUT(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[24]_i_1__1_n_0\,
      Q => UNCONN_OUT(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[25]_i_1__1_n_0\,
      Q => UNCONN_OUT(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[26]_i_1__1_n_0\,
      Q => UNCONN_OUT(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[27]_i_1__1_n_0\,
      Q => UNCONN_OUT(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[28]_i_1__1_n_0\,
      Q => UNCONN_OUT(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[29]_i_1__1_n_0\,
      Q => UNCONN_OUT(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[2]_i_1__1_n_0\,
      Q => UNCONN_OUT(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[30]_i_1__1_n_0\,
      Q => UNCONN_OUT(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[31]_i_1__1_n_0\,
      Q => UNCONN_OUT(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[32]_i_1__1_n_0\,
      Q => UNCONN_OUT(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[33]_i_1__1_n_0\,
      Q => UNCONN_OUT(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[34]_i_1__1_n_0\,
      Q => UNCONN_OUT(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[35]_i_2_n_0\,
      Q => UNCONN_OUT(35),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[3]_i_1__1_n_0\,
      Q => UNCONN_OUT(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[4]_i_1__1_n_0\,
      Q => UNCONN_OUT(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[5]_i_1__1_n_0\,
      Q => UNCONN_OUT(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[6]_i_1__1_n_0\,
      Q => UNCONN_OUT(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[7]_i_1__1_n_0\,
      Q => UNCONN_OUT(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[8]_i_1__1_n_0\,
      Q => UNCONN_OUT(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \m_payload_i[9]_i_1__1_n_0\,
      Q => UNCONN_OUT(9),
      R => '0'
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2AAA2A"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[1]\,
      I1 => \cnt_read_reg[3]_rep__3_rep\,
      I2 => \^skid_buffer_reg[0]_0\,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      O => \m_valid_i_i_1__0_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_1__0_n_0\,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
\s_ready_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA2A2A2"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_rready,
      I3 => \cnt_read_reg[3]_rep__3_rep\,
      I4 => \^skid_buffer_reg[0]_0\,
      O => \s_ready_i_i_1__0_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__0_n_0\,
      Q => \^skid_buffer_reg[0]_0\,
      R => '0'
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(32),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(33),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => r_push_r_reg(0),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => r_push_r_reg(1),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^skid_buffer_reg[0]_0\,
      D => \cnt_read_reg[4]\(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_b_channel is
  port (
    \cnt_read_reg[0]_rep__0\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_rep\ : out STD_LOGIC;
    \state_reg[0]_rep\ : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    \state_reg[1]_rep_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \skid_buffer_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    si_rs_bvalid : out STD_LOGIC;
    shandshake : in STD_LOGIC;
    aclk : in STD_LOGIC;
    b_push : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[0]_rep_0\ : in STD_LOGIC;
    s_axburst_eq0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axburst_eq1 : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \state_reg[1]_rep_1\ : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    si_rs_bready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_b_channel : entity is "axi_protocol_converter_v2_1_b2s_b_channel";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_b_channel;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_b_channel is
  signal bid_fifo_0_n_2 : STD_LOGIC;
  signal \bresp_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \bresp_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bresp_fifo_0_n_0 : STD_LOGIC;
  signal bresp_push : STD_LOGIC;
  signal bvalid_i_i_1_n_0 : STD_LOGIC;
  signal mhandshake : STD_LOGIC;
  signal mhandshake_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_bresp_acc0 : STD_LOGIC;
  signal \s_bresp_acc[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_bresp_acc[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_bresp_acc_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_bresp_acc_reg_n_0_[1]\ : STD_LOGIC;
  signal shandshake_r : STD_LOGIC;
  signal \^si_rs_bvalid\ : STD_LOGIC;
  signal \^state_reg[1]_rep\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bresp_cnt[1]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \bresp_cnt[2]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \bresp_cnt[3]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \bresp_cnt[4]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \bresp_cnt[6]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \bresp_cnt[7]_i_2\ : label is "soft_lutpair108";
begin
  si_rs_bvalid <= \^si_rs_bvalid\;
  \state_reg[1]_rep\ <= \^state_reg[1]_rep\;
bid_fifo_0: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo
     port map (
      Q(7 downto 0) => \bresp_cnt_reg__0\(7 downto 0),
      SR(0) => s_bresp_acc0,
      aclk => aclk,
      areset_d1 => areset_d1,
      b_push => b_push,
      bresp_push => bresp_push,
      \cnt_read_reg[0]_rep__0_0\ => \cnt_read_reg[0]_rep__0\,
      \in\(8 downto 0) => \in\(8 downto 0),
      m_axi_awready => m_axi_awready,
      \m_payload_i_reg[39]\(0) => Q(0),
      mhandshake_r => mhandshake_r,
      \out\(0) => \out\(0),
      s_axburst_eq0 => s_axburst_eq0,
      s_axburst_eq1 => s_axburst_eq1,
      shandshake_r => shandshake_r,
      \state_reg[0]_rep\ => \state_reg[0]_rep\,
      \state_reg[0]_rep_0\ => \state_reg[0]_rep_0\,
      \state_reg[1]\ => bid_fifo_0_n_2,
      \state_reg[1]_0\(0) => \state_reg[1]\(0),
      \state_reg[1]_1\(1 downto 0) => \state_reg[1]_0\(1 downto 0),
      \state_reg[1]_rep\ => \^state_reg[1]_rep\,
      \state_reg[1]_rep_0\ => \state_reg[1]_rep_0\,
      \state_reg[1]_rep_1\ => \state_reg[1]_rep_1\
    );
\bresp_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bresp_cnt_reg__0\(0),
      O => p_0_in(0)
    );
\bresp_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bresp_cnt_reg__0\(0),
      I1 => \bresp_cnt_reg__0\(1),
      O => p_0_in(1)
    );
\bresp_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bresp_cnt_reg__0\(2),
      I1 => \bresp_cnt_reg__0\(1),
      I2 => \bresp_cnt_reg__0\(0),
      O => p_0_in(2)
    );
\bresp_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \bresp_cnt_reg__0\(3),
      I1 => \bresp_cnt_reg__0\(0),
      I2 => \bresp_cnt_reg__0\(1),
      I3 => \bresp_cnt_reg__0\(2),
      O => p_0_in(3)
    );
\bresp_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \bresp_cnt_reg__0\(4),
      I1 => \bresp_cnt_reg__0\(2),
      I2 => \bresp_cnt_reg__0\(1),
      I3 => \bresp_cnt_reg__0\(0),
      I4 => \bresp_cnt_reg__0\(3),
      O => p_0_in(4)
    );
\bresp_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \bresp_cnt_reg__0\(5),
      I1 => \bresp_cnt_reg__0\(3),
      I2 => \bresp_cnt_reg__0\(0),
      I3 => \bresp_cnt_reg__0\(1),
      I4 => \bresp_cnt_reg__0\(2),
      I5 => \bresp_cnt_reg__0\(4),
      O => p_0_in(5)
    );
\bresp_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bresp_cnt_reg__0\(6),
      I1 => \bresp_cnt[7]_i_3_n_0\,
      O => p_0_in(6)
    );
\bresp_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bresp_cnt_reg__0\(7),
      I1 => \bresp_cnt[7]_i_3_n_0\,
      I2 => \bresp_cnt_reg__0\(6),
      O => p_0_in(7)
    );
\bresp_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \bresp_cnt_reg__0\(5),
      I1 => \bresp_cnt_reg__0\(3),
      I2 => \bresp_cnt_reg__0\(0),
      I3 => \bresp_cnt_reg__0\(1),
      I4 => \bresp_cnt_reg__0\(2),
      I5 => \bresp_cnt_reg__0\(4),
      O => \bresp_cnt[7]_i_3_n_0\
    );
\bresp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(0),
      Q => \bresp_cnt_reg__0\(0),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(1),
      Q => \bresp_cnt_reg__0\(1),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(2),
      Q => \bresp_cnt_reg__0\(2),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(3),
      Q => \bresp_cnt_reg__0\(3),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(4),
      Q => \bresp_cnt_reg__0\(4),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(5),
      Q => \bresp_cnt_reg__0\(5),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(6),
      Q => \bresp_cnt_reg__0\(6),
      R => s_bresp_acc0
    );
\bresp_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => mhandshake_r,
      D => p_0_in(7),
      Q => \bresp_cnt_reg__0\(7),
      R => s_bresp_acc0
    );
bresp_fifo_0: entity work.\ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized0\
     port map (
      aclk => aclk,
      areset_d1 => areset_d1,
      bresp_push => bresp_push,
      bvalid_i_reg => bresp_fifo_0_n_0,
      \cnt_read_reg[0]_rep__1\ => bid_fifo_0_n_2,
      \cnt_read_reg[1]_rep\ => \^state_reg[1]_rep\,
      \in\(1) => \s_bresp_acc_reg_n_0_[1]\,
      \in\(0) => \s_bresp_acc_reg_n_0_[0]\,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      mhandshake => mhandshake,
      mhandshake_r => mhandshake_r,
      shandshake_r => shandshake_r,
      \skid_buffer_reg[1]\(1 downto 0) => \skid_buffer_reg[1]\(1 downto 0)
    );
bvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"003A"
    )
        port map (
      I0 => bresp_fifo_0_n_0,
      I1 => si_rs_bready,
      I2 => \^si_rs_bvalid\,
      I3 => areset_d1,
      O => bvalid_i_i_1_n_0
    );
bvalid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => bvalid_i_i_1_n_0,
      Q => \^si_rs_bvalid\,
      R => '0'
    );
mhandshake_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mhandshake,
      Q => mhandshake_r,
      R => '0'
    );
\s_bresp_acc[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EACECCCC"
    )
        port map (
      I0 => m_axi_bresp(0),
      I1 => \s_bresp_acc_reg_n_0_[0]\,
      I2 => \s_bresp_acc_reg_n_0_[1]\,
      I3 => m_axi_bresp(1),
      I4 => mhandshake,
      I5 => s_bresp_acc0,
      O => \s_bresp_acc[0]_i_1_n_0\
    );
\s_bresp_acc[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EA"
    )
        port map (
      I0 => \s_bresp_acc_reg_n_0_[1]\,
      I1 => m_axi_bresp(1),
      I2 => mhandshake,
      I3 => s_bresp_acc0,
      O => \s_bresp_acc[1]_i_1_n_0\
    );
\s_bresp_acc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_bresp_acc[0]_i_1_n_0\,
      Q => \s_bresp_acc_reg_n_0_[0]\,
      R => '0'
    );
\s_bresp_acc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_bresp_acc[1]_i_1_n_0\,
      Q => \s_bresp_acc_reg_n_0_[1]\,
      R => '0'
    );
shandshake_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => shandshake,
      Q => shandshake_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator is
  port (
    next_pending_r_reg : out STD_LOGIC;
    next_pending_r_reg_0 : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    s_axburst_eq0 : out STD_LOGIC;
    s_axburst_eq1 : out STD_LOGIC;
    \axlen_cnt_reg[3]\ : out STD_LOGIC;
    \axlen_cnt_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axlen_cnt_reg[5]\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    next_pending_r_reg_1 : out STD_LOGIC;
    sel_first_reg_1 : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    incr_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wrap_next_pending : in STD_LOGIC;
    sel_first_i : in STD_LOGIC;
    \m_payload_i_reg[39]\ : in STD_LOGIC;
    \m_payload_i_reg[39]_0\ : in STD_LOGIC;
    sel_first_reg_2 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[35]\ : in STD_LOGIC;
    \m_payload_i_reg[36]\ : in STD_LOGIC;
    \m_payload_i_reg[35]_0\ : in STD_LOGIC;
    \m_payload_i_reg[35]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 22 downto 0 );
    \m_payload_i_reg[47]\ : in STD_LOGIC;
    \state_reg[0]_rep\ : in STD_LOGIC;
    \m_payload_i_reg[38]\ : in STD_LOGIC;
    b_push : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    si_rs_awvalid : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[47]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_valid_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    axaddr_incr0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator : entity is "axi_protocol_converter_v2_1_b2s_cmd_translator";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator is
  signal axaddr_incr_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^s_axburst_eq0\ : STD_LOGIC;
  signal \^s_axburst_eq1\ : STD_LOGIC;
begin
  s_axburst_eq0 <= \^s_axburst_eq0\;
  s_axburst_eq1 <= \^s_axburst_eq1\;
incr_cmd_0: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd
     port map (
      D(0) => D(0),
      E(0) => E(0),
      Q(8 downto 5) => Q(22 downto 19),
      Q(4 downto 3) => Q(17 downto 16),
      Q(2 downto 1) => Q(13 downto 12),
      Q(0) => Q(3),
      S(3 downto 0) => S(3 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      axaddr_incr0(2 downto 0) => axaddr_incr0(2 downto 0),
      axaddr_incr_reg(11 downto 0) => axaddr_incr_reg(11 downto 0),
      \axlen_cnt_reg[2]_0\(0) => \axlen_cnt_reg[2]\(0),
      \axlen_cnt_reg[3]_0\ => \axlen_cnt_reg[3]\,
      \axlen_cnt_reg[5]_0\ => \axlen_cnt_reg[5]\,
      b_push => b_push,
      incr_next_pending => incr_next_pending,
      \m_payload_i_reg[11]\(3 downto 0) => \m_payload_i_reg[11]\(3 downto 0),
      \m_payload_i_reg[35]\ => \m_payload_i_reg[35]\,
      \m_payload_i_reg[35]_0\ => \m_payload_i_reg[35]_0\,
      \m_payload_i_reg[35]_1\ => \m_payload_i_reg[35]_1\,
      \m_payload_i_reg[36]\ => \m_payload_i_reg[36]\,
      \m_payload_i_reg[47]\ => \m_payload_i_reg[47]\,
      \m_payload_i_reg[7]\(3 downto 0) => \m_payload_i_reg[7]\(3 downto 0),
      m_valid_i_reg(0) => m_valid_i_reg(0),
      next_pending_r_reg_0 => next_pending_r_reg,
      sel_first_reg_0 => sel_first_reg_1,
      sel_first_reg_1 => sel_first_reg_2,
      si_rs_awvalid => si_rs_awvalid,
      \state_reg[1]\(1 downto 0) => \state_reg[1]\(1 downto 0)
    );
\memory_reg[3][0]_srl4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^s_axburst_eq1\,
      I1 => Q(14),
      I2 => \^s_axburst_eq0\,
      O => \state_reg[0]\
    );
s_axburst_eq0_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[39]\,
      Q => \^s_axburst_eq0\,
      R => '0'
    );
s_axburst_eq1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[39]_0\,
      Q => \^s_axburst_eq1\,
      R => '0'
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_i,
      Q => sel_first_reg_0,
      R => '0'
    );
wrap_cmd_0: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd
     port map (
      E(0) => E(0),
      Q(18 downto 0) => Q(18 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      axaddr_incr_reg(11 downto 0) => axaddr_incr_reg(11 downto 0),
      \axaddr_offset_r_reg[3]_0\(3 downto 0) => \axaddr_offset_r_reg[3]\(3 downto 0),
      b_push => b_push,
      m_axi_awaddr(11 downto 0) => m_axi_awaddr(11 downto 0),
      \m_payload_i_reg[38]\ => \m_payload_i_reg[38]\,
      \m_payload_i_reg[47]\(3 downto 0) => \m_payload_i_reg[47]_0\(3 downto 0),
      \m_payload_i_reg[6]\(6 downto 0) => \m_payload_i_reg[6]\(6 downto 0),
      m_valid_i_reg(0) => m_valid_i_reg_0(0),
      m_valid_i_reg_0(0) => m_valid_i_reg_1(0),
      next_pending_r_reg_0 => next_pending_r_reg_0,
      next_pending_r_reg_1 => next_pending_r_reg_1,
      si_rs_awvalid => si_rs_awvalid,
      \state_reg[0]_rep\ => \state_reg[0]_rep\,
      \state_reg[1]\(1 downto 0) => \state_reg[1]\(1 downto 0),
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[3]_0\(3 downto 0) => \wrap_second_len_r_reg[3]\(3 downto 0),
      \wrap_second_len_r_reg[3]_1\(3 downto 0) => \wrap_second_len_r_reg[3]_0\(3 downto 0),
      \wrap_second_len_r_reg[3]_2\(3 downto 0) => \wrap_second_len_r_reg[3]_1\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator_1 is
  port (
    next_pending_r_reg : out STD_LOGIC;
    next_pending_r_reg_0 : out STD_LOGIC;
    sel_first_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axlen_cnt_reg[7]\ : out STD_LOGIC;
    next_pending_r_reg_1 : out STD_LOGIC;
    next_pending_r_reg_2 : out STD_LOGIC;
    sel_first_reg_1 : out STD_LOGIC;
    r_rlast : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \axlen_cnt_reg[4]\ : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    incr_next_pending : in STD_LOGIC;
    aclk : in STD_LOGIC;
    wrap_next_pending : in STD_LOGIC;
    sel_first_i : in STD_LOGIC;
    \m_payload_i_reg[39]\ : in STD_LOGIC;
    \m_payload_i_reg[39]_0\ : in STD_LOGIC;
    sel_first_reg_2 : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \m_payload_i_reg[47]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[51]\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    \m_payload_i_reg[35]\ : in STD_LOGIC;
    \m_payload_i_reg[36]\ : in STD_LOGIC;
    \m_payload_i_reg[35]_0\ : in STD_LOGIC;
    \m_payload_i_reg[35]_1\ : in STD_LOGIC;
    \state_reg[0]_rep\ : in STD_LOGIC;
    si_rs_arvalid : in STD_LOGIC;
    \state_reg[1]_rep\ : in STD_LOGIC;
    \state_reg[1]_rep_0\ : in STD_LOGIC;
    \m_payload_i_reg[38]\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    areset_d1 : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[47]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wrap_second_len_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_valid_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I26 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator_1 : entity is "axi_protocol_converter_v2_1_b2s_cmd_translator";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator_1;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator_1 is
  signal axaddr_incr_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s_axburst_eq0 : STD_LOGIC;
  signal s_axburst_eq1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of r_rlast_r_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state[1]_i_2__0\ : label is "soft_lutpair7";
begin
incr_cmd_0: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_incr_cmd_2
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => E(0),
      I26(2 downto 0) => I26(2 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      S(3 downto 0) => S(3 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      axaddr_incr_reg(11 downto 0) => axaddr_incr_reg(11 downto 0),
      \axlen_cnt_reg[4]_0\ => \axlen_cnt_reg[4]\,
      \axlen_cnt_reg[7]_0\ => \axlen_cnt_reg[7]\,
      incr_next_pending => incr_next_pending,
      m_axi_arready => m_axi_arready,
      \m_payload_i_reg[11]\(3 downto 0) => \m_payload_i_reg[11]\(3 downto 0),
      \m_payload_i_reg[35]\ => \m_payload_i_reg[35]\,
      \m_payload_i_reg[35]_0\ => \m_payload_i_reg[35]_0\,
      \m_payload_i_reg[35]_1\ => \m_payload_i_reg[35]_1\,
      \m_payload_i_reg[36]\ => \m_payload_i_reg[36]\,
      \m_payload_i_reg[47]\ => \m_payload_i_reg[47]\,
      \m_payload_i_reg[51]\(8 downto 7) => \m_payload_i_reg[51]\(20 downto 19),
      \m_payload_i_reg[51]\(6) => \m_payload_i_reg[51]\(17),
      \m_payload_i_reg[51]\(5 downto 4) => \m_payload_i_reg[51]\(13 downto 12),
      \m_payload_i_reg[51]\(3 downto 0) => \m_payload_i_reg[51]\(3 downto 0),
      m_valid_i_reg(0) => m_valid_i_reg(0),
      next_pending_r_reg_0 => next_pending_r_reg,
      next_pending_r_reg_1 => next_pending_r_reg_2,
      sel_first_reg_0 => sel_first_reg_1,
      sel_first_reg_1 => sel_first_reg_2,
      si_rs_arvalid => si_rs_arvalid,
      \state_reg[0]\ => \state_reg[0]\,
      \state_reg[1]\(1 downto 0) => \state_reg[1]_0\(1 downto 0)
    );
r_rlast_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => s_axburst_eq0,
      I1 => \m_payload_i_reg[51]\(14),
      I2 => s_axburst_eq1,
      O => r_rlast
    );
s_axburst_eq0_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[39]\,
      Q => s_axburst_eq0,
      R => '0'
    );
s_axburst_eq1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i_reg[39]_0\,
      Q => s_axburst_eq1,
      R => '0'
    );
sel_first_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sel_first_i,
      Q => sel_first_reg_0,
      R => '0'
    );
\state[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axburst_eq1,
      I1 => \m_payload_i_reg[51]\(14),
      I2 => s_axburst_eq0,
      O => \state_reg[1]\
    );
wrap_cmd_0: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wrap_cmd_3
     port map (
      E(0) => E(0),
      aclk => aclk,
      areset_d1 => areset_d1,
      axaddr_incr_reg(11 downto 0) => axaddr_incr_reg(11 downto 0),
      \axaddr_offset_r_reg[3]_0\(3 downto 0) => \axaddr_offset_r_reg[3]\(3 downto 0),
      m_axi_araddr(11 downto 0) => m_axi_araddr(11 downto 0),
      m_axi_arready => m_axi_arready,
      \m_payload_i_reg[38]\ => \m_payload_i_reg[38]\,
      \m_payload_i_reg[47]\(18 downto 0) => \m_payload_i_reg[51]\(18 downto 0),
      \m_payload_i_reg[47]_0\(3 downto 0) => \m_payload_i_reg[47]_0\(3 downto 0),
      \m_payload_i_reg[6]\(6 downto 0) => \m_payload_i_reg[6]\(6 downto 0),
      m_valid_i_reg(0) => m_valid_i_reg_0(0),
      m_valid_i_reg_0(0) => m_valid_i_reg_1(0),
      next_pending_r_reg_0 => next_pending_r_reg_0,
      next_pending_r_reg_1 => next_pending_r_reg_1,
      si_rs_arvalid => si_rs_arvalid,
      \state_reg[0]_rep\ => \state_reg[0]_rep\,
      \state_reg[1]\(1 downto 0) => \state_reg[1]_0\(1 downto 0),
      \state_reg[1]_rep\ => \state_reg[1]_rep\,
      \state_reg[1]_rep_0\ => \state_reg[1]_rep_0\,
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[3]_0\(3 downto 0) => \wrap_second_len_r_reg[3]\(3 downto 0),
      \wrap_second_len_r_reg[3]_1\(3 downto 0) => \wrap_second_len_r_reg[3]_0\(3 downto 0),
      \wrap_second_len_r_reg[3]_2\(3 downto 0) => \wrap_second_len_r_reg[3]_1\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_r_channel is
  port (
    \cnt_read_reg[0]_rep__2_rep__0\ : out STD_LOGIC;
    \state_reg[0]_rep\ : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    \skid_buffer_reg[35]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    r_push : in STD_LOGIC;
    aclk : in STD_LOGIC;
    r_rlast : in STD_LOGIC;
    s_arid_r : in STD_LOGIC;
    si_rs_rready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    areset_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_r_channel : entity is "axi_protocol_converter_v2_1_b2s_r_channel";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_r_channel;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_r_channel is
  signal \^cnt_read_reg[0]_rep__2_rep__0\ : STD_LOGIC;
  signal r_push_r : STD_LOGIC;
  signal rd_data_fifo_0_n_2 : STD_LOGIC;
  signal trans_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal transaction_fifo_0_n_1 : STD_LOGIC;
begin
  \cnt_read_reg[0]_rep__2_rep__0\ <= \^cnt_read_reg[0]_rep__2_rep__0\;
\r_arid_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_arid_r,
      Q => trans_in(1),
      R => '0'
    );
r_push_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => r_push,
      Q => r_push_r,
      R => '0'
    );
r_rlast_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => r_rlast,
      Q => trans_in(0),
      R => '0'
    );
rd_data_fifo_0: entity work.\ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized1\
     port map (
      aclk => aclk,
      areset_d1 => areset_d1,
      \cnt_read_reg[0]_rep__2_rep__0_0\ => \^cnt_read_reg[0]_rep__2_rep__0\,
      \cnt_read_reg[4]_0\ => transaction_fifo_0_n_1,
      \in\(33 downto 0) => \in\(33 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\(33 downto 0) => \out\(33 downto 0),
      si_rs_rready => si_rs_rready,
      \state_reg[0]_rep\ => rd_data_fifo_0_n_2
    );
transaction_fifo_0: entity work.\ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_simple_fifo__parameterized2\
     port map (
      aclk => aclk,
      areset_d1 => areset_d1,
      \cnt_read_reg[0]_rep__2_rep\ => rd_data_fifo_0_n_2,
      \cnt_read_reg[0]_rep__2_rep__0\ => transaction_fifo_0_n_1,
      \cnt_read_reg[3]_rep__3_rep\ => \^cnt_read_reg[0]_rep__2_rep__0\,
      \in\(1 downto 0) => trans_in(1 downto 0),
      r_push_r => r_push_r,
      si_rs_rready => si_rs_rready,
      \skid_buffer_reg[35]\(1 downto 0) => \skid_buffer_reg[35]\(1 downto 0),
      \state_reg[0]_rep\ => \state_reg[0]_rep\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_register_slice_v2_1_axi_register_slice is
  port (
    si_rs_awvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    si_rs_bready : out STD_LOGIC;
    si_rs_arvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    si_rs_rready : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 46 downto 0 );
    \axaddr_incr_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axaddr_incr_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_arid_r_reg[0]\ : out STD_LOGIC_VECTOR ( 46 downto 0 );
    \axaddr_incr_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_cnt_r_reg[2]\ : out STD_LOGIC;
    axaddr_offset : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \wrap_second_len_r_reg[0]\ : out STD_LOGIC;
    \wrap_second_len_r_reg[3]\ : out STD_LOGIC;
    \axlen_cnt_reg[3]\ : out STD_LOGIC;
    next_pending_r_reg : out STD_LOGIC;
    next_pending_r_reg_0 : out STD_LOGIC;
    shandshake : out STD_LOGIC;
    \wrap_cnt_r_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_cnt_r_reg[2]_1\ : out STD_LOGIC;
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \wrap_second_len_r_reg[0]_0\ : out STD_LOGIC;
    \wrap_second_len_r_reg[3]_0\ : out STD_LOGIC;
    \axlen_cnt_reg[3]_0\ : out STD_LOGIC;
    next_pending_r_reg_1 : out STD_LOGIC;
    next_pending_r_reg_2 : out STD_LOGIC;
    \axaddr_incr_reg[1]\ : out STD_LOGIC;
    axaddr_incr0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \axaddr_incr_reg[2]\ : out STD_LOGIC;
    \axaddr_incr_reg[3]\ : out STD_LOGIC;
    \axaddr_incr_reg[4]\ : out STD_LOGIC;
    \axaddr_incr_reg[1]_0\ : out STD_LOGIC;
    I26 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \axaddr_incr_reg[2]_0\ : out STD_LOGIC;
    \axaddr_incr_reg[3]_0\ : out STD_LOGIC;
    \axaddr_incr_reg[4]_0\ : out STD_LOGIC;
    \axaddr_offset_r_reg[2]\ : out STD_LOGIC;
    \wrap_boundary_axaddr_r_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \axaddr_offset_r_reg[2]_0\ : out STD_LOGIC;
    \wrap_boundary_axaddr_r_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \m_axi_awaddr[10]\ : out STD_LOGIC;
    \m_axi_araddr[10]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    UNCONN_OUT : out STD_LOGIC_VECTOR ( 35 downto 0 );
    aclk : in STD_LOGIC;
    b_push : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \cnt_read_reg[3]_rep__3_rep\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    si_rs_bvalid : in STD_LOGIC;
    \state_reg[0]_rep\ : in STD_LOGIC;
    \state_reg[1]_rep\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    wrap_second_len : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_offset_r_reg[2]_1\ : in STD_LOGIC;
    \state_reg[1]_rep_0\ : in STD_LOGIC;
    \wrap_second_len_r_reg[2]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \wrap_second_len_r_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axaddr_offset_r_reg[2]_2\ : in STD_LOGIC;
    \state_reg[1]_rep_1\ : in STD_LOGIC;
    \wrap_second_len_r_reg[2]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sel_first : in STD_LOGIC;
    sel_first_0 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_bresp_acc_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r_push_r_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_read_reg[4]\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    aresetn : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_rep_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_register_slice_v2_1_axi_register_slice : entity is "axi_register_slice_v2_1_axi_register_slice";
end ntps_top_auto_pc_0_axi_register_slice_v2_1_axi_register_slice;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_register_slice_v2_1_axi_register_slice is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  SR(0) <= \^sr\(0);
ar_pipe: entity work.ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice
     port map (
      I26(2 downto 0) => I26(2 downto 0),
      Q(46 downto 0) => \s_arid_r_reg[0]\(46 downto 0),
      SR(0) => \^sr\(0),
      aclk => aclk,
      aresetn => aresetn,
      \axaddr_incr_reg[11]\(3 downto 0) => \axaddr_incr_reg[11]_0\(3 downto 0),
      \axaddr_incr_reg[1]\ => \axaddr_incr_reg[1]_0\,
      \axaddr_incr_reg[2]\ => \axaddr_incr_reg[2]_0\,
      \axaddr_incr_reg[3]\ => \axaddr_incr_reg[3]_0\,
      \axaddr_incr_reg[4]\ => \axaddr_incr_reg[4]_0\,
      \axaddr_incr_reg[7]\(3 downto 0) => \axaddr_incr_reg[7]\(3 downto 0),
      \axaddr_offset_r_reg[2]\ => \axaddr_offset_r_reg[2]_0\,
      \axaddr_offset_r_reg[2]_0\ => \axaddr_offset_r_reg[2]_2\,
      \axaddr_offset_r_reg[3]\(2 downto 0) => \axaddr_offset_r_reg[3]\(2 downto 0),
      \axaddr_offset_r_reg[3]_0\(2 downto 0) => \axaddr_offset_r_reg[3]_1\(2 downto 0),
      \axlen_cnt_reg[3]\ => \axlen_cnt_reg[3]_0\,
      \m_axi_araddr[10]\ => \m_axi_araddr[10]\,
      m_valid_i_reg_0 => si_rs_arvalid,
      next_pending_r_reg => next_pending_r_reg_1,
      next_pending_r_reg_0 => next_pending_r_reg_2,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(1 downto 0) => s_axi_arsize(1 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      sel_first_0 => sel_first_0,
      \state_reg[0]_rep\ => \state_reg[0]_rep\,
      \state_reg[1]\(1 downto 0) => \state_reg[1]_0\(1 downto 0),
      \state_reg[1]_rep\ => \state_reg[1]_rep\,
      \state_reg[1]_rep_0\ => \state_reg[1]_rep_1\,
      \state_reg[1]_rep_1\(0) => \state_reg[1]_rep_2\(0),
      \wrap_boundary_axaddr_r_reg[6]\(6 downto 0) => \wrap_boundary_axaddr_r_reg[6]_0\(6 downto 0),
      \wrap_cnt_r_reg[2]\(0) => \wrap_cnt_r_reg[2]_0\(0),
      \wrap_cnt_r_reg[2]_0\ => \wrap_cnt_r_reg[2]_1\,
      \wrap_second_len_r_reg[0]\ => \wrap_second_len_r_reg[0]_0\,
      \wrap_second_len_r_reg[1]\(0) => \wrap_second_len_r_reg[1]\(0),
      \wrap_second_len_r_reg[2]\(0) => \wrap_second_len_r_reg[2]_0\(0),
      \wrap_second_len_r_reg[2]_0\(1 downto 0) => \wrap_second_len_r_reg[2]_2\(1 downto 0),
      \wrap_second_len_r_reg[3]\ => \wrap_second_len_r_reg[3]_0\
    );
aw_pipe: entity work.ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice_0
     port map (
      D(0) => D(0),
      E(0) => E(0),
      Q(46 downto 0) => Q(46 downto 0),
      S(3 downto 0) => S(3 downto 0),
      SR(0) => \^sr\(0),
      aclk => aclk,
      axaddr_incr0(2 downto 0) => axaddr_incr0(2 downto 0),
      \axaddr_incr_reg[11]\(3 downto 0) => \axaddr_incr_reg[11]\(3 downto 0),
      \axaddr_incr_reg[1]\ => \axaddr_incr_reg[1]\,
      \axaddr_incr_reg[2]\ => \axaddr_incr_reg[2]\,
      \axaddr_incr_reg[3]\ => \axaddr_incr_reg[3]\,
      \axaddr_incr_reg[4]\ => \axaddr_incr_reg[4]\,
      axaddr_offset(2 downto 0) => axaddr_offset(2 downto 0),
      \axaddr_offset_r_reg[2]\ => \axaddr_offset_r_reg[2]\,
      \axaddr_offset_r_reg[2]_0\ => \axaddr_offset_r_reg[2]_1\,
      \axaddr_offset_r_reg[3]\(2 downto 0) => \axaddr_offset_r_reg[3]_0\(2 downto 0),
      \axlen_cnt_reg[3]\ => \axlen_cnt_reg[3]\,
      b_push => b_push,
      \m_axi_awaddr[10]\ => \m_axi_awaddr[10]\,
      m_valid_i_reg_0 => si_rs_awvalid,
      next_pending_r_reg => next_pending_r_reg,
      next_pending_r_reg_0 => next_pending_r_reg_0,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(1 downto 0) => s_axi_awsize(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      sel_first => sel_first,
      \state_reg[1]\(1 downto 0) => \state_reg[1]\(1 downto 0),
      \state_reg[1]_rep\ => \state_reg[1]_rep_0\,
      \wrap_boundary_axaddr_r_reg[6]\(6 downto 0) => \wrap_boundary_axaddr_r_reg[6]\(6 downto 0),
      \wrap_cnt_r_reg[2]\ => \wrap_cnt_r_reg[2]\,
      wrap_second_len(0) => wrap_second_len(0),
      \wrap_second_len_r_reg[0]\ => \wrap_second_len_r_reg[0]\,
      \wrap_second_len_r_reg[2]\(0) => \wrap_second_len_r_reg[2]\(0),
      \wrap_second_len_r_reg[2]_0\(1 downto 0) => \wrap_second_len_r_reg[2]_1\(1 downto 0),
      \wrap_second_len_r_reg[3]\ => \wrap_second_len_r_reg[3]\
    );
b_pipe: entity work.\ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized1\
     port map (
      SR(0) => \^sr\(0),
      aclk => aclk,
      \out\(0) => \out\(0),
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      \s_bresp_acc_reg[1]\(1 downto 0) => \s_bresp_acc_reg[1]\(1 downto 0),
      shandshake => shandshake,
      si_rs_bvalid => si_rs_bvalid,
      \skid_buffer_reg[0]_0\ => si_rs_bready
    );
r_pipe: entity work.\ntps_top_auto_pc_0_axi_register_slice_v2_1_axic_register_slice__parameterized2\
     port map (
      SR(0) => \^sr\(0),
      UNCONN_OUT(35 downto 0) => UNCONN_OUT(35 downto 0),
      aclk => aclk,
      \cnt_read_reg[3]_rep__3_rep\ => \cnt_read_reg[3]_rep__3_rep\,
      \cnt_read_reg[4]\(33 downto 0) => \cnt_read_reg[4]\(33 downto 0),
      r_push_r_reg(1 downto 0) => r_push_r_reg(1 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      \skid_buffer_reg[0]_0\ => si_rs_rready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_ar_channel is
  port (
    s_arid_r : out STD_LOGIC;
    \wrap_second_len_r_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \wrap_boundary_axaddr_r_reg[0]\ : out STD_LOGIC;
    \state_reg[0]_rep\ : out STD_LOGIC;
    \state_reg[0]_rep_0\ : out STD_LOGIC;
    \wrap_second_len_r_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[2]\ : out STD_LOGIC;
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    r_push : out STD_LOGIC;
    sel_first : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    r_rlast : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \m_payload_i_reg[44]\ : in STD_LOGIC;
    si_rs_arvalid : in STD_LOGIC;
    \m_payload_i_reg[47]\ : in STD_LOGIC;
    \m_payload_i_reg[35]\ : in STD_LOGIC;
    \m_payload_i_reg[36]\ : in STD_LOGIC;
    \m_payload_i_reg[35]_0\ : in STD_LOGIC;
    \m_payload_i_reg[35]_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[0]\ : in STD_LOGIC;
    \m_payload_i_reg[47]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_payload_i_reg[35]_2\ : in STD_LOGIC;
    \m_payload_i_reg[5]\ : in STD_LOGIC;
    \m_payload_i_reg[46]\ : in STD_LOGIC;
    \m_payload_i_reg[48]\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \cnt_read_reg[4]\ : in STD_LOGIC;
    \m_payload_i_reg[38]\ : in STD_LOGIC;
    \wrap_second_len_r_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    I26 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_ar_channel : entity is "axi_protocol_converter_v2_1_b2s_ar_channel";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_ar_channel;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_ar_channel is
  signal ar_cmd_fsm_0_n_0 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_1 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_10 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_18 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_2 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_22 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_24 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_25 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_26 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_27 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_6 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_7 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_8 : STD_LOGIC;
  signal ar_cmd_fsm_0_n_9 : STD_LOGIC;
  signal \^axaddr_offset_r_reg[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cmd_translator_0_n_0 : STD_LOGIC;
  signal cmd_translator_0_n_1 : STD_LOGIC;
  signal cmd_translator_0_n_12 : STD_LOGIC;
  signal cmd_translator_0_n_13 : STD_LOGIC;
  signal cmd_translator_0_n_2 : STD_LOGIC;
  signal cmd_translator_0_n_3 : STD_LOGIC;
  signal cmd_translator_0_n_4 : STD_LOGIC;
  signal cmd_translator_0_n_5 : STD_LOGIC;
  signal cmd_translator_0_n_6 : STD_LOGIC;
  signal cmd_translator_0_n_7 : STD_LOGIC;
  signal cmd_translator_0_n_8 : STD_LOGIC;
  signal cmd_translator_0_n_9 : STD_LOGIC;
  signal incr_next_pending : STD_LOGIC;
  signal \^r_push\ : STD_LOGIC;
  signal \^sel_first\ : STD_LOGIC;
  signal sel_first_i : STD_LOGIC;
  signal \^state_reg[0]_rep\ : STD_LOGIC;
  signal \^state_reg[0]_rep_0\ : STD_LOGIC;
  signal \^state_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^wrap_boundary_axaddr_r_reg[0]\ : STD_LOGIC;
  signal \wrap_cmd_0/axaddr_offset\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \wrap_cmd_0/axaddr_offset_r\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \wrap_cmd_0/wrap_second_len\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wrap_cmd_0/wrap_second_len_r\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal wrap_next_pending : STD_LOGIC;
  signal \^wrap_second_len_r_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^wrap_second_len_r_reg[2]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  \axaddr_offset_r_reg[3]\(2 downto 0) <= \^axaddr_offset_r_reg[3]\(2 downto 0);
  r_push <= \^r_push\;
  sel_first <= \^sel_first\;
  \state_reg[0]_rep\ <= \^state_reg[0]_rep\;
  \state_reg[0]_rep_0\ <= \^state_reg[0]_rep_0\;
  \state_reg[1]\(1 downto 0) <= \^state_reg[1]\(1 downto 0);
  \wrap_boundary_axaddr_r_reg[0]\ <= \^wrap_boundary_axaddr_r_reg[0]\;
  \wrap_second_len_r_reg[1]\(0) <= \^wrap_second_len_r_reg[1]\(0);
  \wrap_second_len_r_reg[2]\(1 downto 0) <= \^wrap_second_len_r_reg[2]\(1 downto 0);
ar_cmd_fsm_0: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_rd_cmd_fsm
     port map (
      D(2) => ar_cmd_fsm_0_n_0,
      D(1) => ar_cmd_fsm_0_n_1,
      D(0) => ar_cmd_fsm_0_n_2,
      E(0) => \^wrap_boundary_axaddr_r_reg[0]\,
      Q(3) => cmd_translator_0_n_3,
      Q(2) => cmd_translator_0_n_4,
      Q(1) => cmd_translator_0_n_5,
      Q(0) => cmd_translator_0_n_6,
      aclk => aclk,
      areset_d1 => areset_d1,
      \axaddr_incr_reg[0]\ => ar_cmd_fsm_0_n_27,
      \axaddr_offset_r_reg[2]\ => \axaddr_offset_r_reg[2]\,
      \axaddr_offset_r_reg[2]_0\(0) => \wrap_cmd_0/axaddr_offset\(2),
      \axaddr_offset_r_reg[3]\(1) => \^axaddr_offset_r_reg[3]\(2),
      \axaddr_offset_r_reg[3]\(0) => \wrap_cmd_0/axaddr_offset_r\(2),
      \axaddr_wrap_reg[0]\(0) => ar_cmd_fsm_0_n_25,
      \axlen_cnt_reg[0]\(0) => ar_cmd_fsm_0_n_24,
      \axlen_cnt_reg[0]_0\(0) => ar_cmd_fsm_0_n_26,
      \axlen_cnt_reg[3]\ => cmd_translator_0_n_13,
      \axlen_cnt_reg[3]_0\ => cmd_translator_0_n_9,
      \axlen_cnt_reg[4]\ => ar_cmd_fsm_0_n_10,
      \axlen_cnt_reg[4]_0\ => cmd_translator_0_n_7,
      \axlen_cnt_reg[5]\(3) => ar_cmd_fsm_0_n_6,
      \axlen_cnt_reg[5]\(2) => ar_cmd_fsm_0_n_7,
      \axlen_cnt_reg[5]\(1) => ar_cmd_fsm_0_n_8,
      \axlen_cnt_reg[5]\(0) => ar_cmd_fsm_0_n_9,
      \cnt_read_reg[4]\ => \cnt_read_reg[4]\,
      incr_next_pending => incr_next_pending,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      \m_payload_i_reg[0]\(0) => E(0),
      \m_payload_i_reg[0]_0\ => \m_payload_i_reg[0]\,
      \m_payload_i_reg[35]\ => \m_payload_i_reg[35]_2\,
      \m_payload_i_reg[44]\ => \m_payload_i_reg[44]\,
      \m_payload_i_reg[46]\ => \m_payload_i_reg[46]\,
      \m_payload_i_reg[47]\(2 downto 0) => \m_payload_i_reg[47]_0\(2 downto 0),
      \m_payload_i_reg[48]\ => \m_payload_i_reg[48]\,
      \m_payload_i_reg[49]\(5 downto 4) => Q(20 downto 19),
      \m_payload_i_reg[49]\(3 downto 0) => Q(17 downto 14),
      \m_payload_i_reg[5]\ => \m_payload_i_reg[5]\,
      next_pending_r_reg => cmd_translator_0_n_1,
      next_pending_r_reg_0 => cmd_translator_0_n_0,
      r_push_r_reg => \^r_push\,
      s_axburst_eq0_reg => ar_cmd_fsm_0_n_18,
      s_axburst_eq1_reg => ar_cmd_fsm_0_n_22,
      s_axburst_eq1_reg_0 => cmd_translator_0_n_12,
      sel_first_i => sel_first_i,
      sel_first_reg => cmd_translator_0_n_2,
      sel_first_reg_0 => \^sel_first\,
      si_rs_arvalid => si_rs_arvalid,
      \state_reg[0]_rep_0\ => \^state_reg[0]_rep\,
      \state_reg[0]_rep_1\ => \^state_reg[0]_rep_0\,
      \state_reg[0]_rep_2\ => cmd_translator_0_n_8,
      \state_reg[1]_0\(1 downto 0) => \^state_reg[1]\(1 downto 0),
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[2]\(0) => D(0),
      \wrap_second_len_r_reg[3]\(2) => \wrap_cmd_0/wrap_second_len\(3),
      \wrap_second_len_r_reg[3]\(1) => \^wrap_second_len_r_reg[1]\(0),
      \wrap_second_len_r_reg[3]\(0) => \wrap_cmd_0/wrap_second_len\(0),
      \wrap_second_len_r_reg[3]_0\(2) => \wrap_cmd_0/wrap_second_len_r\(3),
      \wrap_second_len_r_reg[3]_0\(1) => \wrap_cmd_0/wrap_second_len_r\(1),
      \wrap_second_len_r_reg[3]_0\(0) => \^wrap_second_len_r_reg[2]\(0)
    );
cmd_translator_0: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator_1
     port map (
      D(3) => ar_cmd_fsm_0_n_6,
      D(2) => ar_cmd_fsm_0_n_7,
      D(1) => ar_cmd_fsm_0_n_8,
      D(0) => ar_cmd_fsm_0_n_9,
      E(0) => \^wrap_boundary_axaddr_r_reg[0]\,
      I26(2 downto 0) => I26(2 downto 0),
      Q(3) => cmd_translator_0_n_3,
      Q(2) => cmd_translator_0_n_4,
      Q(1) => cmd_translator_0_n_5,
      Q(0) => cmd_translator_0_n_6,
      S(3 downto 0) => S(3 downto 0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \axaddr_offset_r_reg[3]\(3) => \^axaddr_offset_r_reg[3]\(2),
      \axaddr_offset_r_reg[3]\(2) => \wrap_cmd_0/axaddr_offset_r\(2),
      \axaddr_offset_r_reg[3]\(1 downto 0) => \^axaddr_offset_r_reg[3]\(1 downto 0),
      \axlen_cnt_reg[4]\ => cmd_translator_0_n_13,
      \axlen_cnt_reg[7]\ => cmd_translator_0_n_7,
      incr_next_pending => incr_next_pending,
      m_axi_araddr(11 downto 0) => m_axi_araddr(11 downto 0),
      m_axi_arready => m_axi_arready,
      \m_payload_i_reg[11]\(3 downto 0) => \m_payload_i_reg[11]\(3 downto 0),
      \m_payload_i_reg[35]\ => \m_payload_i_reg[35]\,
      \m_payload_i_reg[35]_0\ => \m_payload_i_reg[35]_0\,
      \m_payload_i_reg[35]_1\ => \m_payload_i_reg[35]_1\,
      \m_payload_i_reg[36]\ => \m_payload_i_reg[36]\,
      \m_payload_i_reg[38]\ => \m_payload_i_reg[38]\,
      \m_payload_i_reg[39]\ => ar_cmd_fsm_0_n_18,
      \m_payload_i_reg[39]_0\ => ar_cmd_fsm_0_n_22,
      \m_payload_i_reg[47]\ => \m_payload_i_reg[47]\,
      \m_payload_i_reg[47]_0\(3) => \m_payload_i_reg[47]_0\(2),
      \m_payload_i_reg[47]_0\(2) => \wrap_cmd_0/axaddr_offset\(2),
      \m_payload_i_reg[47]_0\(1 downto 0) => \m_payload_i_reg[47]_0\(1 downto 0),
      \m_payload_i_reg[51]\(20 downto 19) => Q(22 downto 21),
      \m_payload_i_reg[51]\(18 downto 0) => Q(18 downto 0),
      \m_payload_i_reg[6]\(6 downto 0) => \m_payload_i_reg[6]\(6 downto 0),
      m_valid_i_reg(0) => ar_cmd_fsm_0_n_26,
      m_valid_i_reg_0(0) => ar_cmd_fsm_0_n_24,
      m_valid_i_reg_1(0) => ar_cmd_fsm_0_n_25,
      next_pending_r_reg => cmd_translator_0_n_0,
      next_pending_r_reg_0 => cmd_translator_0_n_1,
      next_pending_r_reg_1 => cmd_translator_0_n_8,
      next_pending_r_reg_2 => cmd_translator_0_n_9,
      r_rlast => r_rlast,
      sel_first_i => sel_first_i,
      sel_first_reg_0 => cmd_translator_0_n_2,
      sel_first_reg_1 => \^sel_first\,
      sel_first_reg_2 => ar_cmd_fsm_0_n_27,
      si_rs_arvalid => si_rs_arvalid,
      \state_reg[0]\ => ar_cmd_fsm_0_n_10,
      \state_reg[0]_rep\ => \^state_reg[0]_rep_0\,
      \state_reg[1]\ => cmd_translator_0_n_12,
      \state_reg[1]_0\(1 downto 0) => \^state_reg[1]\(1 downto 0),
      \state_reg[1]_rep\ => \^state_reg[0]_rep\,
      \state_reg[1]_rep_0\ => \^r_push\,
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[3]\(3) => \wrap_cmd_0/wrap_second_len_r\(3),
      \wrap_second_len_r_reg[3]\(2) => \^wrap_second_len_r_reg[2]\(1),
      \wrap_second_len_r_reg[3]\(1) => \wrap_cmd_0/wrap_second_len_r\(1),
      \wrap_second_len_r_reg[3]\(0) => \^wrap_second_len_r_reg[2]\(0),
      \wrap_second_len_r_reg[3]_0\(3) => \wrap_cmd_0/wrap_second_len\(3),
      \wrap_second_len_r_reg[3]_0\(2) => D(0),
      \wrap_second_len_r_reg[3]_0\(1) => \^wrap_second_len_r_reg[1]\(0),
      \wrap_second_len_r_reg[3]_0\(0) => \wrap_cmd_0/wrap_second_len\(0),
      \wrap_second_len_r_reg[3]_1\(3) => ar_cmd_fsm_0_n_0,
      \wrap_second_len_r_reg[3]_1\(2) => \wrap_second_len_r_reg[2]_0\(0),
      \wrap_second_len_r_reg[3]_1\(1) => ar_cmd_fsm_0_n_1,
      \wrap_second_len_r_reg[3]_1\(0) => ar_cmd_fsm_0_n_2
    );
\s_arid_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(23),
      Q => s_arid_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_aw_channel is
  port (
    s_axburst_eq0 : out STD_LOGIC;
    s_axburst_eq1 : out STD_LOGIC;
    \in\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \wrap_second_len_r_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_boundary_axaddr_r_reg[0]\ : out STD_LOGIC;
    \state_reg[0]_rep\ : out STD_LOGIC;
    \state_reg[0]_rep_0\ : out STD_LOGIC;
    b_push : out STD_LOGIC;
    \wrap_cnt_r_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \wrap_second_len_r_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \axaddr_offset_r_reg[2]\ : out STD_LOGIC;
    \axaddr_offset_r_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sel_first : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \m_payload_i_reg[44]\ : in STD_LOGIC;
    si_rs_awvalid : in STD_LOGIC;
    \m_payload_i_reg[35]\ : in STD_LOGIC;
    \m_payload_i_reg[36]\ : in STD_LOGIC;
    \m_payload_i_reg[35]_0\ : in STD_LOGIC;
    \m_payload_i_reg[35]_1\ : in STD_LOGIC;
    \m_payload_i_reg[48]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wrap_second_len_r_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[0]\ : in STD_LOGIC;
    \m_payload_i_reg[47]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_payload_i_reg[35]_2\ : in STD_LOGIC;
    \m_payload_i_reg[47]_0\ : in STD_LOGIC;
    \m_payload_i_reg[5]\ : in STD_LOGIC;
    \m_payload_i_reg[46]\ : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    \state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC;
    \cnt_read_reg[1]_rep\ : in STD_LOGIC;
    \cnt_read_reg[1]_rep_0\ : in STD_LOGIC;
    \cnt_read_reg[0]_rep__0\ : in STD_LOGIC;
    \m_payload_i_reg[38]\ : in STD_LOGIC;
    \m_payload_i_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \state_reg[1]_rep\ : in STD_LOGIC;
    axaddr_incr0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_payload_i_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_aw_channel : entity is "axi_protocol_converter_v2_1_b2s_aw_channel";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_aw_channel;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_aw_channel is
  signal aw_cmd_fsm_0_n_1 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_10 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_11 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_12 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_14 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_18 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_19 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_23 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_25 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_26 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_27 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_28 : STD_LOGIC;
  signal aw_cmd_fsm_0_n_9 : STD_LOGIC;
  signal \^axaddr_offset_r_reg[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^b_push\ : STD_LOGIC;
  signal cmd_translator_0_n_0 : STD_LOGIC;
  signal cmd_translator_0_n_1 : STD_LOGIC;
  signal cmd_translator_0_n_2 : STD_LOGIC;
  signal cmd_translator_0_n_5 : STD_LOGIC;
  signal cmd_translator_0_n_6 : STD_LOGIC;
  signal cmd_translator_0_n_7 : STD_LOGIC;
  signal cmd_translator_0_n_8 : STD_LOGIC;
  signal cmd_translator_0_n_9 : STD_LOGIC;
  signal incr_next_pending : STD_LOGIC;
  signal \^sel_first\ : STD_LOGIC;
  signal sel_first_i : STD_LOGIC;
  signal \^wrap_boundary_axaddr_r_reg[0]\ : STD_LOGIC;
  signal \wrap_cmd_0/axaddr_offset\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \wrap_cmd_0/axaddr_offset_r\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \wrap_cmd_0/wrap_second_len\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wrap_cmd_0/wrap_second_len_r\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal wrap_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^wrap_cnt_r_reg[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wrap_next_pending : STD_LOGIC;
  signal \^wrap_second_len_r_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^wrap_second_len_r_reg[2]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  \axaddr_offset_r_reg[3]\(2 downto 0) <= \^axaddr_offset_r_reg[3]\(2 downto 0);
  b_push <= \^b_push\;
  sel_first <= \^sel_first\;
  \wrap_boundary_axaddr_r_reg[0]\ <= \^wrap_boundary_axaddr_r_reg[0]\;
  \wrap_cnt_r_reg[0]\(1 downto 0) <= \^wrap_cnt_r_reg[0]\(1 downto 0);
  \wrap_second_len_r_reg[1]\(0) <= \^wrap_second_len_r_reg[1]\(0);
  \wrap_second_len_r_reg[2]\(1 downto 0) <= \^wrap_second_len_r_reg[2]\(1 downto 0);
aw_cmd_fsm_0: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_wr_cmd_fsm
     port map (
      D(2) => wrap_cnt(3),
      D(1) => aw_cmd_fsm_0_n_1,
      D(0) => wrap_cnt(0),
      E(0) => \^wrap_boundary_axaddr_r_reg[0]\,
      Q(8) => Q(17),
      Q(7 downto 4) => Q(15 downto 12),
      Q(3 downto 0) => Q(3 downto 0),
      S(3) => aw_cmd_fsm_0_n_9,
      S(2) => aw_cmd_fsm_0_n_10,
      S(1) => aw_cmd_fsm_0_n_11,
      S(0) => aw_cmd_fsm_0_n_12,
      aclk => aclk,
      areset_d1 => areset_d1,
      \axaddr_incr_reg[0]\ => aw_cmd_fsm_0_n_28,
      \axaddr_offset_r_reg[2]\ => \axaddr_offset_r_reg[2]\,
      \axaddr_offset_r_reg[2]_0\(0) => \wrap_cmd_0/axaddr_offset\(2),
      \axaddr_offset_r_reg[3]\(1) => \^axaddr_offset_r_reg[3]\(2),
      \axaddr_offset_r_reg[3]\(0) => \wrap_cmd_0/axaddr_offset_r\(2),
      \axaddr_wrap_reg[0]\(0) => aw_cmd_fsm_0_n_26,
      \axlen_cnt_reg[0]\(0) => aw_cmd_fsm_0_n_23,
      \axlen_cnt_reg[0]_0\(0) => aw_cmd_fsm_0_n_25,
      \axlen_cnt_reg[0]_1\(0) => aw_cmd_fsm_0_n_27,
      \axlen_cnt_reg[0]_2\(0) => cmd_translator_0_n_6,
      \axlen_cnt_reg[3]\ => cmd_translator_0_n_9,
      \axlen_cnt_reg[4]\ => cmd_translator_0_n_7,
      \axlen_cnt_reg[4]_0\ => cmd_translator_0_n_5,
      \cnt_read_reg[0]_rep__0\ => \cnt_read_reg[0]_rep__0\,
      \cnt_read_reg[1]_rep\ => \cnt_read_reg[1]_rep\,
      \cnt_read_reg[1]_rep_0\ => \cnt_read_reg[1]_rep_0\,
      incr_next_pending => incr_next_pending,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      \m_payload_i_reg[0]\ => \^b_push\,
      \m_payload_i_reg[0]_0\(0) => E(0),
      \m_payload_i_reg[0]_1\ => \m_payload_i_reg[0]\,
      \m_payload_i_reg[35]\ => \m_payload_i_reg[35]_2\,
      \m_payload_i_reg[44]\ => \m_payload_i_reg[44]\,
      \m_payload_i_reg[46]\ => \m_payload_i_reg[46]\,
      \m_payload_i_reg[47]\(2 downto 0) => \m_payload_i_reg[47]\(2 downto 0),
      \m_payload_i_reg[48]\ => \m_payload_i_reg[48]\,
      \m_payload_i_reg[5]\ => \m_payload_i_reg[5]\,
      next_pending_r_reg => aw_cmd_fsm_0_n_19,
      next_pending_r_reg_0 => cmd_translator_0_n_0,
      next_pending_r_reg_1 => cmd_translator_0_n_1,
      s_axburst_eq0_reg => aw_cmd_fsm_0_n_14,
      s_axburst_eq1_reg => aw_cmd_fsm_0_n_18,
      s_axburst_eq1_reg_0 => cmd_translator_0_n_8,
      sel_first_i => sel_first_i,
      sel_first_reg => cmd_translator_0_n_2,
      sel_first_reg_0 => \^sel_first\,
      si_rs_awvalid => si_rs_awvalid,
      \state_reg[0]_rep_0\ => \state_reg[0]_rep\,
      \state_reg[0]_rep_1\ => \state_reg[0]_rep_0\,
      \state_reg[1]_0\(0) => \state_reg[1]\(0),
      \state_reg[1]_rep_0\ => \state_reg[1]_rep\,
      \wrap_cnt_r_reg[0]\(1 downto 0) => \^wrap_cnt_r_reg[0]\(1 downto 0),
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[2]\(0) => \wrap_second_len_r_reg[2]_0\(0),
      \wrap_second_len_r_reg[3]\(2) => \wrap_cmd_0/wrap_second_len\(3),
      \wrap_second_len_r_reg[3]\(1) => \^wrap_second_len_r_reg[1]\(0),
      \wrap_second_len_r_reg[3]\(0) => \wrap_cmd_0/wrap_second_len\(0),
      \wrap_second_len_r_reg[3]_0\(2) => \wrap_cmd_0/wrap_second_len_r\(3),
      \wrap_second_len_r_reg[3]_0\(1) => \wrap_cmd_0/wrap_second_len_r\(1),
      \wrap_second_len_r_reg[3]_0\(0) => \^wrap_second_len_r_reg[2]\(0)
    );
cmd_translator_0: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_cmd_translator
     port map (
      D(0) => aw_cmd_fsm_0_n_23,
      E(0) => \^wrap_boundary_axaddr_r_reg[0]\,
      Q(22 downto 0) => Q(22 downto 0),
      S(3) => aw_cmd_fsm_0_n_9,
      S(2) => aw_cmd_fsm_0_n_10,
      S(1) => aw_cmd_fsm_0_n_11,
      S(0) => aw_cmd_fsm_0_n_12,
      aclk => aclk,
      areset_d1 => areset_d1,
      axaddr_incr0(2 downto 0) => axaddr_incr0(2 downto 0),
      \axaddr_offset_r_reg[3]\(3) => \^axaddr_offset_r_reg[3]\(2),
      \axaddr_offset_r_reg[3]\(2) => \wrap_cmd_0/axaddr_offset_r\(2),
      \axaddr_offset_r_reg[3]\(1 downto 0) => \^axaddr_offset_r_reg[3]\(1 downto 0),
      \axlen_cnt_reg[2]\(0) => cmd_translator_0_n_6,
      \axlen_cnt_reg[3]\ => cmd_translator_0_n_5,
      \axlen_cnt_reg[5]\ => cmd_translator_0_n_7,
      b_push => \^b_push\,
      incr_next_pending => incr_next_pending,
      m_axi_awaddr(11 downto 0) => m_axi_awaddr(11 downto 0),
      \m_payload_i_reg[11]\(3 downto 0) => \m_payload_i_reg[11]\(3 downto 0),
      \m_payload_i_reg[35]\ => \m_payload_i_reg[35]\,
      \m_payload_i_reg[35]_0\ => \m_payload_i_reg[35]_0\,
      \m_payload_i_reg[35]_1\ => \m_payload_i_reg[35]_1\,
      \m_payload_i_reg[36]\ => \m_payload_i_reg[36]\,
      \m_payload_i_reg[38]\ => \m_payload_i_reg[38]\,
      \m_payload_i_reg[39]\ => aw_cmd_fsm_0_n_14,
      \m_payload_i_reg[39]_0\ => aw_cmd_fsm_0_n_18,
      \m_payload_i_reg[47]\ => \m_payload_i_reg[47]_0\,
      \m_payload_i_reg[47]_0\(3) => \m_payload_i_reg[47]\(2),
      \m_payload_i_reg[47]_0\(2) => \wrap_cmd_0/axaddr_offset\(2),
      \m_payload_i_reg[47]_0\(1 downto 0) => \m_payload_i_reg[47]\(1 downto 0),
      \m_payload_i_reg[6]\(6 downto 0) => \m_payload_i_reg[6]\(6 downto 0),
      \m_payload_i_reg[7]\(3 downto 0) => S(3 downto 0),
      m_valid_i_reg(0) => aw_cmd_fsm_0_n_27,
      m_valid_i_reg_0(0) => aw_cmd_fsm_0_n_25,
      m_valid_i_reg_1(0) => aw_cmd_fsm_0_n_26,
      next_pending_r_reg => cmd_translator_0_n_0,
      next_pending_r_reg_0 => cmd_translator_0_n_1,
      next_pending_r_reg_1 => cmd_translator_0_n_9,
      s_axburst_eq0 => s_axburst_eq0,
      s_axburst_eq1 => s_axburst_eq1,
      sel_first_i => sel_first_i,
      sel_first_reg_0 => cmd_translator_0_n_2,
      sel_first_reg_1 => \^sel_first\,
      sel_first_reg_2 => aw_cmd_fsm_0_n_28,
      si_rs_awvalid => si_rs_awvalid,
      \state_reg[0]\ => cmd_translator_0_n_8,
      \state_reg[0]_rep\ => aw_cmd_fsm_0_n_19,
      \state_reg[1]\(1 downto 0) => \^wrap_cnt_r_reg[0]\(1 downto 0),
      wrap_next_pending => wrap_next_pending,
      \wrap_second_len_r_reg[3]\(3) => \wrap_cmd_0/wrap_second_len_r\(3),
      \wrap_second_len_r_reg[3]\(2) => \^wrap_second_len_r_reg[2]\(1),
      \wrap_second_len_r_reg[3]\(1) => \wrap_cmd_0/wrap_second_len_r\(1),
      \wrap_second_len_r_reg[3]\(0) => \^wrap_second_len_r_reg[2]\(0),
      \wrap_second_len_r_reg[3]_0\(3) => \wrap_cmd_0/wrap_second_len\(3),
      \wrap_second_len_r_reg[3]_0\(2) => \wrap_second_len_r_reg[2]_0\(0),
      \wrap_second_len_r_reg[3]_0\(1) => \^wrap_second_len_r_reg[1]\(0),
      \wrap_second_len_r_reg[3]_0\(0) => \wrap_cmd_0/wrap_second_len\(0),
      \wrap_second_len_r_reg[3]_1\(3) => wrap_cnt(3),
      \wrap_second_len_r_reg[3]_1\(2) => D(0),
      \wrap_second_len_r_reg[3]_1\(1) => aw_cmd_fsm_0_n_1,
      \wrap_second_len_r_reg[3]_1\(0) => wrap_cnt(0)
    );
\s_awid_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(23),
      Q => \in\(8),
      R => '0'
    );
\s_awlen_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(15),
      Q => \in\(0),
      R => '0'
    );
\s_awlen_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(16),
      Q => \in\(1),
      R => '0'
    );
\s_awlen_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(17),
      Q => \in\(2),
      R => '0'
    );
\s_awlen_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(18),
      Q => \in\(3),
      R => '0'
    );
\s_awlen_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(19),
      Q => \in\(4),
      R => '0'
    );
\s_awlen_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(20),
      Q => \in\(5),
      R => '0'
    );
\s_awlen_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(21),
      Q => \in\(6),
      R => '0'
    );
\s_awlen_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(22),
      Q => \in\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_axi_arprot[2]\ : out STD_LOGIC_VECTOR ( 22 downto 0 );
    UNCONN_OUT : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 33 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s : entity is "axi_protocol_converter_v2_1_b2s";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s is
  signal \RD.ar_channel_0_n_4\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_5\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_6\ : STD_LOGIC;
  signal \RD.ar_channel_0_n_9\ : STD_LOGIC;
  signal \RD.r_channel_0_n_0\ : STD_LOGIC;
  signal \RD.r_channel_0_n_1\ : STD_LOGIC;
  signal SI_REG_n_10 : STD_LOGIC;
  signal SI_REG_n_11 : STD_LOGIC;
  signal SI_REG_n_114 : STD_LOGIC;
  signal SI_REG_n_115 : STD_LOGIC;
  signal SI_REG_n_116 : STD_LOGIC;
  signal SI_REG_n_117 : STD_LOGIC;
  signal SI_REG_n_120 : STD_LOGIC;
  signal SI_REG_n_124 : STD_LOGIC;
  signal SI_REG_n_125 : STD_LOGIC;
  signal SI_REG_n_126 : STD_LOGIC;
  signal SI_REG_n_127 : STD_LOGIC;
  signal SI_REG_n_128 : STD_LOGIC;
  signal SI_REG_n_13 : STD_LOGIC;
  signal SI_REG_n_130 : STD_LOGIC;
  signal SI_REG_n_132 : STD_LOGIC;
  signal SI_REG_n_136 : STD_LOGIC;
  signal SI_REG_n_137 : STD_LOGIC;
  signal SI_REG_n_138 : STD_LOGIC;
  signal SI_REG_n_139 : STD_LOGIC;
  signal SI_REG_n_14 : STD_LOGIC;
  signal SI_REG_n_140 : STD_LOGIC;
  signal SI_REG_n_141 : STD_LOGIC;
  signal SI_REG_n_142 : STD_LOGIC;
  signal SI_REG_n_143 : STD_LOGIC;
  signal SI_REG_n_144 : STD_LOGIC;
  signal SI_REG_n_145 : STD_LOGIC;
  signal SI_REG_n_146 : STD_LOGIC;
  signal SI_REG_n_147 : STD_LOGIC;
  signal SI_REG_n_148 : STD_LOGIC;
  signal SI_REG_n_149 : STD_LOGIC;
  signal SI_REG_n_15 : STD_LOGIC;
  signal SI_REG_n_150 : STD_LOGIC;
  signal SI_REG_n_151 : STD_LOGIC;
  signal SI_REG_n_152 : STD_LOGIC;
  signal SI_REG_n_153 : STD_LOGIC;
  signal SI_REG_n_154 : STD_LOGIC;
  signal SI_REG_n_155 : STD_LOGIC;
  signal SI_REG_n_156 : STD_LOGIC;
  signal SI_REG_n_157 : STD_LOGIC;
  signal SI_REG_n_158 : STD_LOGIC;
  signal SI_REG_n_159 : STD_LOGIC;
  signal SI_REG_n_16 : STD_LOGIC;
  signal SI_REG_n_160 : STD_LOGIC;
  signal SI_REG_n_161 : STD_LOGIC;
  signal SI_REG_n_162 : STD_LOGIC;
  signal SI_REG_n_163 : STD_LOGIC;
  signal SI_REG_n_164 : STD_LOGIC;
  signal SI_REG_n_165 : STD_LOGIC;
  signal SI_REG_n_166 : STD_LOGIC;
  signal SI_REG_n_167 : STD_LOGIC;
  signal SI_REG_n_168 : STD_LOGIC;
  signal SI_REG_n_169 : STD_LOGIC;
  signal SI_REG_n_170 : STD_LOGIC;
  signal SI_REG_n_171 : STD_LOGIC;
  signal SI_REG_n_172 : STD_LOGIC;
  signal SI_REG_n_173 : STD_LOGIC;
  signal SI_REG_n_59 : STD_LOGIC;
  signal SI_REG_n_60 : STD_LOGIC;
  signal SI_REG_n_61 : STD_LOGIC;
  signal SI_REG_n_62 : STD_LOGIC;
  signal SI_REG_n_63 : STD_LOGIC;
  signal SI_REG_n_64 : STD_LOGIC;
  signal SI_REG_n_65 : STD_LOGIC;
  signal SI_REG_n_66 : STD_LOGIC;
  signal SI_REG_n_68 : STD_LOGIC;
  signal SI_REG_n_69 : STD_LOGIC;
  signal SI_REG_n_70 : STD_LOGIC;
  signal SI_REG_n_71 : STD_LOGIC;
  signal SI_REG_n_8 : STD_LOGIC;
  signal SI_REG_n_9 : STD_LOGIC;
  signal \WR.aw_channel_0_n_12\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_13\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_14\ : STD_LOGIC;
  signal \WR.aw_channel_0_n_20\ : STD_LOGIC;
  signal \WR.b_channel_0_n_0\ : STD_LOGIC;
  signal \WR.b_channel_0_n_2\ : STD_LOGIC;
  signal \WR.b_channel_0_n_3\ : STD_LOGIC;
  signal \WR.b_channel_0_n_5\ : STD_LOGIC;
  signal \ar_cmd_fsm_0/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ar_pipe/p_1_in\ : STD_LOGIC;
  signal areset_d1 : STD_LOGIC;
  signal \aw_cmd_fsm_0/next_state\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \aw_cmd_fsm_0/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aw_pipe/p_1_in\ : STD_LOGIC;
  signal b_awid : STD_LOGIC;
  signal b_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal b_push : STD_LOGIC;
  signal \cmd_translator_0/incr_cmd_0/sel_first\ : STD_LOGIC;
  signal \cmd_translator_0/incr_cmd_0/sel_first_2\ : STD_LOGIC;
  signal \cmd_translator_0/s_axburst_eq0\ : STD_LOGIC;
  signal \cmd_translator_0/s_axburst_eq1\ : STD_LOGIC;
  signal \cmd_translator_0/wrap_cmd_0/axaddr_offset\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cmd_translator_0/wrap_cmd_0/axaddr_offset_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cmd_translator_0/wrap_cmd_0/axaddr_offset_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cmd_translator_0/wrap_cmd_0/wrap_second_len\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \cmd_translator_0/wrap_cmd_0/wrap_second_len_1\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \cmd_translator_0/wrap_cmd_0/wrap_second_len_r\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cmd_translator_0/wrap_cmd_0/wrap_second_len_r_4\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal r_push : STD_LOGIC;
  signal r_rlast : STD_LOGIC;
  signal s_arid : STD_LOGIC;
  signal s_arid_r : STD_LOGIC;
  signal s_awid : STD_LOGIC;
  signal shandshake : STD_LOGIC;
  signal si_rs_araddr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal si_rs_arburst : STD_LOGIC_VECTOR ( 1 to 1 );
  signal si_rs_arlen : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal si_rs_arsize : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal si_rs_arvalid : STD_LOGIC;
  signal si_rs_awaddr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal si_rs_awburst : STD_LOGIC_VECTOR ( 1 to 1 );
  signal si_rs_awlen : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal si_rs_awsize : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal si_rs_awvalid : STD_LOGIC;
  signal si_rs_bid : STD_LOGIC;
  signal si_rs_bready : STD_LOGIC;
  signal si_rs_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal si_rs_bvalid : STD_LOGIC;
  signal si_rs_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal si_rs_rid : STD_LOGIC;
  signal si_rs_rlast : STD_LOGIC;
  signal si_rs_rready : STD_LOGIC;
  signal si_rs_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wrap_cnt : STD_LOGIC_VECTOR ( 2 to 2 );
begin
\RD.ar_channel_0\: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_ar_channel
     port map (
      D(0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len\(2),
      E(0) => \ar_pipe/p_1_in\,
      I26(2) => SI_REG_n_149,
      I26(1) => SI_REG_n_150,
      I26(0) => SI_REG_n_151,
      Q(23) => s_arid,
      Q(22) => SI_REG_n_68,
      Q(21) => SI_REG_n_69,
      Q(20) => SI_REG_n_70,
      Q(19) => SI_REG_n_71,
      Q(18 downto 15) => si_rs_arlen(3 downto 0),
      Q(14) => si_rs_arburst(1),
      Q(13 downto 12) => si_rs_arsize(1 downto 0),
      Q(11 downto 0) => si_rs_araddr(11 downto 0),
      S(3) => SI_REG_n_63,
      S(2) => SI_REG_n_64,
      S(1) => SI_REG_n_65,
      S(0) => SI_REG_n_66,
      aclk => aclk,
      areset_d1 => areset_d1,
      \axaddr_offset_r_reg[2]\ => \RD.ar_channel_0_n_9\,
      \axaddr_offset_r_reg[3]\(2) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r\(3),
      \axaddr_offset_r_reg[3]\(1 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r\(1 downto 0),
      \cnt_read_reg[4]\ => \RD.r_channel_0_n_1\,
      m_axi_araddr(11 downto 0) => m_axi_araddr(11 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      \m_payload_i_reg[0]\ => SI_REG_n_136,
      \m_payload_i_reg[11]\(3) => SI_REG_n_114,
      \m_payload_i_reg[11]\(2) => SI_REG_n_115,
      \m_payload_i_reg[11]\(1) => SI_REG_n_116,
      \m_payload_i_reg[11]\(0) => SI_REG_n_117,
      \m_payload_i_reg[35]\ => SI_REG_n_148,
      \m_payload_i_reg[35]_0\ => SI_REG_n_153,
      \m_payload_i_reg[35]_1\ => SI_REG_n_154,
      \m_payload_i_reg[35]_2\ => SI_REG_n_137,
      \m_payload_i_reg[36]\ => SI_REG_n_152,
      \m_payload_i_reg[38]\ => SI_REG_n_172,
      \m_payload_i_reg[44]\ => SI_REG_n_132,
      \m_payload_i_reg[46]\ => SI_REG_n_140,
      \m_payload_i_reg[47]\ => SI_REG_n_138,
      \m_payload_i_reg[47]_0\(2) => \cmd_translator_0/wrap_cmd_0/axaddr_offset\(3),
      \m_payload_i_reg[47]_0\(1 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset\(1 downto 0),
      \m_payload_i_reg[48]\ => SI_REG_n_139,
      \m_payload_i_reg[5]\ => SI_REG_n_163,
      \m_payload_i_reg[6]\(6) => SI_REG_n_164,
      \m_payload_i_reg[6]\(5) => SI_REG_n_165,
      \m_payload_i_reg[6]\(4) => SI_REG_n_166,
      \m_payload_i_reg[6]\(3) => SI_REG_n_167,
      \m_payload_i_reg[6]\(2) => SI_REG_n_168,
      \m_payload_i_reg[6]\(1) => SI_REG_n_169,
      \m_payload_i_reg[6]\(0) => SI_REG_n_170,
      r_push => r_push,
      r_rlast => r_rlast,
      s_arid_r => s_arid_r,
      sel_first => \cmd_translator_0/incr_cmd_0/sel_first\,
      si_rs_arvalid => si_rs_arvalid,
      \state_reg[0]_rep\ => \RD.ar_channel_0_n_5\,
      \state_reg[0]_rep_0\ => \RD.ar_channel_0_n_6\,
      \state_reg[1]\(1 downto 0) => \ar_cmd_fsm_0/state\(1 downto 0),
      \wrap_boundary_axaddr_r_reg[0]\ => \RD.ar_channel_0_n_4\,
      \wrap_second_len_r_reg[1]\(0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len\(1),
      \wrap_second_len_r_reg[2]\(1) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_r\(2),
      \wrap_second_len_r_reg[2]\(0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_r\(0),
      \wrap_second_len_r_reg[2]_0\(0) => SI_REG_n_130
    );
\RD.r_channel_0\: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_r_channel
     port map (
      aclk => aclk,
      areset_d1 => areset_d1,
      \cnt_read_reg[0]_rep__2_rep__0\ => \RD.r_channel_0_n_0\,
      \in\(33 downto 0) => \in\(33 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\(33 downto 32) => si_rs_rresp(1 downto 0),
      \out\(31 downto 0) => si_rs_rdata(31 downto 0),
      r_push => r_push,
      r_rlast => r_rlast,
      s_arid_r => s_arid_r,
      si_rs_rready => si_rs_rready,
      \skid_buffer_reg[35]\(1) => si_rs_rid,
      \skid_buffer_reg[35]\(0) => si_rs_rlast,
      \state_reg[0]_rep\ => \RD.r_channel_0_n_1\
    );
SI_REG: entity work.ntps_top_auto_pc_0_axi_register_slice_v2_1_axi_register_slice
     port map (
      D(0) => wrap_cnt(2),
      E(0) => \aw_pipe/p_1_in\,
      I26(2) => SI_REG_n_149,
      I26(1) => SI_REG_n_150,
      I26(0) => SI_REG_n_151,
      Q(46) => s_awid,
      Q(45) => SI_REG_n_13,
      Q(44) => SI_REG_n_14,
      Q(43) => SI_REG_n_15,
      Q(42) => SI_REG_n_16,
      Q(41 downto 38) => si_rs_awlen(3 downto 0),
      Q(37) => si_rs_awburst(1),
      Q(36 downto 35) => si_rs_awsize(1 downto 0),
      Q(34 downto 12) => Q(22 downto 0),
      Q(11 downto 0) => si_rs_awaddr(11 downto 0),
      S(3) => SI_REG_n_8,
      S(2) => SI_REG_n_9,
      S(1) => SI_REG_n_10,
      S(0) => SI_REG_n_11,
      SR(0) => SI_REG_n_173,
      UNCONN_OUT(35 downto 0) => UNCONN_OUT(35 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      axaddr_incr0(2) => SI_REG_n_142,
      axaddr_incr0(1) => SI_REG_n_143,
      axaddr_incr0(0) => SI_REG_n_144,
      \axaddr_incr_reg[11]\(3) => SI_REG_n_59,
      \axaddr_incr_reg[11]\(2) => SI_REG_n_60,
      \axaddr_incr_reg[11]\(1) => SI_REG_n_61,
      \axaddr_incr_reg[11]\(0) => SI_REG_n_62,
      \axaddr_incr_reg[11]_0\(3) => SI_REG_n_114,
      \axaddr_incr_reg[11]_0\(2) => SI_REG_n_115,
      \axaddr_incr_reg[11]_0\(1) => SI_REG_n_116,
      \axaddr_incr_reg[11]_0\(0) => SI_REG_n_117,
      \axaddr_incr_reg[1]\ => SI_REG_n_141,
      \axaddr_incr_reg[1]_0\ => SI_REG_n_148,
      \axaddr_incr_reg[2]\ => SI_REG_n_145,
      \axaddr_incr_reg[2]_0\ => SI_REG_n_152,
      \axaddr_incr_reg[3]\ => SI_REG_n_146,
      \axaddr_incr_reg[3]_0\ => SI_REG_n_153,
      \axaddr_incr_reg[4]\ => SI_REG_n_147,
      \axaddr_incr_reg[4]_0\ => SI_REG_n_154,
      \axaddr_incr_reg[7]\(3) => SI_REG_n_63,
      \axaddr_incr_reg[7]\(2) => SI_REG_n_64,
      \axaddr_incr_reg[7]\(1) => SI_REG_n_65,
      \axaddr_incr_reg[7]\(0) => SI_REG_n_66,
      axaddr_offset(2) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_0\(3),
      axaddr_offset(1 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_0\(1 downto 0),
      \axaddr_offset_r_reg[2]\ => SI_REG_n_155,
      \axaddr_offset_r_reg[2]_0\ => SI_REG_n_163,
      \axaddr_offset_r_reg[2]_1\ => \WR.aw_channel_0_n_20\,
      \axaddr_offset_r_reg[2]_2\ => \RD.ar_channel_0_n_9\,
      \axaddr_offset_r_reg[3]\(2) => \cmd_translator_0/wrap_cmd_0/axaddr_offset\(3),
      \axaddr_offset_r_reg[3]\(1 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset\(1 downto 0),
      \axaddr_offset_r_reg[3]_0\(2) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3\(3),
      \axaddr_offset_r_reg[3]_0\(1 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3\(1 downto 0),
      \axaddr_offset_r_reg[3]_1\(2) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r\(3),
      \axaddr_offset_r_reg[3]_1\(1 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r\(1 downto 0),
      \axlen_cnt_reg[3]\ => SI_REG_n_126,
      \axlen_cnt_reg[3]_0\ => SI_REG_n_138,
      b_push => b_push,
      \cnt_read_reg[3]_rep__3_rep\ => \RD.r_channel_0_n_0\,
      \cnt_read_reg[4]\(33 downto 32) => si_rs_rresp(1 downto 0),
      \cnt_read_reg[4]\(31 downto 0) => si_rs_rdata(31 downto 0),
      \m_axi_araddr[10]\ => SI_REG_n_172,
      \m_axi_awaddr[10]\ => SI_REG_n_171,
      next_pending_r_reg => SI_REG_n_127,
      next_pending_r_reg_0 => SI_REG_n_128,
      next_pending_r_reg_1 => SI_REG_n_139,
      next_pending_r_reg_2 => SI_REG_n_140,
      \out\(0) => si_rs_bid,
      r_push_r_reg(1) => si_rs_rid,
      r_push_r_reg(0) => si_rs_rlast,
      \s_arid_r_reg[0]\(46) => s_arid,
      \s_arid_r_reg[0]\(45) => SI_REG_n_68,
      \s_arid_r_reg[0]\(44) => SI_REG_n_69,
      \s_arid_r_reg[0]\(43) => SI_REG_n_70,
      \s_arid_r_reg[0]\(42) => SI_REG_n_71,
      \s_arid_r_reg[0]\(41 downto 38) => si_rs_arlen(3 downto 0),
      \s_arid_r_reg[0]\(37) => si_rs_arburst(1),
      \s_arid_r_reg[0]\(36 downto 35) => si_rs_arsize(1 downto 0),
      \s_arid_r_reg[0]\(34 downto 12) => \m_axi_arprot[2]\(22 downto 0),
      \s_arid_r_reg[0]\(11 downto 0) => si_rs_araddr(11 downto 0),
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(1 downto 0) => s_axi_arsize(1 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(1 downto 0) => s_axi_awsize(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      \s_bresp_acc_reg[1]\(1 downto 0) => si_rs_bresp(1 downto 0),
      sel_first => \cmd_translator_0/incr_cmd_0/sel_first_2\,
      sel_first_0 => \cmd_translator_0/incr_cmd_0/sel_first\,
      shandshake => shandshake,
      si_rs_arvalid => si_rs_arvalid,
      si_rs_awvalid => si_rs_awvalid,
      si_rs_bready => si_rs_bready,
      si_rs_bvalid => si_rs_bvalid,
      si_rs_rready => si_rs_rready,
      \state_reg[0]_rep\ => \RD.ar_channel_0_n_6\,
      \state_reg[1]\(1 downto 0) => \aw_cmd_fsm_0/state\(1 downto 0),
      \state_reg[1]_0\(1 downto 0) => \ar_cmd_fsm_0/state\(1 downto 0),
      \state_reg[1]_rep\ => \RD.ar_channel_0_n_5\,
      \state_reg[1]_rep_0\ => \WR.aw_channel_0_n_12\,
      \state_reg[1]_rep_1\ => \RD.ar_channel_0_n_4\,
      \state_reg[1]_rep_2\(0) => \ar_pipe/p_1_in\,
      \wrap_boundary_axaddr_r_reg[6]\(6) => SI_REG_n_156,
      \wrap_boundary_axaddr_r_reg[6]\(5) => SI_REG_n_157,
      \wrap_boundary_axaddr_r_reg[6]\(4) => SI_REG_n_158,
      \wrap_boundary_axaddr_r_reg[6]\(3) => SI_REG_n_159,
      \wrap_boundary_axaddr_r_reg[6]\(2) => SI_REG_n_160,
      \wrap_boundary_axaddr_r_reg[6]\(1) => SI_REG_n_161,
      \wrap_boundary_axaddr_r_reg[6]\(0) => SI_REG_n_162,
      \wrap_boundary_axaddr_r_reg[6]_0\(6) => SI_REG_n_164,
      \wrap_boundary_axaddr_r_reg[6]_0\(5) => SI_REG_n_165,
      \wrap_boundary_axaddr_r_reg[6]_0\(4) => SI_REG_n_166,
      \wrap_boundary_axaddr_r_reg[6]_0\(3) => SI_REG_n_167,
      \wrap_boundary_axaddr_r_reg[6]_0\(2) => SI_REG_n_168,
      \wrap_boundary_axaddr_r_reg[6]_0\(1) => SI_REG_n_169,
      \wrap_boundary_axaddr_r_reg[6]_0\(0) => SI_REG_n_170,
      \wrap_cnt_r_reg[2]\ => SI_REG_n_120,
      \wrap_cnt_r_reg[2]_0\(0) => SI_REG_n_130,
      \wrap_cnt_r_reg[2]_1\ => SI_REG_n_132,
      wrap_second_len(0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_1\(1),
      \wrap_second_len_r_reg[0]\ => SI_REG_n_124,
      \wrap_second_len_r_reg[0]_0\ => SI_REG_n_136,
      \wrap_second_len_r_reg[1]\(0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len\(1),
      \wrap_second_len_r_reg[2]\(0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_1\(2),
      \wrap_second_len_r_reg[2]_0\(0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len\(2),
      \wrap_second_len_r_reg[2]_1\(1) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_r_4\(2),
      \wrap_second_len_r_reg[2]_1\(0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_r_4\(0),
      \wrap_second_len_r_reg[2]_2\(1) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_r\(2),
      \wrap_second_len_r_reg[2]_2\(0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_r\(0),
      \wrap_second_len_r_reg[3]\ => SI_REG_n_125,
      \wrap_second_len_r_reg[3]_0\ => SI_REG_n_137
    );
\WR.aw_channel_0\: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_aw_channel
     port map (
      D(0) => wrap_cnt(2),
      E(0) => \aw_pipe/p_1_in\,
      Q(23) => s_awid,
      Q(22) => SI_REG_n_13,
      Q(21) => SI_REG_n_14,
      Q(20) => SI_REG_n_15,
      Q(19) => SI_REG_n_16,
      Q(18 downto 15) => si_rs_awlen(3 downto 0),
      Q(14) => si_rs_awburst(1),
      Q(13 downto 12) => si_rs_awsize(1 downto 0),
      Q(11 downto 0) => si_rs_awaddr(11 downto 0),
      S(3) => SI_REG_n_8,
      S(2) => SI_REG_n_9,
      S(1) => SI_REG_n_10,
      S(0) => SI_REG_n_11,
      aclk => aclk,
      areset_d1 => areset_d1,
      axaddr_incr0(2) => SI_REG_n_142,
      axaddr_incr0(1) => SI_REG_n_143,
      axaddr_incr0(0) => SI_REG_n_144,
      \axaddr_offset_r_reg[2]\ => \WR.aw_channel_0_n_20\,
      \axaddr_offset_r_reg[3]\(2) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3\(3),
      \axaddr_offset_r_reg[3]\(1 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_r_3\(1 downto 0),
      b_push => b_push,
      \cnt_read_reg[0]_rep__0\ => \WR.b_channel_0_n_0\,
      \cnt_read_reg[1]_rep\ => \WR.b_channel_0_n_3\,
      \cnt_read_reg[1]_rep_0\ => \WR.b_channel_0_n_2\,
      \in\(8) => b_awid,
      \in\(7 downto 0) => b_awlen(7 downto 0),
      m_axi_awaddr(11 downto 0) => m_axi_awaddr(11 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      \m_payload_i_reg[0]\ => SI_REG_n_124,
      \m_payload_i_reg[11]\(3) => SI_REG_n_59,
      \m_payload_i_reg[11]\(2) => SI_REG_n_60,
      \m_payload_i_reg[11]\(1) => SI_REG_n_61,
      \m_payload_i_reg[11]\(0) => SI_REG_n_62,
      \m_payload_i_reg[35]\ => SI_REG_n_141,
      \m_payload_i_reg[35]_0\ => SI_REG_n_146,
      \m_payload_i_reg[35]_1\ => SI_REG_n_147,
      \m_payload_i_reg[35]_2\ => SI_REG_n_125,
      \m_payload_i_reg[36]\ => SI_REG_n_145,
      \m_payload_i_reg[38]\ => SI_REG_n_171,
      \m_payload_i_reg[44]\ => SI_REG_n_120,
      \m_payload_i_reg[46]\ => SI_REG_n_128,
      \m_payload_i_reg[47]\(2) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_0\(3),
      \m_payload_i_reg[47]\(1 downto 0) => \cmd_translator_0/wrap_cmd_0/axaddr_offset_0\(1 downto 0),
      \m_payload_i_reg[47]_0\ => SI_REG_n_126,
      \m_payload_i_reg[48]\ => SI_REG_n_127,
      \m_payload_i_reg[5]\ => SI_REG_n_155,
      \m_payload_i_reg[6]\(6) => SI_REG_n_156,
      \m_payload_i_reg[6]\(5) => SI_REG_n_157,
      \m_payload_i_reg[6]\(4) => SI_REG_n_158,
      \m_payload_i_reg[6]\(3) => SI_REG_n_159,
      \m_payload_i_reg[6]\(2) => SI_REG_n_160,
      \m_payload_i_reg[6]\(1) => SI_REG_n_161,
      \m_payload_i_reg[6]\(0) => SI_REG_n_162,
      s_axburst_eq0 => \cmd_translator_0/s_axburst_eq0\,
      s_axburst_eq1 => \cmd_translator_0/s_axburst_eq1\,
      sel_first => \cmd_translator_0/incr_cmd_0/sel_first_2\,
      si_rs_awvalid => si_rs_awvalid,
      \state_reg[0]_rep\ => \WR.aw_channel_0_n_13\,
      \state_reg[0]_rep_0\ => \WR.aw_channel_0_n_14\,
      \state_reg[1]\(0) => \aw_cmd_fsm_0/next_state\(1),
      \state_reg[1]_rep\ => \WR.b_channel_0_n_5\,
      \wrap_boundary_axaddr_r_reg[0]\ => \WR.aw_channel_0_n_12\,
      \wrap_cnt_r_reg[0]\(1 downto 0) => \aw_cmd_fsm_0/state\(1 downto 0),
      \wrap_second_len_r_reg[1]\(0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_1\(1),
      \wrap_second_len_r_reg[2]\(1) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_r_4\(2),
      \wrap_second_len_r_reg[2]\(0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_r_4\(0),
      \wrap_second_len_r_reg[2]_0\(0) => \cmd_translator_0/wrap_cmd_0/wrap_second_len_1\(2)
    );
\WR.b_channel_0\: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s_b_channel
     port map (
      Q(0) => si_rs_awburst(1),
      aclk => aclk,
      areset_d1 => areset_d1,
      b_push => b_push,
      \cnt_read_reg[0]_rep__0\ => \WR.b_channel_0_n_0\,
      \in\(8) => b_awid,
      \in\(7 downto 0) => b_awlen(7 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      \out\(0) => si_rs_bid,
      s_axburst_eq0 => \cmd_translator_0/s_axburst_eq0\,
      s_axburst_eq1 => \cmd_translator_0/s_axburst_eq1\,
      shandshake => shandshake,
      si_rs_bready => si_rs_bready,
      si_rs_bvalid => si_rs_bvalid,
      \skid_buffer_reg[1]\(1 downto 0) => si_rs_bresp(1 downto 0),
      \state_reg[0]_rep\ => \WR.b_channel_0_n_3\,
      \state_reg[0]_rep_0\ => \WR.aw_channel_0_n_14\,
      \state_reg[1]\(0) => \aw_cmd_fsm_0/next_state\(1),
      \state_reg[1]_0\(1 downto 0) => \aw_cmd_fsm_0/state\(1 downto 0),
      \state_reg[1]_rep\ => \WR.b_channel_0_n_2\,
      \state_reg[1]_rep_0\ => \WR.b_channel_0_n_5\,
      \state_reg[1]_rep_1\ => \WR.aw_channel_0_n_13\
    );
areset_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => SI_REG_n_173,
      Q => areset_d1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is "virtex7";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 1;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 2;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 0;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 2;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is "axi_protocol_converter_v2_1_axi_protocol_converter";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is "3'b010";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter : entity is "2'b10";
end ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter;

architecture STRUCTURE of ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_wvalid\ : STD_LOGIC;
begin
  \^m_axi_wready\ <= m_axi_wready;
  \^s_axi_wdata\(31 downto 0) <= s_axi_wdata(31 downto 0);
  \^s_axi_wstrb\(3 downto 0) <= s_axi_wstrb(3 downto 0);
  \^s_axi_wvalid\ <= s_axi_wvalid;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const1>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const1>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const1>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const1>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wdata(31 downto 0) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const1>\;
  m_axi_wstrb(3 downto 0) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \^s_axi_wvalid\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_wready <= \^m_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\gen_axilite.gen_b2s_conv.axilite_b2s\: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_b2s
     port map (
      Q(22 downto 20) => m_axi_awprot(2 downto 0),
      Q(19 downto 0) => m_axi_awaddr(31 downto 12),
      UNCONN_OUT(35) => s_axi_rid(0),
      UNCONN_OUT(34) => s_axi_rlast,
      UNCONN_OUT(33 downto 32) => s_axi_rresp(1 downto 0),
      UNCONN_OUT(31 downto 0) => s_axi_rdata(31 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      \in\(33 downto 32) => m_axi_rresp(1 downto 0),
      \in\(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_araddr(11 downto 0) => m_axi_araddr(11 downto 0),
      \m_axi_arprot[2]\(22 downto 20) => m_axi_arprot(2 downto 0),
      \m_axi_arprot[2]\(19 downto 0) => m_axi_araddr(31 downto 12),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(11 downto 0) => m_axi_awaddr(11 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(1 downto 0) => s_axi_arsize(1 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(1 downto 0) => s_axi_awsize(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ntps_top_auto_pc_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ntps_top_auto_pc_0 : entity is "ntps_top_auto_pc_0,axi_protocol_converter_v2_1_axi_protocol_converter,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ntps_top_auto_pc_0 : entity is "ntps_top_auto_pc_0,axi_protocol_converter_v2_1_axi_protocol_converter,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_protocol_converter,x_ipVersion=2.1,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=virtex7,C_M_AXI_PROTOCOL=2,C_S_AXI_PROTOCOL=0,C_IGNORE_ID=1,C_AXI_ID_WIDTH=1,C_AXI_ADDR_WIDTH=32,C_AXI_DATA_WIDTH=32,C_AXI_SUPPORTS_WRITE=1,C_AXI_SUPPORTS_READ=1,C_AXI_SUPPORTS_USER_SIGNALS=0,C_AXI_AWUSER_WIDTH=1,C_AXI_ARUSER_WIDTH=1,C_AXI_WUSER_WIDTH=1,C_AXI_RUSER_WIDTH=1,C_AXI_BUSER_WIDTH=1,C_TRANSLATION_MODE=2}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ntps_top_auto_pc_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ntps_top_auto_pc_0 : entity is "axi_protocol_converter_v2_1_axi_protocol_converter,Vivado 2015.2";
end ntps_top_auto_pc_0;

architecture STRUCTURE of ntps_top_auto_pc_0 is
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "virtex7";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of inst : label is 1;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of inst : label is 2;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of inst : label is 0;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of inst : label is 2;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inst : label is std.standard.true;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b010";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of inst : label is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of inst : label is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of inst : label is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of inst : label is "2'b10";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of inst : label is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
begin
inst: entity work.ntps_top_auto_pc_0_axi_protocol_converter_v2_1_axi_protocol_converter
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_inst_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => '1',
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(0) => NLW_inst_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => s_axi_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
