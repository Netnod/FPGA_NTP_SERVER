-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Thu Sep 26 15:29:18 2019
-- Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/wingel/work/FPGA_NTP_INTERNAL/FPGA_NTP_SERVER/FPGA/keymem/ip/axi_keymem_ctrl/axi_keymem_ctrl_funcsim.vhdl
-- Design      : axi_keymem_ctrl
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_keymem_ctrl_axi_lite is
  port (
    s_axi_awready : out STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_BID_int_reg[0]\ : out STD_LOGIC;
    \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_RID_int_reg[0]\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_keymem_ctrl_axi_lite : entity is "axi_lite";
end axi_keymem_ctrl_axi_lite;

architecture STRUCTURE of axi_keymem_ctrl_axi_lite is
  signal \FSM_onehot_lite_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lite_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lite_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lite_sm_cs[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lite_sm_cs[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_lite_sm_cs_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_lite_sm_cs_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_lite_sm_cs_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_lite_sm_cs_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_lite_sm_cs_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_lite_sm_cs_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_lite_sm_cs_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_lite_sm_cs_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_lite_sm_cs_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_lite_sm_cs_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_lite_sm_cs_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_lite_sm_cs_reg_n_0_[5]\ : signal is "yes";
  signal \GEN_ARREADY.axi_arready_int_i_1_n_0\ : STD_LOGIC;
  signal \GEN_R.axi_rvalid_int_i_1_n_0\ : STD_LOGIC;
  signal axi_aresetn_d1 : STD_LOGIC;
  signal axi_bvalid_int_i_1_n_0 : STD_LOGIC;
  signal axi_wready_cmb : STD_LOGIC;
  signal bram_en_a_INST_0_i_1_n_0 : STD_LOGIC;
  signal bram_en_a_INST_0_i_2_n_0 : STD_LOGIC;
  signal \^bram_rst_a\ : STD_LOGIC;
  signal \bram_we_a[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal bvalid_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bvalid_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_lite_sm_cs_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_lite_sm_cs_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_lite_sm_cs_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_lite_sm_cs_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_lite_sm_cs_reg[4]\ : label is "yes";
  attribute KEEP of \FSM_onehot_lite_sm_cs_reg[5]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_BID_int[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of bram_en_a_INST_0_i_1 : label is "soft_lutpair0";
begin
  bram_rst_a <= \^bram_rst_a\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
\FSM_onehot_lite_sm_cs[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0454"
    )
        port map (
      I0 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I1 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => s_axi_arvalid,
      O => \FSM_onehot_lite_sm_cs[0]_i_1_n_0\
    );
\FSM_onehot_lite_sm_cs[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      O => \FSM_onehot_lite_sm_cs[1]_i_1_n_0\
    );
\FSM_onehot_lite_sm_cs[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      O => \FSM_onehot_lite_sm_cs[2]_i_1_n_0\
    );
\FSM_onehot_lite_sm_cs[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA8888888"
    )
        port map (
      I0 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => bram_en_a_INST_0_i_2_n_0,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => \FSM_onehot_lite_sm_cs[5]_i_2_n_0\,
      O => \FSM_onehot_lite_sm_cs[5]_i_1_n_0\
    );
\FSM_onehot_lite_sm_cs[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      O => \FSM_onehot_lite_sm_cs[5]_i_2_n_0\
    );
\FSM_onehot_lite_sm_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_lite_sm_cs[5]_i_1_n_0\,
      D => \FSM_onehot_lite_sm_cs[0]_i_1_n_0\,
      Q => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      S => \^bram_rst_a\
    );
\FSM_onehot_lite_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_lite_sm_cs[5]_i_1_n_0\,
      D => \FSM_onehot_lite_sm_cs[1]_i_1_n_0\,
      Q => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      R => \^bram_rst_a\
    );
\FSM_onehot_lite_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_lite_sm_cs[5]_i_1_n_0\,
      D => \FSM_onehot_lite_sm_cs[2]_i_1_n_0\,
      Q => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      R => \^bram_rst_a\
    );
\FSM_onehot_lite_sm_cs_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_lite_sm_cs[5]_i_1_n_0\,
      D => '0',
      Q => \FSM_onehot_lite_sm_cs_reg_n_0_[3]\,
      R => \^bram_rst_a\
    );
\FSM_onehot_lite_sm_cs_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_lite_sm_cs[5]_i_1_n_0\,
      D => '0',
      Q => \FSM_onehot_lite_sm_cs_reg_n_0_[4]\,
      R => \^bram_rst_a\
    );
\FSM_onehot_lite_sm_cs_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_lite_sm_cs[5]_i_1_n_0\,
      D => '0',
      Q => \FSM_onehot_lite_sm_cs_reg_n_0_[5]\,
      R => \^bram_rst_a\
    );
\GEN_ARREADY.axi_arready_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00D500D500"
    )
        port map (
      I0 => axi_aresetn_d1,
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_aresetn,
      I4 => s_axi_arvalid,
      I5 => \^s_axi_arready\,
      O => \GEN_ARREADY.axi_arready_int_i_1_n_0\
    );
\GEN_ARREADY.axi_arready_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_ARREADY.axi_arready_int_i_1_n_0\,
      Q => \^s_axi_arready\,
      R => '0'
    );
\GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_BID_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_bid(0),
      O => \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_BID_int_reg[0]\
    );
\GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_RID_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_arid(0),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => s_axi_rid(0),
      O => \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_RID_int_reg[0]\
    );
\GEN_R.axi_rvalid_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00E000E000"
    )
        port map (
      I0 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I1 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I2 => s_axi_arvalid,
      I3 => s_axi_aresetn,
      I4 => s_axi_rready,
      I5 => \^s_axi_rvalid\,
      O => \GEN_R.axi_rvalid_int_i_1_n_0\
    );
\GEN_R.axi_rvalid_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_R.axi_rvalid_int_i_1_n_0\,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
axi_aresetn_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_aresetn,
      Q => axi_aresetn_d1,
      R => '0'
    );
axi_bvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8AAA8AAA8AAA8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => bvalid_cnt(2),
      I2 => bvalid_cnt(1),
      I3 => bvalid_cnt(0),
      I4 => \^s_axi_bvalid\,
      I5 => s_axi_bready,
      O => axi_bvalid_int_i_1_n_0
    );
axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_int_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
axi_wready_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000007F0000"
    )
        port map (
      I0 => bvalid_cnt(0),
      I1 => bvalid_cnt(2),
      I2 => bvalid_cnt(1),
      I3 => s_axi_arvalid,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I5 => bram_en_a_INST_0_i_1_n_0,
      O => axi_wready_cmb
    );
axi_wready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready_cmb,
      Q => \^s_axi_awready\,
      R => \^bram_rst_a\
    );
\bram_addr_a[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(8),
      O => bram_addr_a(8)
    );
\bram_addr_a[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(9),
      O => bram_addr_a(9)
    );
\bram_addr_a[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(10),
      O => bram_addr_a(10)
    );
\bram_addr_a[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(11),
      O => bram_addr_a(11)
    );
\bram_addr_a[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(12),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(12),
      O => bram_addr_a(12)
    );
\bram_addr_a[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(0),
      O => bram_addr_a(0)
    );
\bram_addr_a[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(1),
      O => bram_addr_a(1)
    );
\bram_addr_a[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(2),
      O => bram_addr_a(2)
    );
\bram_addr_a[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(3),
      O => bram_addr_a(3)
    );
\bram_addr_a[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(4),
      O => bram_addr_a(4)
    );
\bram_addr_a[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(5),
      O => bram_addr_a(5)
    );
\bram_addr_a[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(6),
      O => bram_addr_a(6)
    );
\bram_addr_a[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEA0000222A"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => s_axi_arvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_lite_sm_cs_reg_n_0_[1]\,
      I5 => s_axi_araddr(7),
      O => bram_addr_a(7)
    );
bram_en_a_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F00000F4000000"
    )
        port map (
      I0 => bram_en_a_INST_0_i_1_n_0,
      I1 => bram_en_a_INST_0_i_2_n_0,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I4 => s_axi_aresetn,
      I5 => \FSM_onehot_lite_sm_cs_reg_n_0_[2]\,
      O => bram_en_a
    );
bram_en_a_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => bram_en_a_INST_0_i_1_n_0
    );
bram_en_a_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => bvalid_cnt(1),
      I1 => bvalid_cnt(2),
      I2 => bvalid_cnt(0),
      O => bram_en_a_INST_0_i_2_n_0
    );
bram_rst_a_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^bram_rst_a\
    );
\bram_we_a[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I1 => \bram_we_a[3]_INST_0_i_1_n_0\,
      I2 => s_axi_wstrb(0),
      O => bram_we_a(0)
    );
\bram_we_a[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I1 => \bram_we_a[3]_INST_0_i_1_n_0\,
      I2 => s_axi_wstrb(1),
      O => bram_we_a(1)
    );
\bram_we_a[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I1 => \bram_we_a[3]_INST_0_i_1_n_0\,
      I2 => s_axi_wstrb(2),
      O => bram_we_a(2)
    );
\bram_we_a[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I1 => \bram_we_a[3]_INST_0_i_1_n_0\,
      I2 => s_axi_wstrb(3),
      O => bram_we_a(3)
    );
\bram_we_a[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F000000000000"
    )
        port map (
      I0 => bvalid_cnt(0),
      I1 => bvalid_cnt(2),
      I2 => bvalid_cnt(1),
      I3 => s_axi_arvalid,
      I4 => s_axi_awvalid,
      I5 => s_axi_wvalid,
      O => \bram_we_a[3]_INST_0_i_1_n_0\
    );
\bvalid_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F956A956A956A55"
    )
        port map (
      I0 => \bvalid_cnt[2]_i_2_n_0\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid\,
      I3 => bvalid_cnt(0),
      I4 => bvalid_cnt(1),
      I5 => bvalid_cnt(2),
      O => \bvalid_cnt[0]_i_1_n_0\
    );
\bvalid_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F1580EA7F1500"
    )
        port map (
      I0 => \bvalid_cnt[2]_i_2_n_0\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid\,
      I3 => bvalid_cnt(0),
      I4 => bvalid_cnt(1),
      I5 => bvalid_cnt(2),
      O => \bvalid_cnt[1]_i_1_n_0\
    );
\bvalid_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F15000000"
    )
        port map (
      I0 => \bvalid_cnt[2]_i_2_n_0\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid\,
      I3 => bvalid_cnt(0),
      I4 => bvalid_cnt(1),
      I5 => bvalid_cnt(2),
      O => \bvalid_cnt[2]_i_1_n_0\
    );
\bvalid_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \FSM_onehot_lite_sm_cs_reg_n_0_[0]\,
      I3 => s_axi_arvalid,
      O => \bvalid_cnt[2]_i_2_n_0\
    );
\bvalid_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[0]_i_1_n_0\,
      Q => bvalid_cnt(0),
      R => \^bram_rst_a\
    );
\bvalid_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[1]_i_1_n_0\,
      Q => bvalid_cnt(1),
      R => \^bram_rst_a\
    );
\bvalid_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[2]_i_1_n_0\,
      Q => bvalid_cnt(2),
      R => \^bram_rst_a\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_keymem_ctrl_axi_bram_ctrl_top is
  port (
    s_axi_rvalid : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_keymem_ctrl_axi_bram_ctrl_top : entity is "axi_bram_ctrl_top";
end axi_keymem_ctrl_axi_bram_ctrl_top;

architecture STRUCTURE of axi_keymem_ctrl_axi_bram_ctrl_top is
  signal \GEN_AXI4LITE.I_AXI_LITE_n_5\ : STD_LOGIC;
  signal \GEN_AXI4LITE.I_AXI_LITE_n_6\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  SR(0) <= \^sr\(0);
  s_axi_bid(0) <= \^s_axi_bid\(0);
  s_axi_rid(0) <= \^s_axi_rid\(0);
\GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_BID_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_AXI4LITE.I_AXI_LITE_n_5\,
      Q => \^s_axi_bid\(0),
      R => \^sr\(0)
    );
\GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_RID_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_AXI4LITE.I_AXI_LITE_n_6\,
      Q => \^s_axi_rid\(0),
      R => \^sr\(0)
    );
\GEN_AXI4LITE.I_AXI_LITE\: entity work.axi_keymem_ctrl_axi_lite
     port map (
      \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_BID_int_reg[0]\ => \GEN_AXI4LITE.I_AXI_LITE_n_5\,
      \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_RID_int_reg[0]\ => \GEN_AXI4LITE.I_AXI_LITE_n_6\,
      bram_addr_a(12 downto 0) => bram_addr_a(12 downto 0),
      bram_en_a => bram_en_a,
      bram_rst_a => \^sr\(0),
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => \^s_axi_bid\(0),
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rid(0) => \^s_axi_rid\(0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_keymem_ctrl_axi_bram_ctrl is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of axi_keymem_ctrl_axi_bram_ctrl : entity is 13;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of axi_keymem_ctrl_axi_bram_ctrl : entity is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of axi_keymem_ctrl_axi_bram_ctrl : entity is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of axi_keymem_ctrl_axi_bram_ctrl : entity is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of axi_keymem_ctrl_axi_bram_ctrl : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of axi_keymem_ctrl_axi_bram_ctrl : entity is "virtex7";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of axi_keymem_ctrl_axi_bram_ctrl : entity is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of axi_keymem_ctrl_axi_bram_ctrl : entity is 8192;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of axi_keymem_ctrl_axi_bram_ctrl : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of axi_keymem_ctrl_axi_bram_ctrl : entity is 15;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of axi_keymem_ctrl_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of axi_keymem_ctrl_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of axi_keymem_ctrl_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of axi_keymem_ctrl_axi_bram_ctrl : entity is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of axi_keymem_ctrl_axi_bram_ctrl : entity is "AXI4LITE";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of axi_keymem_ctrl_axi_bram_ctrl : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_keymem_ctrl_axi_bram_ctrl : entity is "axi_bram_ctrl";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_keymem_ctrl_axi_bram_ctrl : entity is "yes";
end axi_keymem_ctrl_axi_bram_ctrl;

architecture STRUCTURE of axi_keymem_ctrl_axi_bram_ctrl is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \^bram_rddata_a\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_aclk\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_rlast\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^bram_rddata_a\(31 downto 0) <= bram_rddata_a(31 downto 0);
  \^s_axi_aclk\ <= s_axi_aclk;
  \^s_axi_wdata\(31 downto 0) <= s_axi_wdata(31 downto 0);
  bram_addr_a(14 downto 2) <= \^bram_addr_a\(14 downto 2);
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  bram_addr_b(14) <= \<const0>\;
  bram_addr_b(13) <= \<const0>\;
  bram_addr_b(12) <= \<const0>\;
  bram_addr_b(11) <= \<const0>\;
  bram_addr_b(10) <= \<const0>\;
  bram_addr_b(9) <= \<const0>\;
  bram_addr_b(8) <= \<const0>\;
  bram_addr_b(7) <= \<const0>\;
  bram_addr_b(6) <= \<const0>\;
  bram_addr_b(5) <= \<const0>\;
  bram_addr_b(4) <= \<const0>\;
  bram_addr_b(3) <= \<const0>\;
  bram_addr_b(2) <= \<const0>\;
  bram_addr_b(1) <= \<const0>\;
  bram_addr_b(0) <= \<const0>\;
  bram_clk_a <= \^s_axi_aclk\;
  bram_clk_b <= \<const0>\;
  bram_en_b <= \<const0>\;
  bram_rst_b <= \<const0>\;
  bram_we_b(3) <= \<const0>\;
  bram_we_b(2) <= \<const0>\;
  bram_we_b(1) <= \<const0>\;
  bram_we_b(0) <= \<const0>\;
  bram_wrdata_a(31 downto 0) <= \^s_axi_wdata\(31 downto 0);
  bram_wrdata_b(31) <= \<const0>\;
  bram_wrdata_b(30) <= \<const0>\;
  bram_wrdata_b(29) <= \<const0>\;
  bram_wrdata_b(28) <= \<const0>\;
  bram_wrdata_b(27) <= \<const0>\;
  bram_wrdata_b(26) <= \<const0>\;
  bram_wrdata_b(25) <= \<const0>\;
  bram_wrdata_b(24) <= \<const0>\;
  bram_wrdata_b(23) <= \<const0>\;
  bram_wrdata_b(22) <= \<const0>\;
  bram_wrdata_b(21) <= \<const0>\;
  bram_wrdata_b(20) <= \<const0>\;
  bram_wrdata_b(19) <= \<const0>\;
  bram_wrdata_b(18) <= \<const0>\;
  bram_wrdata_b(17) <= \<const0>\;
  bram_wrdata_b(16) <= \<const0>\;
  bram_wrdata_b(15) <= \<const0>\;
  bram_wrdata_b(14) <= \<const0>\;
  bram_wrdata_b(13) <= \<const0>\;
  bram_wrdata_b(12) <= \<const0>\;
  bram_wrdata_b(11) <= \<const0>\;
  bram_wrdata_b(10) <= \<const0>\;
  bram_wrdata_b(9) <= \<const0>\;
  bram_wrdata_b(8) <= \<const0>\;
  bram_wrdata_b(7) <= \<const0>\;
  bram_wrdata_b(6) <= \<const0>\;
  bram_wrdata_b(5) <= \<const0>\;
  bram_wrdata_b(4) <= \<const0>\;
  bram_wrdata_b(3) <= \<const0>\;
  bram_wrdata_b(2) <= \<const0>\;
  bram_wrdata_b(1) <= \<const0>\;
  bram_wrdata_b(0) <= \<const0>\;
  ecc_interrupt <= \<const0>\;
  ecc_ue <= \<const0>\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
  s_axi_rdata(31 downto 0) <= \^bram_rddata_a\(31 downto 0);
  s_axi_rlast <= \^s_axi_rlast\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \^s_axi_rlast\;
  s_axi_wready <= \^s_axi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gext_inst.abcv4_0_ext_inst\: entity work.axi_keymem_ctrl_axi_bram_ctrl_top
     port map (
      SR(0) => bram_rst_a,
      bram_addr_a(12 downto 0) => \^bram_addr_a\(14 downto 2),
      bram_en_a => bram_en_a,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(12 downto 0) => s_axi_araddr(14 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(14 downto 2),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => \^s_axi_rlast\,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_keymem_ctrl is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_keymem_ctrl : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_keymem_ctrl : entity is "axi_keymem_ctrl,axi_bram_ctrl,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of axi_keymem_ctrl : entity is "axi_keymem_ctrl,axi_bram_ctrl,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_bram_ctrl,x_ipVersion=4.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_BRAM_INST_MODE=EXTERNAL,C_MEMORY_DEPTH=8192,C_BRAM_ADDR_WIDTH=13,C_S_AXI_ADDR_WIDTH=15,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ID_WIDTH=1,C_S_AXI_PROTOCOL=AXI4LITE,C_S_AXI_SUPPORTS_NARROW_BURST=0,C_SINGLE_PORT_BRAM=1,C_FAMILY=virtex7,C_S_AXI_CTRL_ADDR_WIDTH=32,C_S_AXI_CTRL_DATA_WIDTH=32,C_ECC=0,C_ECC_TYPE=0,C_FAULT_INJECT=0,C_ECC_ONOFF_RESET_VALUE=0}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_keymem_ctrl : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of axi_keymem_ctrl : entity is "axi_bram_ctrl,Vivado 2015.2";
end axi_keymem_ctrl;

architecture STRUCTURE of axi_keymem_ctrl is
  signal NLW_U0_bram_clk_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_en_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_rst_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_ue_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_addr_b_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_U0_bram_we_b_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_bram_wrdata_b_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of U0 : label is 13;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of U0 : label is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of U0 : label is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of U0 : label is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "virtex7";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of U0 : label is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of U0 : label is 8192;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 15;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of U0 : label is "AXI4LITE";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of U0 : label is 0;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U0 : label is std.standard.true;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.axi_keymem_ctrl_axi_bram_ctrl
     port map (
      bram_addr_a(14 downto 0) => bram_addr_a(14 downto 0),
      bram_addr_b(14 downto 0) => NLW_U0_bram_addr_b_UNCONNECTED(14 downto 0),
      bram_clk_a => bram_clk_a,
      bram_clk_b => NLW_U0_bram_clk_b_UNCONNECTED,
      bram_en_a => bram_en_a,
      bram_en_b => NLW_U0_bram_en_b_UNCONNECTED,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_rddata_b(31) => '0',
      bram_rddata_b(30) => '0',
      bram_rddata_b(29) => '0',
      bram_rddata_b(28) => '0',
      bram_rddata_b(27) => '0',
      bram_rddata_b(26) => '0',
      bram_rddata_b(25) => '0',
      bram_rddata_b(24) => '0',
      bram_rddata_b(23) => '0',
      bram_rddata_b(22) => '0',
      bram_rddata_b(21) => '0',
      bram_rddata_b(20) => '0',
      bram_rddata_b(19) => '0',
      bram_rddata_b(18) => '0',
      bram_rddata_b(17) => '0',
      bram_rddata_b(16) => '0',
      bram_rddata_b(15) => '0',
      bram_rddata_b(14) => '0',
      bram_rddata_b(13) => '0',
      bram_rddata_b(12) => '0',
      bram_rddata_b(11) => '0',
      bram_rddata_b(10) => '0',
      bram_rddata_b(9) => '0',
      bram_rddata_b(8) => '0',
      bram_rddata_b(7) => '0',
      bram_rddata_b(6) => '0',
      bram_rddata_b(5) => '0',
      bram_rddata_b(4) => '0',
      bram_rddata_b(3) => '0',
      bram_rddata_b(2) => '0',
      bram_rddata_b(1) => '0',
      bram_rddata_b(0) => '0',
      bram_rst_a => bram_rst_a,
      bram_rst_b => NLW_U0_bram_rst_b_UNCONNECTED,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_we_b(3 downto 0) => NLW_U0_bram_we_b_UNCONNECTED(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      bram_wrdata_b(31 downto 0) => NLW_U0_bram_wrdata_b_UNCONNECTED(31 downto 0),
      ecc_interrupt => NLW_U0_ecc_interrupt_UNCONNECTED,
      ecc_ue => NLW_U0_ecc_ue_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(14 downto 0) => s_axi_araddr(14 downto 0),
      s_axi_arburst(1) => '0',
      s_axi_arburst(0) => '0',
      s_axi_arcache(3) => '0',
      s_axi_arcache(2) => '0',
      s_axi_arcache(1) => '0',
      s_axi_arcache(0) => '0',
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => '0',
      s_axi_arlen(7) => '0',
      s_axi_arlen(6) => '0',
      s_axi_arlen(5) => '0',
      s_axi_arlen(4) => '0',
      s_axi_arlen(3) => '0',
      s_axi_arlen(2) => '0',
      s_axi_arlen(1) => '0',
      s_axi_arlen(0) => '0',
      s_axi_arlock => '0',
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2) => '0',
      s_axi_arsize(1) => '0',
      s_axi_arsize(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(14 downto 0) => s_axi_awaddr(14 downto 0),
      s_axi_awburst(1) => '0',
      s_axi_awburst(0) => '0',
      s_axi_awcache(3) => '0',
      s_axi_awcache(2) => '0',
      s_axi_awcache(1) => '0',
      s_axi_awcache(0) => '0',
      s_axi_awid(0) => '0',
      s_axi_awlen(7) => '0',
      s_axi_awlen(6) => '0',
      s_axi_awlen(5) => '0',
      s_axi_awlen(4) => '0',
      s_axi_awlen(3) => '0',
      s_axi_awlen(2) => '0',
      s_axi_awlen(1) => '0',
      s_axi_awlen(0) => '0',
      s_axi_awlock => '0',
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2) => '0',
      s_axi_awsize(1) => '0',
      s_axi_awsize(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_ctrl_araddr(31) => '0',
      s_axi_ctrl_araddr(30) => '0',
      s_axi_ctrl_araddr(29) => '0',
      s_axi_ctrl_araddr(28) => '0',
      s_axi_ctrl_araddr(27) => '0',
      s_axi_ctrl_araddr(26) => '0',
      s_axi_ctrl_araddr(25) => '0',
      s_axi_ctrl_araddr(24) => '0',
      s_axi_ctrl_araddr(23) => '0',
      s_axi_ctrl_araddr(22) => '0',
      s_axi_ctrl_araddr(21) => '0',
      s_axi_ctrl_araddr(20) => '0',
      s_axi_ctrl_araddr(19) => '0',
      s_axi_ctrl_araddr(18) => '0',
      s_axi_ctrl_araddr(17) => '0',
      s_axi_ctrl_araddr(16) => '0',
      s_axi_ctrl_araddr(15) => '0',
      s_axi_ctrl_araddr(14) => '0',
      s_axi_ctrl_araddr(13) => '0',
      s_axi_ctrl_araddr(12) => '0',
      s_axi_ctrl_araddr(11) => '0',
      s_axi_ctrl_araddr(10) => '0',
      s_axi_ctrl_araddr(9) => '0',
      s_axi_ctrl_araddr(8) => '0',
      s_axi_ctrl_araddr(7) => '0',
      s_axi_ctrl_araddr(6) => '0',
      s_axi_ctrl_araddr(5) => '0',
      s_axi_ctrl_araddr(4) => '0',
      s_axi_ctrl_araddr(3) => '0',
      s_axi_ctrl_araddr(2) => '0',
      s_axi_ctrl_araddr(1) => '0',
      s_axi_ctrl_araddr(0) => '0',
      s_axi_ctrl_arready => NLW_U0_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(31) => '0',
      s_axi_ctrl_awaddr(30) => '0',
      s_axi_ctrl_awaddr(29) => '0',
      s_axi_ctrl_awaddr(28) => '0',
      s_axi_ctrl_awaddr(27) => '0',
      s_axi_ctrl_awaddr(26) => '0',
      s_axi_ctrl_awaddr(25) => '0',
      s_axi_ctrl_awaddr(24) => '0',
      s_axi_ctrl_awaddr(23) => '0',
      s_axi_ctrl_awaddr(22) => '0',
      s_axi_ctrl_awaddr(21) => '0',
      s_axi_ctrl_awaddr(20) => '0',
      s_axi_ctrl_awaddr(19) => '0',
      s_axi_ctrl_awaddr(18) => '0',
      s_axi_ctrl_awaddr(17) => '0',
      s_axi_ctrl_awaddr(16) => '0',
      s_axi_ctrl_awaddr(15) => '0',
      s_axi_ctrl_awaddr(14) => '0',
      s_axi_ctrl_awaddr(13) => '0',
      s_axi_ctrl_awaddr(12) => '0',
      s_axi_ctrl_awaddr(11) => '0',
      s_axi_ctrl_awaddr(10) => '0',
      s_axi_ctrl_awaddr(9) => '0',
      s_axi_ctrl_awaddr(8) => '0',
      s_axi_ctrl_awaddr(7) => '0',
      s_axi_ctrl_awaddr(6) => '0',
      s_axi_ctrl_awaddr(5) => '0',
      s_axi_ctrl_awaddr(4) => '0',
      s_axi_ctrl_awaddr(3) => '0',
      s_axi_ctrl_awaddr(2) => '0',
      s_axi_ctrl_awaddr(1) => '0',
      s_axi_ctrl_awaddr(0) => '0',
      s_axi_ctrl_awready => NLW_U0_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_U0_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_U0_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_U0_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31) => '0',
      s_axi_ctrl_wdata(30) => '0',
      s_axi_ctrl_wdata(29) => '0',
      s_axi_ctrl_wdata(28) => '0',
      s_axi_ctrl_wdata(27) => '0',
      s_axi_ctrl_wdata(26) => '0',
      s_axi_ctrl_wdata(25) => '0',
      s_axi_ctrl_wdata(24) => '0',
      s_axi_ctrl_wdata(23) => '0',
      s_axi_ctrl_wdata(22) => '0',
      s_axi_ctrl_wdata(21) => '0',
      s_axi_ctrl_wdata(20) => '0',
      s_axi_ctrl_wdata(19) => '0',
      s_axi_ctrl_wdata(18) => '0',
      s_axi_ctrl_wdata(17) => '0',
      s_axi_ctrl_wdata(16) => '0',
      s_axi_ctrl_wdata(15) => '0',
      s_axi_ctrl_wdata(14) => '0',
      s_axi_ctrl_wdata(13) => '0',
      s_axi_ctrl_wdata(12) => '0',
      s_axi_ctrl_wdata(11) => '0',
      s_axi_ctrl_wdata(10) => '0',
      s_axi_ctrl_wdata(9) => '0',
      s_axi_ctrl_wdata(8) => '0',
      s_axi_ctrl_wdata(7) => '0',
      s_axi_ctrl_wdata(6) => '0',
      s_axi_ctrl_wdata(5) => '0',
      s_axi_ctrl_wdata(4) => '0',
      s_axi_ctrl_wdata(3) => '0',
      s_axi_ctrl_wdata(2) => '0',
      s_axi_ctrl_wdata(1) => '0',
      s_axi_ctrl_wdata(0) => '0',
      s_axi_ctrl_wready => NLW_U0_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => '0',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
