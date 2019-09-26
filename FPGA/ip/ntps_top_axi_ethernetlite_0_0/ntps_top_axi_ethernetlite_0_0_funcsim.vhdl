-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Thu Sep 26 15:33:56 2019
-- Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/wingel/work/FPGA_NTP_INTERNAL/FPGA_NTP_SERVER/FPGA/ip/ntps_top_axi_ethernetlite_0_0/ntps_top_axi_ethernetlite_0_0_funcsim.vhdl
-- Design      : ntps_top_axi_ethernetlite_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_axi_interface is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \reg_data_out_reg[3]\ : out STD_LOGIC;
    \reg_data_out_reg[15]\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\ : out STD_LOGIC;
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    \MDIO_GEN.mdio_data_out_reg[11]\ : out STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[11]_0\ : out STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[11]_1\ : out STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[12]\ : out STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[13]\ : out STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[14]\ : out STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[15]\ : out STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[3]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \MDIO_GEN.mdio_data_out_reg[11]_2\ : out STD_LOGIC;
    \reg_data_out_reg[1]\ : out STD_LOGIC;
    \reg_data_out_reg[15]_0\ : out STD_LOGIC;
    \reg_data_out_reg[4]\ : out STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[11]_3\ : out STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[11]_4\ : out STD_LOGIC;
    \reg_data_out_reg[31]\ : out STD_LOGIC;
    \reg_data_out_reg[0]\ : out STD_LOGIC;
    \reg_data_out_reg[5]\ : out STD_LOGIC;
    \reg_data_out_reg[2]\ : out STD_LOGIC;
    \reg_data_out_reg[0]_0\ : out STD_LOGIC;
    \reg_data_out_reg[1]_0\ : out STD_LOGIC;
    \reg_data_out_reg[3]_0\ : out STD_LOGIC;
    \reg_data_out_reg[6]\ : out STD_LOGIC;
    \reg_data_out_reg[15]_1\ : out STD_LOGIC;
    tx_intr_en0 : out STD_LOGIC;
    \reg_data_out_reg[15]_2\ : out STD_LOGIC;
    \reg_data_out_reg[14]\ : out STD_LOGIC;
    \reg_data_out_reg[13]\ : out STD_LOGIC;
    \reg_data_out_reg[12]\ : out STD_LOGIC;
    \reg_data_out_reg[11]\ : out STD_LOGIC;
    \reg_data_out_reg[10]\ : out STD_LOGIC;
    \reg_data_out_reg[9]\ : out STD_LOGIC;
    \reg_data_out_reg[8]\ : out STD_LOGIC;
    \reg_data_out_reg[7]\ : out STD_LOGIC;
    \reg_data_out_reg[6]_0\ : out STD_LOGIC;
    \ping_pkt_lenth_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : out STD_LOGIC;
    \MDIO_GEN.mdio_wr_data_reg_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_intr_en0 : out STD_LOGIC;
    \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_48_out : out STD_LOGIC;
    p_21_out : out STD_LOGIC;
    \MDIO_GEN.mdio_reg_addr_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RX_PONG_REG_GEN.pong_rx_status_reg_0\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    reg_access_reg : out STD_LOGIC;
    \MDIO_GEN.mdio_en_i_reg\ : out STD_LOGIC;
    gie_enable_reg : out STD_LOGIC;
    \TX_PONG_REG_GEN.pong_soft_status_reg\ : out STD_LOGIC;
    ping_soft_status_reg : out STD_LOGIC;
    tx_intr_en_reg : out STD_LOGIC;
    rx_intr_en_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_wr_data_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]\ : in STD_LOGIC;
    \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]\ : in STD_LOGIC;
    \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]\ : in STD_LOGIC;
    \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]\ : in STD_LOGIC;
    \reg_data_out_reg[1]_1\ : in STD_LOGIC;
    p_27_in165_in : in STD_LOGIC;
    \reg_data_out_reg[31]_0\ : in STD_LOGIC;
    \reg_data_out_reg[0]_1\ : in STD_LOGIC;
    p_33_in184_in : in STD_LOGIC;
    \reg_data_out_reg[2]_0\ : in STD_LOGIC;
    pong_rx_status : in STD_LOGIC;
    pong_soft_status : in STD_LOGIC;
    ping_soft_status : in STD_LOGIC;
    gie_enable : in STD_LOGIC;
    loopback_en_reg : in STD_LOGIC;
    p_17_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_15_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ping_pkt_lenth_reg[15]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    p_9_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    reg_access : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mdio_en_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_axi_interface : entity is "axi_interface";
end ntps_top_axi_ethernetlite_0_0_axi_interface;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_axi_interface is
  signal \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.bvalid_i_1_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.read_in_prog_i_1_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.read_req_i_1_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.read_req_reg_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.rvalid_i_1_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.write_in_prog_i_1_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\ : STD_LOGIC;
  signal \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5_n_0\ : STD_LOGIC;
  signal \^mdio_gen.mdio_data_out_reg[11]_0\ : STD_LOGIC;
  signal \^mdio_gen.mdio_data_out_reg[11]_1\ : STD_LOGIC;
  signal \^mdio_gen.mdio_data_out_reg[11]_2\ : STD_LOGIC;
  signal \^mdio_gen.mdio_data_out_reg[11]_4\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \^rx_pong_reg_gen.pong_rx_status_reg\ : STD_LOGIC;
  signal \TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2_n_0\ : STD_LOGIC;
  signal arready_i1 : STD_LOGIC;
  signal arready_i2 : STD_LOGIC;
  signal bus2ip_rdce : STD_LOGIC;
  signal gie_enable_i_2_n_0 : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal \^p_21_out\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal \^p_48_out\ : STD_LOGIC;
  signal \ping_pkt_lenth[15]_i_2_n_0\ : STD_LOGIC;
  signal \ping_pkt_lenth[15]_i_3_n_0\ : STD_LOGIC;
  signal ping_rx_status_i_3_n_0 : STD_LOGIC;
  signal read_in_prog : STD_LOGIC;
  signal \reg_data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \reg_data_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \reg_data_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \reg_data_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \reg_data_out[15]_i_11_n_0\ : STD_LOGIC;
  signal \reg_data_out[15]_i_12_n_0\ : STD_LOGIC;
  signal \reg_data_out[15]_i_13_n_0\ : STD_LOGIC;
  signal \reg_data_out[15]_i_14_n_0\ : STD_LOGIC;
  signal \reg_data_out[15]_i_15_n_0\ : STD_LOGIC;
  signal \reg_data_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \reg_data_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \reg_data_out[15]_i_6_n_0\ : STD_LOGIC;
  signal \reg_data_out[15]_i_7_n_0\ : STD_LOGIC;
  signal \reg_data_out[15]_i_8_n_0\ : STD_LOGIC;
  signal \reg_data_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \reg_data_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \reg_data_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \reg_data_out[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_out[31]_i_3_n_0\ : STD_LOGIC;
  signal \reg_data_out[31]_i_4_n_0\ : STD_LOGIC;
  signal \reg_data_out[31]_i_5_n_0\ : STD_LOGIC;
  signal \reg_data_out[31]_i_6_n_0\ : STD_LOGIC;
  signal \reg_data_out[31]_i_7_n_0\ : STD_LOGIC;
  signal \reg_data_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \reg_data_out[3]_i_7_n_0\ : STD_LOGIC;
  signal \reg_data_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \reg_data_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_data_out[5]_i_5_n_0\ : STD_LOGIC;
  signal \reg_data_out[5]_i_6_n_0\ : STD_LOGIC;
  signal \^reg_data_out_reg[0]_0\ : STD_LOGIC;
  signal \^reg_data_out_reg[15]\ : STD_LOGIC;
  signal \^reg_data_out_reg[15]_0\ : STD_LOGIC;
  signal \^reg_data_out_reg[15]_1\ : STD_LOGIC;
  signal \^reg_data_out_reg[1]_0\ : STD_LOGIC;
  signal \^reg_data_out_reg[3]\ : STD_LOGIC;
  signal \^rx_intr_en0\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^tx_intr_en0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[10]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[10]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[15]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[3]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[8]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_en_i_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \RX_PONG_REG_GEN.pong_rx_status_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \TX_PONG_REG_GEN.pong_soft_status_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of gie_enable_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of gie_enable_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ping_pkt_lenth[15]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ping_rx_status_i_3 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ping_soft_status_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg_data_out[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg_data_out[15]_i_12\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg_data_out[15]_i_13\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg_data_out[15]_i_14\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg_data_out[15]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_data_out[15]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg_data_out[15]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_data_out[3]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_data_out[3]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of tx_intr_en_i_1 : label is "soft_lutpair10";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(10 downto 0) <= \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10 downto 0);
  \MDIO_GEN.mdio_data_out_reg[11]_0\ <= \^mdio_gen.mdio_data_out_reg[11]_0\;
  \MDIO_GEN.mdio_data_out_reg[11]_1\ <= \^mdio_gen.mdio_data_out_reg[11]_1\;
  \MDIO_GEN.mdio_data_out_reg[11]_2\ <= \^mdio_gen.mdio_data_out_reg[11]_2\;
  \MDIO_GEN.mdio_data_out_reg[11]_4\ <= \^mdio_gen.mdio_data_out_reg[11]_4\;
  \RX_PONG_REG_GEN.pong_rx_status_reg\ <= \^rx_pong_reg_gen.pong_rx_status_reg\;
  p_21_out <= \^p_21_out\;
  p_48_out <= \^p_48_out\;
  \reg_data_out_reg[0]_0\ <= \^reg_data_out_reg[0]_0\;
  \reg_data_out_reg[15]\ <= \^reg_data_out_reg[15]\;
  \reg_data_out_reg[15]_0\ <= \^reg_data_out_reg[15]_0\;
  \reg_data_out_reg[15]_1\ <= \^reg_data_out_reg[15]_1\;
  \reg_data_out_reg[1]_0\ <= \^reg_data_out_reg[1]_0\;
  \reg_data_out_reg[3]\ <= \^reg_data_out_reg[3]\;
  rx_intr_en0 <= \^rx_intr_en0\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  tx_intr_en0 <= \^tx_intr_en0\;
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE1"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I3 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      O => \^mdio_gen.mdio_data_out_reg[11]_2\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(0),
      Q => s_axi_rdata(0),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(10),
      Q => s_axi_rdata(10),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(11),
      Q => s_axi_rdata(11),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(12),
      Q => s_axi_rdata(12),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(13),
      Q => s_axi_rdata(13),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(14),
      Q => s_axi_rdata(14),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(15),
      Q => s_axi_rdata(15),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(16),
      Q => s_axi_rdata(16),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(17),
      Q => s_axi_rdata(17),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(18),
      Q => s_axi_rdata(18),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(19),
      Q => s_axi_rdata(19),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(1),
      Q => s_axi_rdata(1),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(20),
      Q => s_axi_rdata(20),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(21),
      Q => s_axi_rdata(21),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(22),
      Q => s_axi_rdata(22),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(23),
      Q => s_axi_rdata(23),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(24),
      Q => s_axi_rdata(24),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(25),
      Q => s_axi_rdata(25),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(26),
      Q => s_axi_rdata(26),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(27),
      Q => s_axi_rdata(27),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(28),
      Q => s_axi_rdata(28),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(29),
      Q => s_axi_rdata(29),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(2),
      Q => s_axi_rdata(2),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(30),
      Q => s_axi_rdata(30),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(31),
      Q => s_axi_rdata(31),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(3),
      Q => s_axi_rdata(3),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(4),
      Q => s_axi_rdata(4),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(5),
      Q => s_axi_rdata(5),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(6),
      Q => s_axi_rdata(6),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(7),
      Q => s_axi_rdata(7),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(8),
      Q => s_axi_rdata(8),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => arready_i1,
      D => D(9),
      Q => s_axi_rdata(9),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.arready_i2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => arready_i1,
      Q => arready_i2,
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.awready_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I1 => s_axi_wvalid,
      I2 => \^s_axi_awready\,
      O => p_10_out
    );
\AXI4_LITE_IF_GEN.awready_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_10_out,
      Q => \^s_axi_awready\,
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_arvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => s_axi_awaddr(8),
      O => p_2_in(10)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => s_axi_arvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => s_axi_awaddr(9),
      O => p_2_in(11)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => bus2ip_rdce,
      I1 => s_axi_awvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => s_axi_arvalid,
      O => \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => s_axi_arvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => s_axi_awaddr(10),
      O => p_2_in(12)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => s_axi_awaddr(0),
      O => p_2_in(2)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => s_axi_awaddr(1),
      O => p_2_in(3)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => s_axi_awaddr(2),
      O => p_2_in(4)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => s_axi_awaddr(3),
      O => p_2_in(5)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_arvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => s_axi_awaddr(4),
      O => p_2_in(6)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_arvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => s_axi_awaddr(5),
      O => p_2_in(7)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_arvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => s_axi_awaddr(6),
      O => p_2_in(8)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_arvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => s_axi_awaddr(7),
      O => p_2_in(9)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\,
      D => p_2_in(10),
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\,
      D => p_2_in(11),
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\,
      D => p_2_in(12),
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\,
      D => p_2_in(2),
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\,
      D => p_2_in(3),
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\,
      D => p_2_in(4),
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\,
      D => p_2_in(5),
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(3),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\,
      D => p_2_in(6),
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(4),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\,
      D => p_2_in(7),
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(5),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\,
      D => p_2_in(8),
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i[12]_i_1_n_0\,
      D => p_2_in(9),
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(7),
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bus2ip_rdce_i_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rdce,
      Q => arready_i1,
      R => SS(0)
    );
\AXI4_LITE_IF_GEN.bvalid_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C4C0"
    )
        port map (
      I0 => s_axi_bready,
      I1 => s_axi_aresetn,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_bvalid\,
      O => \AXI4_LITE_IF_GEN.bvalid_i_1_n_0\
    );
\AXI4_LITE_IF_GEN.bvalid_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \AXI4_LITE_IF_GEN.bvalid_i_1_n_0\,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\AXI4_LITE_IF_GEN.read_in_prog_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => bus2ip_rdce,
      I1 => s_axi_arvalid,
      I2 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I3 => read_in_prog,
      O => \AXI4_LITE_IF_GEN.read_in_prog_i_1_n_0\
    );
\AXI4_LITE_IF_GEN.read_in_prog_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD5D5D5"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_bvalid\,
      I4 => s_axi_bready,
      O => read_in_prog
    );
\AXI4_LITE_IF_GEN.read_in_prog_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \AXI4_LITE_IF_GEN.read_in_prog_i_1_n_0\,
      Q => bus2ip_rdce,
      R => '0'
    );
\AXI4_LITE_IF_GEN.read_req_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F04040"
    )
        port map (
      I0 => arready_i1,
      I1 => s_axi_arvalid,
      I2 => s_axi_aresetn,
      I3 => s_axi_rready,
      I4 => \AXI4_LITE_IF_GEN.read_req_reg_n_0\,
      O => \AXI4_LITE_IF_GEN.read_req_i_1_n_0\
    );
\AXI4_LITE_IF_GEN.read_req_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \AXI4_LITE_IF_GEN.read_req_i_1_n_0\,
      Q => \AXI4_LITE_IF_GEN.read_req_reg_n_0\,
      R => '0'
    );
\AXI4_LITE_IF_GEN.rvalid_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080F080"
    )
        port map (
      I0 => \AXI4_LITE_IF_GEN.read_req_reg_n_0\,
      I1 => arready_i1,
      I2 => s_axi_aresetn,
      I3 => \^s_axi_rvalid\,
      I4 => s_axi_rready,
      O => \AXI4_LITE_IF_GEN.rvalid_i_1_n_0\
    );
\AXI4_LITE_IF_GEN.rvalid_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \AXI4_LITE_IF_GEN.rvalid_i_1_n_0\,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
\AXI4_LITE_IF_GEN.write_in_prog_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAEAA"
    )
        port map (
      I0 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I1 => s_axi_awvalid,
      I2 => bus2ip_rdce,
      I3 => s_axi_wvalid,
      I4 => s_axi_arvalid,
      I5 => read_in_prog,
      O => \AXI4_LITE_IF_GEN.write_in_prog_i_1_n_0\
    );
\AXI4_LITE_IF_GEN.write_in_prog_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \AXI4_LITE_IF_GEN.write_in_prog_i_1_n_0\,
      Q => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      R => '0'
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5_n_0\,
      I3 => s_axi_aresetn,
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5_n_0\,
      I3 => s_axi_aresetn,
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5_n_0\,
      I3 => s_axi_aresetn,
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5_n_0\,
      I3 => s_axi_aresetn,
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I1 => s_axi_wvalid,
      I2 => s_axi_aresetn,
      O => WEBWE(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => bus2ip_rdce,
      I1 => s_axi_wstrb(1),
      I2 => s_axi_wstrb(0),
      I3 => s_axi_wstrb(2),
      I4 => s_axi_wstrb(3),
      I5 => \^rx_pong_reg_gen.pong_rx_status_reg\,
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_5_n_0\
    );
\MDIO_GEN.mdio_data_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^mdio_gen.mdio_data_out_reg[11]_2\,
      I1 => bus2ip_rdce,
      I2 => s_axi_aresetn,
      O => E(0)
    );
\MDIO_GEN.mdio_data_out[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I1 => bus2ip_rdce,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I3 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      O => \^mdio_gen.mdio_data_out_reg[11]_0\
    );
\MDIO_GEN.mdio_data_out[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => bus2ip_rdce,
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I2 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      O => \^mdio_gen.mdio_data_out_reg[11]_4\
    );
\MDIO_GEN.mdio_data_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F4"
    )
        port map (
      I0 => \^mdio_gen.mdio_data_out_reg[11]_0\,
      I1 => \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]\,
      I2 => \MDIO_GEN.mdio_wr_data_reg_reg[15]_0\(0),
      I3 => \^mdio_gen.mdio_data_out_reg[11]_1\,
      O => \MDIO_GEN.mdio_data_out_reg[11]\
    );
\MDIO_GEN.mdio_data_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F4"
    )
        port map (
      I0 => \^mdio_gen.mdio_data_out_reg[11]_0\,
      I1 => \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]\,
      I2 => \MDIO_GEN.mdio_wr_data_reg_reg[15]_0\(1),
      I3 => \^mdio_gen.mdio_data_out_reg[11]_1\,
      O => \MDIO_GEN.mdio_data_out_reg[12]\
    );
\MDIO_GEN.mdio_data_out[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F4"
    )
        port map (
      I0 => \^mdio_gen.mdio_data_out_reg[11]_0\,
      I1 => \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]\,
      I2 => \MDIO_GEN.mdio_wr_data_reg_reg[15]_0\(2),
      I3 => \^mdio_gen.mdio_data_out_reg[11]_1\,
      O => \MDIO_GEN.mdio_data_out_reg[13]\
    );
\MDIO_GEN.mdio_data_out[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F4"
    )
        port map (
      I0 => \^mdio_gen.mdio_data_out_reg[11]_0\,
      I1 => \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]\,
      I2 => \MDIO_GEN.mdio_wr_data_reg_reg[15]_0\(3),
      I3 => \^mdio_gen.mdio_data_out_reg[11]_1\,
      O => \MDIO_GEN.mdio_data_out_reg[14]\
    );
\MDIO_GEN.mdio_data_out[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F0F"
    )
        port map (
      I0 => \^mdio_gen.mdio_data_out_reg[11]_2\,
      I1 => bus2ip_rdce,
      I2 => s_axi_aresetn,
      I3 => \^mdio_gen.mdio_data_out_reg[11]_4\,
      O => \MDIO_GEN.mdio_data_out_reg[11]_3\
    );
\MDIO_GEN.mdio_data_out[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F4"
    )
        port map (
      I0 => \^mdio_gen.mdio_data_out_reg[11]_0\,
      I1 => \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]\,
      I2 => \MDIO_GEN.mdio_wr_data_reg_reg[15]_0\(4),
      I3 => \^mdio_gen.mdio_data_out_reg[11]_1\,
      O => \MDIO_GEN.mdio_data_out_reg[15]\
    );
\MDIO_GEN.mdio_data_out[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I1 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I3 => bus2ip_rdce,
      O => \MDIO_GEN.mdio_data_out_reg[3]\
    );
\MDIO_GEN.mdio_data_out[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I1 => bus2ip_rdce,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I3 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      O => \^mdio_gen.mdio_data_out_reg[11]_1\
    );
\MDIO_GEN.mdio_en_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^p_21_out\,
      I2 => mdio_en_i,
      O => \MDIO_GEN.mdio_en_i_reg\
    );
\MDIO_GEN.mdio_reg_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I1 => s_axi_wvalid,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I3 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I5 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      O => \MDIO_GEN.mdio_reg_addr_reg[4]\(0)
    );
\MDIO_GEN.mdio_reg_addr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(3),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(7),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(4),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(5),
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      I5 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      O => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\
    );
\MDIO_GEN.mdio_req_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I1 => s_axi_wvalid,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I5 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      O => \^p_21_out\
    );
\MDIO_GEN.mdio_wr_data_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I1 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I3 => s_axi_wvalid,
      I4 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I5 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      O => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(0)
    );
\RX_PONG_REG_GEN.pong_rx_status_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I5 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      O => \RX_PONG_REG_GEN.pong_rx_status_reg_0\
    );
\RX_PONG_REG_GEN.pong_rx_status_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      O => \^rx_pong_reg_gen.pong_rx_status_reg\
    );
\TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I1 => s_axi_wvalid,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I5 => \TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2_n_0\,
      O => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I4 => \ping_pkt_lenth[15]_i_3_n_0\,
      O => \TX_PONG_REG_GEN.pong_pkt_lenth[15]_i_2_n_0\
    );
\TX_PONG_REG_GEN.pong_soft_status_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^p_48_out\,
      I2 => pong_soft_status,
      O => \TX_PONG_REG_GEN.pong_soft_status_reg\
    );
\TX_PONG_REG_GEN.pong_tx_status_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^rx_pong_reg_gen.pong_rx_status_reg\,
      I1 => \reg_data_out[15]_i_7_n_0\,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      I4 => \reg_data_out[15]_i_12_n_0\,
      I5 => \ping_pkt_lenth[15]_i_3_n_0\,
      O => \^p_48_out\
    );
gie_enable_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I2 => s_axi_wvalid,
      I3 => gie_enable_i_2_n_0,
      I4 => gie_enable,
      O => gie_enable_reg
    );
gie_enable_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => \ping_pkt_lenth[15]_i_2_n_0\,
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      O => gie_enable_i_2_n_0
    );
\ping_pkt_lenth[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I1 => s_axi_wvalid,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I5 => \ping_pkt_lenth[15]_i_2_n_0\,
      O => \ping_pkt_lenth_reg[15]\(0)
    );
\ping_pkt_lenth[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I4 => \ping_pkt_lenth[15]_i_3_n_0\,
      O => \ping_pkt_lenth[15]_i_2_n_0\
    );
\ping_pkt_lenth[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(7),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(3),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(5),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(4),
      O => \ping_pkt_lenth[15]_i_3_n_0\
    );
ping_rx_status_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \^rx_pong_reg_gen.pong_rx_status_reg\,
      I1 => ping_rx_status_i_3_n_0,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I5 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      O => \^rx_intr_en0\
    );
ping_rx_status_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      O => ping_rx_status_i_3_n_0
    );
ping_soft_status_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^tx_intr_en0\,
      I2 => ping_soft_status,
      O => ping_soft_status_reg
    );
ping_tx_status_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \AXI4_LITE_IF_GEN.write_in_prog_reg_n_0\,
      I1 => s_axi_wvalid,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I5 => \ping_pkt_lenth[15]_i_2_n_0\,
      O => \^tx_intr_en0\
    );
reg_access_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I1 => bus2ip_rdce,
      I2 => reg_access,
      O => reg_access_reg
    );
\reg_data_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE20000"
    )
        port map (
      I0 => \reg_data_out_reg[0]_1\,
      I1 => \^reg_data_out_reg[15]_0\,
      I2 => \reg_data_out[0]_i_2_n_0\,
      I3 => \reg_data_out[0]_i_3_n_0\,
      I4 => s_axi_aresetn,
      I5 => \reg_data_out[0]_i_4_n_0\,
      O => \reg_data_out_reg[0]\
    );
\reg_data_out[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[3]\,
      I1 => p_17_in(0),
      I2 => \reg_data_out[15]_i_6_n_0\,
      I3 => p_15_in(0),
      O => \reg_data_out[0]_i_2_n_0\
    );
\reg_data_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFAAAAAAAAAAAA"
    )
        port map (
      I0 => \reg_data_out[0]_i_5_n_0\,
      I1 => pong_rx_status,
      I2 => \reg_data_out[31]_i_6_n_0\,
      I3 => \reg_data_out[0]_i_6_n_0\,
      I4 => \^reg_data_out_reg[0]_0\,
      I5 => \reg_data_out[15]_i_11_n_0\,
      O => \reg_data_out[0]_i_3_n_0\
    );
\reg_data_out[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I3 => bus2ip_rdce,
      I4 => \reg_data_out[15]_i_13_n_0\,
      I5 => \ping_pkt_lenth[15]_i_3_n_0\,
      O => \reg_data_out[0]_i_4_n_0\
    );
\reg_data_out[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(0),
      I2 => p_9_in(0),
      I3 => \reg_data_out[31]_i_7_n_0\,
      I4 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(0),
      I5 => \^reg_data_out_reg[15]_1\,
      O => \reg_data_out[0]_i_5_n_0\
    );
\reg_data_out[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0400FFFF"
    )
        port map (
      I0 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I1 => \reg_data_out[15]_i_7_n_0\,
      I2 => \reg_data_out[5]_i_6_n_0\,
      I3 => bus2ip_rdce,
      I4 => Q(0),
      I5 => \reg_data_out[0]_i_4_n_0\,
      O => \reg_data_out[0]_i_6_n_0\
    );
\reg_data_out[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(9),
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(9),
      O => \reg_data_out_reg[10]\
    );
\reg_data_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(10),
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(10),
      O => \reg_data_out_reg[11]\
    );
\reg_data_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(11),
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(11),
      O => \reg_data_out_reg[12]\
    );
\reg_data_out[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(12),
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(12),
      O => \reg_data_out_reg[13]\
    );
\reg_data_out[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(13),
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(13),
      O => \reg_data_out_reg[14]\
    );
\reg_data_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFBFAAAA"
    )
        port map (
      I0 => \reg_data_out[15]_i_4_n_0\,
      I1 => \reg_data_out[15]_i_5_n_0\,
      I2 => s_axi_aresetn,
      I3 => \reg_data_out[15]_i_6_n_0\,
      I4 => bus2ip_rdce,
      I5 => \reg_data_out[15]_i_7_n_0\,
      O => \reg_data_out_reg[6]\
    );
\reg_data_out[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => bus2ip_rdce,
      I1 => \reg_data_out[15]_i_14_n_0\,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      I4 => \reg_data_out[15]_i_12_n_0\,
      I5 => \ping_pkt_lenth[15]_i_3_n_0\,
      O => \^reg_data_out_reg[15]_1\
    );
\reg_data_out[15]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \ping_pkt_lenth[15]_i_3_n_0\,
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I2 => \reg_data_out[15]_i_15_n_0\,
      I3 => \reg_data_out[15]_i_7_n_0\,
      I4 => bus2ip_rdce,
      O => \reg_data_out[15]_i_11_n_0\
    );
\reg_data_out[15]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      O => \reg_data_out[15]_i_12_n_0\
    );
\reg_data_out[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      O => \reg_data_out[15]_i_13_n_0\
    );
\reg_data_out[15]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      O => \reg_data_out[15]_i_14_n_0\
    );
\reg_data_out[15]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      O => \reg_data_out[15]_i_15_n_0\
    );
\reg_data_out[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBFFFFFFFBFF"
    )
        port map (
      I0 => \reg_data_out[15]_i_8_n_0\,
      I1 => \^reg_data_out_reg[15]\,
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \reg_data_out[15]_i_11_n_0\,
      I4 => bus2ip_rdce,
      I5 => \reg_data_out[15]_i_7_n_0\,
      O => \^reg_data_out_reg[15]_0\
    );
\reg_data_out[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(14),
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(14),
      O => \reg_data_out_reg[15]_2\
    );
\reg_data_out[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \reg_data_out[15]_i_8_n_0\,
      I2 => \reg_data_out[15]_i_11_n_0\,
      O => \reg_data_out[15]_i_4_n_0\
    );
\reg_data_out[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^reg_data_out_reg[15]_1\,
      I1 => \^reg_data_out_reg[15]\,
      O => \reg_data_out[15]_i_5_n_0\
    );
\reg_data_out[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => bus2ip_rdce,
      I1 => \reg_data_out[15]_i_7_n_0\,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      I4 => \reg_data_out[15]_i_12_n_0\,
      I5 => \ping_pkt_lenth[15]_i_3_n_0\,
      O => \reg_data_out[15]_i_6_n_0\
    );
\reg_data_out[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      O => \reg_data_out[15]_i_7_n_0\
    );
\reg_data_out[15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => bus2ip_rdce,
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I2 => \reg_data_out[15]_i_7_n_0\,
      I3 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I4 => \reg_data_out[0]_i_4_n_0\,
      O => \reg_data_out[15]_i_8_n_0\
    );
\reg_data_out[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFFFFFF"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      I3 => \reg_data_out[15]_i_13_n_0\,
      I4 => \ping_pkt_lenth[15]_i_3_n_0\,
      I5 => bus2ip_rdce,
      O => \^reg_data_out_reg[15]\
    );
\reg_data_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => \reg_data_out[15]_i_8_n_0\,
      I1 => s_axi_aresetn,
      I2 => \reg_data_out_reg[1]_1\,
      I3 => \^reg_data_out_reg[15]_0\,
      I4 => \reg_data_out[1]_i_2_n_0\,
      O => \reg_data_out_reg[1]\
    );
\reg_data_out[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2E22"
    )
        port map (
      I0 => \reg_data_out[1]_i_3_n_0\,
      I1 => \^reg_data_out_reg[0]_0\,
      I2 => \^reg_data_out_reg[1]_0\,
      I3 => Q(1),
      I4 => \reg_data_out[1]_i_4_n_0\,
      O => \reg_data_out[1]_i_2_n_0\
    );
\reg_data_out[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(1),
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(1),
      O => \reg_data_out[1]_i_3_n_0\
    );
\reg_data_out[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[3]\,
      I1 => p_17_in(1),
      I2 => p_15_in(1),
      I3 => \reg_data_out[15]_i_6_n_0\,
      O => \reg_data_out[1]_i_4_n_0\
    );
\reg_data_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \reg_data_out_reg[2]_0\,
      I1 => \^reg_data_out_reg[15]_0\,
      I2 => \reg_data_out[2]_i_2_n_0\,
      I3 => \reg_data_out[15]_i_4_n_0\,
      O => \reg_data_out_reg[2]\
    );
\reg_data_out[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => Q(2),
      I1 => \^reg_data_out_reg[1]_0\,
      I2 => \^reg_data_out_reg[0]_0\,
      I3 => \reg_data_out[2]_i_3_n_0\,
      O => \reg_data_out[2]_i_2_n_0\
    );
\reg_data_out[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(2),
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(2),
      O => \reg_data_out[2]_i_3_n_0\
    );
\reg_data_out[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => \reg_data_out_reg[31]_0\,
      I1 => \^reg_data_out_reg[15]_0\,
      I2 => \reg_data_out[31]_i_2_n_0\,
      I3 => s_axi_aresetn,
      I4 => \reg_data_out[31]_i_3_n_0\,
      O => \reg_data_out_reg[31]\
    );
\reg_data_out[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAFEAAAEAAAEAAA"
    )
        port map (
      I0 => \reg_data_out[31]_i_4_n_0\,
      I1 => \reg_data_out[15]_i_6_n_0\,
      I2 => \reg_data_out[31]_i_5_n_0\,
      I3 => pong_soft_status,
      I4 => ping_soft_status,
      I5 => bus2ip_rdce,
      O => \reg_data_out[31]_i_2_n_0\
    );
\reg_data_out[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF5D55"
    )
        port map (
      I0 => \reg_data_out[31]_i_6_n_0\,
      I1 => gie_enable_i_2_n_0,
      I2 => \reg_data_out[15]_i_7_n_0\,
      I3 => bus2ip_rdce,
      I4 => \reg_data_out[31]_i_7_n_0\,
      I5 => \^reg_data_out_reg[15]_1\,
      O => \reg_data_out[31]_i_3_n_0\
    );
\reg_data_out[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA00000000"
    )
        port map (
      I0 => \reg_data_out[0]_i_4_n_0\,
      I1 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I2 => \reg_data_out[15]_i_7_n_0\,
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I5 => gie_enable,
      O => \reg_data_out[31]_i_4_n_0\
    );
\reg_data_out[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \ping_pkt_lenth[15]_i_3_n_0\,
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      I5 => \reg_data_out[15]_i_7_n_0\,
      O => \reg_data_out[31]_i_5_n_0\
    );
\reg_data_out[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \ping_pkt_lenth[15]_i_3_n_0\,
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I2 => \reg_data_out[15]_i_15_n_0\,
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I4 => \reg_data_out[15]_i_7_n_0\,
      I5 => bus2ip_rdce,
      O => \reg_data_out[31]_i_6_n_0\
    );
\reg_data_out[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => bus2ip_rdce,
      I1 => \reg_data_out[15]_i_7_n_0\,
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I3 => \ping_pkt_lenth[15]_i_3_n_0\,
      I4 => \reg_data_out[15]_i_15_n_0\,
      I5 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      O => \reg_data_out[31]_i_7_n_0\
    );
\reg_data_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
        port map (
      I0 => \reg_data_out[15]_i_7_n_0\,
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      I2 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      I3 => \reg_data_out[3]_i_5_n_0\,
      I4 => \ping_pkt_lenth[15]_i_3_n_0\,
      I5 => bus2ip_rdce,
      O => \^reg_data_out_reg[3]\
    );
\reg_data_out[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \reg_data_out[3]_i_7_n_0\,
      I1 => s_axi_aresetn,
      I2 => \reg_data_out[15]_i_6_n_0\,
      O => \reg_data_out_reg[3]_0\
    );
\reg_data_out[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      O => \reg_data_out[3]_i_5_n_0\
    );
\reg_data_out[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \reg_data_out[0]_i_4_n_0\,
      I1 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I2 => \reg_data_out[15]_i_7_n_0\,
      I3 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I4 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      I5 => bus2ip_rdce,
      O => \reg_data_out[3]_i_7_n_0\
    );
\reg_data_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044400040"
    )
        port map (
      I0 => \reg_data_out[15]_i_8_n_0\,
      I1 => s_axi_aresetn,
      I2 => p_27_in165_in,
      I3 => \^reg_data_out_reg[15]_0\,
      I4 => \reg_data_out[4]_i_2_n_0\,
      I5 => \reg_data_out[15]_i_6_n_0\,
      O => \reg_data_out_reg[4]\
    );
\reg_data_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22FFFF2E222E22"
    )
        port map (
      I0 => \reg_data_out[4]_i_3_n_0\,
      I1 => \^reg_data_out_reg[0]_0\,
      I2 => \^reg_data_out_reg[1]_0\,
      I3 => Q(3),
      I4 => \^reg_data_out_reg[3]\,
      I5 => loopback_en_reg,
      O => \reg_data_out[4]_i_2_n_0\
    );
\reg_data_out[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^reg_data_out_reg[15]_1\,
      I1 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(3),
      I2 => \^reg_data_out_reg[15]\,
      I3 => \ping_pkt_lenth_reg[15]_0\(3),
      O => \reg_data_out[4]_i_3_n_0\
    );
\reg_data_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => p_33_in184_in,
      I1 => \^reg_data_out_reg[15]_0\,
      I2 => \reg_data_out[5]_i_2_n_0\,
      I3 => \reg_data_out[15]_i_4_n_0\,
      O => \reg_data_out_reg[5]\
    );
\reg_data_out[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => Q(4),
      I1 => \^reg_data_out_reg[1]_0\,
      I2 => \^reg_data_out_reg[0]_0\,
      I3 => \reg_data_out[5]_i_5_n_0\,
      O => \reg_data_out[5]_i_2_n_0\
    );
\reg_data_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0020FFFFFFFF"
    )
        port map (
      I0 => bus2ip_rdce,
      I1 => \reg_data_out[5]_i_6_n_0\,
      I2 => \reg_data_out[15]_i_7_n_0\,
      I3 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I4 => \reg_data_out[0]_i_4_n_0\,
      I5 => \reg_data_out[15]_i_11_n_0\,
      O => \^reg_data_out_reg[1]_0\
    );
\reg_data_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222202222222222"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \^reg_data_out_reg[15]_1\,
      I2 => \MDIO_GEN.mdio_reg_addr[4]_i_2_n_0\,
      I3 => \reg_data_out[15]_i_7_n_0\,
      I4 => ping_rx_status_i_3_n_0,
      I5 => bus2ip_rdce,
      O => \^reg_data_out_reg[0]_0\
    );
\reg_data_out[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^reg_data_out_reg[15]_1\,
      I1 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(4),
      I2 => \^reg_data_out_reg[15]\,
      I3 => \ping_pkt_lenth_reg[15]_0\(4),
      O => \reg_data_out[5]_i_5_n_0\
    );
\reg_data_out[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      I1 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      O => \reg_data_out[5]_i_6_n_0\
    );
\reg_data_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(5),
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(5),
      O => \reg_data_out_reg[6]_0\
    );
\reg_data_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(6),
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(6),
      O => \reg_data_out_reg[7]\
    );
\reg_data_out[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(7),
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(7),
      O => \reg_data_out_reg[8]\
    );
\reg_data_out[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^reg_data_out_reg[15]\,
      I1 => \ping_pkt_lenth_reg[15]_0\(8),
      I2 => \^reg_data_out_reg[15]_1\,
      I3 => \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(8),
      O => \reg_data_out_reg[9]\
    );
rx_intr_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^rx_intr_en0\,
      I2 => p_9_in(1),
      O => rx_intr_en_reg
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => arready_i1,
      I1 => arready_i2,
      O => s_axi_arready
    );
tx_intr_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^tx_intr_en0\,
      I2 => p_17_in(2),
      O => tx_intr_en_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper is
  port (
    \emac_tx_wr_data_d1_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper : entity is "blk_mem_gen_prim_wrapper";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => '0',
      ADDRARDADDR(13 downto 2) => ADDRARDADDR(11 downto 0),
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => '0',
      ADDRBWRADDR(13 downto 5) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      ADDRBWRADDR(4) => '1',
      ADDRBWRADDR(3) => '1',
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => '0',
      DIBDI(31 downto 0) => s_axi_wdata(31 downto 0),
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 4) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 4),
      DOADO(3 downto 0) => \emac_tx_wr_data_d1_reg[0]\(3 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72\,
      DOPBDOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      ENBWREN => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => '0',
      WEA(2) => '0',
      WEA(1) => '0',
      WEA(0) => '0',
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_10 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_idle : in STD_LOGIC;
    \TX_PONG_GEN.tx_pong_ping_l_reg_0\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_10 : entity is "blk_mem_gen_prim_wrapper";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_10;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_10 is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal \^doado\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  DOADO(3 downto 0) <= \^doado\(3 downto 0);
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => '0',
      ADDRARDADDR(13 downto 2) => ADDRARDADDR(11 downto 0),
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => '0',
      ADDRBWRADDR(13 downto 5) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      ADDRBWRADDR(4) => '1',
      ADDRBWRADDR(3) => '1',
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => '0',
      DIBDI(31 downto 0) => s_axi_wdata(31 downto 0),
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 4) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 4),
      DOADO(3 downto 0) => \^doado\(3 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72\,
      DOPBDOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      ENBWREN => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => '0',
      WEA(2) => '0',
      WEA(1) => '0',
      WEA(0) => '0',
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
ram16x1_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^doado\(0),
      I1 => tx_idle,
      I2 => \TX_PONG_GEN.tx_pong_ping_l_reg_0\,
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      O => \rdDestAddrNib_D_t_q_reg[2]\(0)
    );
ram16x1_1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^doado\(1),
      I1 => tx_idle,
      I2 => \TX_PONG_GEN.tx_pong_ping_l_reg_0\,
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(1),
      O => \rdDestAddrNib_D_t_q_reg[2]\(1)
    );
ram16x1_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^doado\(2),
      I1 => tx_idle,
      I2 => \TX_PONG_GEN.tx_pong_ping_l_reg_0\,
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(2),
      O => \rdDestAddrNib_D_t_q_reg[2]\(2)
    );
ram16x1_3_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^doado\(3),
      I1 => tx_idle,
      I2 => \TX_PONG_GEN.tx_pong_ping_l_reg_0\,
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(3),
      O => \rdDestAddrNib_D_t_q_reg[2]\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_17 is
  port (
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    reg_access_reg : in STD_LOGIC;
    \reg_data_out_reg[0]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \reg_data_out_reg[1]\ : in STD_LOGIC;
    \reg_data_out_reg[2]\ : in STD_LOGIC;
    p_21_in : in STD_LOGIC;
    p_27_in165_in : in STD_LOGIC;
    p_33_in184_in : in STD_LOGIC;
    p_39_in204_in : in STD_LOGIC;
    p_45_in221_in : in STD_LOGIC;
    p_51_in : in STD_LOGIC;
    p_57_in257_in : in STD_LOGIC;
    p_63_in273_in : in STD_LOGIC;
    p_69_in : in STD_LOGIC;
    p_68_in290_in : in STD_LOGIC;
    p_75_in : in STD_LOGIC;
    p_74_in308_in : in STD_LOGIC;
    p_81_in330_in : in STD_LOGIC;
    p_80_in328_in : in STD_LOGIC;
    p_87_in351_in : in STD_LOGIC;
    p_86_in349_in : in STD_LOGIC;
    p_93_in : in STD_LOGIC;
    p_92_in370_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_17 : entity is "blk_mem_gen_prim_wrapper";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_17;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_17 is
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_2_n_0\ : STD_LOGIC;
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_2_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal p_5_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_1\ : label is "soft_lutpair80";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_data_out_reg[0]\,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => \MDIO_GEN.mdio_data_out_reg[10]\(0),
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_2_n_0\,
      O => D(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(0),
      I1 => DOBDO(0),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[0]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_63_in273_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => \MDIO_GEN.mdio_data_out_reg[10]\(10),
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_2_n_0\,
      O => D(10)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(10),
      I1 => DOBDO(10),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(10),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(10),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[10]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_69_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => p_68_in290_in,
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_2_n_0\,
      O => D(11)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(11),
      I1 => DOBDO(11),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(11),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(11),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[11]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_75_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => p_74_in308_in,
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_2_n_0\,
      O => D(12)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(12),
      I1 => DOBDO(12),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(12),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(12),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[12]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_81_in330_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => p_80_in328_in,
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_2_n_0\,
      O => D(13)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(13),
      I1 => DOBDO(13),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(13),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(13),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[13]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_87_in351_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => p_86_in349_in,
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_2_n_0\,
      O => D(14)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(14),
      I1 => DOBDO(14),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(14),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(14),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[14]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_93_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => p_92_in370_in,
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_2_n_0\,
      O => D(15)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(15),
      I1 => DOBDO(15),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(15),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(15),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[15]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_2_n_0\,
      O => D(16)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(16),
      I1 => DOBDO(16),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(16),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(16),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[16]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_2_n_0\,
      O => D(17)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(17),
      I1 => DOBDO(17),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(17),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(17),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[17]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_2_n_0\,
      O => D(18)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(18),
      I1 => DOBDO(18),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(18),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(18),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[18]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_2_n_0\,
      O => D(19)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(19),
      I1 => DOBDO(19),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(19),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(19),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[19]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_data_out_reg[1]\,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => \MDIO_GEN.mdio_data_out_reg[10]\(1),
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_2_n_0\,
      O => D(1)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(1),
      I1 => DOBDO(1),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(1),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(1),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[1]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_2_n_0\,
      O => D(20)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(20),
      I1 => DOBDO(20),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(20),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(20),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[20]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_2_n_0\,
      O => D(21)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(21),
      I1 => DOBDO(21),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(21),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(21),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[21]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_2_n_0\,
      O => D(22)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(22),
      I1 => DOBDO(22),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(22),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(22),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[22]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_2_n_0\,
      O => D(23)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(23),
      I1 => DOBDO(23),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(23),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(23),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[23]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_2_n_0\,
      O => D(24)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(24),
      I1 => DOBDO(24),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(24),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(24),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[24]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_2_n_0\,
      O => D(25)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(25),
      I1 => DOBDO(25),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(25),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(25),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[25]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_2_n_0\,
      O => D(26)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(26),
      I1 => DOBDO(26),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(26),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(26),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[26]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_2_n_0\,
      O => D(27)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(27),
      I1 => DOBDO(27),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(27),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(27),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[27]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_2_n_0\,
      O => D(28)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(28),
      I1 => DOBDO(28),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(28),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(28),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[28]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_2_n_0\,
      O => D(29)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(29),
      I1 => DOBDO(29),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(29),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(29),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[29]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \reg_data_out_reg[2]\,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => \MDIO_GEN.mdio_data_out_reg[10]\(2),
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_2_n_0\,
      O => D(2)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(2),
      I1 => DOBDO(2),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(2),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(2),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[2]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_access_reg,
      I1 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_2_n_0\,
      O => D(30)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55000F3355FF0F33"
    )
        port map (
      I0 => p_2_out(30),
      I1 => DOBDO(30),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(30),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[30]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_21_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => \MDIO_GEN.mdio_data_out_reg[10]\(3),
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_2_n_0\,
      O => D(3)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(3),
      I1 => DOBDO(3),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(3),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(3),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[3]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_27_in165_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => \MDIO_GEN.mdio_data_out_reg[10]\(4),
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_2_n_0\,
      O => D(4)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(4),
      I1 => DOBDO(4),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(4),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(4),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[4]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_33_in184_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => \MDIO_GEN.mdio_data_out_reg[10]\(5),
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_2_n_0\,
      O => D(5)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(5),
      I1 => DOBDO(5),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(5),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(5),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[5]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_39_in204_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => \MDIO_GEN.mdio_data_out_reg[10]\(6),
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_2_n_0\,
      O => D(6)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(6),
      I1 => DOBDO(6),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(6),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(6),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[6]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_45_in221_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => \MDIO_GEN.mdio_data_out_reg[10]\(7),
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_2_n_0\,
      O => D(7)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(7),
      I1 => DOBDO(7),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(7),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(7),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[7]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_51_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => \MDIO_GEN.mdio_data_out_reg[10]\(8),
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_2_n_0\,
      O => D(8)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(8),
      I1 => DOBDO(8),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(8),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(8),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[8]_i_2_n_0\
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_57_in257_in,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => \MDIO_GEN.mdio_data_out_reg[10]\(9),
      I3 => reg_access_reg,
      I4 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_2_n_0\,
      O => D(9)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => p_2_out(9),
      I1 => DOBDO(9),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(9),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(9),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(9),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[9]_i_2_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => '0',
      ADDRARDADDR(13 downto 2) => \rxbuffer_addr_reg[0]\(11 downto 0),
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => '0',
      ADDRBWRADDR(13 downto 5) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(8 downto 0),
      ADDRBWRADDR(4) => '1',
      ADDRBWRADDR(3) => '1',
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3 downto 0) => Q(3 downto 0),
      DIBDI(31 downto 0) => s_axi_wdata(31 downto 0),
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 4) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 4),
      DOADO(3 downto 0) => p_5_out(3 downto 0),
      DOBDO(31) => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0),
      DOBDO(30 downto 0) => p_2_out(30 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72\,
      DOPBDOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \gv.ram_valid_d1_reg\,
      ENBWREN => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_24 is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 30 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_data_out_reg[31]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    reg_access_reg : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_24 : entity is "blk_mem_gen_prim_wrapper";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_24;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_24 is
  signal \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_3_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_36\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal p_1_in663_in : STD_LOGIC;
  signal p_3_in666_in : STD_LOGIC;
  signal p_5_in670_in : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \reg_data_out_reg[31]\,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      I2 => reg_access_reg,
      I3 => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_3_n_0\,
      O => D(0)
    );
\AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACCFFF0AACC00"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_36\,
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      I2 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(9),
      I4 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(0),
      O => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled[31]_i_3_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => '0',
      ADDRARDADDR(13 downto 2) => \rxbuffer_addr_reg[0]\(11 downto 0),
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => '0',
      ADDRBWRADDR(13 downto 5) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(8 downto 0),
      ADDRBWRADDR(4) => '1',
      ADDRBWRADDR(3) => '1',
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_axi_aclk,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3 downto 0) => Q(3 downto 0),
      DIBDI(31 downto 0) => s_axi_wdata(31 downto 0),
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 4) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 4),
      DOADO(3) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_32\,
      DOADO(2) => p_5_in670_in,
      DOADO(1) => p_3_in666_in,
      DOADO(0) => p_1_in663_in,
      DOBDO(31) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_36\,
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_72\,
      DOPBDOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_73\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \gv.ram_valid_d1_reg\,
      ENBWREN => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_cdc_sync is
  port (
    scndry_out : out STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    phy_rx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_cdc_sync : entity is "cdc_sync";
end ntps_top_axi_ethernetlite_0_0_cdc_sync;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_cdc_sync is
  signal D : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => SS(0),
      Q => D,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => D,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_cdc_sync_0 is
  port (
    scndry_out : out STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    phy_tx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_cdc_sync_0 : entity is "cdc_sync";
end ntps_top_axi_ethernetlite_0_0_cdc_sync_0;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_cdc_sync_0 is
  signal D : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => SS(0),
      Q => D,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => D,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_cdc_sync_25 is
  port (
    scndry_out : out STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_cdc_sync_25 : entity is "cdc_sync";
end ntps_top_axi_ethernetlite_0_0_cdc_sync_25;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_cdc_sync_25 is
  signal D : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => phy_tx_clk,
      Q => D,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_cdc_sync_30 is
  port (
    scndry_out : out STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    phy_rx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_cdc_sync_30 : entity is "cdc_sync";
end ntps_top_axi_ethernetlite_0_0_cdc_sync_30;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_cdc_sync_30 is
  signal D : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => SS(0),
      Q => D,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => D,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3_n_0\,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized0\ is
  port (
    scndry_out : out STD_LOGIC;
    prmry_in : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized0\ : entity is "cdc_sync";
end \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized0\;

architecture STRUCTURE of \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized0\ is
  signal D : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => prmry_in,
      Q => D,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => D,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized1\ is
  port (
    scndry_vect_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    prmry_vect_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_tx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized1\ : entity is "cdc_sync";
end \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized1\;

architecture STRUCTURE of \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized1\ is
  signal D0_out : STD_LOGIC;
  signal D1_out : STD_LOGIC;
  signal D2_out : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => D2_out,
      Q => scndry_vect_out(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => D1_out,
      Q => scndry_vect_out(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => D0_out,
      Q => scndry_vect_out(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0\,
      Q => scndry_vect_out(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => prmry_vect_in(0),
      Q => D2_out,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => prmry_vect_in(1),
      Q => D1_out,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => prmry_vect_in(2),
      Q => D0_out,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => prmry_vect_in(3),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized2\ is
  port (
    scndry_out : out STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized2\ : entity is "cdc_sync";
end \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized2\;

architecture STRUCTURE of \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized2\ is
  signal D : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => D,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_n_0\,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized3\ is
  port (
    fifo_tx_en_reg : out STD_LOGIC;
    tx_d_rst : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized3\ : entity is "cdc_sync";
end \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized3\;

architecture STRUCTURE of \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized3\ is
  signal D : STD_LOGIC;
  signal tx_en_i_tx_clk : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => prmry_in,
      Q => D,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => D,
      Q => tx_en_i_tx_clk,
      R => '0'
    );
fifo_tx_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_en_i_tx_clk,
      I1 => tx_d_rst,
      O => fifo_tx_en_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized4\ is
  port (
    scndry_out : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized4\ : entity is "cdc_sync";
end \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized4\;

architecture STRUCTURE of \ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized4\ is
  signal D : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => s_axi_aresetn,
      Q => D,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => D,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_cntr5bit is
  port (
    ifgp1_zero : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \thisState_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \thisState_reg[1]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_cntr5bit : entity is "cntr5bit";
end ntps_top_axi_ethernetlite_0_0_cntr5bit;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_cntr5bit is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \count_reg__0\ : STD_LOGIC_VECTOR ( 0 to 2 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal zero_i_i_1_n_0 : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\count[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAB"
    )
        port map (
      I0 => \thisState_reg[1]_0\,
      I1 => \count_reg__0\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \count_reg__0\(1),
      I5 => \count_reg__0\(0),
      O => p_0_in(4)
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FE01FE010000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \count_reg__0\(2),
      I3 => \count_reg__0\(1),
      I4 => \thisState_reg[1]\(0),
      I5 => \thisState_reg[1]\(1),
      O => p_0_in(3)
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1E1E100"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \count_reg__0\(2),
      I3 => \thisState_reg[1]\(0),
      I4 => \thisState_reg[1]\(1),
      O => p_0_in(2)
    );
\count_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_0_in(4),
      Q => \count_reg__0\(0),
      S => s_axi_aresetn
    );
\count_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_0_in(3),
      Q => \count_reg__0\(1),
      S => s_axi_aresetn
    );
\count_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_0_in(2),
      Q => \count_reg__0\(2),
      S => s_axi_aresetn
    );
\count_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      S => s_axi_aresetn
    );
\count_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      S => s_axi_aresetn
    );
zero_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \count_reg__0\(2),
      I3 => \count_reg__0\(1),
      I4 => \count_reg__0\(0),
      O => zero_i_i_1_n_0
    );
zero_i_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => zero_i_i_1_n_0,
      Q => ifgp1_zero,
      S => s_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_cntr5bit_29 is
  port (
    ifgp2_zero : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \thisState_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \thisState_reg[1]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_cntr5bit_29 : entity is "cntr5bit";
end ntps_top_axi_ethernetlite_0_0_cntr5bit_29;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_cntr5bit_29 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \count_reg__0\ : STD_LOGIC_VECTOR ( 0 to 2 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \zero_i_i_1__0_n_0\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\count[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0001"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \count_reg__0\(1),
      I4 => \count_reg__0\(0),
      I5 => \thisState_reg[1]_0\,
      O => \p_0_in__0\(4)
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF11111111F"
    )
        port map (
      I0 => \thisState_reg[1]\(0),
      I1 => \thisState_reg[1]\(1),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \count_reg__0\(2),
      I5 => \count_reg__0\(1),
      O => \p_0_in__0\(3)
    );
\count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1E1E100"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \count_reg__0\(2),
      I3 => \thisState_reg[1]\(0),
      I4 => \thisState_reg[1]\(1),
      O => \p_0_in__0\(2)
    );
\count_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \p_0_in__0\(4),
      Q => \count_reg__0\(0),
      S => s_axi_aresetn
    );
\count_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \p_0_in__0\(3),
      Q => \count_reg__0\(1),
      S => s_axi_aresetn
    );
\count_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \p_0_in__0\(2),
      Q => \count_reg__0\(2),
      S => s_axi_aresetn
    );
\count_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      S => s_axi_aresetn
    );
\count_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      S => s_axi_aresetn
    );
\zero_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \count_reg__0\(2),
      I3 => \count_reg__0\(1),
      I4 => \count_reg__0\(0),
      O => \zero_i_i_1__0_n_0\
    );
zero_i_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \zero_i_i_1__0_n_0\,
      Q => ifgp2_zero,
      S => s_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_crcgenrx is
  port (
    crcokdelay : out STD_LOGIC;
    crcokdelay_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Q7_in : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gpr1.dout_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_crcgenrx : entity is "crcgenrx";
end ntps_top_axi_ethernetlite_0_0_crcgenrx;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_crcgenrx is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \crc_local_reg_n_0_[27]\ : STD_LOGIC;
  signal \^crcokdelay_0\ : STD_LOGIC;
  signal crcokdelay_i_4_n_0 : STD_LOGIC;
  signal crcokdelay_i_5_n_0 : STD_LOGIC;
  signal crcokdelay_i_6_n_0 : STD_LOGIC;
  signal crcokdelay_i_7_n_0 : STD_LOGIC;
  signal crcokdelay_i_8_n_0 : STD_LOGIC;
  signal crcokdelay_i_9_n_0 : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_29_in : STD_LOGIC;
  signal p_30_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal parallel_crc : STD_LOGIC_VECTOR ( 29 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc_local[15]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \crc_local[16]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \crc_local[17]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \crc_local[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \crc_local[19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \crc_local[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \crc_local[22]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \crc_local[23]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \crc_local[27]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \crc_local[28]_i_1\ : label is "soft_lutpair16";
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
  crcokdelay_0 <= \^crcokdelay_0\;
\crc_local[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_11_in,
      I1 => \^q\(9),
      I2 => \gpr1.dout_i_reg[5]\(1),
      I3 => \^q\(8),
      I4 => \gpr1.dout_i_reg[5]\(2),
      I5 => D(0),
      O => parallel_crc(12)
    );
\crc_local[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_13_in,
      I1 => \gpr1.dout_i_reg[5]\(1),
      I2 => \^q\(9),
      I3 => \gpr1.dout_i_reg[5]\(0),
      I4 => \^q\(10),
      O => parallel_crc(14)
    );
\crc_local[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_19_in,
      I1 => \^q\(10),
      I2 => \gpr1.dout_i_reg[5]\(0),
      O => parallel_crc(15)
    );
\crc_local[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_20_in,
      I1 => \^q\(7),
      I2 => \gpr1.dout_i_reg[5]\(3),
      O => parallel_crc(16)
    );
\crc_local[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_21_in,
      I1 => \^q\(8),
      I2 => \gpr1.dout_i_reg[5]\(2),
      O => parallel_crc(17)
    );
\crc_local[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_22_in,
      I1 => \^q\(9),
      I2 => \gpr1.dout_i_reg[5]\(1),
      O => parallel_crc(18)
    );
\crc_local[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_23_in,
      I1 => \^q\(10),
      I2 => \gpr1.dout_i_reg[5]\(0),
      O => parallel_crc(19)
    );
\crc_local[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gpr1.dout_i_reg[5]\(3),
      I2 => \^q\(8),
      I3 => \gpr1.dout_i_reg[5]\(2),
      O => parallel_crc(1)
    );
\crc_local[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_24_in,
      I1 => \^q\(7),
      I2 => \gpr1.dout_i_reg[5]\(3),
      O => parallel_crc(22)
    );
\crc_local[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_14_in,
      I1 => \gpr1.dout_i_reg[5]\(2),
      I2 => \^q\(8),
      I3 => \gpr1.dout_i_reg[5]\(3),
      I4 => \^q\(7),
      O => parallel_crc(23)
    );
\crc_local[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_15_in,
      I1 => \gpr1.dout_i_reg[5]\(2),
      I2 => \^q\(8),
      I3 => \gpr1.dout_i_reg[5]\(1),
      I4 => \^q\(9),
      O => parallel_crc(24)
    );
\crc_local[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_16_in,
      I1 => \gpr1.dout_i_reg[5]\(1),
      I2 => \^q\(9),
      I3 => \gpr1.dout_i_reg[5]\(0),
      I4 => \^q\(10),
      O => parallel_crc(25)
    );
\crc_local[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_17_in,
      I1 => \gpr1.dout_i_reg[5]\(0),
      I2 => \^q\(10),
      I3 => \gpr1.dout_i_reg[5]\(3),
      I4 => \^q\(7),
      O => parallel_crc(26)
    );
\crc_local[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_25_in,
      I1 => \^q\(8),
      I2 => \gpr1.dout_i_reg[5]\(2),
      O => parallel_crc(27)
    );
\crc_local[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_26_in,
      I1 => \^q\(9),
      I2 => \gpr1.dout_i_reg[5]\(1),
      O => parallel_crc(28)
    );
\crc_local[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_27_in,
      I1 => \^q\(10),
      I2 => \gpr1.dout_i_reg[5]\(0),
      O => parallel_crc(29)
    );
\crc_local[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gpr1.dout_i_reg[5]\(3),
      I2 => \gpr1.dout_i_reg[5]\(2),
      I3 => \^q\(8),
      I4 => \gpr1.dout_i_reg[5]\(1),
      I5 => \^q\(9),
      O => parallel_crc(2)
    );
\crc_local[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gpr1.dout_i_reg[5]\(2),
      I2 => \gpr1.dout_i_reg[5]\(1),
      I3 => \^q\(9),
      I4 => \gpr1.dout_i_reg[5]\(0),
      I5 => \^q\(10),
      O => parallel_crc(3)
    );
\crc_local[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_5_in,
      I1 => \gpr1.dout_i_reg[5]\(2),
      I2 => \^q\(8),
      I3 => \gpr1.dout_i_reg[5]\(1),
      I4 => \^q\(9),
      O => parallel_crc(6)
    );
\crc_local[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_8_in,
      I1 => \gpr1.dout_i_reg[5]\(2),
      I2 => \^q\(8),
      I3 => \gpr1.dout_i_reg[5]\(1),
      I4 => \^q\(9),
      O => parallel_crc(9)
    );
\crc_local_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      S => SS(0)
    );
\crc_local_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(5),
      Q => p_13_in,
      S => SS(0)
    );
\crc_local_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(6),
      Q => p_19_in,
      S => SS(0)
    );
\crc_local_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(12),
      Q => p_20_in,
      S => SS(0)
    );
\crc_local_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(7),
      Q => p_21_in,
      S => SS(0)
    );
\crc_local_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(14),
      Q => p_22_in,
      S => SS(0)
    );
\crc_local_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(15),
      Q => p_23_in,
      S => SS(0)
    );
\crc_local_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(16),
      Q => p_28_in,
      S => SS(0)
    );
\crc_local_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(17),
      Q => p_29_in,
      S => SS(0)
    );
\crc_local_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(18),
      Q => p_24_in,
      S => SS(0)
    );
\crc_local_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(19),
      Q => p_14_in,
      S => SS(0)
    );
\crc_local_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(1),
      Q => \^q\(1),
      S => SS(0)
    );
\crc_local_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_28_in,
      Q => p_15_in,
      S => SS(0)
    );
\crc_local_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_29_in,
      Q => p_16_in,
      S => SS(0)
    );
\crc_local_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(22),
      Q => p_17_in,
      S => SS(0)
    );
\crc_local_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(23),
      Q => p_25_in,
      S => SS(0)
    );
\crc_local_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(24),
      Q => p_26_in,
      S => SS(0)
    );
\crc_local_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(25),
      Q => p_27_in,
      S => SS(0)
    );
\crc_local_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(26),
      Q => p_30_in,
      S => SS(0)
    );
\crc_local_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(27),
      Q => \crc_local_reg_n_0_[27]\,
      S => SS(0)
    );
\crc_local_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(28),
      Q => \^q\(7),
      S => SS(0)
    );
\crc_local_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(29),
      Q => \^q\(8),
      S => SS(0)
    );
\crc_local_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(2),
      Q => p_5_in,
      S => SS(0)
    );
\crc_local_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_30_in,
      Q => \^q\(9),
      S => SS(0)
    );
\crc_local_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \crc_local_reg_n_0_[27]\,
      Q => \^q\(10),
      S => SS(0)
    );
\crc_local_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(3),
      Q => \^q\(2),
      S => SS(0)
    );
\crc_local_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => \^q\(3),
      S => SS(0)
    );
\crc_local_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(2),
      Q => p_8_in,
      S => SS(0)
    );
\crc_local_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(6),
      Q => \^q\(4),
      S => SS(0)
    );
\crc_local_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(3),
      Q => \^q\(5),
      S => SS(0)
    );
\crc_local_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(4),
      Q => p_11_in,
      S => SS(0)
    );
\crc_local_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => parallel_crc(9),
      Q => \^q\(6),
      S => SS(0)
    );
crcokdelay_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^crcokdelay_0\,
      I1 => Q7_in,
      I2 => s_axi_aresetn,
      O => crcokdelay
    );
crcokdelay_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => crcokdelay_i_4_n_0,
      I1 => crcokdelay_i_5_n_0,
      I2 => crcokdelay_i_6_n_0,
      I3 => crcokdelay_i_7_n_0,
      I4 => crcokdelay_i_8_n_0,
      I5 => crcokdelay_i_9_n_0,
      O => \^crcokdelay_0\
    );
crcokdelay_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => p_28_in,
      I1 => \^q\(6),
      I2 => p_5_in,
      I3 => \^q\(5),
      I4 => \^q\(9),
      I5 => \^q\(10),
      O => crcokdelay_i_4_n_0
    );
crcokdelay_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_21_in,
      I1 => p_29_in,
      O => crcokdelay_i_5_n_0
    );
crcokdelay_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_11_in,
      I1 => \^q\(4),
      I2 => p_20_in,
      I3 => p_22_in,
      I4 => p_8_in,
      I5 => p_13_in,
      O => crcokdelay_i_6_n_0
    );
crcokdelay_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_23_in,
      I1 => p_19_in,
      I2 => p_24_in,
      I3 => p_26_in,
      I4 => p_27_in,
      I5 => p_30_in,
      O => crcokdelay_i_7_n_0
    );
crcokdelay_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_16_in,
      I1 => p_15_in,
      I2 => \^q\(8),
      I3 => p_25_in,
      I4 => p_14_in,
      I5 => p_17_in,
      O => crcokdelay_i_8_n_0
    );
crcokdelay_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \crc_local_reg_n_0_[27]\,
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => crcokdelay_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_crcnibshiftreg is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \emac_tx_wr_data_d1_reg[3]\ : out STD_LOGIC;
    \emac_tx_wr_data_d1_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txCrcEn_reg : in STD_LOGIC;
    enblCRC : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_crcnibshiftreg : entity is "crcnibshiftreg";
end ntps_top_axi_ethernetlite_0_0_crcnibshiftreg;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_crcnibshiftreg is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mux_in_data : STD_LOGIC_VECTOR ( 19 to 19 );
  signal \nibData[12]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[13]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[14]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[15]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[16]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[17]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[18]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[19]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[20]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[21]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[22]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[23]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[24]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[25]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[26]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[26]_i_2_n_0\ : STD_LOGIC;
  signal \nibData[27]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[27]_i_2_n_0\ : STD_LOGIC;
  signal \nibData[28]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[28]_i_2_n_0\ : STD_LOGIC;
  signal \nibData[29]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[29]_i_2_n_0\ : STD_LOGIC;
  signal \nibData[2]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[30]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[31]_i_3_n_0\ : STD_LOGIC;
  signal \nibData[3]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[4]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[5]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[6]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[7]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[8]_i_1_n_0\ : STD_LOGIC;
  signal \nibData[9]_i_1_n_0\ : STD_LOGIC;
  signal \nibData_reg_n_0_[29]\ : STD_LOGIC;
  signal \nibData_reg_n_0_[30]\ : STD_LOGIC;
  signal \nibData_reg_n_0_[31]\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \nibData[12]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \nibData[13]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \nibData[14]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \nibData[15]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \nibData[19]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \nibData[21]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \nibData[26]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \nibData[27]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \nibData[28]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \nibData[29]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \nibData[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \nibData[30]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \nibData[31]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \nibData[3]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \nibData[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \nibData[9]_i_1\ : label is "soft_lutpair44";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => mux_in_data(19),
      I1 => enblCRC,
      O => \emac_tx_wr_data_d1_reg[3]\
    );
\nibData[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69AA"
    )
        port map (
      I0 => p_15_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(0),
      I2 => mux_in_data(19),
      I3 => txCrcEn_reg,
      O => \nibData[12]_i_1_n_0\
    );
\nibData[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69AA"
    )
        port map (
      I0 => p_14_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(1),
      I2 => \^q\(0),
      I3 => txCrcEn_reg,
      O => \nibData[13]_i_1_n_0\
    );
\nibData[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69AA"
    )
        port map (
      I0 => p_13_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(2),
      I2 => \^q\(1),
      I3 => txCrcEn_reg,
      O => \nibData[14]_i_1_n_0\
    );
\nibData[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69AA"
    )
        port map (
      I0 => p_12_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(3),
      I2 => \^q\(2),
      I3 => txCrcEn_reg,
      O => \nibData[15]_i_1_n_0\
    );
\nibData[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69AA"
    )
        port map (
      I0 => p_11_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(0),
      I2 => mux_in_data(19),
      I3 => txCrcEn_reg,
      O => \nibData[16]_i_1_n_0\
    );
\nibData[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A66A6AA66AA6A66A"
    )
        port map (
      I0 => p_10_in,
      I1 => txCrcEn_reg,
      I2 => \^q\(0),
      I3 => \emac_tx_wr_data_d1_reg[0]\(1),
      I4 => mux_in_data(19),
      I5 => \emac_tx_wr_data_d1_reg[0]\(0),
      O => \nibData[17]_i_1_n_0\
    );
\nibData[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9669AAAA"
    )
        port map (
      I0 => p_9_in,
      I1 => \^q\(1),
      I2 => \emac_tx_wr_data_d1_reg[0]\(2),
      I3 => \nibData[27]_i_2_n_0\,
      I4 => txCrcEn_reg,
      O => \nibData[18]_i_1_n_0\
    );
\nibData[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9669AAAA"
    )
        port map (
      I0 => p_8_in,
      I1 => \nibData[26]_i_2_n_0\,
      I2 => \^q\(0),
      I3 => \emac_tx_wr_data_d1_reg[0]\(1),
      I4 => txCrcEn_reg,
      O => \nibData[19]_i_1_n_0\
    );
\nibData[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96AA69AA"
    )
        port map (
      I0 => p_7_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(0),
      I2 => mux_in_data(19),
      I3 => txCrcEn_reg,
      I4 => \nibData[26]_i_2_n_0\,
      O => \nibData[20]_i_1_n_0\
    );
\nibData[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9669AAAA"
    )
        port map (
      I0 => p_6_in,
      I1 => \nibData[27]_i_2_n_0\,
      I2 => \emac_tx_wr_data_d1_reg[0]\(3),
      I3 => \^q\(2),
      I4 => txCrcEn_reg,
      O => \nibData[21]_i_1_n_0\
    );
\nibData[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96696996AAAAAAAA"
    )
        port map (
      I0 => p_5_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(2),
      I2 => \^q\(1),
      I3 => \emac_tx_wr_data_d1_reg[0]\(1),
      I4 => \^q\(0),
      I5 => txCrcEn_reg,
      O => \nibData[22]_i_1_n_0\
    );
\nibData[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96AA69AA"
    )
        port map (
      I0 => p_4_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(0),
      I2 => mux_in_data(19),
      I3 => txCrcEn_reg,
      I4 => \nibData[26]_i_2_n_0\,
      O => \nibData[23]_i_1_n_0\
    );
\nibData[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9669AAAA"
    )
        port map (
      I0 => p_3_in,
      I1 => \nibData[27]_i_2_n_0\,
      I2 => \emac_tx_wr_data_d1_reg[0]\(3),
      I3 => \^q\(2),
      I4 => txCrcEn_reg,
      O => \nibData[24]_i_1_n_0\
    );
\nibData[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96696996AAAAAAAA"
    )
        port map (
      I0 => \nibData_reg_n_0_[29]\,
      I1 => \emac_tx_wr_data_d1_reg[0]\(2),
      I2 => \^q\(1),
      I3 => \emac_tx_wr_data_d1_reg[0]\(1),
      I4 => \^q\(0),
      I5 => txCrcEn_reg,
      O => \nibData[25]_i_1_n_0\
    );
\nibData[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96AA69AA"
    )
        port map (
      I0 => \nibData_reg_n_0_[30]\,
      I1 => \emac_tx_wr_data_d1_reg[0]\(0),
      I2 => mux_in_data(19),
      I3 => txCrcEn_reg,
      I4 => \nibData[26]_i_2_n_0\,
      O => \nibData[26]_i_1_n_0\
    );
\nibData[26]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(2),
      I1 => \emac_tx_wr_data_d1_reg[0]\(3),
      I2 => \^q\(1),
      I3 => \emac_tx_wr_data_d1_reg[0]\(2),
      O => \nibData[26]_i_2_n_0\
    );
\nibData[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9669AAAA"
    )
        port map (
      I0 => \nibData_reg_n_0_[31]\,
      I1 => \nibData[27]_i_2_n_0\,
      I2 => \emac_tx_wr_data_d1_reg[0]\(3),
      I3 => \^q\(2),
      I4 => txCrcEn_reg,
      O => \nibData[27]_i_1_n_0\
    );
\nibData[27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(0),
      I1 => \emac_tx_wr_data_d1_reg[0]\(1),
      I2 => mux_in_data(19),
      I3 => \emac_tx_wr_data_d1_reg[0]\(0),
      O => \nibData[27]_i_2_n_0\
    );
\nibData[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699600000000"
    )
        port map (
      I0 => \nibData[28]_i_2_n_0\,
      I1 => mux_in_data(19),
      I2 => \emac_tx_wr_data_d1_reg[0]\(0),
      I3 => \emac_tx_wr_data_d1_reg[0]\(2),
      I4 => \^q\(1),
      I5 => txCrcEn_reg,
      O => \nibData[28]_i_1_n_0\
    );
\nibData[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \emac_tx_wr_data_d1_reg[0]\(1),
      I1 => \^q\(0),
      O => \nibData[28]_i_2_n_0\
    );
\nibData[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699600000000"
    )
        port map (
      I0 => \emac_tx_wr_data_d1_reg[0]\(1),
      I1 => \^q\(0),
      I2 => \nibData[29]_i_2_n_0\,
      I3 => \^q\(1),
      I4 => \emac_tx_wr_data_d1_reg[0]\(2),
      I5 => txCrcEn_reg,
      O => \nibData[29]_i_1_n_0\
    );
\nibData[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \emac_tx_wr_data_d1_reg[0]\(3),
      I1 => \^q\(2),
      O => \nibData[29]_i_2_n_0\
    );
\nibData[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69AA"
    )
        port map (
      I0 => p_25_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(0),
      I2 => mux_in_data(19),
      I3 => txCrcEn_reg,
      O => \nibData[2]_i_1_n_0\
    );
\nibData[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82282882"
    )
        port map (
      I0 => txCrcEn_reg,
      I1 => \emac_tx_wr_data_d1_reg[0]\(2),
      I2 => \^q\(1),
      I3 => \emac_tx_wr_data_d1_reg[0]\(3),
      I4 => \^q\(2),
      O => \nibData[30]_i_1_n_0\
    );
\nibData[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^q\(2),
      I1 => \emac_tx_wr_data_d1_reg[0]\(3),
      I2 => txCrcEn_reg,
      O => \nibData[31]_i_3_n_0\
    );
\nibData[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69AA"
    )
        port map (
      I0 => p_24_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(1),
      I2 => \^q\(0),
      I3 => txCrcEn_reg,
      O => \nibData[3]_i_1_n_0\
    );
\nibData[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69AA"
    )
        port map (
      I0 => p_23_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(2),
      I2 => \^q\(1),
      I3 => txCrcEn_reg,
      O => \nibData[4]_i_1_n_0\
    );
\nibData[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A66A6AA66AA6A66A"
    )
        port map (
      I0 => p_22_in,
      I1 => txCrcEn_reg,
      I2 => \emac_tx_wr_data_d1_reg[0]\(0),
      I3 => mux_in_data(19),
      I4 => \^q\(2),
      I5 => \emac_tx_wr_data_d1_reg[0]\(3),
      O => \nibData[5]_i_1_n_0\
    );
\nibData[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A66A6AA66AA6A66A"
    )
        port map (
      I0 => p_21_in,
      I1 => txCrcEn_reg,
      I2 => \^q\(0),
      I3 => \emac_tx_wr_data_d1_reg[0]\(1),
      I4 => mux_in_data(19),
      I5 => \emac_tx_wr_data_d1_reg[0]\(0),
      O => \nibData[6]_i_1_n_0\
    );
\nibData[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96696996AAAAAAAA"
    )
        port map (
      I0 => p_20_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(2),
      I2 => \^q\(1),
      I3 => \emac_tx_wr_data_d1_reg[0]\(1),
      I4 => \^q\(0),
      I5 => txCrcEn_reg,
      O => \nibData[7]_i_1_n_0\
    );
\nibData[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A66A6AA66AA6A66A"
    )
        port map (
      I0 => p_19_in,
      I1 => txCrcEn_reg,
      I2 => \^q\(2),
      I3 => \emac_tx_wr_data_d1_reg[0]\(3),
      I4 => \^q\(1),
      I5 => \emac_tx_wr_data_d1_reg[0]\(2),
      O => \nibData[8]_i_1_n_0\
    );
\nibData[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"69AA"
    )
        port map (
      I0 => p_18_in,
      I1 => \emac_tx_wr_data_d1_reg[0]\(3),
      I2 => \^q\(2),
      I3 => txCrcEn_reg,
      O => \nibData[9]_i_1_n_0\
    );
\nibData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_27_in,
      Q => mux_in_data(19),
      R => SR(0)
    );
\nibData_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_17_in,
      Q => p_21_in,
      R => SR(0)
    );
\nibData_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_16_in,
      Q => p_20_in,
      R => SR(0)
    );
\nibData_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[12]_i_1_n_0\,
      Q => p_19_in,
      R => SR(0)
    );
\nibData_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[13]_i_1_n_0\,
      Q => p_18_in,
      R => SR(0)
    );
\nibData_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[14]_i_1_n_0\,
      Q => p_17_in,
      R => SR(0)
    );
\nibData_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[15]_i_1_n_0\,
      Q => p_16_in,
      R => SR(0)
    );
\nibData_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[16]_i_1_n_0\,
      Q => p_15_in,
      R => SR(0)
    );
\nibData_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[17]_i_1_n_0\,
      Q => p_14_in,
      R => SR(0)
    );
\nibData_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[18]_i_1_n_0\,
      Q => p_13_in,
      R => SR(0)
    );
\nibData_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[19]_i_1_n_0\,
      Q => p_12_in,
      R => SR(0)
    );
\nibData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_26_in,
      Q => \^q\(0),
      R => SR(0)
    );
\nibData_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[20]_i_1_n_0\,
      Q => p_11_in,
      R => SR(0)
    );
\nibData_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[21]_i_1_n_0\,
      Q => p_10_in,
      R => SR(0)
    );
\nibData_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[22]_i_1_n_0\,
      Q => p_9_in,
      R => SR(0)
    );
\nibData_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[23]_i_1_n_0\,
      Q => p_8_in,
      R => SR(0)
    );
\nibData_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[24]_i_1_n_0\,
      Q => p_7_in,
      R => SR(0)
    );
\nibData_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[25]_i_1_n_0\,
      Q => p_6_in,
      R => SR(0)
    );
\nibData_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[26]_i_1_n_0\,
      Q => p_5_in,
      R => SR(0)
    );
\nibData_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[27]_i_1_n_0\,
      Q => p_4_in,
      R => SR(0)
    );
\nibData_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[28]_i_1_n_0\,
      Q => p_3_in,
      R => SR(0)
    );
\nibData_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[29]_i_1_n_0\,
      Q => \nibData_reg_n_0_[29]\,
      R => SR(0)
    );
\nibData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[2]_i_1_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\nibData_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[30]_i_1_n_0\,
      Q => \nibData_reg_n_0_[30]\,
      R => SR(0)
    );
\nibData_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[31]_i_3_n_0\,
      Q => \nibData_reg_n_0_[31]\,
      R => SR(0)
    );
\nibData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[3]_i_1_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\nibData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[4]_i_1_n_0\,
      Q => p_27_in,
      R => SR(0)
    );
\nibData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[5]_i_1_n_0\,
      Q => p_26_in,
      R => SR(0)
    );
\nibData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[6]_i_1_n_0\,
      Q => p_25_in,
      R => SR(0)
    );
\nibData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[7]_i_1_n_0\,
      Q => p_24_in,
      R => SR(0)
    );
\nibData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[8]_i_1_n_0\,
      Q => p_23_in,
      R => SR(0)
    );
\nibData_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \nibData[9]_i_1_n_0\,
      Q => p_22_in,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_defer_state is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[0]_0\ : out STD_LOGIC;
    ifgp1_zero : in STD_LOGIC;
    ifgp2_zero : in STD_LOGIC;
    STATE17A : in STD_LOGIC;
    C_SENSE_SYNC_2 : in STD_LOGIC;
    tx_clk_reg_d3 : in STD_LOGIC;
    tx_clk_reg_d2 : in STD_LOGIC;
    \count_reg[3]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[3]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_defer_state : entity is "defer_state";
end ntps_top_axi_ethernetlite_0_0_defer_state;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_defer_state is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \thisState[0]_i_1_n_0\ : STD_LOGIC;
  signal \thisState[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \count[3]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \count[4]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \thisState[1]_i_1\ : label is "soft_lutpair46";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004000400FFFF"
    )
        port map (
      I0 => ifgp2_zero,
      I1 => ifgp1_zero,
      I2 => tx_clk_reg_d3,
      I3 => tx_clk_reg_d2,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => E(0)
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001010FF"
    )
        port map (
      I0 => ifgp1_zero,
      I1 => tx_clk_reg_d3,
      I2 => tx_clk_reg_d2,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_reg[0]\(0)
    );
\count[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \count_reg[0]_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \count_reg[3]_0\(1),
      I3 => \count_reg[3]_0\(0),
      O => D(1)
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \count_reg[3]_1\(1),
      I3 => \count_reg[3]_1\(0),
      O => \count_reg[3]\(1)
    );
\count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \count_reg[3]_0\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => D(0)
    );
\count[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \count_reg[3]_1\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \count_reg[3]\(0)
    );
\thisState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05C105C0F5C105C0"
    )
        port map (
      I0 => ifgp1_zero,
      I1 => ifgp2_zero,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => STATE17A,
      I5 => C_SENSE_SYNC_2,
      O => \thisState[0]_i_1_n_0\
    );
\thisState[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44FFF000"
    )
        port map (
      I0 => C_SENSE_SYNC_2,
      I1 => STATE17A,
      I2 => ifgp1_zero,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \thisState[1]_i_1_n_0\
    );
\thisState_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \thisState[0]_i_1_n_0\,
      Q => \^q\(0),
      R => s_axi_aresetn
    );
\thisState_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \thisState[1]_i_1_n_0\,
      Q => \^q\(1),
      R => s_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_dmem is
  port (
    \txNibbleCnt_pad_reg[0]\ : out STD_LOGIC;
    phy_tx_en_i : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIA : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    axi_phy_tx_en_i_p : in STD_LOGIC;
    fifo_tx_en_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    phy_tx_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_dmem : entity is "dmem";
end ntps_top_axi_ethernetlite_0_0_dmem;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_dmem is
  signal \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_3_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_4_n_0\ : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_0 : STD_LOGIC;
  signal \gpr1.dout_i_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_3_n_0\,
      I1 => \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_4_n_0\,
      O => \txNibbleCnt_pad_reg[0]\
    );
\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(6),
      I3 => Q(8),
      I4 => Q(0),
      I5 => Q(10),
      O => \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_3_n_0\
    );
\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Q(11),
      I1 => Q(7),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(5),
      I5 => Q(9),
      O => \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_4_n_0\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_phy_tx_en_i_p,
      I1 => \gpr1.dout_i_reg_n_0_[0]\,
      O => phy_tx_en_i
    );
RAM_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1) => '0',
      DIA(0) => DIA(0),
      DIB(1 downto 0) => D(1 downto 0),
      DIC(1 downto 0) => D(3 downto 2),
      DID(1) => '0',
      DID(0) => '0',
      DOA(1) => RAM_reg_0_15_0_5_n_0,
      DOA(0) => p_0_out(0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_axi_aclk,
      WE => E(0)
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => fifo_tx_en_reg(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(0),
      Q => \gpr1.dout_i_reg_n_0_[0]\
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => fifo_tx_en_reg(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(2),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(0)
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => fifo_tx_en_reg(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(3),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(1)
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => fifo_tx_en_reg(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(4),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(2)
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => fifo_tx_en_reg(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(5),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_dmem_41 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D11_out : out STD_LOGIC;
    state2a : out STD_LOGIC;
    preamble : out STD_LOGIC;
    D10_out : out STD_LOGIC;
    D20_out : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    busFifoData_is_5_d1_reg : out STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D17_out : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q3_in9_in : in STD_LOGIC;
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    rx_start : in STD_LOGIC;
    busFifoData_is_5_d1 : in STD_LOGIC;
    Q11_in : in STD_LOGIC;
    state3a : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[2]\ : in STD_LOGIC;
    state0a : in STD_LOGIC;
    \crc_local_reg[31]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_dmem_41 : entity is "dmem";
end ntps_top_axi_ethernetlite_0_0_dmem_41;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_dmem_41 is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \crc_local[13]_i_2_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^state2a\ : STD_LOGIC;
  signal state2a_i_2_n_0 : STD_LOGIC;
  signal state3a_i_2_n_0 : STD_LOGIC;
  signal state4a_i_2_n_0 : STD_LOGIC;
  signal NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc_local[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \crc_local[13]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of preamble_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of state0a_i_2 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of state3a_i_2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of state4a_i_2 : label is "soft_lutpair25";
begin
  D(7 downto 0) <= \^d\(7 downto 0);
  Q(5 downto 0) <= \^q\(5 downto 0);
  state2a <= \^state2a\;
\Mac_addr_ram_addr_rd[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFFFBFB"
    )
        port map (
      I0 => D17_out,
      I1 => s_axi_aresetn,
      I2 => state4a_i_2_n_0,
      I3 => \^q\(0),
      I4 => Q3_in9_in,
      I5 => \gv.ram_valid_d1_reg\,
      O => SR(0)
    );
RAM_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => DIA(1 downto 0),
      DIB(1 downto 0) => DIB(1 downto 0),
      DIC(1 downto 0) => DIC(1 downto 0),
      DID(1) => '0',
      DID(0) => '0',
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => phy_rx_clk,
      WE => E(0)
    );
busFifoData_is_5_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \gv.ram_valid_d1_reg\,
      I5 => busFifoData_is_5_d1,
      O => busFifoData_is_5_d1_reg
    );
\crc_local[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => \crc_local_reg[31]\(7),
      O => \^d\(0)
    );
\crc_local[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(3),
      I1 => \crc_local_reg[31]\(9),
      I2 => \^q\(2),
      I3 => \crc_local_reg[31]\(10),
      I4 => \^d\(0),
      I5 => \crc_local_reg[31]\(4),
      O => \^d\(5)
    );
\crc_local[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(4),
      I1 => \crc_local_reg[31]\(8),
      I2 => \^q\(2),
      I3 => \crc_local_reg[31]\(10),
      I4 => \^d\(0),
      I5 => \crc_local_reg[31]\(5),
      O => \^d\(6)
    );
\crc_local[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(4),
      I1 => \crc_local_reg[31]\(8),
      I2 => \^q\(3),
      I3 => \crc_local_reg[31]\(9),
      I4 => \crc_local[13]_i_2_n_0\,
      I5 => \crc_local_reg[31]\(6),
      O => \^d\(7)
    );
\crc_local[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \crc_local_reg[31]\(10),
      O => \crc_local[13]_i_2_n_0\
    );
\crc_local[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(3),
      I1 => \crc_local_reg[31]\(9),
      I2 => \^q\(2),
      I3 => \crc_local_reg[31]\(10),
      I4 => \^d\(0),
      I5 => \crc_local_reg[31]\(0),
      O => \^d\(1)
    );
\crc_local[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(4),
      I1 => \crc_local_reg[31]\(8),
      I2 => \^q\(2),
      I3 => \crc_local_reg[31]\(10),
      I4 => \^d\(0),
      I5 => \crc_local_reg[31]\(1),
      O => \^d\(2)
    );
\crc_local[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(3),
      I1 => \crc_local_reg[31]\(9),
      I2 => \^q\(2),
      I3 => \crc_local_reg[31]\(10),
      I4 => \^d\(0),
      I5 => \crc_local_reg[31]\(2),
      O => \^d\(3)
    );
\crc_local[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(4),
      I1 => \crc_local_reg[31]\(8),
      I2 => \^q\(2),
      I3 => \crc_local_reg[31]\(10),
      I4 => \^d\(0),
      I5 => \crc_local_reg[31]\(3),
      O => \^d\(4)
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(0),
      Q => \^q\(0)
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(1),
      Q => \^q\(1)
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(2),
      Q => \^q\(2)
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(3),
      Q => \^q\(3)
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(4),
      Q => \^q\(4)
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ram_empty_fb_i_reg(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => p_0_out(5),
      Q => \^q\(5)
    );
preamble_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => busFifoData_is_5_d1,
      I4 => rx_start,
      O => preamble
    );
state0a_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \^state2a\
    );
state22a_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0705"
    )
        port map (
      I0 => \^q\(1),
      I1 => ram_empty_i_reg,
      I2 => \rdDestAddrNib_D_t_q_reg[2]\,
      I3 => state0a,
      O => \rdDestAddrNib_D_t_q_reg[3]\
    );
state2a_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040404FF04040404"
    )
        port map (
      I0 => state2a_i_2_n_0,
      I1 => Q11_in,
      I2 => \^q\(0),
      I3 => \^q\(5),
      I4 => state3a,
      I5 => \^state2a\,
      O => D10_out
    );
state2a_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000400040"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \gv.ram_valid_d1_reg\,
      I5 => ram_empty_i_reg,
      O => state2a_i_2_n_0
    );
state3a_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004404"
    )
        port map (
      I0 => \^q\(0),
      I1 => Q11_in,
      I2 => ram_empty_i_reg,
      I3 => \gv.ram_valid_d1_reg\,
      I4 => \^q\(5),
      I5 => state3a_i_2_n_0,
      O => D20_out
    );
state3a_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      O => state3a_i_2_n_0
    );
state4a_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => state4a_i_2_n_0,
      I1 => \^q\(0),
      I2 => Q3_in9_in,
      I3 => \gv.ram_valid_d1_reg\,
      O => D11_out
    );
state4a_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^state2a\,
      I1 => \^q\(5),
      I2 => rx_start,
      I3 => busFifoData_is_5_d1,
      O => state4a_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_ld_arith_reg is
  port (
    STATE13A : out STD_LOGIC_VECTOR ( 0 to 0 );
    D031_out : out STD_LOGIC;
    \txNibbleCnt_pad_reg[11]\ : out STD_LOGIC;
    D029_out : out STD_LOGIC;
    enblData : in STD_LOGIC;
    \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    txComboNibbleCntRst : in STD_LOGIC;
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \tx_packet_length_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q1_in : in STD_LOGIC;
    txfifo_full : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_ld_arith_reg : entity is "ld_arith_reg";
end ntps_top_axi_ethernetlite_0_0_ld_arith_reg;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_ld_arith_reg is
  signal D : STD_LOGIC;
  signal \^d031_out\ : STD_LOGIC;
  signal DI : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[0].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[10].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[10].MUXCY_i1_i_3_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[10].MUXCY_i1_i_4_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[10].MUXCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[10].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[1].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[2].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[2].MUXCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[2].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[3].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[3].MUXCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[3].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].MUXCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[4].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[5].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[5].MUXCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[5].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[6].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[6].MUXCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[6].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[7].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[7].MUXCY_i1_i_2_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[7].MUXCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[7].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[8].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[8].MUXCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[8].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[9].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[9].MUXCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[9].XORCY_i1_n_0\ : STD_LOGIC;
  signal \^state13a\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal STATE13A_i_2_n_0 : STD_LOGIC;
  signal STATE13A_i_3_n_0 : STD_LOGIC;
  signal currentTxNibbleCnt : STD_LOGIC_VECTOR ( 0 to 10 );
  signal \^txnibblecnt_pad_reg[11]\ : STD_LOGIC;
  signal \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[10].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[10].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[10].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[10].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[11].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[11].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[11].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[11].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \PERBIT_GEN[11].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[4].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[4].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[4].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[5].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[5].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[5].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[5].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[6].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[6].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[6].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[6].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[7].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[7].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[7].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[7].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \PERBIT_GEN[7].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[8].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[8].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[8].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[9].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[9].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[9].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[9].MULT_AND_i1\ : label is "PRIMITIVE";
begin
  D031_out <= \^d031_out\;
  STATE13A(0) <= \^state13a\(0);
  \txNibbleCnt_pad_reg[11]\ <= \^txnibblecnt_pad_reg[11]\;
\PERBIT_GEN[0].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[0].XORCY_i1_n_0\,
      Q => currentTxNibbleCnt(0),
      R => txComboNibbleCntRst
    );
\PERBIT_GEN[0].XORCY_i1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \tx_packet_length_reg[15]\(10),
      I1 => currentTxNibbleCnt(0),
      I2 => enblData,
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[10].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[10].XORCY_i1_n_0\,
      Q => currentTxNibbleCnt(10),
      R => txComboNibbleCntRst
    );
\PERBIT_GEN[10].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => currentTxNibbleCnt(10),
      I1 => enblData,
      O => \PERBIT_GEN[10].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[10].MUXCY_i1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F44"
    )
        port map (
      I0 => \^txnibblecnt_pad_reg[11]\,
      I1 => \tx_packet_length_reg[15]\(0),
      I2 => currentTxNibbleCnt(10),
      I3 => enblData,
      O => \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[10].MUXCY_i1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \PERBIT_GEN[10].MUXCY_i1_i_3_n_0\,
      I1 => \PERBIT_GEN[10].MUXCY_i1_i_4_n_0\,
      I2 => \tx_packet_length_reg[15]\(15),
      I3 => \tx_packet_length_reg[15]\(8),
      I4 => \tx_packet_length_reg[15]\(12),
      I5 => \tx_packet_length_reg[15]\(10),
      O => \^txnibblecnt_pad_reg[11]\
    );
\PERBIT_GEN[10].MUXCY_i1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000000000000000"
    )
        port map (
      I0 => \tx_packet_length_reg[15]\(1),
      I1 => \tx_packet_length_reg[15]\(0),
      I2 => \tx_packet_length_reg[15]\(3),
      I3 => \tx_packet_length_reg[15]\(4),
      I4 => \tx_packet_length_reg[15]\(2),
      I5 => \tx_packet_length_reg[15]\(5),
      O => \PERBIT_GEN[10].MUXCY_i1_i_3_n_0\
    );
\PERBIT_GEN[10].MUXCY_i1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \tx_packet_length_reg[15]\(13),
      I1 => \tx_packet_length_reg[15]\(9),
      I2 => \tx_packet_length_reg[15]\(11),
      I3 => \tx_packet_length_reg[15]\(14),
      I4 => \tx_packet_length_reg[15]\(6),
      I5 => \tx_packet_length_reg[15]\(7),
      O => \PERBIT_GEN[10].MUXCY_i1_i_4_n_0\
    );
\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => D,
      Q => \^state13a\(0),
      R => txComboNibbleCntRst
    );
\PERBIT_GEN[11].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state13a\(0),
      I1 => enblData,
      O => DI
    );
\PERBIT_GEN[11].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \PERBIT_GEN[8].MUXCY_i1_n_0\,
      CO(2) => \PERBIT_GEN[9].MUXCY_i1_n_0\,
      CO(1) => \PERBIT_GEN[10].MUXCY_i1_n_0\,
      CO(0) => O,
      CYINIT => enblData,
      DI(3) => \PERBIT_GEN[8].MULT_AND_i1_n_0\,
      DI(2) => \PERBIT_GEN[9].MULT_AND_i1_n_0\,
      DI(1) => \PERBIT_GEN[10].MULT_AND_i1_n_0\,
      DI(0) => DI,
      O(3) => \PERBIT_GEN[8].XORCY_i1_n_0\,
      O(2) => \PERBIT_GEN[9].XORCY_i1_n_0\,
      O(1) => \PERBIT_GEN[10].XORCY_i1_n_0\,
      O(0) => D,
      S(3) => \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[10].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[1].XORCY_i1_n_0\,
      Q => currentTxNibbleCnt(1),
      R => txComboNibbleCntRst
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => currentTxNibbleCnt(1),
      I1 => enblData,
      O => \PERBIT_GEN[1].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => currentTxNibbleCnt(1),
      I1 => enblData,
      I2 => \tx_packet_length_reg[15]\(9),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[2].XORCY_i1_n_0\,
      Q => currentTxNibbleCnt(2),
      R => txComboNibbleCntRst
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => currentTxNibbleCnt(2),
      I1 => enblData,
      O => \PERBIT_GEN[2].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \tx_packet_length_reg[15]\(8),
      I1 => currentTxNibbleCnt(2),
      I2 => enblData,
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[3].XORCY_i1_n_0\,
      Q => currentTxNibbleCnt(3),
      R => txComboNibbleCntRst
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => currentTxNibbleCnt(3),
      I1 => enblData,
      O => \PERBIT_GEN[3].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[3].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \PERBIT_GEN[4].MUXCY_i1_n_0\,
      CO(3 downto 2) => \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \PERBIT_GEN[2].MUXCY_i1_n_0\,
      CO(0) => \PERBIT_GEN[3].MUXCY_i1_n_0\,
      CYINIT => '0',
      DI(3) => \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \PERBIT_GEN[1].MULT_AND_i1_n_0\,
      DI(1) => \PERBIT_GEN[2].MULT_AND_i1_n_0\,
      DI(0) => \PERBIT_GEN[3].MULT_AND_i1_n_0\,
      O(3) => \PERBIT_GEN[0].XORCY_i1_n_0\,
      O(2) => \PERBIT_GEN[1].XORCY_i1_n_0\,
      O(1) => \PERBIT_GEN[2].XORCY_i1_n_0\,
      O(0) => \PERBIT_GEN[3].XORCY_i1_n_0\,
      S(3) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].MUXCY_i1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \tx_packet_length_reg[15]\(7),
      I1 => currentTxNibbleCnt(3),
      I2 => enblData,
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[4].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[4].XORCY_i1_n_0\,
      Q => currentTxNibbleCnt(4),
      R => txComboNibbleCntRst
    );
\PERBIT_GEN[4].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => currentTxNibbleCnt(4),
      I1 => enblData,
      O => \PERBIT_GEN[4].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[4].MUXCY_i1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \tx_packet_length_reg[15]\(6),
      I1 => currentTxNibbleCnt(4),
      I2 => enblData,
      O => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[5].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[5].XORCY_i1_n_0\,
      Q => currentTxNibbleCnt(5),
      R => txComboNibbleCntRst
    );
\PERBIT_GEN[5].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => currentTxNibbleCnt(5),
      I1 => enblData,
      O => \PERBIT_GEN[5].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[5].MUXCY_i1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FEE"
    )
        port map (
      I0 => \tx_packet_length_reg[15]\(5),
      I1 => \^txnibblecnt_pad_reg[11]\,
      I2 => currentTxNibbleCnt(5),
      I3 => enblData,
      O => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[6].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[6].XORCY_i1_n_0\,
      Q => currentTxNibbleCnt(6),
      R => txComboNibbleCntRst
    );
\PERBIT_GEN[6].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => currentTxNibbleCnt(6),
      I1 => enblData,
      O => \PERBIT_GEN[6].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[6].MUXCY_i1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FEE"
    )
        port map (
      I0 => \tx_packet_length_reg[15]\(4),
      I1 => \^txnibblecnt_pad_reg[11]\,
      I2 => currentTxNibbleCnt(6),
      I3 => enblData,
      O => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[7].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[7].XORCY_i1_n_0\,
      Q => currentTxNibbleCnt(7),
      R => txComboNibbleCntRst
    );
\PERBIT_GEN[7].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => currentTxNibbleCnt(7),
      I1 => enblData,
      O => \PERBIT_GEN[7].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[7].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \PERBIT_GEN[8].MUXCY_i1_n_0\,
      CO(3) => \PERBIT_GEN[4].MUXCY_i1_n_0\,
      CO(2) => \PERBIT_GEN[5].MUXCY_i1_n_0\,
      CO(1) => \PERBIT_GEN[6].MUXCY_i1_n_0\,
      CO(0) => \PERBIT_GEN[7].MUXCY_i1_n_0\,
      CYINIT => '0',
      DI(3) => \PERBIT_GEN[4].MULT_AND_i1_n_0\,
      DI(2) => \PERBIT_GEN[5].MULT_AND_i1_n_0\,
      DI(1) => \PERBIT_GEN[6].MULT_AND_i1_n_0\,
      DI(0) => \PERBIT_GEN[7].MULT_AND_i1_n_0\,
      O(3) => \PERBIT_GEN[4].XORCY_i1_n_0\,
      O(2) => \PERBIT_GEN[5].XORCY_i1_n_0\,
      O(1) => \PERBIT_GEN[6].XORCY_i1_n_0\,
      O(0) => \PERBIT_GEN[7].XORCY_i1_n_0\,
      S(3) => \PERBIT_GEN[4].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[5].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[6].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[7].MUXCY_i1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FBB"
    )
        port map (
      I0 => \tx_packet_length_reg[15]\(3),
      I1 => \PERBIT_GEN[7].MUXCY_i1_i_2_n_0\,
      I2 => currentTxNibbleCnt(7),
      I3 => enblData,
      O => \PERBIT_GEN[7].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[7].MUXCY_i1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \tx_packet_length_reg[15]\(10),
      I1 => \tx_packet_length_reg[15]\(12),
      I2 => \tx_packet_length_reg[15]\(8),
      I3 => \tx_packet_length_reg[15]\(15),
      I4 => \PERBIT_GEN[10].MUXCY_i1_i_4_n_0\,
      O => \PERBIT_GEN[7].MUXCY_i1_i_2_n_0\
    );
\PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[8].XORCY_i1_n_0\,
      Q => currentTxNibbleCnt(8),
      R => txComboNibbleCntRst
    );
\PERBIT_GEN[8].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => currentTxNibbleCnt(8),
      I1 => enblData,
      O => \PERBIT_GEN[8].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[8].MUXCY_i1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FEE"
    )
        port map (
      I0 => \tx_packet_length_reg[15]\(2),
      I1 => \^txnibblecnt_pad_reg[11]\,
      I2 => currentTxNibbleCnt(8),
      I3 => enblData,
      O => \PERBIT_GEN[8].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[9].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[9].XORCY_i1_n_0\,
      Q => currentTxNibbleCnt(9),
      R => txComboNibbleCntRst
    );
\PERBIT_GEN[9].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => currentTxNibbleCnt(9),
      I1 => enblData,
      O => \PERBIT_GEN[9].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[9].MUXCY_i1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F44"
    )
        port map (
      I0 => \^txnibblecnt_pad_reg[11]\,
      I1 => \tx_packet_length_reg[15]\(1),
      I2 => currentTxNibbleCnt(9),
      I3 => enblData,
      O => \PERBIT_GEN[9].Q_I_GEN_SUB.q_i_ns_reg\
    );
STATE12A_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^d031_out\,
      I1 => Q1_in,
      I2 => txfifo_full,
      O => D029_out
    );
STATE13A_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => currentTxNibbleCnt(9),
      I1 => enblData,
      I2 => STATE13A_i_2_n_0,
      I3 => STATE13A_i_3_n_0,
      O => \^d031_out\
    );
STATE13A_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => currentTxNibbleCnt(7),
      I1 => currentTxNibbleCnt(6),
      I2 => \^state13a\(0),
      I3 => currentTxNibbleCnt(10),
      I4 => currentTxNibbleCnt(8),
      I5 => currentTxNibbleCnt(5),
      O => STATE13A_i_2_n_0
    );
STATE13A_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => currentTxNibbleCnt(2),
      I1 => currentTxNibbleCnt(4),
      I2 => currentTxNibbleCnt(1),
      I3 => currentTxNibbleCnt(3),
      I4 => currentTxNibbleCnt(0),
      O => STATE13A_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized0\ is
  port (
    currentTxBusFifoWrCnt : out STD_LOGIC_VECTOR ( 3 downto 0 );
    STATE8A : out STD_LOGIC;
    STATE11A : out STD_LOGIC;
    emac_tx_wr_i : in STD_LOGIC;
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC;
    \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg\ : in STD_LOGIC;
    txComboBusFifoWrCntRst : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized0\ : entity is "ld_arith_reg";
end \ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized0\;

architecture STRUCTURE of \ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized0\ is
  signal D : STD_LOGIC;
  signal DI : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \PERBIT_GEN[10].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[10].MUXCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[10].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[8].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[9].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[9].XORCY_i1_n_0\ : STD_LOGIC;
  signal \^currenttxbusfifowrcnt\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \PERBIT_GEN[10].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[10].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[10].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[10].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[11].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[11].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[11].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[11].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \PERBIT_GEN[11].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[9].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[9].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[9].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[9].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of STATE10A_i_2 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of STATE8A_i_2 : label is "soft_lutpair49";
begin
  currentTxBusFifoWrCnt(3 downto 0) <= \^currenttxbusfifowrcnt\(3 downto 0);
\PERBIT_GEN[10].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => emac_tx_wr_i,
      D => \PERBIT_GEN[10].XORCY_i1_n_0\,
      Q => \^currenttxbusfifowrcnt\(1),
      R => txComboBusFifoWrCntRst
    );
\PERBIT_GEN[10].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^currenttxbusfifowrcnt\(1),
      I1 => emac_tx_wr_i,
      O => \PERBIT_GEN[10].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => emac_tx_wr_i,
      D => D,
      Q => \^currenttxbusfifowrcnt\(0),
      R => txComboBusFifoWrCntRst
    );
\PERBIT_GEN[11].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^currenttxbusfifowrcnt\(0),
      I1 => emac_tx_wr_i,
      O => DI
    );
\PERBIT_GEN[11].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \PERBIT_GEN[10].MUXCY_i1_n_0\,
      CO(0) => O,
      CYINIT => '0',
      DI(3) => \NLW_PERBIT_GEN[11].MUXCY_i1_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \PERBIT_GEN[9].MULT_AND_i1_n_0\,
      DI(1) => \PERBIT_GEN[10].MULT_AND_i1_n_0\,
      DI(0) => DI,
      O(3) => \PERBIT_GEN[8].XORCY_i1_n_0\,
      O(2) => \PERBIT_GEN[9].XORCY_i1_n_0\,
      O(1) => \PERBIT_GEN[10].XORCY_i1_n_0\,
      O(0) => D,
      S(3) => \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg\,
      S(0) => \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0\
    );
\PERBIT_GEN[8].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => emac_tx_wr_i,
      D => \PERBIT_GEN[8].XORCY_i1_n_0\,
      Q => \^currenttxbusfifowrcnt\(3),
      R => txComboBusFifoWrCntRst
    );
\PERBIT_GEN[9].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => emac_tx_wr_i,
      D => \PERBIT_GEN[9].XORCY_i1_n_0\,
      Q => \^currenttxbusfifowrcnt\(2),
      R => txComboBusFifoWrCntRst
    );
\PERBIT_GEN[9].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^currenttxbusfifowrcnt\(2),
      I1 => emac_tx_wr_i,
      O => \PERBIT_GEN[9].MULT_AND_i1_n_0\
    );
STATE10A_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^currenttxbusfifowrcnt\(0),
      I1 => \^currenttxbusfifowrcnt\(1),
      I2 => \^currenttxbusfifowrcnt\(2),
      I3 => \^currenttxbusfifowrcnt\(3),
      O => STATE11A
    );
STATE8A_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^currenttxbusfifowrcnt\(0),
      I1 => \^currenttxbusfifowrcnt\(1),
      I2 => \^currenttxbusfifowrcnt\(2),
      I3 => \^currenttxbusfifowrcnt\(3),
      O => STATE8A
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized1\ is
  port (
    crcCnt : out STD_LOGIC_VECTOR ( 0 to 3 );
    DIA : out STD_LOGIC_VECTOR ( 0 to 0 );
    D0 : out STD_LOGIC;
    \gic0.gc0.count_reg[3]\ : out STD_LOGIC;
    enblCRC : in STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    CE : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    STATE17A : in STD_LOGIC;
    Q0_in9_in : in STD_LOGIC;
    txfifo_full : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized1\ : entity is "ld_arith_reg";
end \ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized1\;

architecture STRUCTURE of \ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized1\ is
  signal D : STD_LOGIC;
  signal DI : STD_LOGIC;
  signal O : STD_LOGIC;
  signal \PERBIT_GEN[0].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[1].XORCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[2].MULT_AND_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[2].MUXCY_i1_n_0\ : STD_LOGIC;
  signal \PERBIT_GEN[2].XORCY_i1_n_0\ : STD_LOGIC;
  signal \^crccnt\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[1].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[1].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[1].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[2].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[2].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[2].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute box_type of \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MULT_AND_i1\ : label is "MULT_AND";
  attribute XILINX_TRANSFORM_PINMAP of \PERBIT_GEN[3].MULT_AND_i1\ : label is "LO:O";
  attribute box_type of \PERBIT_GEN[3].MULT_AND_i1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \PERBIT_GEN[3].MUXCY_i1_CARRY4\ : label is "PRIMITIVE";
begin
  crcCnt(0 to 3) <= \^crccnt\(0 to 3);
\PERBIT_GEN[0].FF_RST1_GEN.FDSE_i1\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[0].XORCY_i1_n_0\,
      Q => \^crccnt\(0),
      S => s_axi_aresetn
    );
\PERBIT_GEN[1].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[1].XORCY_i1_n_0\,
      Q => \^crccnt\(1),
      R => s_axi_aresetn
    );
\PERBIT_GEN[1].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^crccnt\(1),
      I1 => enblCRC,
      O => \PERBIT_GEN[1].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[2].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \PERBIT_GEN[2].XORCY_i1_n_0\,
      Q => \^crccnt\(2),
      R => s_axi_aresetn
    );
\PERBIT_GEN[2].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^crccnt\(2),
      I1 => enblCRC,
      O => \PERBIT_GEN[2].MULT_AND_i1_n_0\
    );
\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => D,
      Q => \^crccnt\(3),
      R => s_axi_aresetn
    );
\PERBIT_GEN[3].MULT_AND_i1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^crccnt\(3),
      I1 => enblCRC,
      O => DI
    );
\PERBIT_GEN[3].MUXCY_i1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \PERBIT_GEN[2].MUXCY_i1_n_0\,
      CO(0) => O,
      CYINIT => enblCRC,
      DI(3) => \NLW_PERBIT_GEN[3].MUXCY_i1_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \PERBIT_GEN[1].MULT_AND_i1_n_0\,
      DI(1) => \PERBIT_GEN[2].MULT_AND_i1_n_0\,
      DI(0) => DI,
      O(3) => \PERBIT_GEN[0].XORCY_i1_n_0\,
      O(2) => \PERBIT_GEN[1].XORCY_i1_n_0\,
      O(1) => \PERBIT_GEN[2].XORCY_i1_n_0\,
      O(0) => D,
      S(3) => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      S(2) => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      S(1) => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      S(0) => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
RAM_reg_0_15_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555455555555"
    )
        port map (
      I0 => STATE17A,
      I1 => \^crccnt\(2),
      I2 => \^crccnt\(3),
      I3 => \^crccnt\(0),
      I4 => \^crccnt\(1),
      I5 => Q0_in9_in,
      O => DIA(0)
    );
STATE15A_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => \^crccnt\(1),
      I1 => \^crccnt\(0),
      I2 => \^crccnt\(3),
      I3 => \^crccnt\(2),
      I4 => Q0_in9_in,
      I5 => txfifo_full,
      O => D0
    );
STATE16A_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => Q0_in9_in,
      I1 => \^crccnt\(1),
      I2 => \^crccnt\(0),
      I3 => \^crccnt\(3),
      I4 => \^crccnt\(2),
      O => \gic0.gc0.count_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_mdio_if is
  port (
    \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0\ : out STD_LOGIC;
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0\ : out STD_LOGIC;
    \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0\ : out STD_LOGIC;
    \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0\ : out STD_LOGIC;
    \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0\ : out STD_LOGIC;
    phy_mdio_o : out STD_LOGIC;
    phy_mdio_t : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \MDIO_GEN.mdio_req_i_reg\ : out STD_LOGIC;
    s_axi_aresetn_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \MDIO_GEN.mdio_clk_i_reg\ : in STD_LOGIC;
    phy_mdio_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.read_in_prog_reg\ : in STD_LOGIC;
    \MDIO_GEN.mdio_wr_data_reg_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_req_i_reg_0\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \MDIO_GEN.mdio_wr_data_reg_reg[2]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\ : in STD_LOGIC;
    mdio_en_i : in STD_LOGIC;
    \MDIO_GEN.mdio_wr_data_reg_reg[4]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_wr_data_reg_reg[5]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_phy_addr_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \MDIO_GEN.mdio_wr_data_reg_reg[6]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\ : in STD_LOGIC;
    \MDIO_GEN.mdio_wr_data_reg_reg[9]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_wr_data_reg_reg[10]\ : in STD_LOGIC;
    mdio_op_i : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_21_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_mdio_if : entity is "mdio_if";
end ntps_top_axi_ethernetlite_0_0_mdio_if;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_mdio_if is
  signal \FSM_sequential_mdio_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mdio_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mdio_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mdio_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mdio_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mdio_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA_reg_n_0_[0]\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA[10]_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA_reg_n_0_[10]\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA[11]_i_1_n_0\ : STD_LOGIC;
  signal \^mdio_capture_data[11].mdio_rd_data_reg[11]_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0\ : STD_LOGIC;
  signal \^mdio_capture_data[12].mdio_rd_data_reg[12]_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA[13]_i_1_n_0\ : STD_LOGIC;
  signal \^mdio_capture_data[13].mdio_rd_data_reg[13]_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \^mdio_capture_data[14].mdio_rd_data_reg[14]_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA[15]_i_1_n_0\ : STD_LOGIC;
  signal \^mdio_capture_data[15].mdio_rd_data_reg[15]_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA_reg_n_0_[1]\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA_reg_n_0_[2]\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA_reg_n_0_[3]\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA_reg_n_0_[4]\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA_reg_n_0_[5]\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA_reg_n_0_[6]\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA_reg_n_0_[7]\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_3_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA_reg_n_0_[8]\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA_reg_n_0_[9]\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_data_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_data_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_data_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_req_i_i_2_n_0\ : STD_LOGIC;
  signal PHY_MDIO_O_i_10_n_0 : STD_LOGIC;
  signal PHY_MDIO_O_i_11_n_0 : STD_LOGIC;
  signal PHY_MDIO_O_i_12_n_0 : STD_LOGIC;
  signal PHY_MDIO_O_i_13_n_0 : STD_LOGIC;
  signal PHY_MDIO_O_i_1_n_0 : STD_LOGIC;
  signal PHY_MDIO_O_i_2_n_0 : STD_LOGIC;
  signal PHY_MDIO_O_i_3_n_0 : STD_LOGIC;
  signal PHY_MDIO_O_i_4_n_0 : STD_LOGIC;
  signal PHY_MDIO_O_i_5_n_0 : STD_LOGIC;
  signal PHY_MDIO_O_i_6_n_0 : STD_LOGIC;
  signal PHY_MDIO_O_i_7_n_0 : STD_LOGIC;
  signal PHY_MDIO_O_i_8_n_0 : STD_LOGIC;
  signal PHY_MDIO_O_reg_i_9_n_0 : STD_LOGIC;
  signal PHY_MDIO_T_i_1_n_0 : STD_LOGIC;
  signal \clk_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \clk_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \clk_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal data : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \ld_cnt_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ld_cnt_data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ld_cnt_data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal ld_cnt_en_cmb : STD_LOGIC;
  signal ld_cnt_en_reg : STD_LOGIC;
  signal ld_cnt_en_reg_i_2_n_0 : STD_LOGIC;
  signal mdio_clk_reg : STD_LOGIC;
  signal mdio_done_i : STD_LOGIC;
  signal mdio_en_reg : STD_LOGIC;
  signal mdio_en_reg_i_1_n_0 : STD_LOGIC;
  signal mdio_idle_i_1_n_0 : STD_LOGIC;
  signal mdio_idle_i_3_n_0 : STD_LOGIC;
  signal mdio_idle_reg_n_0 : STD_LOGIC;
  signal mdio_in_reg1 : STD_LOGIC;
  signal mdio_in_reg2 : STD_LOGIC;
  signal mdio_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of mdio_state : signal is "yes";
  signal mdio_t_comb : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^phy_mdio_o\ : STD_LOGIC;
  signal \^phy_mdio_t\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_mdio_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_mdio_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_mdio_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_mdio_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[1]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[7]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of PHY_MDIO_O_i_4 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \clk_cnt[0]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \clk_cnt[1]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \clk_cnt[2]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \clk_cnt[5]_i_4\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of mdio_en_reg_i_1 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of mdio_idle_i_3 : label is "soft_lutpair72";
begin
  \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0\ <= \^mdio_capture_data[11].mdio_rd_data_reg[11]_0\;
  \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0\ <= \^mdio_capture_data[12].mdio_rd_data_reg[12]_0\;
  \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0\ <= \^mdio_capture_data[13].mdio_rd_data_reg[13]_0\;
  \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0\ <= \^mdio_capture_data[14].mdio_rd_data_reg[14]_0\;
  \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0\ <= \^mdio_capture_data[15].mdio_rd_data_reg[15]_0\;
  phy_mdio_o <= \^phy_mdio_o\;
  phy_mdio_t <= \^phy_mdio_t\;
\FSM_sequential_mdio_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10001F1F"
    )
        port map (
      I0 => mdio_state(2),
      I1 => mdio_state(1),
      I2 => mdio_state(3),
      I3 => mdio_op_i,
      I4 => mdio_state(0),
      O => \FSM_sequential_mdio_state[0]_i_1_n_0\
    );
\FSM_sequential_mdio_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"112A"
    )
        port map (
      I0 => mdio_state(0),
      I1 => mdio_state(3),
      I2 => mdio_state(2),
      I3 => mdio_state(1),
      O => \FSM_sequential_mdio_state[1]_i_1_n_0\
    );
\FSM_sequential_mdio_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3464"
    )
        port map (
      I0 => mdio_state(3),
      I1 => mdio_state(2),
      I2 => mdio_state(1),
      I3 => mdio_state(0),
      O => \FSM_sequential_mdio_state[2]_i_1_n_0\
    );
\FSM_sequential_mdio_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_sequential_mdio_state[3]_i_3_n_0\,
      I1 => mdio_clk_reg,
      I2 => \MDIO_GEN.mdio_clk_i_reg\,
      O => \FSM_sequential_mdio_state[3]_i_1_n_0\
    );
\FSM_sequential_mdio_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F80"
    )
        port map (
      I0 => mdio_state(1),
      I1 => mdio_state(0),
      I2 => mdio_state(2),
      I3 => mdio_state(3),
      O => \FSM_sequential_mdio_state[3]_i_2_n_0\
    );
\FSM_sequential_mdio_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F167E563F167F57"
    )
        port map (
      I0 => mdio_state(1),
      I1 => mdio_state(3),
      I2 => mdio_state(2),
      I3 => ld_cnt_en_reg_i_2_n_0,
      I4 => mdio_state(0),
      I5 => mdio_idle_reg_n_0,
      O => \FSM_sequential_mdio_state[3]_i_3_n_0\
    );
\FSM_sequential_mdio_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_mdio_state[3]_i_1_n_0\,
      D => \FSM_sequential_mdio_state[0]_i_1_n_0\,
      Q => mdio_state(0),
      R => s_axi_aresetn_0
    );
\FSM_sequential_mdio_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_mdio_state[3]_i_1_n_0\,
      D => \FSM_sequential_mdio_state[1]_i_1_n_0\,
      Q => mdio_state(1),
      R => s_axi_aresetn_0
    );
\FSM_sequential_mdio_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_mdio_state[3]_i_1_n_0\,
      D => \FSM_sequential_mdio_state[2]_i_1_n_0\,
      Q => mdio_state(2),
      R => s_axi_aresetn_0
    );
\FSM_sequential_mdio_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_mdio_state[3]_i_1_n_0\,
      D => \FSM_sequential_mdio_state[3]_i_2_n_0\,
      Q => mdio_state(3),
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => ld_cnt_en_reg_i_2_n_0,
      I3 => mdio_clk_reg,
      I4 => \MDIO_GEN.mdio_clk_i_reg\,
      I5 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA_reg_n_0_[0]\,
      O => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => mdio_state(3),
      I1 => mdio_state(2),
      I2 => mdio_state(0),
      I3 => mdio_state(1),
      O => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\
    );
\MDIO_CAPTURE_DATA[0].MDIO_RD_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_1_n_0\,
      Q => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA_reg_n_0_[0]\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[10].MDIO_RD_DATA[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0\,
      I3 => \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA_reg_n_0_[10]\,
      O => \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA[10]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[10].MDIO_RD_DATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA[10]_i_1_n_0\,
      Q => \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA_reg_n_0_[10]\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0\,
      I3 => \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \^mdio_capture_data[11].mdio_rd_data_reg[11]_0\,
      O => \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA[11]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA[11]_i_1_n_0\,
      Q => \^mdio_capture_data[11].mdio_rd_data_reg[11]_0\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \clk_cnt[5]_i_4_n_0\,
      I3 => \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \^mdio_capture_data[12].mdio_rd_data_reg[12]_0\,
      O => \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \clk_cnt_reg__0\(3),
      I1 => \clk_cnt_reg__0\(4),
      I2 => \clk_cnt_reg__0\(5),
      I3 => \clk_cnt_reg__0\(2),
      O => \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0\
    );
\MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_1_n_0\,
      Q => \^mdio_capture_data[12].mdio_rd_data_reg[12]_0\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3_n_0\,
      I3 => \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \^mdio_capture_data[13].mdio_rd_data_reg[13]_0\,
      O => \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA[13]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA[13]_i_1_n_0\,
      Q => \^mdio_capture_data[13].mdio_rd_data_reg[13]_0\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0\,
      I3 => \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \^mdio_capture_data[14].mdio_rd_data_reg[14]_0\,
      O => \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA[14]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA[14]_i_1_n_0\,
      Q => \^mdio_capture_data[14].mdio_rd_data_reg[14]_0\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0\,
      I3 => \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA[12]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \^mdio_capture_data[15].mdio_rd_data_reg[15]_0\,
      O => \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA[15]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA[15]_i_1_n_0\,
      Q => \^mdio_capture_data[15].mdio_rd_data_reg[15]_0\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0\,
      I3 => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA_reg_n_0_[1]\,
      O => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \clk_cnt_reg__0\(2),
      I1 => \clk_cnt_reg__0\(4),
      I2 => \clk_cnt_reg__0\(5),
      I3 => \clk_cnt_reg__0\(3),
      O => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0\
    );
\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cnt_reg__0\(0),
      I1 => \clk_cnt_reg__0\(1),
      O => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3_n_0\
    );
\MDIO_CAPTURE_DATA[1].MDIO_RD_DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_1_n_0\,
      Q => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA_reg_n_0_[1]\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0\,
      I3 => \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA_reg_n_0_[2]\,
      O => \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cnt_reg__0\(1),
      I1 => \clk_cnt_reg__0\(0),
      O => \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0\
    );
\MDIO_CAPTURE_DATA[2].MDIO_RD_DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_1_n_0\,
      Q => \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA_reg_n_0_[2]\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_2_n_0\,
      I3 => \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA_reg_n_0_[3]\,
      O => \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \clk_cnt_reg__0\(1),
      I1 => \clk_cnt_reg__0\(0),
      O => \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0\
    );
\MDIO_CAPTURE_DATA[3].MDIO_RD_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_1_n_0\,
      Q => \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA_reg_n_0_[3]\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \clk_cnt[5]_i_4_n_0\,
      I3 => \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA_reg_n_0_[4]\,
      O => \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \clk_cnt_reg__0\(4),
      I1 => \clk_cnt_reg__0\(5),
      I2 => \clk_cnt_reg__0\(3),
      I3 => \clk_cnt_reg__0\(2),
      O => \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0\
    );
\MDIO_CAPTURE_DATA[4].MDIO_RD_DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_1_n_0\,
      Q => \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA_reg_n_0_[4]\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[5].MDIO_RD_DATA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3_n_0\,
      I3 => \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA_reg_n_0_[5]\,
      O => \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA[5]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[5].MDIO_RD_DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA[5]_i_1_n_0\,
      Q => \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA_reg_n_0_[5]\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[6].MDIO_RD_DATA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA[2]_i_2_n_0\,
      I3 => \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA_reg_n_0_[6]\,
      O => \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA[6]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[6].MDIO_RD_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA[6]_i_1_n_0\,
      Q => \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA_reg_n_0_[6]\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[7].MDIO_RD_DATA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA[3]_i_2_n_0\,
      I3 => \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA[4]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA_reg_n_0_[7]\,
      O => \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA[7]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[7].MDIO_RD_DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA[7]_i_1_n_0\,
      Q => \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA_reg_n_0_[7]\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2_n_0\,
      I3 => \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_3_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA_reg_n_0_[8]\,
      O => \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \clk_cnt_reg__0\(0),
      I1 => \clk_cnt_reg__0\(1),
      I2 => \clk_cnt_reg__0\(2),
      O => \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_2_n_0\
    );
\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \clk_cnt_reg__0\(5),
      I1 => \clk_cnt_reg__0\(4),
      I2 => \clk_cnt_reg__0\(3),
      O => \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_3_n_0\
    );
\MDIO_CAPTURE_DATA[8].MDIO_RD_DATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA[8]_i_1_n_0\,
      Q => \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA_reg_n_0_[8]\,
      R => s_axi_aresetn_0
    );
\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => mdio_in_reg2,
      I1 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA[0]_i_2_n_0\,
      I2 => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA[1]_i_3_n_0\,
      I3 => \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2_n_0\,
      I4 => mdio_idle_i_3_n_0,
      I5 => \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA_reg_n_0_[9]\,
      O => \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_1_n_0\
    );
\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \clk_cnt_reg__0\(2),
      I1 => \clk_cnt_reg__0\(3),
      I2 => \clk_cnt_reg__0\(4),
      I3 => \clk_cnt_reg__0\(5),
      O => \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_2_n_0\
    );
\MDIO_CAPTURE_DATA[9].MDIO_RD_DATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA[9]_i_1_n_0\,
      Q => \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA_reg_n_0_[9]\,
      R => s_axi_aresetn_0
    );
\MDIO_GEN.mdio_data_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \MDIO_GEN.mdio_data_out[0]_i_2_n_0\,
      I1 => s_axi_aresetn,
      I2 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      I3 => Q(0),
      O => D(0)
    );
\MDIO_GEN.mdio_data_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCCFCCEFECEFEC"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(0),
      I1 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      I2 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]\,
      I3 => \MDIO_GEN.mdio_req_i_reg_0\,
      I4 => \MDIO_CAPTURE_DATA[0].MDIO_RD_DATA_reg_n_0_[0]\,
      I5 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\(0),
      O => \MDIO_GEN.mdio_data_out[0]_i_2_n_0\
    );
\MDIO_GEN.mdio_data_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AE000000AE00"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[10]\,
      I1 => \MDIO_CAPTURE_DATA[10].MDIO_RD_DATA_reg_n_0_[10]\,
      I2 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\,
      I3 => s_axi_aresetn,
      I4 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      I5 => mdio_op_i,
      O => D(10)
    );
\MDIO_GEN.mdio_data_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C044"
    )
        port map (
      I0 => \MDIO_GEN.mdio_data_out[1]_i_2_n_0\,
      I1 => s_axi_aresetn,
      I2 => Q(1),
      I3 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      O => D(1)
    );
\MDIO_GEN.mdio_data_out[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(1),
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\,
      I2 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\,
      I3 => \MDIO_CAPTURE_DATA[1].MDIO_RD_DATA_reg_n_0_[1]\,
      O => \MDIO_GEN.mdio_data_out[1]_i_2_n_0\
    );
\MDIO_GEN.mdio_data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AE000000AE00"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[2]\,
      I1 => \MDIO_CAPTURE_DATA[2].MDIO_RD_DATA_reg_n_0_[2]\,
      I2 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\,
      I3 => s_axi_aresetn,
      I4 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      I5 => Q(2),
      O => D(2)
    );
\MDIO_GEN.mdio_data_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \MDIO_GEN.mdio_data_out[3]_i_2_n_0\,
      I1 => s_axi_aresetn,
      I2 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      I3 => Q(3),
      O => D(3)
    );
\MDIO_GEN.mdio_data_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCCFCCEFECEFEC"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(3),
      I1 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      I2 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]\,
      I3 => mdio_en_i,
      I4 => \MDIO_CAPTURE_DATA[3].MDIO_RD_DATA_reg_n_0_[3]\,
      I5 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\(0),
      O => \MDIO_GEN.mdio_data_out[3]_i_2_n_0\
    );
\MDIO_GEN.mdio_data_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AE000000AE00"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[4]\,
      I1 => \MDIO_CAPTURE_DATA[4].MDIO_RD_DATA_reg_n_0_[4]\,
      I2 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\,
      I3 => s_axi_aresetn,
      I4 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      I5 => Q(4),
      O => D(4)
    );
\MDIO_GEN.mdio_data_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AE000000AE00"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[5]\,
      I1 => \MDIO_CAPTURE_DATA[5].MDIO_RD_DATA_reg_n_0_[5]\,
      I2 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\,
      I3 => s_axi_aresetn,
      I4 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      I5 => \MDIO_GEN.mdio_phy_addr_reg[4]\(0),
      O => D(5)
    );
\MDIO_GEN.mdio_data_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AE000000AE00"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[6]\,
      I1 => \MDIO_CAPTURE_DATA[6].MDIO_RD_DATA_reg_n_0_[6]\,
      I2 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\,
      I3 => s_axi_aresetn,
      I4 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      I5 => \MDIO_GEN.mdio_phy_addr_reg[4]\(1),
      O => D(6)
    );
\MDIO_GEN.mdio_data_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AE000000AE00"
    )
        port map (
      I0 => \MDIO_GEN.mdio_data_out[7]_i_2_n_0\,
      I1 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(7),
      I2 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\,
      I3 => s_axi_aresetn,
      I4 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      I5 => \MDIO_GEN.mdio_phy_addr_reg[4]\(2),
      O => D(7)
    );
\MDIO_GEN.mdio_data_out[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \MDIO_CAPTURE_DATA[7].MDIO_RD_DATA_reg_n_0_[7]\,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\,
      O => \MDIO_GEN.mdio_data_out[7]_i_2_n_0\
    );
\MDIO_GEN.mdio_data_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AE000000AE00"
    )
        port map (
      I0 => \MDIO_GEN.mdio_data_out[8]_i_2_n_0\,
      I1 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(8),
      I2 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\,
      I3 => s_axi_aresetn,
      I4 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      I5 => \MDIO_GEN.mdio_phy_addr_reg[4]\(3),
      O => D(8)
    );
\MDIO_GEN.mdio_data_out[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \MDIO_CAPTURE_DATA[8].MDIO_RD_DATA_reg_n_0_[8]\,
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\,
      O => \MDIO_GEN.mdio_data_out[8]_i_2_n_0\
    );
\MDIO_GEN.mdio_data_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AE000000AE00"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[9]\,
      I1 => \MDIO_CAPTURE_DATA[9].MDIO_RD_DATA_reg_n_0_[9]\,
      I2 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\,
      I3 => s_axi_aresetn,
      I4 => \AXI4_LITE_IF_GEN.read_in_prog_reg\,
      I5 => \MDIO_GEN.mdio_phy_addr_reg[4]\(4),
      O => D(9)
    );
\MDIO_GEN.mdio_req_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA3FFFAAAA0000"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => mdio_state(2),
      I2 => mdio_state(3),
      I3 => \MDIO_GEN.mdio_req_i_i_2_n_0\,
      I4 => p_21_out,
      I5 => \MDIO_GEN.mdio_req_i_reg_0\,
      O => \MDIO_GEN.mdio_req_i_reg\
    );
\MDIO_GEN.mdio_req_i_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mdio_state(1),
      I1 => mdio_state(0),
      O => \MDIO_GEN.mdio_req_i_i_2_n_0\
    );
PHY_MDIO_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1FF0000F100"
    )
        port map (
      I0 => PHY_MDIO_O_i_2_n_0,
      I1 => mdio_state(3),
      I2 => PHY_MDIO_O_i_3_n_0,
      I3 => mdio_clk_reg,
      I4 => \MDIO_GEN.mdio_clk_i_reg\,
      I5 => \^phy_mdio_o\,
      O => PHY_MDIO_O_i_1_n_0
    );
PHY_MDIO_O_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(11),
      I1 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(10),
      I2 => \clk_cnt_reg__0\(1),
      I3 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(9),
      I4 => \clk_cnt_reg__0\(0),
      I5 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(8),
      O => PHY_MDIO_O_i_10_n_0
    );
PHY_MDIO_O_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(15),
      I1 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(14),
      I2 => \clk_cnt_reg__0\(1),
      I3 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(13),
      I4 => \clk_cnt_reg__0\(0),
      I5 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(12),
      O => PHY_MDIO_O_i_11_n_0
    );
PHY_MDIO_O_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(3),
      I1 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(2),
      I2 => \clk_cnt_reg__0\(1),
      I3 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(1),
      I4 => \clk_cnt_reg__0\(0),
      I5 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(0),
      O => PHY_MDIO_O_i_12_n_0
    );
PHY_MDIO_O_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(7),
      I1 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(6),
      I2 => \clk_cnt_reg__0\(1),
      I3 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(5),
      I4 => \clk_cnt_reg__0\(0),
      I5 => \MDIO_GEN.mdio_wr_data_reg_reg[15]\(4),
      O => PHY_MDIO_O_i_13_n_0
    );
PHY_MDIO_O_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FAF0F0F00AF0F0F"
    )
        port map (
      I0 => mdio_op_i,
      I1 => PHY_MDIO_O_i_4_n_0,
      I2 => mdio_state(0),
      I3 => mdio_state(1),
      I4 => mdio_state(2),
      I5 => PHY_MDIO_O_i_5_n_0,
      O => PHY_MDIO_O_i_2_n_0
    );
PHY_MDIO_O_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FC00CC32333233"
    )
        port map (
      I0 => mdio_op_i,
      I1 => mdio_state(0),
      I2 => mdio_state(3),
      I3 => mdio_state(2),
      I4 => PHY_MDIO_O_i_6_n_0,
      I5 => mdio_state(1),
      O => PHY_MDIO_O_i_3_n_0
    );
PHY_MDIO_O_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => Q(4),
      I1 => \clk_cnt_reg__0\(0),
      I2 => \clk_cnt_reg__0\(1),
      I3 => \clk_cnt_reg__0\(2),
      I4 => PHY_MDIO_O_i_7_n_0,
      O => PHY_MDIO_O_i_4_n_0
    );
PHY_MDIO_O_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBABFBFBFBFB"
    )
        port map (
      I0 => mdio_state(0),
      I1 => PHY_MDIO_O_i_8_n_0,
      I2 => \clk_cnt_reg__0\(2),
      I3 => \clk_cnt_reg__0\(1),
      I4 => \clk_cnt_reg__0\(0),
      I5 => \MDIO_GEN.mdio_phy_addr_reg[4]\(4),
      O => PHY_MDIO_O_i_5_n_0
    );
PHY_MDIO_O_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => PHY_MDIO_O_reg_i_9_n_0,
      I1 => \clk_cnt_reg__0\(3),
      I2 => PHY_MDIO_O_i_10_n_0,
      I3 => \clk_cnt_reg__0\(2),
      I4 => PHY_MDIO_O_i_11_n_0,
      I5 => \clk_cnt_reg__0\(4),
      O => PHY_MDIO_O_i_6_n_0
    );
PHY_MDIO_O_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => \clk_cnt_reg__0\(1),
      I3 => Q(1),
      I4 => \clk_cnt_reg__0\(0),
      I5 => Q(0),
      O => PHY_MDIO_O_i_7_n_0
    );
PHY_MDIO_O_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \MDIO_GEN.mdio_phy_addr_reg[4]\(3),
      I1 => \MDIO_GEN.mdio_phy_addr_reg[4]\(2),
      I2 => \clk_cnt_reg__0\(1),
      I3 => \MDIO_GEN.mdio_phy_addr_reg[4]\(1),
      I4 => \clk_cnt_reg__0\(0),
      I5 => \MDIO_GEN.mdio_phy_addr_reg[4]\(0),
      O => PHY_MDIO_O_i_8_n_0
    );
PHY_MDIO_O_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => PHY_MDIO_O_i_1_n_0,
      Q => \^phy_mdio_o\,
      R => s_axi_aresetn_0
    );
PHY_MDIO_O_reg_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => PHY_MDIO_O_i_12_n_0,
      I1 => PHY_MDIO_O_i_13_n_0,
      O => PHY_MDIO_O_reg_i_9_n_0,
      S => \clk_cnt_reg__0\(2)
    );
PHY_MDIO_T_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => mdio_t_comb,
      I1 => mdio_clk_reg,
      I2 => \MDIO_GEN.mdio_clk_i_reg\,
      I3 => \^phy_mdio_t\,
      O => PHY_MDIO_T_i_1_n_0
    );
PHY_MDIO_T_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222000B9"
    )
        port map (
      I0 => mdio_state(3),
      I1 => mdio_state(2),
      I2 => mdio_op_i,
      I3 => mdio_state(1),
      I4 => mdio_state(0),
      O => mdio_t_comb
    );
PHY_MDIO_T_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => PHY_MDIO_T_i_1_n_0,
      Q => \^phy_mdio_t\,
      S => s_axi_aresetn_0
    );
\clk_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => data(1),
      I1 => \clk_cnt_reg__0\(0),
      I2 => ld_cnt_en_reg,
      O => \p_0_in__1\(0)
    );
\clk_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => data(1),
      I1 => ld_cnt_en_reg,
      I2 => \clk_cnt_reg__0\(1),
      I3 => \clk_cnt_reg__0\(0),
      O => \p_0_in__1\(1)
    );
\clk_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => data(2),
      I1 => ld_cnt_en_reg,
      I2 => \clk_cnt_reg__0\(2),
      I3 => \clk_cnt_reg__0\(0),
      I4 => \clk_cnt_reg__0\(1),
      O => \p_0_in__1\(2)
    );
\clk_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => data(1),
      I1 => ld_cnt_en_reg,
      I2 => \clk_cnt_reg__0\(3),
      I3 => \clk_cnt_reg__0\(2),
      I4 => \clk_cnt_reg__0\(1),
      I5 => \clk_cnt_reg__0\(0),
      O => \p_0_in__1\(3)
    );
\clk_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B88BB8B8"
    )
        port map (
      I0 => data(4),
      I1 => ld_cnt_en_reg,
      I2 => \clk_cnt_reg__0\(4),
      I3 => \clk_cnt_reg__0\(3),
      I4 => \clk_cnt[5]_i_4_n_0\,
      I5 => \clk_cnt_reg__0\(2),
      O => \p_0_in__1\(4)
    );
\clk_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => mdio_clk_reg,
      I1 => \MDIO_GEN.mdio_clk_i_reg\,
      I2 => \clk_cnt[5]_i_3_n_0\,
      O => \clk_cnt[5]_i_1_n_0\
    );
\clk_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFB0004"
    )
        port map (
      I0 => \clk_cnt_reg__0\(3),
      I1 => \clk_cnt[5]_i_4_n_0\,
      I2 => \clk_cnt_reg__0\(2),
      I3 => \clk_cnt_reg__0\(4),
      I4 => \clk_cnt_reg__0\(5),
      I5 => ld_cnt_en_reg,
      O => \p_0_in__1\(5)
    );
\clk_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBF6FB77"
    )
        port map (
      I0 => mdio_state(2),
      I1 => mdio_state(1),
      I2 => ld_cnt_en_reg_i_2_n_0,
      I3 => mdio_state(3),
      I4 => mdio_state(0),
      I5 => ld_cnt_en_reg,
      O => \clk_cnt[5]_i_3_n_0\
    );
\clk_cnt[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_cnt_reg__0\(1),
      I1 => \clk_cnt_reg__0\(0),
      O => \clk_cnt[5]_i_4_n_0\
    );
\clk_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \clk_cnt[5]_i_1_n_0\,
      D => \p_0_in__1\(0),
      Q => \clk_cnt_reg__0\(0),
      R => s_axi_aresetn_0
    );
\clk_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \clk_cnt[5]_i_1_n_0\,
      D => \p_0_in__1\(1),
      Q => \clk_cnt_reg__0\(1),
      R => s_axi_aresetn_0
    );
\clk_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \clk_cnt[5]_i_1_n_0\,
      D => \p_0_in__1\(2),
      Q => \clk_cnt_reg__0\(2),
      R => s_axi_aresetn_0
    );
\clk_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \clk_cnt[5]_i_1_n_0\,
      D => \p_0_in__1\(3),
      Q => \clk_cnt_reg__0\(3),
      R => s_axi_aresetn_0
    );
\clk_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \clk_cnt[5]_i_1_n_0\,
      D => \p_0_in__1\(4),
      Q => \clk_cnt_reg__0\(4),
      R => s_axi_aresetn_0
    );
\clk_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \clk_cnt[5]_i_1_n_0\,
      D => \p_0_in__1\(5),
      Q => \clk_cnt_reg__0\(5),
      R => s_axi_aresetn_0
    );
\ld_cnt_data_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C01"
    )
        port map (
      I0 => mdio_idle_reg_n_0,
      I1 => mdio_state(3),
      I2 => mdio_state(2),
      I3 => mdio_state(0),
      I4 => mdio_state(1),
      O => \ld_cnt_data_reg[1]_i_1_n_0\
    );
\ld_cnt_data_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00203C0000203C03"
    )
        port map (
      I0 => ld_cnt_en_reg_i_2_n_0,
      I1 => mdio_state(3),
      I2 => mdio_state(2),
      I3 => mdio_state(0),
      I4 => mdio_state(1),
      I5 => mdio_idle_reg_n_0,
      O => \ld_cnt_data_reg[2]_i_1_n_0\
    );
\ld_cnt_data_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => mdio_idle_reg_n_0,
      I1 => mdio_state(1),
      I2 => mdio_state(0),
      I3 => mdio_state(2),
      I4 => mdio_state(3),
      O => \ld_cnt_data_reg[4]_i_1_n_0\
    );
\ld_cnt_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ld_cnt_data_reg[1]_i_1_n_0\,
      Q => data(1),
      R => s_axi_aresetn_0
    );
\ld_cnt_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ld_cnt_data_reg[2]_i_1_n_0\,
      Q => data(2),
      R => s_axi_aresetn_0
    );
\ld_cnt_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ld_cnt_data_reg[4]_i_1_n_0\,
      Q => data(4),
      R => s_axi_aresetn_0
    );
ld_cnt_en_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00303803"
    )
        port map (
      I0 => ld_cnt_en_reg_i_2_n_0,
      I1 => mdio_state(1),
      I2 => mdio_state(0),
      I3 => mdio_state(2),
      I4 => mdio_state(3),
      O => ld_cnt_en_cmb
    );
ld_cnt_en_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \clk_cnt_reg__0\(2),
      I1 => \clk_cnt_reg__0\(1),
      I2 => \clk_cnt_reg__0\(0),
      I3 => \clk_cnt_reg__0\(4),
      I4 => \clk_cnt_reg__0\(5),
      I5 => \clk_cnt_reg__0\(3),
      O => ld_cnt_en_reg_i_2_n_0
    );
ld_cnt_en_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ld_cnt_en_cmb,
      Q => ld_cnt_en_reg,
      R => s_axi_aresetn_0
    );
mdio_clk_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_GEN.mdio_clk_i_reg\,
      Q => mdio_clk_reg,
      R => s_axi_aresetn_0
    );
mdio_en_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => mdio_en_i,
      I1 => \MDIO_GEN.mdio_clk_i_reg\,
      I2 => mdio_clk_reg,
      I3 => mdio_idle_reg_n_0,
      I4 => mdio_en_reg,
      O => mdio_en_reg_i_1_n_0
    );
mdio_en_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mdio_en_reg_i_1_n_0,
      Q => mdio_en_reg,
      R => s_axi_aresetn_0
    );
mdio_idle_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF70FFF0FFF0FF"
    )
        port map (
      I0 => \MDIO_GEN.mdio_req_i_reg_0\,
      I1 => mdio_en_reg,
      I2 => mdio_idle_reg_n_0,
      I3 => s_axi_aresetn,
      I4 => mdio_done_i,
      I5 => mdio_idle_i_3_n_0,
      O => mdio_idle_i_1_n_0
    );
mdio_idle_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => mdio_state(0),
      I1 => mdio_state(1),
      I2 => mdio_state(3),
      I3 => mdio_state(2),
      O => mdio_done_i
    );
mdio_idle_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \MDIO_GEN.mdio_clk_i_reg\,
      I1 => mdio_clk_reg,
      O => mdio_idle_i_3_n_0
    );
mdio_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mdio_idle_i_1_n_0,
      Q => mdio_idle_reg_n_0,
      R => '0'
    );
mdio_in_reg1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => phy_mdio_i,
      Q => mdio_in_reg1,
      R => s_axi_aresetn_0
    );
mdio_in_reg2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mdio_in_reg1,
      Q => mdio_in_reg2,
      R => s_axi_aresetn_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_mux_onehot_f is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    lut_val : in STD_LOGIC;
    STATE15A : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC;
    STATE15A_0 : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    STATE15A_1 : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    \nibData_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_mux_onehot_f : entity is "mux_onehot_f";
end ntps_top_axi_ethernetlite_0_0_mux_onehot_f;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_mux_onehot_f is
  signal \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
begin
\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(3),
      CO(0) => \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1) => '1',
      DI(0) => '1',
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => STATE15A,
      S(0) => lut_val
    );
\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(2),
      CO(0) => \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1) => '1',
      DI(0) => '1',
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => STATE15A_0,
      S(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\
    );
\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(1),
      CO(0) => \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1) => '1',
      DI(0) => '1',
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => STATE15A_1,
      S(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\
    );
\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(0),
      CO(0) => \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1) => '1',
      DI(0) => '1',
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \nibData_reg[0]\,
      S(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_ram16x4 is
  port (
    \rdDestAddrNib_D_t_q_reg[2]\ : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[2]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mac_addr_ram_we : in STD_LOGIC;
    mac_addr_ram_addr : in STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_ram16x4 : entity is "ram16x4";
end ntps_top_axi_ethernetlite_0_0_ram16x4;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_ram16x4 is
  signal mac_addr_ram_data : STD_LOGIC_VECTOR ( 0 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ram16x1_0 : label is "RAM16X1S";
  attribute box_type : string;
  attribute box_type of ram16x1_0 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ram16x1_1 : label is "RAM16X1S";
  attribute box_type of ram16x1_1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ram16x1_2 : label is "RAM16X1S";
  attribute box_type of ram16x1_2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ram16x1_3 : label is "RAM16X1S";
  attribute box_type of ram16x1_3 : label is "PRIMITIVE";
begin
ram16x1_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000220",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => mac_addr_ram_addr(3),
      A1 => mac_addr_ram_addr(2),
      A2 => mac_addr_ram_addr(1),
      A3 => mac_addr_ram_addr(0),
      A4 => '0',
      D => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      O => mac_addr_ram_data(3),
      WCLK => s_axi_aclk,
      WE => mac_addr_ram_we
    );
ram16x1_1: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000710",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => mac_addr_ram_addr(3),
      A1 => mac_addr_ram_addr(2),
      A2 => mac_addr_ram_addr(1),
      A3 => mac_addr_ram_addr(0),
      A4 => '0',
      D => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(1),
      O => mac_addr_ram_data(2),
      WCLK => s_axi_aclk,
      WE => mac_addr_ram_we
    );
ram16x1_2: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000E30",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => mac_addr_ram_addr(3),
      A1 => mac_addr_ram_addr(2),
      A2 => mac_addr_ram_addr(1),
      A3 => mac_addr_ram_addr(0),
      A4 => '0',
      D => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(2),
      O => mac_addr_ram_data(1),
      WCLK => s_axi_aclk,
      WE => mac_addr_ram_we
    );
ram16x1_3: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000F10",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      A0 => mac_addr_ram_addr(3),
      A1 => mac_addr_ram_addr(2),
      A2 => mac_addr_ram_addr(1),
      A3 => mac_addr_ram_addr(0),
      A4 => '0',
      D => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3),
      O => mac_addr_ram_data(0),
      WCLK => s_axi_aclk,
      WE => mac_addr_ram_we
    );
state17a_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => mac_addr_ram_data(3),
      I1 => Q(0),
      I2 => mac_addr_ram_data(0),
      I3 => Q(3),
      O => \rdDestAddrNib_D_t_q_reg[2]_0\
    );
state17a_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => mac_addr_ram_data(2),
      I1 => Q(1),
      I2 => mac_addr_ram_data(1),
      I3 => Q(2),
      O => \rdDestAddrNib_D_t_q_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_rd_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rd_pntr_gc_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_18_out : in STD_LOGIC;
    fifo_tx_en : in STD_LOGIC;
    \wr_pntr_bin_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    phy_tx_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_rd_bin_cntr : entity is "rd_bin_cntr";
end ntps_top_axi_ethernetlite_0_0_rd_bin_cntr;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rd_pntr_gc_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rd_pntr_gc[1]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rd_pntr_gc[2]_i_1__0\ : label is "soft_lutpair52";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \rd_pntr_gc_reg[3]\(3 downto 0) <= \^rd_pntr_gc_reg[3]\(3 downto 0);
\gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      O => \plusOp__2\(0)
    );
\gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      O => \plusOp__2\(1)
    );
\gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      I2 => \^q\(0),
      O => \plusOp__2\(2)
    );
\gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => rd_pntr_plus1(0),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \plusOp__2\(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(0),
      Q => \^rd_pntr_gc_reg[3]\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => rd_pntr_plus1(1),
      Q => \^rd_pntr_gc_reg[3]\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(0),
      Q => \^rd_pntr_gc_reg[3]\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(1),
      Q => \^rd_pntr_gc_reg[3]\(3)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_tx_clk,
      CE => E(0),
      D => \plusOp__2\(0),
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      Q => rd_pntr_plus1(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \plusOp__2\(1),
      Q => rd_pntr_plus1(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \plusOp__2\(2),
      Q => \^q\(0)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \plusOp__2\(3),
      Q => \^q\(1)
    );
\ram_empty_i_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004000000004004"
    )
        port map (
      I0 => p_18_out,
      I1 => fifo_tx_en,
      I2 => rd_pntr_plus1(1),
      I3 => \wr_pntr_bin_reg[1]\(1),
      I4 => rd_pntr_plus1(0),
      I5 => \wr_pntr_bin_reg[1]\(0),
      O => ram_empty_fb_i_reg
    );
\rd_pntr_gc[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rd_pntr_gc_reg[3]\(0),
      I1 => \^rd_pntr_gc_reg[3]\(1),
      O => D(0)
    );
\rd_pntr_gc[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rd_pntr_gc_reg[3]\(1),
      I1 => \^rd_pntr_gc_reg[3]\(2),
      O => D(1)
    );
\rd_pntr_gc[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rd_pntr_gc_reg[3]\(2),
      I1 => \^rd_pntr_gc_reg[3]\(3),
      O => D(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_rd_bin_cntr_45 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rd_pntr_gc_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_rd_bin_cntr_45 : entity is "rd_bin_cntr";
end ntps_top_axi_ethernetlite_0_0_rd_bin_cntr_45;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_rd_bin_cntr_45 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rd_pntr_gc_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rd_pntr_gc[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rd_pntr_gc[1]_i_1\ : label is "soft_lutpair21";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \rd_pntr_gc_reg[3]\(3 downto 0) <= \^rd_pntr_gc_reg[3]\(3 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => plusOp(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(0),
      Q => \^rd_pntr_gc_reg[3]\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(1),
      Q => \^rd_pntr_gc_reg[3]\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(2),
      Q => \^rd_pntr_gc_reg[3]\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \^q\(3),
      Q => \^rd_pntr_gc_reg[3]\(3)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => plusOp(0),
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => plusOp(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => plusOp(3),
      Q => \^q\(3)
    );
\rd_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rd_pntr_gc_reg[3]\(1),
      I1 => \^rd_pntr_gc_reg[3]\(0),
      O => D(0)
    );
\rd_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rd_pntr_gc_reg[3]\(1),
      I1 => \^rd_pntr_gc_reg[3]\(2),
      O => D(1)
    );
\rd_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rd_pntr_gc_reg[3]\(2),
      I1 => \^rd_pntr_gc_reg[3]\(3),
      O => D(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_rd_handshaking_flags is
  port (
    \rxbuffer_addr_reg[11]\ : out STD_LOGIC;
    goto_readDestAdrNib1 : out STD_LOGIC;
    rx_addr_en : out STD_LOGIC;
    state0a : out STD_LOGIC;
    ram_valid_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q3_in9_in : in STD_LOGIC;
    \gpr1.dout_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    state4a : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : in STD_LOGIC;
    ping_rx_status_reg : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_rd_handshaking_flags : entity is "rd_handshaking_flags";
end ntps_top_axi_ethernetlite_0_0_rd_handshaking_flags;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_rd_handshaking_flags is
  signal \^rxbuffer_addr_reg[11]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rxbuffer_addr[11]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of state0a_i_4 : label is "soft_lutpair19";
begin
  \rxbuffer_addr_reg[11]\ <= \^rxbuffer_addr_reg[11]\;
\gv.ram_valid_d1_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => Q(0),
      D => ram_valid_i,
      Q => \^rxbuffer_addr_reg[11]\
    );
\pkt_length_cnt[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^rxbuffer_addr_reg[11]\,
      I1 => Q3_in9_in,
      I2 => \gpr1.dout_i_reg[0]\(0),
      O => goto_readDestAdrNib1
    );
\rxbuffer_addr[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rxbuffer_addr_reg[11]\,
      I1 => state4a,
      O => rx_addr_en
    );
state0a_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7077"
    )
        port map (
      I0 => \RX_PONG_REG_GEN.pong_rx_status_reg\,
      I1 => ping_rx_status_reg,
      I2 => \^rxbuffer_addr_reg[11]\,
      I3 => ram_empty_i_reg,
      O => state0a
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_rd_status_flags_as is
  port (
    fifo_empty_i : out STD_LOGIC;
    p_18_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_pntr_bin_reg[3]\ : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_tx_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_rd_status_flags_as : entity is "rd_status_flags_as";
end ntps_top_axi_ethernetlite_0_0_rd_status_flags_as;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_rd_status_flags_as is
  signal \^p_18_out\ : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  p_18_out <= \^p_18_out\;
\gpr1.dout_i[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_tx_en,
      I1 => \^p_18_out\,
      O => E(0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => \wr_pntr_bin_reg[3]\,
      PRE => Q(0),
      Q => \^p_18_out\
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => \wr_pntr_bin_reg[3]\,
      PRE => Q(0),
      Q => fifo_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_rd_status_flags_as_44 is
  port (
    state1a : out STD_LOGIC;
    p_18_out : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[1]\ : out STD_LOGIC;
    state1a_0 : out STD_LOGIC;
    \wr_pntr_bin_reg[2]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : in STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    state0a : in STD_LOGIC;
    ping_rx_status_reg : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : in STD_LOGIC;
    rxCrcRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_rd_status_flags_as_44 : entity is "rd_status_flags_as";
end ntps_top_axi_ethernetlite_0_0_rd_status_flags_as_44;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_rd_status_flags_as_44 is
  signal \^state1a\ : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  state1a <= \^state1a\;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \wr_pntr_bin_reg[2]\,
      PRE => Q(0),
      Q => p_18_out
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \wr_pntr_bin_reg[2]\,
      PRE => Q(0),
      Q => \^state1a\
    );
\rdDestAddrNib_D_t_q[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1515FF05"
    )
        port map (
      I0 => \rdDestAddrNib_D_t_q_reg[2]\,
      I1 => \^state1a\,
      I2 => \gpr1.dout_i_reg[1]\(0),
      I3 => \gv.ram_valid_d1_reg\,
      I4 => state0a,
      O => \rdDestAddrNib_D_t_q_reg[1]\
    );
state1a_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0DDD0000"
    )
        port map (
      I0 => \^state1a\,
      I1 => \gv.ram_valid_d1_reg\,
      I2 => ping_rx_status_reg,
      I3 => \RX_PONG_REG_GEN.pong_rx_status_reg\,
      I4 => rxCrcRst,
      O => state1a_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo is
  port (
    rst_full_ff_i : out STD_LOGIC;
    rst_full_gen_i : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gic0.gc0.count_d2_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Rst0 : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo : entity is "reset_blk_ramfifo";
end ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo is
  signal \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_asreg_d2 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d2 : STD_LOGIC;
  signal rst_d3 : STD_LOGIC;
  signal rst_rd_reg1 : STD_LOGIC;
  signal rst_rd_reg2 : STD_LOGIC;
  signal rst_wr_reg1 : STD_LOGIC;
  signal rst_wr_reg2 : STD_LOGIC;
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_asreg_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute ASYNC_REG of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute ASYNC_REG of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
begin
  rst_full_ff_i <= rst_d2;
\grstd1.grst_full.grst_f.RST_FULL_GEN_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => Rst0,
      D => rst_d3,
      Q => rst_full_gen_i
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => Rst0,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_d1,
      PRE => Rst0,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_d2,
      PRE => Rst0,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => rd_rst_asreg,
      Q => \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0\,
      Q => rd_rst_asreg_d2,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_rst_asreg,
      I1 => \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg_n_0\,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1__0_n_0\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d2,
      O => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0_n_0\,
      Q => Q(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0_n_0\,
      Q => Q(1)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0_n_0\,
      Q => Q(2)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => '0',
      PRE => Rst0,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => Rst0,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => Rst0,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => Rst0,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => wr_rst_asreg,
      Q => \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0\,
      Q => wr_rst_asreg_d2,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_asreg,
      I1 => \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg_n_0\,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d2,
      O => \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0_n_0\,
      Q => \gic0.gc0.count_d2_reg[0]\(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0_n_0\,
      Q => \gic0.gc0.count_d2_reg[0]\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo_40 is
  port (
    rst_full_ff_i : out STD_LOGIC;
    rst_full_gen_i : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gic0.gc0.count_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    phy_rx_clk : in STD_LOGIC;
    rst_s : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo_40 : entity is "reset_blk_ramfifo";
end ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo_40;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo_40 is
  signal \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_asreg_d1 : STD_LOGIC;
  signal rd_rst_asreg_d2 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d2 : STD_LOGIC;
  signal rst_d3 : STD_LOGIC;
  signal rst_rd_reg1 : STD_LOGIC;
  signal rst_rd_reg2 : STD_LOGIC;
  signal rst_wr_reg1 : STD_LOGIC;
  signal rst_wr_reg2 : STD_LOGIC;
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_asreg_d1 : STD_LOGIC;
  signal wr_rst_asreg_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute ASYNC_REG of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute ASYNC_REG of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
begin
  rst_full_ff_i <= rst_d2;
\grstd1.grst_full.grst_f.RST_FULL_GEN_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => rst_s,
      D => rst_d3,
      Q => rst_full_gen_i
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => '0',
      PRE => rst_s,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => rst_d1,
      PRE => rst_s,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => rst_d2,
      PRE => rst_s,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_rst_asreg,
      Q => rd_rst_asreg_d1,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_rst_asreg_d1,
      Q => rd_rst_asreg_d2,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d1,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d2,
      O => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\,
      Q => Q(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\,
      Q => Q(1)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\,
      Q => Q(2)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      PRE => rst_s,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => rst_s,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => '0',
      PRE => rst_s,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => rst_s,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => wr_rst_asreg,
      Q => wr_rst_asreg_d1,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => wr_rst_asreg_d1,
      Q => wr_rst_asreg_d2,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d1,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1__0_n_0\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d2,
      O => \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0\,
      Q => \gic0.gc0.count_reg[0]\(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1_n_0\,
      Q => \gic0.gc0.count_reg[0]\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_rx_statemachine is
  port (
    Q7_in : out STD_LOGIC;
    rxCrcRst : out STD_LOGIC;
    D17_out : out STD_LOGIC;
    Q11_in : out STD_LOGIC;
    rx_start : out STD_LOGIC;
    Q3_in9_in : out STD_LOGIC;
    busFifoData_is_5_d1 : out STD_LOGIC;
    \gv.ram_valid_d1_reg\ : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[2]_0\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    ram_valid_i : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxCrcEn : out STD_LOGIC;
    rxCrcEn_d1_reg : out STD_LOGIC;
    state2a_0 : out STD_LOGIC;
    \rxbuffer_addr_reg[11]\ : out STD_LOGIC;
    D694_out : out STD_LOGIC;
    RX_DONE_D1_I : out STD_LOGIC;
    \crc_local_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ping_rx_status_reg : out STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[2]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    crcokdelay_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : in STD_LOGIC;
    D10_out : in STD_LOGIC;
    D20_out : in STD_LOGIC;
    D11_out : in STD_LOGIC;
    \gpr1.dout_i_reg[4]\ : in STD_LOGIC;
    \gpr1.dout_i_reg[5]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gpr1.dout_i_reg[1]\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    rxBusFifoRdAck : in STD_LOGIC;
    \gpr1.dout_i_reg[1]_0\ : in STD_LOGIC;
    fifo_empty_i : in STD_LOGIC;
    rx_pong_ping_l : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg_0\ : in STD_LOGIC;
    goto_readDestAdrNib1 : in STD_LOGIC;
    p_18_out : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    \crc_local_reg[16]\ : in STD_LOGIC;
    \emac_rx_rd_data_d1_reg[3]\ : in STD_LOGIC;
    \emac_rx_rd_data_d1_reg[2]\ : in STD_LOGIC;
    \emac_rx_rd_data_d1_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gie_enable : in STD_LOGIC;
    p_9_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    STATE17A : in STD_LOGIC;
    p_17_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_intr_en0 : in STD_LOGIC;
    ping_rx_status_reg_0 : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.write_in_prog_reg\ : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg_1\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_rx_statemachine : entity is "rx_statemachine";
end ntps_top_axi_ethernetlite_0_0_rx_statemachine;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_rx_statemachine is
  signal D : STD_LOGIC;
  signal \^d17_out\ : STD_LOGIC;
  signal D18_out : STD_LOGIC;
  signal D19_out : STD_LOGIC;
  signal D24_out : STD_LOGIC;
  signal D25_out : STD_LOGIC;
  signal \Mac_addr_ram_addr_rd[0]_i_2_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_rd[0]_i_3_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_rd[1]_i_1_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_rd[2]_i_1_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_rd[2]_i_2_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_rd[2]_i_3_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_rd[3]_i_1_n_0\ : STD_LOGIC;
  signal Q0_in : STD_LOGIC;
  signal \^q11_in\ : STD_LOGIC;
  signal Q17_in : STD_LOGIC;
  signal Q3_in : STD_LOGIC;
  signal \^q3_in9_in\ : STD_LOGIC;
  signal \^q7_in\ : STD_LOGIC;
  signal Q_0 : STD_LOGIC;
  signal \^rx_done_d1_i\ : STD_LOGIC;
  signal \^busfifodata_is_5_d1\ : STD_LOGIC;
  signal checkingBroadcastAdr_reg : STD_LOGIC;
  signal checkingBroadcastAdr_reg_i_1_n_0 : STD_LOGIC;
  signal checkingBroadcastAdr_reg_i_2_n_0 : STD_LOGIC;
  signal checkingBroadcastAdr_reg_i_3_n_0 : STD_LOGIC;
  signal \^gv.ram_valid_d1_reg\ : STD_LOGIC;
  signal \pkt_length_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_length_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_length_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_length_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \pkt_length_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_length_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \pkt_length_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_length_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_length_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_length_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \pkt_length_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \pkt_length_cnt[6]_i_5_n_0\ : STD_LOGIC;
  signal \pkt_length_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \pkt_length_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \pkt_length_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \pkt_length_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \pkt_length_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \pkt_length_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \pkt_length_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal preamble_n_0 : STD_LOGIC;
  signal rdDestAddrNib_D_t : STD_LOGIC_VECTOR ( 0 to 3 );
  signal rdDestAddrNib_D_t_q : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \rdDestAddrNib_D_t_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[2]_i_3_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[2]_i_4_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[2]_i_5_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[3]_i_3_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[3]_i_4_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[3]_i_5_n_0\ : STD_LOGIC;
  signal \rdDestAddrNib_D_t_q[3]_i_6_n_0\ : STD_LOGIC;
  signal \^rddestaddrnib_d_t_q_reg[2]_0\ : STD_LOGIC;
  signal rxAbortRst : STD_LOGIC;
  signal \^rxcrcen\ : STD_LOGIC;
  signal \^rxcrcen_d1_reg\ : STD_LOGIC;
  signal \^rxcrcrst\ : STD_LOGIC;
  signal \^rx_start\ : STD_LOGIC;
  signal state0a_i_3_n_0 : STD_LOGIC;
  signal state17a_i_2_n_0 : STD_LOGIC;
  signal state17a_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Mac_addr_ram_addr_rd[2]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of checkingBroadcastAdr_reg_i_3 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \crc_local[31]_i_1\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of crcokdelay : label is "FDR";
  attribute box_type : string;
  attribute box_type of crcokdelay : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \pkt_length_cnt[3]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pkt_length_cnt[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pkt_length_cnt[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \pkt_length_cnt[6]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \pkt_length_cnt[6]_i_4\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of preamble : label is "FDR";
  attribute box_type of preamble : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \rdDestAddrNib_D_t_q[0]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rdDestAddrNib_D_t_q[0]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rdDestAddrNib_D_t_q[1]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rdDestAddrNib_D_t_q[2]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rdDestAddrNib_D_t_q[2]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rdDestAddrNib_D_t_q[2]_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rdDestAddrNib_D_t_q[3]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rdDestAddrNib_D_t_q[3]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rdDestAddrNib_D_t_q[3]_i_6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rxbuffer_addr[11]_i_1\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM of state0a : label is "FDS";
  attribute box_type of state0a : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of state0a_i_3 : label is "soft_lutpair34";
  attribute XILINX_LEGACY_PRIM of state17a_RnM : label is "FDR";
  attribute box_type of state17a_RnM : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of state17a_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of state17a_i_4 : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of state18a : label is "FDR";
  attribute box_type of state18a : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of state1a : label is "FDR";
  attribute box_type of state1a : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of state20a : label is "FDR";
  attribute box_type of state20a : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of state20a_i_1 : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of state22a : label is "FDR";
  attribute box_type of state22a : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of state22a_i_1 : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of state2a : label is "FDR";
  attribute box_type of state2a : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of state2a_i_3 : label is "soft_lutpair34";
  attribute XILINX_LEGACY_PRIM of state3a : label is "FDR";
  attribute box_type of state3a : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of state4a : label is "FDR";
  attribute box_type of state4a : label is "PRIMITIVE";
begin
  D17_out <= \^d17_out\;
  Q11_in <= \^q11_in\;
  Q3_in9_in <= \^q3_in9_in\;
  Q7_in <= \^q7_in\;
  RX_DONE_D1_I <= \^rx_done_d1_i\;
  busFifoData_is_5_d1 <= \^busfifodata_is_5_d1\;
  \gv.ram_valid_d1_reg\ <= \^gv.ram_valid_d1_reg\;
  \rdDestAddrNib_D_t_q_reg[2]_0\ <= \^rddestaddrnib_d_t_q_reg[2]_0\;
  rxCrcEn <= \^rxcrcen\;
  rxCrcEn_d1_reg <= \^rxcrcen_d1_reg\;
  rxCrcRst <= \^rxcrcrst\;
  rx_start <= \^rx_start\;
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F200FFFF"
    )
        port map (
      I0 => rxBusFifoRdAck,
      I1 => \^gv.ram_valid_d1_reg\,
      I2 => \^rxcrcrst\,
      I3 => rx_pong_ping_l,
      I4 => s_axi_aresetn,
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F2FFFF"
    )
        port map (
      I0 => rxBusFifoRdAck,
      I1 => \^gv.ram_valid_d1_reg\,
      I2 => \^rxcrcrst\,
      I3 => rx_pong_ping_l,
      I4 => s_axi_aresetn,
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^gv.ram_valid_d1_reg\,
      O => WEA(0)
    );
DONE_D1_I_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \pkt_length_cnt[6]_i_5_n_0\,
      I1 => \pkt_length_cnt_reg_n_0_[6]\,
      I2 => \pkt_length_cnt_reg_n_0_[5]\,
      I3 => \pkt_length_cnt_reg_n_0_[4]\,
      I4 => Q_0,
      O => \^rx_done_d1_i\
    );
IP2INTC_IRPT_REG_I_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => gie_enable,
      I1 => p_9_in(0),
      I2 => \^rx_done_d1_i\,
      I3 => STATE17A,
      I4 => p_17_in(0),
      O => D694_out
    );
\Mac_addr_ram_addr_rd[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F040F040F04000B0"
    )
        port map (
      I0 => rdDestAddrNib_D_t_q(1),
      I1 => state17a_i_2_n_0,
      I2 => rdDestAddrNib_D_t(0),
      I3 => \Mac_addr_ram_addr_rd[0]_i_3_n_0\,
      I4 => rdDestAddrNib_D_t(2),
      I5 => rdDestAddrNib_D_t(3),
      O => \Mac_addr_ram_addr_rd[0]_i_2_n_0\
    );
\Mac_addr_ram_addr_rd[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5500450055000000"
    )
        port map (
      I0 => \rdDestAddrNib_D_t_q[0]_i_4_n_0\,
      I1 => \rdDestAddrNib_D_t_q[2]_i_5_n_0\,
      I2 => \rdDestAddrNib_D_t_q[3]_i_6_n_0\,
      I3 => rdDestAddrNib_D_t_q(1),
      I4 => \rdDestAddrNib_D_t_q[1]_i_3_n_0\,
      I5 => \rdDestAddrNib_D_t_q[1]_i_2_n_0\,
      O => \Mac_addr_ram_addr_rd[0]_i_3_n_0\
    );
\Mac_addr_ram_addr_rd[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01E0"
    )
        port map (
      I0 => rdDestAddrNib_D_t(3),
      I1 => rdDestAddrNib_D_t(2),
      I2 => rdDestAddrNib_D_t(1),
      I3 => rdDestAddrNib_D_t(0),
      O => \Mac_addr_ram_addr_rd[1]_i_1_n_0\
    );
\Mac_addr_ram_addr_rd[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"31393908"
    )
        port map (
      I0 => \Mac_addr_ram_addr_rd[2]_i_2_n_0\,
      I1 => rdDestAddrNib_D_t(2),
      I2 => \Mac_addr_ram_addr_rd[2]_i_3_n_0\,
      I3 => rdDestAddrNib_D_t(1),
      I4 => rdDestAddrNib_D_t(0),
      O => \Mac_addr_ram_addr_rd[2]_i_1_n_0\
    );
\Mac_addr_ram_addr_rd[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEEEFAAAAAAAB"
    )
        port map (
      I0 => \rdDestAddrNib_D_t_q[3]_i_4_n_0\,
      I1 => \rdDestAddrNib_D_t_q[3]_i_3_n_0\,
      I2 => \gpr1.dout_i_reg[1]_0\,
      I3 => \rdDestAddrNib_D_t_q[3]_i_6_n_0\,
      I4 => rdDestAddrNib_D_t_q(1),
      I5 => goto_readDestAdrNib1,
      O => \Mac_addr_ram_addr_rd[2]_i_2_n_0\
    );
\Mac_addr_ram_addr_rd[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D0D0D0"
    )
        port map (
      I0 => \rdDestAddrNib_D_t_q[3]_i_6_n_0\,
      I1 => \gpr1.dout_i_reg[1]_0\,
      I2 => rdDestAddrNib_D_t_q(3),
      I3 => rdDestAddrNib_D_t_q(1),
      I4 => rdDestAddrNib_D_t_q(0),
      O => \Mac_addr_ram_addr_rd[2]_i_3_n_0\
    );
\Mac_addr_ram_addr_rd[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F040F0F0F0F000B"
    )
        port map (
      I0 => rdDestAddrNib_D_t_q(1),
      I1 => state17a_i_2_n_0,
      I2 => rdDestAddrNib_D_t(3),
      I3 => \Mac_addr_ram_addr_rd[0]_i_3_n_0\,
      I4 => rdDestAddrNib_D_t(0),
      I5 => rdDestAddrNib_D_t(2),
      O => \Mac_addr_ram_addr_rd[3]_i_1_n_0\
    );
\Mac_addr_ram_addr_rd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Mac_addr_ram_addr_rd[0]_i_2_n_0\,
      Q => \rdDestAddrNib_D_t_q_reg[2]_1\(3),
      R => SR(0)
    );
\Mac_addr_ram_addr_rd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Mac_addr_ram_addr_rd[1]_i_1_n_0\,
      Q => \rdDestAddrNib_D_t_q_reg[2]_1\(2),
      R => SR(0)
    );
\Mac_addr_ram_addr_rd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Mac_addr_ram_addr_rd[2]_i_1_n_0\,
      Q => \rdDestAddrNib_D_t_q_reg[2]_1\(1),
      R => SR(0)
    );
\Mac_addr_ram_addr_rd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Mac_addr_ram_addr_rd[3]_i_1_n_0\,
      Q => \rdDestAddrNib_D_t_q_reg[2]_1\(0),
      R => SR(0)
    );
\PONG_REG_GEN.pong_rx_status_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFFFC0AAC0C0"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => rx_pong_ping_l,
      I2 => \^rx_done_d1_i\,
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\,
      I4 => \AXI4_LITE_IF_GEN.write_in_prog_reg\,
      I5 => \RX_PONG_REG_GEN.pong_rx_status_reg_1\,
      O => \RX_PONG_REG_GEN.pong_rx_status_reg\
    );
busFifoData_is_5_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gpr1.dout_i_reg[5]\,
      Q => \^busfifodata_is_5_d1\,
      R => SS(0)
    );
checkingBroadcastAdr_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444544444444"
    )
        port map (
      I0 => \^rxcrcrst\,
      I1 => checkingBroadcastAdr_reg,
      I2 => checkingBroadcastAdr_reg_i_2_n_0,
      I3 => checkingBroadcastAdr_reg_i_3_n_0,
      I4 => rdDestAddrNib_D_t_q(0),
      I5 => rdDestAddrNib_D_t_q(3),
      O => checkingBroadcastAdr_reg_i_1_n_0
    );
checkingBroadcastAdr_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \emac_rx_rd_data_d1_reg[0]\(1),
      I1 => \emac_rx_rd_data_d1_reg[0]\(3),
      I2 => \emac_rx_rd_data_d1_reg[0]\(0),
      I3 => \emac_rx_rd_data_d1_reg[0]\(2),
      O => checkingBroadcastAdr_reg_i_2_n_0
    );
checkingBroadcastAdr_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rdDestAddrNib_D_t_q(1),
      I1 => rdDestAddrNib_D_t_q(2),
      O => checkingBroadcastAdr_reg_i_3_n_0
    );
checkingBroadcastAdr_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => checkingBroadcastAdr_reg_i_1_n_0,
      Q => checkingBroadcastAdr_reg,
      R => SS(0)
    );
\crc_local[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => rxAbortRst,
      I1 => s_axi_aresetn,
      I2 => \^rxcrcrst\,
      O => \crc_local_reg[31]\(0)
    );
crcokdelay: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D24_out,
      Q => \^q7_in\,
      R => crcokdelay_0
    );
crcokdelay_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^rxcrcen\,
      I1 => \^q7_in\,
      I2 => \crc_local_reg[16]\,
      O => D24_out
    );
\gpr1.dout_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555551"
    )
        port map (
      I0 => p_18_out,
      I1 => \^gv.ram_valid_d1_reg\,
      I2 => Q_0,
      I3 => \^rxcrcrst\,
      I4 => \^q11_in\,
      I5 => rxBusFifoRdAck,
      O => E(0)
    );
\gpr1.dout_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q3_in9_in\,
      I1 => Q3_in,
      I2 => rdDestAddrNib_D_t_q(1),
      I3 => rdDestAddrNib_D_t_q(2),
      I4 => rdDestAddrNib_D_t_q(3),
      I5 => rdDestAddrNib_D_t_q(0),
      O => \^gv.ram_valid_d1_reg\
    );
\gv.ram_valid_d1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555551"
    )
        port map (
      I0 => fifo_empty_i,
      I1 => \^gv.ram_valid_d1_reg\,
      I2 => Q_0,
      I3 => \^rxcrcrst\,
      I4 => \^q11_in\,
      I5 => rxBusFifoRdAck,
      O => ram_valid_i
    );
ping_rx_status_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => rx_intr_en0,
      I2 => rx_pong_ping_l,
      I3 => \^rx_done_d1_i\,
      I4 => ping_rx_status_reg_0,
      O => ping_rx_status_reg
    );
\pkt_length_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F111111"
    )
        port map (
      I0 => \pkt_length_cnt[2]_i_2_n_0\,
      I1 => \pkt_length_cnt_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => \^q3_in9_in\,
      I4 => rxBusFifoRdAck,
      O => \pkt_length_cnt[0]_i_1_n_0\
    );
\pkt_length_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41FF414141414141"
    )
        port map (
      I0 => \pkt_length_cnt[2]_i_2_n_0\,
      I1 => \pkt_length_cnt_reg_n_0_[0]\,
      I2 => \pkt_length_cnt_reg_n_0_[1]\,
      I3 => Q(0),
      I4 => \^q3_in9_in\,
      I5 => rxBusFifoRdAck,
      O => \pkt_length_cnt[1]_i_1_n_0\
    );
\pkt_length_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4441"
    )
        port map (
      I0 => \pkt_length_cnt[2]_i_2_n_0\,
      I1 => \pkt_length_cnt_reg_n_0_[2]\,
      I2 => \pkt_length_cnt_reg_n_0_[1]\,
      I3 => \pkt_length_cnt_reg_n_0_[0]\,
      I4 => goto_readDestAdrNib1,
      O => \pkt_length_cnt[2]_i_1_n_0\
    );
\pkt_length_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \pkt_length_cnt_reg_n_0_[5]\,
      I1 => \pkt_length_cnt_reg_n_0_[6]\,
      I2 => \pkt_length_cnt_reg_n_0_[3]\,
      I3 => \pkt_length_cnt_reg_n_0_[4]\,
      I4 => \pkt_length_cnt_reg_n_0_[1]\,
      I5 => \pkt_length_cnt_reg_n_0_[2]\,
      O => \pkt_length_cnt[2]_i_2_n_0\
    );
\pkt_length_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8AAA9"
    )
        port map (
      I0 => \pkt_length_cnt_reg_n_0_[3]\,
      I1 => \pkt_length_cnt_reg_n_0_[0]\,
      I2 => \pkt_length_cnt_reg_n_0_[2]\,
      I3 => \pkt_length_cnt_reg_n_0_[1]\,
      I4 => \pkt_length_cnt[3]_i_2_n_0\,
      I5 => goto_readDestAdrNib1,
      O => \pkt_length_cnt[3]_i_1_n_0\
    );
\pkt_length_cnt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \pkt_length_cnt_reg_n_0_[6]\,
      I1 => \pkt_length_cnt_reg_n_0_[5]\,
      I2 => \pkt_length_cnt_reg_n_0_[4]\,
      O => \pkt_length_cnt[3]_i_2_n_0\
    );
\pkt_length_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0EF0"
    )
        port map (
      I0 => \pkt_length_cnt_reg_n_0_[6]\,
      I1 => \pkt_length_cnt_reg_n_0_[5]\,
      I2 => \pkt_length_cnt_reg_n_0_[4]\,
      I3 => \pkt_length_cnt[6]_i_5_n_0\,
      I4 => goto_readDestAdrNib1,
      O => \pkt_length_cnt[4]_i_1_n_0\
    );
\pkt_length_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF9A8A"
    )
        port map (
      I0 => \pkt_length_cnt_reg_n_0_[5]\,
      I1 => \pkt_length_cnt_reg_n_0_[4]\,
      I2 => \pkt_length_cnt[6]_i_5_n_0\,
      I3 => \pkt_length_cnt_reg_n_0_[6]\,
      I4 => goto_readDestAdrNib1,
      O => \pkt_length_cnt[5]_i_1_n_0\
    );
\pkt_length_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => preamble_n_0,
      I1 => s_axi_aresetn,
      O => \pkt_length_cnt[6]_i_1_n_0\
    );
\pkt_length_cnt[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD50000"
    )
        port map (
      I0 => \^rxcrcen_d1_reg\,
      I1 => Q3_in,
      I2 => Q(1),
      I3 => \^q3_in9_in\,
      I4 => rxBusFifoRdAck,
      O => \pkt_length_cnt[6]_i_2_n_0\
    );
\pkt_length_cnt[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFD00"
    )
        port map (
      I0 => \pkt_length_cnt[6]_i_5_n_0\,
      I1 => \pkt_length_cnt_reg_n_0_[5]\,
      I2 => \pkt_length_cnt_reg_n_0_[4]\,
      I3 => \pkt_length_cnt_reg_n_0_[6]\,
      I4 => goto_readDestAdrNib1,
      O => \pkt_length_cnt[6]_i_3_n_0\
    );
\pkt_length_cnt[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rdDestAddrNib_D_t_q(2),
      I1 => rdDestAddrNib_D_t_q(1),
      I2 => rdDestAddrNib_D_t_q(3),
      I3 => rdDestAddrNib_D_t_q(0),
      O => \^rxcrcen_d1_reg\
    );
\pkt_length_cnt[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \pkt_length_cnt_reg_n_0_[1]\,
      I1 => \pkt_length_cnt_reg_n_0_[2]\,
      I2 => \pkt_length_cnt_reg_n_0_[0]\,
      I3 => \pkt_length_cnt_reg_n_0_[3]\,
      O => \pkt_length_cnt[6]_i_5_n_0\
    );
\pkt_length_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pkt_length_cnt[6]_i_2_n_0\,
      D => \pkt_length_cnt[0]_i_1_n_0\,
      Q => \pkt_length_cnt_reg_n_0_[0]\,
      R => \pkt_length_cnt[6]_i_1_n_0\
    );
\pkt_length_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pkt_length_cnt[6]_i_2_n_0\,
      D => \pkt_length_cnt[1]_i_1_n_0\,
      Q => \pkt_length_cnt_reg_n_0_[1]\,
      R => \pkt_length_cnt[6]_i_1_n_0\
    );
\pkt_length_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pkt_length_cnt[6]_i_2_n_0\,
      D => \pkt_length_cnt[2]_i_1_n_0\,
      Q => \pkt_length_cnt_reg_n_0_[2]\,
      R => \pkt_length_cnt[6]_i_1_n_0\
    );
\pkt_length_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pkt_length_cnt[6]_i_2_n_0\,
      D => \pkt_length_cnt[3]_i_1_n_0\,
      Q => \pkt_length_cnt_reg_n_0_[3]\,
      R => \pkt_length_cnt[6]_i_1_n_0\
    );
\pkt_length_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pkt_length_cnt[6]_i_2_n_0\,
      D => \pkt_length_cnt[4]_i_1_n_0\,
      Q => \pkt_length_cnt_reg_n_0_[4]\,
      R => \pkt_length_cnt[6]_i_1_n_0\
    );
\pkt_length_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pkt_length_cnt[6]_i_2_n_0\,
      D => \pkt_length_cnt[5]_i_1_n_0\,
      Q => \pkt_length_cnt_reg_n_0_[5]\,
      R => \pkt_length_cnt[6]_i_1_n_0\
    );
\pkt_length_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pkt_length_cnt[6]_i_2_n_0\,
      D => \pkt_length_cnt[6]_i_3_n_0\,
      Q => \pkt_length_cnt_reg_n_0_[6]\,
      R => \pkt_length_cnt[6]_i_1_n_0\
    );
preamble: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gpr1.dout_i_reg[4]\,
      Q => preamble_n_0,
      R => SS(0)
    );
\rdDestAddrNib_D_t_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => \^busfifodata_is_5_d1\,
      I1 => \^rx_start\,
      I2 => Q(2),
      I3 => \gpr1.dout_i_reg[1]\,
      I4 => s_axi_aresetn,
      O => \rdDestAddrNib_D_t_q[0]_i_1_n_0\
    );
\rdDestAddrNib_D_t_q[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F444F4"
    )
        port map (
      I0 => \gpr1.dout_i_reg[1]_0\,
      I1 => \rdDestAddrNib_D_t_q[0]_i_3_n_0\,
      I2 => rdDestAddrNib_D_t_q(1),
      I3 => state17a_i_2_n_0,
      I4 => \rdDestAddrNib_D_t_q[0]_i_4_n_0\,
      O => rdDestAddrNib_D_t(0)
    );
\rdDestAddrNib_D_t_q[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => rdDestAddrNib_D_t_q(0),
      I1 => \^rddestaddrnib_d_t_q_reg[2]_0\,
      I2 => rxBusFifoRdAck,
      I3 => rdDestAddrNib_D_t_q(1),
      O => \rdDestAddrNib_D_t_q[0]_i_3_n_0\
    );
\rdDestAddrNib_D_t_q[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => rdDestAddrNib_D_t_q(0),
      I1 => rdDestAddrNib_D_t_q(3),
      I2 => rdDestAddrNib_D_t_q(2),
      O => \rdDestAddrNib_D_t_q[0]_i_4_n_0\
    );
\rdDestAddrNib_D_t_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF550355FF55"
    )
        port map (
      I0 => state17a_i_2_n_0,
      I1 => \rdDestAddrNib_D_t_q[1]_i_2_n_0\,
      I2 => \rdDestAddrNib_D_t_q[1]_i_3_n_0\,
      I3 => rdDestAddrNib_D_t_q(1),
      I4 => ram_empty_i_reg_0,
      I5 => \rdDestAddrNib_D_t_q[0]_i_4_n_0\,
      O => rdDestAddrNib_D_t(1)
    );
\rdDestAddrNib_D_t_q[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF3FF32"
    )
        port map (
      I0 => rdDestAddrNib_D_t_q(1),
      I1 => Q(1),
      I2 => rdDestAddrNib_D_t_q(2),
      I3 => rdDestAddrNib_D_t_q(0),
      I4 => rdDestAddrNib_D_t_q(3),
      O => \rdDestAddrNib_D_t_q[1]_i_2_n_0\
    );
\rdDestAddrNib_D_t_q[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAA8"
    )
        port map (
      I0 => \^rddestaddrnib_d_t_q_reg[2]_0\,
      I1 => rdDestAddrNib_D_t_q(2),
      I2 => rdDestAddrNib_D_t_q(1),
      I3 => rdDestAddrNib_D_t_q(3),
      I4 => rdDestAddrNib_D_t_q(0),
      I5 => fifo_empty_i,
      O => \rdDestAddrNib_D_t_q[1]_i_3_n_0\
    );
\rdDestAddrNib_D_t_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCEE00AACCFE00AA"
    )
        port map (
      I0 => \rdDestAddrNib_D_t_q[2]_i_2_n_0\,
      I1 => \rdDestAddrNib_D_t_q[2]_i_3_n_0\,
      I2 => \rdDestAddrNib_D_t_q[2]_i_4_n_0\,
      I3 => \rdDestAddrNib_D_t_q[1]_i_3_n_0\,
      I4 => rdDestAddrNib_D_t_q(2),
      I5 => \rdDestAddrNib_D_t_q[2]_i_5_n_0\,
      O => rdDestAddrNib_D_t(2)
    );
\rdDestAddrNib_D_t_q[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => rxBusFifoRdAck,
      I1 => \^rddestaddrnib_d_t_q_reg[2]_0\,
      I2 => rdDestAddrNib_D_t_q(3),
      I3 => rdDestAddrNib_D_t_q(2),
      I4 => \rdDestAddrNib_D_t_q[2]_i_3_n_0\,
      I5 => \rdDestAddrNib_D_t_q[2]_i_5_n_0\,
      O => \rdDestAddrNib_D_t_q[2]_i_2_n_0\
    );
\rdDestAddrNib_D_t_q[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rdDestAddrNib_D_t_q(1),
      I1 => rdDestAddrNib_D_t_q(0),
      O => \rdDestAddrNib_D_t_q[2]_i_3_n_0\
    );
\rdDestAddrNib_D_t_q[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^rddestaddrnib_d_t_q_reg[2]_0\,
      I1 => rdDestAddrNib_D_t_q(3),
      I2 => rxBusFifoRdAck,
      O => \rdDestAddrNib_D_t_q[2]_i_4_n_0\
    );
\rdDestAddrNib_D_t_q[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => Q(1),
      I1 => rdDestAddrNib_D_t_q(0),
      I2 => rdDestAddrNib_D_t_q(3),
      I3 => rdDestAddrNib_D_t_q(1),
      I4 => rdDestAddrNib_D_t_q(2),
      O => \rdDestAddrNib_D_t_q[2]_i_5_n_0\
    );
\rdDestAddrNib_D_t_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F400F4F4F400F500"
    )
        port map (
      I0 => \rdDestAddrNib_D_t_q[3]_i_2_n_0\,
      I1 => \rdDestAddrNib_D_t_q[3]_i_3_n_0\,
      I2 => \rdDestAddrNib_D_t_q[3]_i_4_n_0\,
      I3 => \rdDestAddrNib_D_t_q[3]_i_5_n_0\,
      I4 => \gpr1.dout_i_reg[1]_0\,
      I5 => \rdDestAddrNib_D_t_q[3]_i_6_n_0\,
      O => rdDestAddrNib_D_t(3)
    );
\rdDestAddrNib_D_t_q[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAFFBF"
    )
        port map (
      I0 => rdDestAddrNib_D_t_q(1),
      I1 => rxBusFifoRdAck,
      I2 => \^q3_in9_in\,
      I3 => Q(0),
      I4 => rdDestAddrNib_D_t_q(2),
      I5 => rdDestAddrNib_D_t_q(0),
      O => \rdDestAddrNib_D_t_q[3]_i_2_n_0\
    );
\rdDestAddrNib_D_t_q[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rdDestAddrNib_D_t_q(2),
      I1 => rdDestAddrNib_D_t_q(0),
      O => \rdDestAddrNib_D_t_q[3]_i_3_n_0\
    );
\rdDestAddrNib_D_t_q[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF08FF00FF00"
    )
        port map (
      I0 => Q(1),
      I1 => rdDestAddrNib_D_t_q(1),
      I2 => rdDestAddrNib_D_t_q(0),
      I3 => rdDestAddrNib_D_t_q(3),
      I4 => \^rddestaddrnib_d_t_q_reg[2]_0\,
      I5 => rxBusFifoRdAck,
      O => \rdDestAddrNib_D_t_q[3]_i_4_n_0\
    );
\rdDestAddrNib_D_t_q[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => rdDestAddrNib_D_t_q(0),
      I1 => rdDestAddrNib_D_t_q(1),
      I2 => rdDestAddrNib_D_t_q(3),
      O => \rdDestAddrNib_D_t_q[3]_i_5_n_0\
    );
\rdDestAddrNib_D_t_q[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^rddestaddrnib_d_t_q_reg[2]_0\,
      I1 => rxBusFifoRdAck,
      O => \rdDestAddrNib_D_t_q[3]_i_6_n_0\
    );
\rdDestAddrNib_D_t_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdDestAddrNib_D_t(0),
      Q => rdDestAddrNib_D_t_q(0),
      R => \rdDestAddrNib_D_t_q[0]_i_1_n_0\
    );
\rdDestAddrNib_D_t_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdDestAddrNib_D_t(1),
      Q => rdDestAddrNib_D_t_q(1),
      R => \rdDestAddrNib_D_t_q[0]_i_1_n_0\
    );
\rdDestAddrNib_D_t_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdDestAddrNib_D_t(2),
      Q => rdDestAddrNib_D_t_q(2),
      R => \rdDestAddrNib_D_t_q[0]_i_1_n_0\
    );
\rdDestAddrNib_D_t_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdDestAddrNib_D_t(3),
      Q => rdDestAddrNib_D_t_q(3),
      R => \rdDestAddrNib_D_t_q[0]_i_1_n_0\
    );
rxCrcEn_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA80AA"
    )
        port map (
      I0 => rxBusFifoRdAck,
      I1 => Q(1),
      I2 => Q3_in,
      I3 => \^rxcrcen_d1_reg\,
      I4 => \^q3_in9_in\,
      O => \^rxcrcen\
    );
\rxbuffer_addr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^rx_start\,
      I1 => s_axi_aresetn,
      O => \rxbuffer_addr_reg[11]\
    );
state0a: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d17_out\,
      Q => \^rxcrcrst\,
      S => SS(0)
    );
state0a_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0EFF0EFFFFFF0E"
    )
        port map (
      I0 => \^rx_start\,
      I1 => Q17_in,
      I2 => \gpr1.dout_i_reg[1]\,
      I3 => state0a_i_3_n_0,
      I4 => \^rxcrcrst\,
      I5 => \RX_PONG_REG_GEN.pong_rx_status_reg_0\,
      O => \^d17_out\
    );
state0a_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => Q17_in,
      I1 => Q(2),
      I2 => Q_0,
      I3 => rxAbortRst,
      O => state0a_i_3_n_0
    );
state17a_RnM: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D18_out,
      Q => Q3_in,
      R => SS(0)
    );
state17a_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404040FF40404040"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q3_in,
      I3 => state17a_i_2_n_0,
      I4 => rdDestAddrNib_D_t_q(1),
      I5 => rdDestAddrNib_D_t_q(0),
      O => D18_out
    );
state17a_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => rxBusFifoRdAck,
      I1 => rdDestAddrNib_D_t_q(3),
      I2 => \rdDestAddrNib_D_t_q[2]_i_5_n_0\,
      I3 => rdDestAddrNib_D_t_q(2),
      I4 => \^rddestaddrnib_d_t_q_reg[2]_0\,
      O => state17a_i_2_n_0
    );
state17a_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFAFBFAFBFA4040"
    )
        port map (
      I0 => \^rxcrcrst\,
      I1 => checkingBroadcastAdr_reg,
      I2 => checkingBroadcastAdr_reg_i_2_n_0,
      I3 => state17a_i_4_n_0,
      I4 => \emac_rx_rd_data_d1_reg[3]\,
      I5 => \emac_rx_rd_data_d1_reg[2]\,
      O => \^rddestaddrnib_d_t_q_reg[2]_0\
    );
state17a_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => rdDestAddrNib_D_t_q(3),
      I1 => rdDestAddrNib_D_t_q(0),
      I2 => rdDestAddrNib_D_t_q(2),
      I3 => rdDestAddrNib_D_t_q(1),
      O => state17a_i_4_n_0
    );
state18a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D19_out,
      Q => Q0_in,
      R => SS(0)
    );
state18a_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDCCDDC0"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^q3_in9_in\,
      I3 => Q3_in,
      I4 => \^q11_in\,
      O => D19_out
    );
state1a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_empty_i_reg,
      Q => Q17_in,
      R => SS(0)
    );
state20a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D25_out,
      Q => Q_0,
      R => SS(0)
    );
state20a_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q0_in,
      I1 => \^q7_in\,
      O => D25_out
    );
state22a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => rxAbortRst,
      R => SS(0)
    );
state22a_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \gpr1.dout_i_reg[1]_0\,
      I1 => Q0_in,
      I2 => \^q7_in\,
      I3 => preamble_n_0,
      O => D
    );
state2a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D10_out,
      Q => \^q11_in\,
      R => SS(0)
    );
state2a_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_start\,
      I1 => Q17_in,
      O => state2a_0
    );
state3a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D20_out,
      Q => \^rx_start\,
      R => SS(0)
    );
state4a: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D11_out,
      Q => \^q3_in9_in\,
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_synchronizer_ff is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_tx_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_synchronizer_ff : entity is "synchronizer_ff";
end ntps_top_axi_ethernetlite_0_0_synchronizer_ff;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_synchronizer_ff is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
begin
  D(3 downto 0) <= Q_reg(3 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(3),
      Q => Q_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_synchronizer_ff_26 is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_26 : entity is "synchronizer_ff";
end ntps_top_axi_ethernetlite_0_0_synchronizer_ff_26;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_26 is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
begin
  D(3 downto 0) <= Q_reg(3 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => Q(3),
      Q => Q_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_synchronizer_ff_27 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_pntr_bin_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_tx_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_27 : entity is "synchronizer_ff";
end ntps_top_axi_ethernetlite_0_0_synchronizer_ff_27;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_27 is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
begin
  \out\(0) <= Q_reg(3);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(3),
      Q => Q_reg(3)
    );
\wr_pntr_bin[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(1),
      I1 => Q_reg(0),
      I2 => Q_reg(3),
      I3 => Q_reg(2),
      O => \wr_pntr_bin_reg[2]\(0)
    );
\wr_pntr_bin[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(1),
      I2 => Q_reg(3),
      O => \wr_pntr_bin_reg[2]\(1)
    );
\wr_pntr_bin[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(3),
      O => \wr_pntr_bin_reg[2]\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_synchronizer_ff_28 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_pntr_bin_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_28 : entity is "synchronizer_ff";
end ntps_top_axi_ethernetlite_0_0_synchronizer_ff_28;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_28 is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
begin
  \out\(0) <= Q_reg(3);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => D(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => D(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => D(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => D(3),
      Q => Q_reg(3)
    );
\rd_pntr_bin[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(1),
      I1 => Q_reg(0),
      I2 => Q_reg(3),
      I3 => Q_reg(2),
      O => \rd_pntr_bin_reg[2]\(0)
    );
\rd_pntr_bin[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(1),
      I2 => Q_reg(3),
      O => \rd_pntr_bin_reg[2]\(1)
    );
\rd_pntr_bin[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(3),
      O => \rd_pntr_bin_reg[2]\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_synchronizer_ff_46 is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_46 : entity is "synchronizer_ff";
end ntps_top_axi_ethernetlite_0_0_synchronizer_ff_46;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_46 is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
begin
  D(3 downto 0) <= Q_reg(3 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(3),
      Q => Q_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_synchronizer_ff_47 is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_rx_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_47 : entity is "synchronizer_ff";
end ntps_top_axi_ethernetlite_0_0_synchronizer_ff_47;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_47 is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
begin
  D(3 downto 0) <= Q_reg(3 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => Q(3),
      Q => Q_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_synchronizer_ff_48 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_pntr_bin_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_48 : entity is "synchronizer_ff";
end ntps_top_axi_ethernetlite_0_0_synchronizer_ff_48;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_48 is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
begin
  \out\(0) <= Q_reg(3);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(3),
      Q => Q_reg(3)
    );
\wr_pntr_bin[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(1),
      I1 => Q_reg(0),
      I2 => Q_reg(3),
      I3 => Q_reg(2),
      O => \wr_pntr_bin_reg[2]\(0)
    );
\wr_pntr_bin[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(1),
      I2 => Q_reg(3),
      O => \wr_pntr_bin_reg[2]\(1)
    );
\wr_pntr_bin[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(3),
      O => \wr_pntr_bin_reg[2]\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_synchronizer_ff_49 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_pntr_bin_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_rx_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_49 : entity is "synchronizer_ff";
end ntps_top_axi_ethernetlite_0_0_synchronizer_ff_49;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_synchronizer_ff_49 is
  signal Q_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute ASYNC_REG of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
begin
  \out\(0) <= Q_reg(3);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => D(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => D(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => D(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => D(3),
      Q => Q_reg(3)
    );
\rd_pntr_bin[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(1),
      I1 => Q_reg(0),
      I2 => Q_reg(3),
      I3 => Q_reg(2),
      O => \rd_pntr_bin_reg[2]\(0)
    );
\rd_pntr_bin[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(1),
      I2 => Q_reg(3),
      O => \rd_pntr_bin_reg[2]\(1)
    );
\rd_pntr_bin[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(2),
      I1 => Q_reg(3),
      O => \rd_pntr_bin_reg[2]\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_tx_statemachine is
  port (
    loopback_en_reg : out STD_LOGIC;
    transmit_start_reg_reg_0 : out STD_LOGIC;
    Q1_in : out STD_LOGIC;
    enblData : out STD_LOGIC;
    Q0_in9_in : out STD_LOGIC;
    enblCRC : out STD_LOGIC;
    Q32_in : out STD_LOGIC;
    STATE24A_0 : out STD_LOGIC;
    tx_en_i : out STD_LOGIC;
    mac_addr_ram_we : out STD_LOGIC;
    \emac_tx_wr_data_d1_reg[2]\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \emac_tx_wr_data_d1_reg[2]_0\ : out STD_LOGIC;
    \emac_tx_wr_data_d1_reg[1]\ : out STD_LOGIC;
    \emac_tx_wr_data_d1_reg[0]\ : out STD_LOGIC;
    lut_val : out STD_LOGIC;
    \emac_tx_wr_data_d1_reg[1]_0\ : out STD_LOGIC;
    \emac_tx_wr_data_d1_reg[3]\ : out STD_LOGIC;
    CE : out STD_LOGIC;
    \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \txNibbleCnt_pad_reg[11]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    txComboBusFifoWrCntRst : out STD_LOGIC;
    axi_phy_tx_en_i_p0 : out STD_LOGIC;
    CE_0 : out STD_LOGIC;
    \thisState_reg[1]\ : out STD_LOGIC;
    txCrcEn : out STD_LOGIC;
    emac_tx_wr_i : out STD_LOGIC;
    \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    txComboNibbleCntRst : out STD_LOGIC;
    Rst0 : out STD_LOGIC;
    \txbuffer_addr_reg[11]\ : out STD_LOGIC;
    tx_addr_en : out STD_LOGIC;
    \gic0.gc0.count_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : out STD_LOGIC;
    \txNibbleCnt_pad_reg[0]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \status_reg_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    loopback_en_reg_0 : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    D029_out : in STD_LOGIC;
    D031_out : in STD_LOGIC;
    D0 : in STD_LOGIC;
    D28_out : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \txNibbleCnt_pad_reg[8]\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    rx_pong_ping_l : in STD_LOGIC;
    \TX_PONG_REG_GEN.pong_mac_program_reg\ : in STD_LOGIC;
    currentTxBusFifoWrCnt : in STD_LOGIC_VECTOR ( 3 downto 0 );
    emac_tx_wr_d1 : in STD_LOGIC;
    txCrcEn_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tx_packet_length_reg[15]\ : in STD_LOGIC;
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1\ : in STD_LOGIC;
    txfifo_full : in STD_LOGIC;
    crcCnt : in STD_LOGIC_VECTOR ( 0 to 3 );
    p_0_out : in STD_LOGIC;
    STATE14A_0 : in STD_LOGIC;
    tx_done_d2 : in STD_LOGIC;
    \TX_PONG_REG_GEN.pong_tx_status_reg\ : in STD_LOGIC;
    p_17_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2\ : in STD_LOGIC;
    \thisState_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txfifo_empty : in STD_LOGIC;
    \tx_packet_length_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    txNibbleCnt_pad0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \txNibbleCnt_pad_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_done_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_intr_en0 : in STD_LOGIC;
    loopback_en_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_tx_statemachine : entity is "tx_statemachine";
end ntps_top_axi_ethernetlite_0_0_tx_statemachine;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_tx_statemachine is
  signal D0_in : STD_LOGIC;
  signal D10_in : STD_LOGIC;
  signal D11_in : STD_LOGIC;
  signal D19_out : STD_LOGIC;
  signal D1_in : STD_LOGIC;
  signal D20_out : STD_LOGIC;
  signal D21_out : STD_LOGIC;
  signal D22_out : STD_LOGIC;
  signal D23_out : STD_LOGIC;
  signal D24_out : STD_LOGIC;
  signal D25_out : STD_LOGIC;
  signal D27_out : STD_LOGIC;
  signal D29_out : STD_LOGIC;
  signal D2_in : STD_LOGIC;
  signal D3_in : STD_LOGIC;
  signal D4_in : STD_LOGIC;
  signal D4_in3_in : STD_LOGIC;
  signal D5_in : STD_LOGIC;
  signal D6_in : STD_LOGIC;
  signal D6_in4_in : STD_LOGIC;
  signal D7_in : STD_LOGIC;
  signal D8_in : STD_LOGIC;
  signal D9_in : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_4_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_6_n_0\ : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_wr[0]_i_1_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_wr[0]_i_2_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_wr[0]_i_3_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_wr[1]_i_1_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_wr[2]_i_1_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_wr[2]_i_2_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_wr[2]_i_3_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_wr[3]_i_1_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_wr[3]_i_2_n_0\ : STD_LOGIC;
  signal \Mac_addr_ram_addr_wr[3]_i_3_n_0\ : STD_LOGIC;
  signal Mac_addr_ram_we0 : STD_LOGIC;
  signal Mac_addr_ram_we_i_2_n_0 : STD_LOGIC;
  signal Mac_addr_ram_we_i_3_n_0 : STD_LOGIC;
  signal Mac_addr_ram_we_i_4_n_0 : STD_LOGIC;
  signal Mac_addr_ram_we_i_5_n_0 : STD_LOGIC;
  signal Q0_in0_in : STD_LOGIC;
  signal Q0_in11_in : STD_LOGIC;
  signal \^q0_in9_in\ : STD_LOGIC;
  signal \^q1_in\ : STD_LOGIC;
  signal Q26_in : STD_LOGIC;
  signal Q2_in1_in : STD_LOGIC;
  signal \^q32_in\ : STD_LOGIC;
  signal Q5_in : STD_LOGIC;
  signal STATE0A_i_2_n_0 : STD_LOGIC;
  signal \^state24a_0\ : STD_LOGIC;
  signal STATE26A_i_1_n_0 : STD_LOGIC;
  signal STATE39A_n_0 : STD_LOGIC;
  signal axi_fifo_tx_en : STD_LOGIC;
  signal busFifoWrCntRst_reg : STD_LOGIC;
  signal \^enblcrc\ : STD_LOGIC;
  signal \^enbldata\ : STD_LOGIC;
  signal enblPreamble : STD_LOGIC;
  signal enblSFD : STD_LOGIC;
  signal \^loopback_en_reg\ : STD_LOGIC;
  signal mac_program_start : STD_LOGIC;
  signal mac_program_start_reg : STD_LOGIC;
  signal transmit_start : STD_LOGIC;
  signal transmit_start_reg : STD_LOGIC;
  signal \^transmit_start_reg_reg_0\ : STD_LOGIC;
  signal txBusFifoWrCntRst : STD_LOGIC;
  signal \^tx_en_i\ : STD_LOGIC;
  signal \txbuffer_addr[11]_i_4_n_0\ : STD_LOGIC;
  signal txcrcen_d1_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \Mac_addr_ram_addr_wr[0]_i_3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \Mac_addr_ram_addr_wr[2]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of Mac_addr_ram_we_i_2 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of Mac_addr_ram_we_i_3 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of Mac_addr_ram_we_i_5 : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_1__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \PERBIT_GEN[11].MULT_AND_i1_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of RAM_reg_0_15_0_5_i_2 : label is "soft_lutpair55";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of STATE0A : label is "FDS";
  attribute box_type : string;
  attribute box_type of STATE0A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE10A : label is "FDR";
  attribute box_type of STATE10A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE11A : label is "FDR";
  attribute box_type of STATE11A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE12A : label is "FDR";
  attribute box_type of STATE12A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE13A : label is "FDR";
  attribute box_type of STATE13A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE14A : label is "FDR";
  attribute box_type of STATE14A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE15A : label is "FDR";
  attribute box_type of STATE15A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE16A : label is "FDR";
  attribute box_type of STATE16A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE17A : label is "FDR";
  attribute box_type of STATE17A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE24A : label is "FDR";
  attribute box_type of STATE24A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE25A : label is "FDR";
  attribute box_type of STATE25A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE26A : label is "FDR";
  attribute box_type of STATE26A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE27A : label is "FDR";
  attribute box_type of STATE27A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE28A : label is "FDR";
  attribute box_type of STATE28A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE29A : label is "FDR";
  attribute box_type of STATE29A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE30A : label is "FDR";
  attribute box_type of STATE30A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE31A : label is "FDR";
  attribute box_type of STATE31A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE32A : label is "FDR";
  attribute box_type of STATE32A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE33A : label is "FDR";
  attribute box_type of STATE33A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE34A : label is "FDR";
  attribute box_type of STATE34A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE35A : label is "FDR";
  attribute box_type of STATE35A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE36A : label is "FDR";
  attribute box_type of STATE36A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE37A : label is "FDR";
  attribute box_type of STATE37A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE38A : label is "FDR";
  attribute box_type of STATE38A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE39A : label is "FDR";
  attribute box_type of STATE39A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE5A : label is "FDR";
  attribute box_type of STATE5A : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of STATE5A_i_1 : label is "soft_lutpair66";
  attribute XILINX_LEGACY_PRIM of STATE6A : label is "FDR";
  attribute box_type of STATE6A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE7A : label is "FDR";
  attribute box_type of STATE7A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE8A : label is "FDR";
  attribute box_type of STATE8A : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of STATE9A : label is "FDR";
  attribute box_type of STATE9A : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of axi_phy_tx_en_i_p_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of busFifoWrCntRst_reg_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of mac_program_start_reg_i_1 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \nibData[31]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of pipeIt_i_1 : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \status_reg[0]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \status_reg[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \status_reg[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \status_reg[3]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \status_reg[4]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \status_reg[5]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \status_reg[5]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of transmit_start_reg_i_1 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \txNibbleCnt_pad[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \txNibbleCnt_pad[10]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \txNibbleCnt_pad[11]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \txNibbleCnt_pad[9]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \txbuffer_addr[11]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of txcrcen_d1_i_1 : label is "soft_lutpair57";
begin
  Q0_in9_in <= \^q0_in9_in\;
  Q1_in <= \^q1_in\;
  Q32_in <= \^q32_in\;
  STATE24A_0 <= \^state24a_0\;
  enblCRC <= \^enblcrc\;
  enblData <= \^enbldata\;
  loopback_en_reg <= \^loopback_en_reg\;
  transmit_start_reg_reg_0 <= \^transmit_start_reg_reg_0\;
  tx_en_i <= \^tx_en_i\;
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_4_n_0\,
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      I2 => s_axi_aresetn,
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_4_n_0\,
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      I2 => s_axi_aresetn,
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \txbuffer_addr[11]_i_4_n_0\,
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_6_n_0\,
      I2 => \^state24a_0\,
      I3 => \^loopback_en_reg\,
      I4 => Q0_in0_in,
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_4_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => D4_in3_in,
      I1 => D6_in4_in,
      I2 => D_0,
      I3 => Q5_in,
      I4 => \^q1_in\,
      I5 => Q2_in1_in,
      O => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_6_n_0\
    );
\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF75FF7F"
    )
        port map (
      I0 => \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0\,
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(3),
      I2 => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      I3 => \^loopback_en_reg\,
      I4 => DOADO(3),
      I5 => enblSFD,
      O => lut_val
    );
\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^enbldata\,
      I1 => \txNibbleCnt_pad_reg[8]\,
      O => \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0\
    );
\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^enblcrc\,
      I1 => Q(2),
      O => \emac_tx_wr_data_d1_reg[0]\
    );
\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20AA2AAAAAAAAA"
    )
        port map (
      I0 => \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0\,
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(2),
      I2 => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      I3 => \^loopback_en_reg\,
      I4 => DOADO(2),
      I5 => \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0\,
      O => \emac_tx_wr_data_d1_reg[1]_0\
    );
\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => enblSFD,
      I1 => enblPreamble,
      O => \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0\
    );
\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^enblcrc\,
      I1 => Q(1),
      O => \emac_tx_wr_data_d1_reg[1]\
    );
\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCDFDFFFFFFFF"
    )
        port map (
      I0 => DOADO(1),
      I1 => \^loopback_en_reg\,
      I2 => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(1),
      I4 => \txNibbleCnt_pad_reg[8]\,
      I5 => \^enbldata\,
      O => \emac_tx_wr_data_d1_reg[2]\
    );
\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^enblcrc\,
      I1 => Q(0),
      O => \emac_tx_wr_data_d1_reg[2]_0\
    );
\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20AA2AAAAAAAAA"
    )
        port map (
      I0 => \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0\,
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      I2 => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      I3 => \^loopback_en_reg\,
      I4 => DOADO(0),
      I5 => \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2_n_0\,
      O => \emac_tx_wr_data_d1_reg[3]\
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => enblPreamble,
      I1 => axi_fifo_tx_en,
      I2 => \^loopback_en_reg\,
      I3 => \^state24a_0\,
      O => \^tx_en_i\
    );
IP2INTC_IRPT_REG_I_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^transmit_start_reg_reg_0\
    );
\Mac_addr_ram_addr_wr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222200000000"
    )
        port map (
      I0 => Mac_addr_ram_we_i_5_n_0,
      I1 => Mac_addr_ram_we_i_2_n_0,
      I2 => D8_in,
      I3 => D9_in,
      I4 => \Mac_addr_ram_addr_wr[0]_i_2_n_0\,
      I5 => \Mac_addr_ram_addr_wr[0]_i_3_n_0\,
      O => \Mac_addr_ram_addr_wr[0]_i_1_n_0\
    );
\Mac_addr_ram_addr_wr[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D10_in,
      I1 => D11_in,
      O => \Mac_addr_ram_addr_wr[0]_i_2_n_0\
    );
\Mac_addr_ram_addr_wr[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => D5_in,
      I1 => D4_in,
      I2 => D7_in,
      I3 => D6_in,
      O => \Mac_addr_ram_addr_wr[0]_i_3_n_0\
    );
\Mac_addr_ram_addr_wr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAA8"
    )
        port map (
      I0 => Mac_addr_ram_we_i_5_n_0,
      I1 => D5_in,
      I2 => D4_in,
      I3 => D7_in,
      I4 => D6_in,
      I5 => Mac_addr_ram_we_i_2_n_0,
      O => \Mac_addr_ram_addr_wr[1]_i_1_n_0\
    );
\Mac_addr_ram_addr_wr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8AAA8A8"
    )
        port map (
      I0 => \Mac_addr_ram_addr_wr[2]_i_2_n_0\,
      I1 => D3_in,
      I2 => D2_in,
      I3 => \Mac_addr_ram_addr_wr[2]_i_3_n_0\,
      I4 => Mac_addr_ram_we_i_3_n_0,
      I5 => D0_in,
      O => \Mac_addr_ram_addr_wr[2]_i_1_n_0\
    );
\Mac_addr_ram_addr_wr[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Mac_addr_ram_we_i_5_n_0,
      I1 => D1_in,
      O => \Mac_addr_ram_addr_wr[2]_i_2_n_0\
    );
\Mac_addr_ram_addr_wr[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110111011101111"
    )
        port map (
      I0 => D7_in,
      I1 => D6_in,
      I2 => D8_in,
      I3 => D9_in,
      I4 => D10_in,
      I5 => D11_in,
      O => \Mac_addr_ram_addr_wr[2]_i_3_n_0\
    );
\Mac_addr_ram_addr_wr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => D1_in,
      I1 => Mac_addr_ram_we_i_5_n_0,
      I2 => \Mac_addr_ram_addr_wr[3]_i_2_n_0\,
      O => \Mac_addr_ram_addr_wr[3]_i_1_n_0\
    );
\Mac_addr_ram_addr_wr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00F2"
    )
        port map (
      I0 => \Mac_addr_ram_addr_wr[3]_i_3_n_0\,
      I1 => D5_in,
      I2 => D4_in,
      I3 => D3_in,
      I4 => D2_in,
      I5 => D0_in,
      O => \Mac_addr_ram_addr_wr[3]_i_2_n_0\
    );
\Mac_addr_ram_addr_wr[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABABBBBBABB"
    )
        port map (
      I0 => D6_in,
      I1 => D7_in,
      I2 => D8_in,
      I3 => D11_in,
      I4 => D10_in,
      I5 => D9_in,
      O => \Mac_addr_ram_addr_wr[3]_i_3_n_0\
    );
\Mac_addr_ram_addr_wr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Mac_addr_ram_addr_wr[0]_i_1_n_0\,
      Q => \rdDestAddrNib_D_t_q_reg[2]\(3),
      R => '0'
    );
\Mac_addr_ram_addr_wr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Mac_addr_ram_addr_wr[1]_i_1_n_0\,
      Q => \rdDestAddrNib_D_t_q_reg[2]\(2),
      R => '0'
    );
\Mac_addr_ram_addr_wr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Mac_addr_ram_addr_wr[2]_i_1_n_0\,
      Q => \rdDestAddrNib_D_t_q_reg[2]\(1),
      R => '0'
    );
\Mac_addr_ram_addr_wr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Mac_addr_ram_addr_wr[3]_i_1_n_0\,
      Q => \rdDestAddrNib_D_t_q_reg[2]\(0),
      R => '0'
    );
Mac_addr_ram_we_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000000"
    )
        port map (
      I0 => Mac_addr_ram_we_i_2_n_0,
      I1 => Mac_addr_ram_we_i_3_n_0,
      I2 => D10_in,
      I3 => D11_in,
      I4 => Mac_addr_ram_we_i_4_n_0,
      I5 => Mac_addr_ram_we_i_5_n_0,
      O => Mac_addr_ram_we0
    );
Mac_addr_ram_we_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => D3_in,
      I1 => D2_in,
      I2 => D1_in,
      I3 => D0_in,
      O => Mac_addr_ram_we_i_2_n_0
    );
Mac_addr_ram_we_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => D4_in,
      I1 => D5_in,
      O => Mac_addr_ram_we_i_3_n_0
    );
Mac_addr_ram_we_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => D9_in,
      I1 => D6_in,
      I2 => D7_in,
      I3 => D8_in,
      O => Mac_addr_ram_we_i_4_n_0
    );
Mac_addr_ram_we_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => Q5_in,
      I2 => STATE0A_i_2_n_0,
      O => Mac_addr_ram_we_i_5_n_0
    );
Mac_addr_ram_we_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Mac_addr_ram_we0,
      Q => mac_addr_ram_we,
      R => '0'
    );
\PERBIT_GEN[0].XORCY_i1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^enblcrc\,
      I1 => crcCnt(0),
      O => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[10].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => currentTxBusFifoWrCnt(1),
      I1 => enblPreamble,
      I2 => enblSFD,
      I3 => \^enblcrc\,
      I4 => \^enbldata\,
      O => \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg\
    );
\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF2FFFF"
    )
        port map (
      I0 => busFifoWrCntRst_reg,
      I1 => enblPreamble,
      I2 => \^loopback_en_reg\,
      I3 => \^state24a_0\,
      I4 => s_axi_aresetn,
      I5 => Q5_in,
      O => txComboBusFifoWrCntRst
    );
\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^loopback_en_reg\,
      I1 => s_axi_aresetn,
      I2 => Q5_in,
      O => txComboNibbleCntRst
    );
\PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^enbldata\,
      I1 => enblSFD,
      O => CE
    );
\PERBIT_GEN[11].MULT_AND_i1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => enblPreamble,
      I1 => enblSFD,
      I2 => \^enblcrc\,
      I3 => \^enbldata\,
      O => emac_tx_wr_i
    );
\PERBIT_GEN[11].MUXCY_i1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^enbldata\,
      I1 => \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0\(0),
      O => \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[11].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => currentTxBusFifoWrCnt(0),
      I1 => enblPreamble,
      I2 => enblSFD,
      I3 => \^enblcrc\,
      I4 => \^enbldata\,
      O => \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1\
    );
\PERBIT_GEN[1].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^enblcrc\,
      I1 => crcCnt(1),
      O => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[2].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^enblcrc\,
      I1 => crcCnt(2),
      O => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[3].FF_RST0_GEN.FDRE_i1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFAB"
    )
        port map (
      I0 => \^enblcrc\,
      I1 => enblPreamble,
      I2 => axi_fifo_tx_en,
      I3 => \^loopback_en_reg\,
      I4 => \^state24a_0\,
      O => CE_0
    );
\PERBIT_GEN[3].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^enblcrc\,
      I1 => crcCnt(3),
      O => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\
    );
\PERBIT_GEN[8].XORCY_i1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => currentTxBusFifoWrCnt(3),
      I1 => enblPreamble,
      I2 => enblSFD,
      I3 => \^enblcrc\,
      I4 => \^enbldata\,
      O => \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg\
    );
\PERBIT_GEN[9].MUXCY_i1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => currentTxBusFifoWrCnt(2),
      I1 => enblPreamble,
      I2 => enblSFD,
      I3 => \^enblcrc\,
      I4 => \^enbldata\,
      O => \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg\
    );
RAM_reg_0_15_0_5_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => \^state24a_0\,
      I1 => \^loopback_en_reg\,
      I2 => axi_fifo_tx_en,
      I3 => enblPreamble,
      O => \thisState_reg[1]\
    );
STATE0A: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D19_out,
      Q => \^loopback_en_reg\,
      S => \^transmit_start_reg_reg_0\
    );
STATE0A_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q5_in,
      I1 => STATE0A_i_2_n_0,
      O => D19_out
    );
STATE0A_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000C8C08880C8C"
    )
        port map (
      I0 => tx_done_d2,
      I1 => \^loopback_en_reg\,
      I2 => \TX_PONG_REG_GEN.pong_tx_status_reg\,
      I3 => \TX_PONG_REG_GEN.pong_mac_program_reg\,
      I4 => p_17_in(0),
      I5 => p_17_in(1),
      O => STATE0A_i_2_n_0
    );
STATE10A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D24_out,
      Q => enblSFD,
      R => \^transmit_start_reg_reg_0\
    );
STATE10A_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1\,
      I1 => enblSFD,
      I2 => txfifo_full,
      I3 => Q0_in11_in,
      O => D24_out
    );
STATE11A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D25_out,
      Q => \^q1_in\,
      R => \^transmit_start_reg_reg_0\
    );
STATE11A_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => D031_out,
      I1 => \^enbldata\,
      I2 => enblSFD,
      I3 => \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1\,
      I4 => \^q1_in\,
      I5 => txfifo_full,
      O => D25_out
    );
STATE12A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D029_out,
      Q => \^enbldata\,
      R => \^transmit_start_reg_reg_0\
    );
STATE13A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D031_out,
      Q => Q26_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE14A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D27_out,
      Q => \^q0_in9_in\,
      R => \^transmit_start_reg_reg_0\
    );
STATE14A_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => txfifo_full,
      I1 => \^q0_in9_in\,
      I2 => Q26_in,
      I3 => \^enblcrc\,
      O => D27_out
    );
STATE15A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D0,
      Q => \^enblcrc\,
      R => \^transmit_start_reg_reg_0\
    );
STATE16A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D28_out,
      Q => \^q32_in\,
      R => \^transmit_start_reg_reg_0\
    );
STATE17A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D29_out,
      Q => \^state24a_0\,
      R => \^transmit_start_reg_reg_0\
    );
STATE17A_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => STATE39A_n_0,
      I1 => \^q32_in\,
      I2 => txfifo_empty,
      O => D29_out
    );
STATE24A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^state24a_0\,
      Q => D4_in3_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE25A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D4_in3_in,
      Q => Q5_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE26A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => STATE26A_i_1_n_0,
      Q => D6_in4_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE26A_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8880000"
    )
        port map (
      I0 => p_17_in(1),
      I1 => p_17_in(0),
      I2 => \TX_PONG_REG_GEN.pong_mac_program_reg\,
      I3 => \TX_PONG_REG_GEN.pong_tx_status_reg\,
      I4 => \^loopback_en_reg\,
      I5 => mac_program_start_reg,
      O => STATE26A_i_1_n_0
    );
STATE27A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D6_in4_in,
      Q => D1_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE28A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D1_in,
      Q => D0_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE29A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D0_in,
      Q => D2_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE30A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D2_in,
      Q => D3_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE31A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D3_in,
      Q => D4_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE32A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D4_in,
      Q => D5_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE33A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D5_in,
      Q => D6_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE34A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D6_in,
      Q => D7_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE35A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D7_in,
      Q => D8_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE36A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D8_in,
      Q => D9_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE37A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D9_in,
      Q => D10_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE38A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D10_in,
      Q => D11_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE39A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D11_in,
      Q => STATE39A_n_0,
      R => \^transmit_start_reg_reg_0\
    );
STATE5A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D20_out,
      Q => D_0,
      R => \^transmit_start_reg_reg_0\
    );
STATE5A_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => transmit_start,
      I1 => \^loopback_en_reg\,
      I2 => transmit_start_reg,
      O => D20_out
    );
STATE6A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D_0,
      Q => Q0_in0_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE7A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D21_out,
      Q => Q2_in1_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE7A_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => D_0,
      I1 => \thisState_reg[1]_0\(1),
      I2 => \thisState_reg[1]_0\(0),
      I3 => Q2_in1_in,
      O => D21_out
    );
STATE8A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D22_out,
      Q => enblPreamble,
      R => \^transmit_start_reg_reg_0\
    );
STATE8A_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2\,
      I1 => enblPreamble,
      I2 => \thisState_reg[1]_0\(1),
      I3 => \thisState_reg[1]_0\(0),
      I4 => Q2_in1_in,
      O => D22_out
    );
STATE9A: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D23_out,
      Q => Q0_in11_in,
      R => \^transmit_start_reg_reg_0\
    );
STATE9A_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Q0_in11_in,
      I1 => txfifo_full,
      I2 => \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2\,
      I3 => enblPreamble,
      O => D23_out
    );
axi_phy_tx_en_i_p_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => axi_fifo_tx_en,
      I1 => \^state24a_0\,
      I2 => \^loopback_en_reg\,
      O => axi_phy_tx_en_i_p0
    );
busFifoWrCntRst_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \^state24a_0\,
      I1 => \^loopback_en_reg\,
      I2 => enblPreamble,
      I3 => busFifoWrCntRst_reg,
      O => txBusFifoWrCntRst
    );
busFifoWrCntRst_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => txBusFifoWrCntRst,
      Q => busFifoWrCntRst_reg,
      R => \^transmit_start_reg_reg_0\
    );
\gic0.gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555554"
    )
        port map (
      I0 => p_0_out,
      I1 => STATE14A_0,
      I2 => \^enbldata\,
      I3 => \^enblcrc\,
      I4 => enblSFD,
      I5 => enblPreamble,
      O => \gic0.gc0.count_reg[3]\(0)
    );
loopback_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => tx_intr_en0,
      I2 => \^loopback_en_reg\,
      I3 => loopback_en_reg_1,
      O => loopback_en_reg_0
    );
mac_program_start_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \TX_PONG_REG_GEN.pong_tx_status_reg\,
      I1 => \TX_PONG_REG_GEN.pong_mac_program_reg\,
      I2 => p_17_in(0),
      I3 => p_17_in(1),
      O => mac_program_start
    );
mac_program_start_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => mac_program_start,
      Q => mac_program_start_reg,
      R => \^transmit_start_reg_reg_0\
    );
\nibData[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF1FFFF"
    )
        port map (
      I0 => enblPreamble,
      I1 => axi_fifo_tx_en,
      I2 => \^loopback_en_reg\,
      I3 => \^state24a_0\,
      I4 => s_axi_aresetn,
      O => SR(0)
    );
\nibData[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => emac_tx_wr_d1,
      I1 => \^enblcrc\,
      I2 => \^q0_in9_in\,
      I3 => txCrcEn_reg,
      O => E(0)
    );
phytx_en_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^tx_en_i\,
      Q => axi_fifo_tx_en,
      R => \^transmit_start_reg_reg_0\
    );
pipeIt_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q5_in,
      I1 => s_axi_aresetn,
      O => Rst0
    );
\status_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \TX_PONG_REG_GEN.pong_mac_program_reg\,
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      I2 => \^state24a_0\,
      I3 => s_axi_aresetn,
      O => D(0)
    );
\status_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_17_in(1),
      I1 => \^state24a_0\,
      I2 => s_axi_aresetn,
      I3 => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      O => D(1)
    );
\status_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rx_pong_ping_l,
      I1 => s_axi_aresetn,
      I2 => \^state24a_0\,
      O => D(2)
    );
\status_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rx_pong_ping_l,
      I1 => s_axi_aresetn,
      I2 => \^state24a_0\,
      O => D(3)
    );
\status_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \TX_PONG_REG_GEN.pong_mac_program_reg\,
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      I2 => \^state24a_0\,
      I3 => s_axi_aresetn,
      O => D(4)
    );
\status_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => rx_done_d1,
      I1 => s_axi_aresetn,
      I2 => \^state24a_0\,
      O => \status_reg_reg[0]\(0)
    );
\status_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => p_17_in(1),
      I1 => \^state24a_0\,
      I2 => s_axi_aresetn,
      I3 => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      O => D(5)
    );
transmit_start_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F4"
    )
        port map (
      I0 => \TX_PONG_REG_GEN.pong_mac_program_reg\,
      I1 => \TX_PONG_REG_GEN.pong_tx_status_reg\,
      I2 => p_17_in(0),
      I3 => p_17_in(1),
      I4 => tx_done_d2,
      O => transmit_start
    );
transmit_start_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => transmit_start,
      Q => transmit_start_reg,
      R => \^transmit_start_reg_reg_0\
    );
\txNibbleCnt_pad[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => enblSFD,
      I1 => \tx_packet_length_reg[15]\,
      I2 => \^enbldata\,
      O => \txNibbleCnt_pad_reg[11]\(0)
    );
\txNibbleCnt_pad[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \tx_packet_length_reg[10]\(10),
      I1 => enblSFD,
      I2 => txNibbleCnt_pad0(10),
      I3 => \txNibbleCnt_pad_reg[8]\,
      O => \txNibbleCnt_pad_reg[0]\(11)
    );
\txNibbleCnt_pad[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \tx_packet_length_reg[10]\(0),
      I1 => enblSFD,
      I2 => txNibbleCnt_pad0(0),
      I3 => \txNibbleCnt_pad_reg[8]\,
      O => \txNibbleCnt_pad_reg[0]\(1)
    );
\txNibbleCnt_pad[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \txNibbleCnt_pad_reg[11]_0\(0),
      I1 => enblSFD,
      I2 => \txNibbleCnt_pad_reg[8]\,
      O => \txNibbleCnt_pad_reg[0]\(0)
    );
\txNibbleCnt_pad[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \tx_packet_length_reg[10]\(9),
      I1 => enblSFD,
      I2 => txNibbleCnt_pad0(9),
      I3 => \txNibbleCnt_pad_reg[8]\,
      O => \txNibbleCnt_pad_reg[0]\(10)
    );
\txNibbleCnt_pad[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \tx_packet_length_reg[10]\(8),
      I1 => enblSFD,
      I2 => txNibbleCnt_pad0(8),
      I3 => \txNibbleCnt_pad_reg[8]\,
      O => \txNibbleCnt_pad_reg[0]\(9)
    );
\txNibbleCnt_pad[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \tx_packet_length_reg[10]\(7),
      I1 => enblSFD,
      I2 => txNibbleCnt_pad0(7),
      I3 => \txNibbleCnt_pad_reg[8]\,
      O => \txNibbleCnt_pad_reg[0]\(8)
    );
\txNibbleCnt_pad[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \tx_packet_length_reg[10]\(6),
      I1 => enblSFD,
      I2 => txNibbleCnt_pad0(6),
      I3 => \txNibbleCnt_pad_reg[8]\,
      O => \txNibbleCnt_pad_reg[0]\(7)
    );
\txNibbleCnt_pad[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \tx_packet_length_reg[10]\(5),
      I1 => enblSFD,
      I2 => txNibbleCnt_pad0(5),
      I3 => \txNibbleCnt_pad_reg[8]\,
      O => \txNibbleCnt_pad_reg[0]\(6)
    );
\txNibbleCnt_pad[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \tx_packet_length_reg[10]\(4),
      I1 => enblSFD,
      I2 => txNibbleCnt_pad0(4),
      I3 => \txNibbleCnt_pad_reg[8]\,
      O => \txNibbleCnt_pad_reg[0]\(5)
    );
\txNibbleCnt_pad[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \tx_packet_length_reg[10]\(3),
      I1 => enblSFD,
      I2 => txNibbleCnt_pad0(3),
      I3 => \txNibbleCnt_pad_reg[8]\,
      O => \txNibbleCnt_pad_reg[0]\(4)
    );
\txNibbleCnt_pad[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \tx_packet_length_reg[10]\(2),
      I1 => enblSFD,
      I2 => txNibbleCnt_pad0(2),
      I3 => \txNibbleCnt_pad_reg[8]\,
      O => \txNibbleCnt_pad_reg[0]\(3)
    );
\txNibbleCnt_pad[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \tx_packet_length_reg[10]\(1),
      I1 => enblSFD,
      I2 => txNibbleCnt_pad0(1),
      I3 => \txNibbleCnt_pad_reg[8]\,
      O => \txNibbleCnt_pad_reg[0]\(2)
    );
\txbuffer_addr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => enblPreamble,
      I1 => s_axi_aresetn,
      I2 => D6_in4_in,
      O => \txbuffer_addr_reg[11]\
    );
\txbuffer_addr[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^enbldata\,
      I1 => \txbuffer_addr[11]_i_4_n_0\,
      O => tx_addr_en
    );
\txbuffer_addr[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => STATE39A_n_0,
      I1 => Mac_addr_ram_we_i_4_n_0,
      I2 => Mac_addr_ram_we_i_2_n_0,
      I3 => D11_in,
      I4 => D10_in,
      I5 => Mac_addr_ram_we_i_3_n_0,
      O => \txbuffer_addr[11]_i_4_n_0\
    );
txcrcen_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \^q1_in\,
      I1 => txcrcen_d1_i_2_n_0,
      I2 => enblPreamble,
      I3 => enblSFD,
      I4 => \^enblcrc\,
      O => txCrcEn
    );
txcrcen_d1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => txCrcEn_reg,
      I1 => Q0_in11_in,
      I2 => \^q0_in9_in\,
      I3 => \^loopback_en_reg\,
      O => txcrcen_d1_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_wr_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wr_pntr_gc_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_wr_bin_cntr : entity is "wr_bin_cntr";
end ntps_top_axi_ethernetlite_0_0_wr_bin_cntr;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gic0.gc0.count_d2_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1\ : label is "soft_lutpair53";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) <= \^gic0.gc0.count_d2_reg[3]_0\(3 downto 0);
\gic0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__0\(0)
    );
\gic0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__0\(1)
    );
\gic0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \plusOp__0\(2)
    );
\gic0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \plusOp__0\(3)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \^q\(0),
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(0)
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^q\(1),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(1)
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^q\(2),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(2)
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^q\(3),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(3)
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(0),
      Q => \wr_pntr_gc_reg[3]\(0)
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(1),
      Q => \wr_pntr_gc_reg[3]\(1)
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(2),
      Q => \wr_pntr_gc_reg[3]\(2)
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(3),
      Q => \wr_pntr_gc_reg[3]\(3)
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \plusOp__0\(0),
      Q => \^q\(0)
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \plusOp__0\(1),
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      Q => \^q\(1)
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \plusOp__0\(2),
      Q => \^q\(2)
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \plusOp__0\(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_wr_bin_cntr_43 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wr_pntr_gc_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    phy_rx_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_wr_bin_cntr_43 : entity is "wr_bin_cntr";
end ntps_top_axi_ethernetlite_0_0_wr_bin_cntr_43;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_wr_bin_cntr_43 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gic0.gc0.count_d2_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1__0\ : label is "soft_lutpair22";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) <= \^gic0.gc0.count_d2_reg[3]_0\(3 downto 0);
\gic0.gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__1\(0)
    );
\gic0.gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__1\(1)
    );
\gic0.gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__1\(2)
    );
\gic0.gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__1\(3)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_rx_clk,
      CE => E(0),
      D => \^q\(0),
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(0)
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^q\(1),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(1)
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^q\(2),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(2)
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^q\(3),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(3)
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(0),
      Q => \wr_pntr_gc_reg[3]\(0)
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(1),
      Q => \wr_pntr_gc_reg[3]\(1)
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(2),
      Q => \wr_pntr_gc_reg[3]\(2)
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(3),
      Q => \wr_pntr_gc_reg[3]\(3)
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \plusOp__1\(0),
      Q => \^q\(0)
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_rx_clk,
      CE => E(0),
      D => \plusOp__1\(1),
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      Q => \^q\(1)
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \plusOp__1\(2),
      Q => \^q\(2)
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      D => \plusOp__1\(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_wr_status_flags_as is
  port (
    txfifo_full : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    D28_out : out STD_LOGIC;
    ram_full_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    rst_full_ff_i : in STD_LOGIC;
    txfifo_empty : in STD_LOGIC;
    Q32_in : in STD_LOGIC;
    STATE14A : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_wr_status_flags_as : entity is "wr_status_flags_as";
end ntps_top_axi_ethernetlite_0_0_wr_status_flags_as;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_wr_status_flags_as is
  signal \^txfifo_full\ : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  txfifo_full <= \^txfifo_full\;
STATE16A_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => txfifo_empty,
      I1 => Q32_in,
      I2 => \^txfifo_full\,
      I3 => STATE14A,
      O => D28_out
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_full_i,
      PRE => rst_full_ff_i,
      Q => p_0_out
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_full_i,
      PRE => rst_full_ff_i,
      Q => \^txfifo_full\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_wr_status_flags_as_42 is
  port (
    ram_full_i_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_i : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    rst_full_ff_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_pntr_bin_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_wr_status_flags_as_42 : entity is "wr_status_flags_as";
end ntps_top_axi_ethernetlite_0_0_wr_status_flags_as_42;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_wr_status_flags_as_42 is
  signal p_0_out : STD_LOGIC;
  signal \ram_full_i__0\ : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\gic0.gc0.count_d1[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_out,
      I1 => \ram_full_i__0\,
      O => E(0)
    );
ram_full_fb_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \ram_full_i__0\,
      I1 => p_0_out,
      I2 => Q(0),
      I3 => \rd_pntr_bin_reg[3]\(0),
      O => ram_full_i_reg_0
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => ram_full_i,
      PRE => rst_full_ff_i,
      Q => p_0_out
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => ram_full_i,
      PRE => rst_full_ff_i,
      Q => \ram_full_i__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_MacAddrRAM is
  port (
    \rdDestAddrNib_D_t_q_reg[2]\ : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[2]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mac_addr_ram_we : in STD_LOGIC;
    mac_addr_ram_addr : in STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_MacAddrRAM : entity is "MacAddrRAM";
end ntps_top_axi_ethernetlite_0_0_MacAddrRAM;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_MacAddrRAM is
begin
ram16x4i: entity work.ntps_top_axi_ethernetlite_0_0_ram16x4
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      mac_addr_ram_addr(0 to 3) => mac_addr_ram_addr(0 to 3),
      mac_addr_ram_we => mac_addr_ram_we,
      \rdDestAddrNib_D_t_q_reg[2]\ => \rdDestAddrNib_D_t_q_reg[2]\,
      \rdDestAddrNib_D_t_q_reg[2]_0\ => \rdDestAddrNib_D_t_q_reg[2]_0\,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width is
  port (
    \emac_tx_wr_data_d1_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      WEBWE(0) => WEBWE(0),
      \emac_tx_wr_data_d1_reg[0]\(3 downto 0) => \emac_tx_wr_data_d1_reg[0]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_16 is
  port (
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    reg_access_reg : in STD_LOGIC;
    \reg_data_out_reg[0]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \reg_data_out_reg[1]\ : in STD_LOGIC;
    \reg_data_out_reg[2]\ : in STD_LOGIC;
    p_21_in : in STD_LOGIC;
    p_27_in165_in : in STD_LOGIC;
    p_33_in184_in : in STD_LOGIC;
    p_39_in204_in : in STD_LOGIC;
    p_45_in221_in : in STD_LOGIC;
    p_51_in : in STD_LOGIC;
    p_57_in257_in : in STD_LOGIC;
    p_63_in273_in : in STD_LOGIC;
    p_69_in : in STD_LOGIC;
    p_68_in290_in : in STD_LOGIC;
    p_75_in : in STD_LOGIC;
    p_74_in308_in : in STD_LOGIC;
    p_81_in330_in : in STD_LOGIC;
    p_80_in328_in : in STD_LOGIC;
    p_87_in351_in : in STD_LOGIC;
    p_86_in349_in : in STD_LOGIC;
    p_93_in : in STD_LOGIC;
    p_92_in370_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_16 : entity is "blk_mem_gen_prim_width";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_16;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_16 is
begin
\prim_noinit.ram\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_17
     port map (
      \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0) => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(30 downto 0) => D(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0) => \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      p_21_in => p_21_in,
      p_27_in165_in => p_27_in165_in,
      p_33_in184_in => p_33_in184_in,
      p_39_in204_in => p_39_in204_in,
      p_45_in221_in => p_45_in221_in,
      p_51_in => p_51_in,
      p_57_in257_in => p_57_in257_in,
      p_63_in273_in => p_63_in273_in,
      p_68_in290_in => p_68_in290_in,
      p_69_in => p_69_in,
      p_74_in308_in => p_74_in308_in,
      p_75_in => p_75_in,
      p_80_in328_in => p_80_in328_in,
      p_81_in330_in => p_81_in330_in,
      p_86_in349_in => p_86_in349_in,
      p_87_in351_in => p_87_in351_in,
      p_92_in370_in => p_92_in370_in,
      p_93_in => p_93_in,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[0]\ => \reg_data_out_reg[0]\,
      \reg_data_out_reg[1]\ => \reg_data_out_reg[1]\,
      \reg_data_out_reg[2]\ => \reg_data_out_reg[2]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_23 is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 30 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_data_out_reg[31]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    reg_access_reg : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_23 : entity is "blk_mem_gen_prim_width";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_23;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_23 is
begin
\prim_noinit.ram\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_24
     port map (
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(0) => D(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[31]\ => \reg_data_out_reg[31]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_9 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_idle : in STD_LOGIC;
    \TX_PONG_GEN.tx_pong_ping_l_reg_0\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_9 : entity is "blk_mem_gen_prim_width";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_9;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_9 is
begin
\prim_noinit.ram\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_wrapper_10
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0),
      DOADO(3 downto 0) => DOADO(3 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      \TX_PONG_GEN.tx_pong_ping_l_reg_0\ => \TX_PONG_GEN.tx_pong_ping_l_reg_0\,
      WEBWE(0) => WEBWE(0),
      \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0) => \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tx_idle => tx_idle
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_clk_x_pntrs is
  port (
    ram_full_i : out STD_LOGIC;
    ram_empty_fb_i_reg : out STD_LOGIC;
    ram_empty_fb_i_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_full_gen_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_empty_fb_i_reg_1 : in STD_LOGIC;
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    phy_tx_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_clk_x_pntrs : entity is "clk_x_pntrs";
end ntps_top_axi_ethernetlite_0_0_clk_x_pntrs;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_clk_x_pntrs is
  signal \gsync_stage[2].rd_stg_inst_n_1\ : STD_LOGIC;
  signal \gsync_stage[2].rd_stg_inst_n_2\ : STD_LOGIC;
  signal \gsync_stage[2].rd_stg_inst_n_3\ : STD_LOGIC;
  signal \gsync_stage[2].wr_stg_inst_n_1\ : STD_LOGIC;
  signal \gsync_stage[2].wr_stg_inst_n_2\ : STD_LOGIC;
  signal \gsync_stage[2].wr_stg_inst_n_3\ : STD_LOGIC;
  signal p_0_in2_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal p_1_out_0 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_2_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ram_empty_fb_i_reg_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ram_empty_i_i_3__0_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_4__0_n_0\ : STD_LOGIC;
  signal ram_full_i_i_2_n_0 : STD_LOGIC;
  signal ram_full_i_i_3_n_0 : STD_LOGIC;
  signal ram_full_i_i_4_n_0 : STD_LOGIC;
  signal ram_full_i_i_5_n_0 : STD_LOGIC;
  signal \rd_pntr_gc_reg_n_0_[0]\ : STD_LOGIC;
  signal \rd_pntr_gc_reg_n_0_[1]\ : STD_LOGIC;
  signal \rd_pntr_gc_reg_n_0_[2]\ : STD_LOGIC;
  signal \rd_pntr_gc_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_pntr_gc_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_pntr_gc_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_pntr_gc_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_pntr_gc_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \wr_pntr_gc[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \wr_pntr_gc[1]_i_1\ : label is "soft_lutpair50";
begin
  ram_empty_fb_i_reg_0(1 downto 0) <= \^ram_empty_fb_i_reg_0\(1 downto 0);
\gsync_stage[1].rd_stg_inst\: entity work.ntps_top_axi_ethernetlite_0_0_synchronizer_ff
     port map (
      D(3 downto 0) => p_3_out(3 downto 0),
      Q(3) => \wr_pntr_gc_reg_n_0_[3]\,
      Q(2) => \wr_pntr_gc_reg_n_0_[2]\,
      Q(1) => \wr_pntr_gc_reg_n_0_[1]\,
      Q(0) => \wr_pntr_gc_reg_n_0_[0]\,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      phy_tx_clk => phy_tx_clk
    );
\gsync_stage[1].wr_stg_inst\: entity work.ntps_top_axi_ethernetlite_0_0_synchronizer_ff_26
     port map (
      D(3 downto 0) => p_2_out(3 downto 0),
      Q(3) => \rd_pntr_gc_reg_n_0_[3]\,
      Q(2) => \rd_pntr_gc_reg_n_0_[2]\,
      Q(1) => \rd_pntr_gc_reg_n_0_[1]\,
      Q(0) => \rd_pntr_gc_reg_n_0_[0]\,
      \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0) => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      s_axi_aclk => s_axi_aclk
    );
\gsync_stage[2].rd_stg_inst\: entity work.ntps_top_axi_ethernetlite_0_0_synchronizer_ff_27
     port map (
      D(3 downto 0) => p_3_out(3 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      \out\(0) => p_1_out_0(3),
      phy_tx_clk => phy_tx_clk,
      \wr_pntr_bin_reg[2]\(2) => \gsync_stage[2].rd_stg_inst_n_1\,
      \wr_pntr_bin_reg[2]\(1) => \gsync_stage[2].rd_stg_inst_n_2\,
      \wr_pntr_bin_reg[2]\(0) => \gsync_stage[2].rd_stg_inst_n_3\
    );
\gsync_stage[2].wr_stg_inst\: entity work.ntps_top_axi_ethernetlite_0_0_synchronizer_ff_28
     port map (
      D(3 downto 0) => p_2_out(3 downto 0),
      \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0) => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      \out\(0) => p_0_out(3),
      \rd_pntr_bin_reg[2]\(2) => \gsync_stage[2].wr_stg_inst_n_1\,
      \rd_pntr_bin_reg[2]\(1) => \gsync_stage[2].wr_stg_inst_n_2\,
      \rd_pntr_bin_reg[2]\(0) => \gsync_stage[2].wr_stg_inst_n_3\,
      s_axi_aclk => s_axi_aclk
    );
\ram_empty_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF90090000"
    )
        port map (
      I0 => p_1_out(3),
      I1 => \gc0.count_reg[3]\(1),
      I2 => p_1_out(2),
      I3 => \gc0.count_reg[3]\(0),
      I4 => ram_empty_fb_i_reg_1,
      I5 => \ram_empty_i_i_3__0_n_0\,
      O => ram_empty_fb_i_reg
    );
\ram_empty_i_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \gc0.count_d1_reg[3]\(2),
      I1 => p_1_out(2),
      I2 => \gc0.count_d1_reg[3]\(3),
      I3 => p_1_out(3),
      I4 => \ram_empty_i_i_4__0_n_0\,
      O => \ram_empty_i_i_3__0_n_0\
    );
\ram_empty_i_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^ram_empty_fb_i_reg_0\(0),
      I1 => \gc0.count_d1_reg[3]\(0),
      I2 => \^ram_empty_fb_i_reg_0\(1),
      I3 => \gc0.count_d1_reg[3]\(1),
      O => \ram_empty_i_i_4__0_n_0\
    );
ram_full_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => E(0),
      I1 => ram_full_i_i_2_n_0,
      I2 => ram_full_i_i_3_n_0,
      I3 => rst_full_gen_i,
      O => ram_full_i
    );
ram_full_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => Q(2),
      I1 => p_0_out_0(2),
      I2 => Q(1),
      I3 => p_0_out_0(1),
      I4 => ram_full_i_i_4_n_0,
      O => ram_full_i_i_2_n_0
    );
ram_full_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \gic0.gc0.count_d1_reg[3]\(3),
      I1 => p_0_out_0(3),
      I2 => \gic0.gc0.count_d1_reg[3]\(2),
      I3 => p_0_out_0(2),
      I4 => ram_full_i_i_5_n_0,
      O => ram_full_i_i_3_n_0
    );
ram_full_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_out_0(0),
      I1 => Q(0),
      I2 => p_0_out_0(3),
      I3 => Q(3),
      O => ram_full_i_i_4_n_0
    );
ram_full_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_0_out_0(0),
      I1 => \gic0.gc0.count_d1_reg[3]\(0),
      I2 => p_0_out_0(1),
      I3 => \gic0.gc0.count_d1_reg[3]\(1),
      O => ram_full_i_i_5_n_0
    );
\rd_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => \gsync_stage[2].wr_stg_inst_n_3\,
      Q => p_0_out_0(0)
    );
\rd_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => \gsync_stage[2].wr_stg_inst_n_2\,
      Q => p_0_out_0(1)
    );
\rd_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => \gsync_stage[2].wr_stg_inst_n_1\,
      Q => p_0_out_0(2)
    );
\rd_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => p_0_out(3),
      Q => p_0_out_0(3)
    );
\rd_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(0),
      Q => \rd_pntr_gc_reg_n_0_[0]\
    );
\rd_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(1),
      Q => \rd_pntr_gc_reg_n_0_[1]\
    );
\rd_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(2),
      Q => \rd_pntr_gc_reg_n_0_[2]\
    );
\rd_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gc0.count_d1_reg[3]\(3),
      Q => \rd_pntr_gc_reg_n_0_[3]\
    );
\wr_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gsync_stage[2].rd_stg_inst_n_3\,
      Q => \^ram_empty_fb_i_reg_0\(0)
    );
\wr_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gsync_stage[2].rd_stg_inst_n_2\,
      Q => \^ram_empty_fb_i_reg_0\(1)
    );
\wr_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gsync_stage[2].rd_stg_inst_n_1\,
      Q => p_1_out(2)
    );
\wr_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => p_1_out_0(3),
      Q => p_1_out(3)
    );
\wr_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[3]\(0),
      I1 => \gic0.gc0.count_d2_reg[3]\(1),
      O => p_0_in2_out(0)
    );
\wr_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[3]\(1),
      I1 => \gic0.gc0.count_d2_reg[3]\(2),
      O => p_0_in2_out(1)
    );
\wr_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[3]\(2),
      I1 => \gic0.gc0.count_d2_reg[3]\(3),
      O => p_0_in2_out(2)
    );
\wr_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => p_0_in2_out(0),
      Q => \wr_pntr_gc_reg_n_0_[0]\
    );
\wr_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => p_0_in2_out(1),
      Q => \wr_pntr_gc_reg_n_0_[1]\
    );
\wr_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => p_0_in2_out(2),
      Q => \wr_pntr_gc_reg_n_0_[2]\
    );
\wr_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => \gic0.gc0.count_d2_reg[3]\(3),
      Q => \wr_pntr_gc_reg_n_0_[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_clk_x_pntrs_36 is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    ram_full_i : out STD_LOGIC;
    ram_full_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i_reg_0 : in STD_LOGIC;
    \gic0.gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_full_gen_i : in STD_LOGIC;
    \gic0.gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_rx_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_clk_x_pntrs_36 : entity is "clk_x_pntrs";
end ntps_top_axi_ethernetlite_0_0_clk_x_pntrs_36;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_clk_x_pntrs_36 is
  signal \gsync_stage[2].rd_stg_inst_n_2\ : STD_LOGIC;
  signal \gsync_stage[2].rd_stg_inst_n_3\ : STD_LOGIC;
  signal \gsync_stage[2].wr_stg_inst_n_1\ : STD_LOGIC;
  signal \gsync_stage[2].wr_stg_inst_n_2\ : STD_LOGIC;
  signal \gsync_stage[2].wr_stg_inst_n_3\ : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal p_0_in2_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_out_1 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_1_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_out_0 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_2_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_empty_i_i_2_n_0 : STD_LOGIC;
  signal ram_empty_i_i_3_n_0 : STD_LOGIC;
  signal ram_empty_i_i_4_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_2_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_4_n_0 : STD_LOGIC;
  signal \^ram_full_i_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rd_pntr_gc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_pntr_gc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \wr_pntr_gc[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wr_pntr_gc[1]_i_1\ : label is "soft_lutpair18";
begin
  ram_full_i_reg(0) <= \^ram_full_i_reg\(0);
\gsync_stage[1].rd_stg_inst\: entity work.ntps_top_axi_ethernetlite_0_0_synchronizer_ff_46
     port map (
      D(3 downto 0) => p_3_out(3 downto 0),
      Q(3 downto 0) => wr_pntr_gc(3 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      s_axi_aclk => s_axi_aclk
    );
\gsync_stage[1].wr_stg_inst\: entity work.ntps_top_axi_ethernetlite_0_0_synchronizer_ff_47
     port map (
      D(3 downto 0) => p_2_out(3 downto 0),
      Q(3 downto 0) => rd_pntr_gc(3 downto 0),
      \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0) => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      phy_rx_clk => phy_rx_clk
    );
\gsync_stage[2].rd_stg_inst\: entity work.ntps_top_axi_ethernetlite_0_0_synchronizer_ff_48
     port map (
      D(3 downto 0) => p_3_out(3 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      \out\(0) => p_1_out_0(3),
      s_axi_aclk => s_axi_aclk,
      \wr_pntr_bin_reg[2]\(2) => p_0_in0,
      \wr_pntr_bin_reg[2]\(1) => \gsync_stage[2].rd_stg_inst_n_2\,
      \wr_pntr_bin_reg[2]\(0) => \gsync_stage[2].rd_stg_inst_n_3\
    );
\gsync_stage[2].wr_stg_inst\: entity work.ntps_top_axi_ethernetlite_0_0_synchronizer_ff_49
     port map (
      D(3 downto 0) => p_2_out(3 downto 0),
      \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0) => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      \out\(0) => p_0_out_1(3),
      phy_rx_clk => phy_rx_clk,
      \rd_pntr_bin_reg[2]\(2) => \gsync_stage[2].wr_stg_inst_n_1\,
      \rd_pntr_bin_reg[2]\(1) => \gsync_stage[2].wr_stg_inst_n_2\,
      \rd_pntr_bin_reg[2]\(0) => \gsync_stage[2].wr_stg_inst_n_3\
    );
ram_empty_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAABAAAAAAAABAAB"
    )
        port map (
      I0 => ram_empty_i_i_2_n_0,
      I1 => ram_empty_i_i_3_n_0,
      I2 => p_1_out(2),
      I3 => Q(2),
      I4 => p_1_out(3),
      I5 => Q(3),
      O => ram_empty_fb_i_reg
    );
ram_empty_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002000000002002"
    )
        port map (
      I0 => E(0),
      I1 => ram_empty_i_i_4_n_0,
      I2 => p_1_out(1),
      I3 => \gc0.count_reg[3]\(1),
      I4 => p_1_out(0),
      I5 => \gc0.count_reg[3]\(0),
      O => ram_empty_i_i_2_n_0
    );
ram_empty_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_1_out(0),
      I1 => Q(0),
      I2 => p_1_out(1),
      I3 => Q(1),
      O => ram_empty_i_i_3_n_0
    );
ram_empty_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_1_out(2),
      I1 => \gc0.count_reg[3]\(2),
      I2 => p_1_out(3),
      I3 => \gc0.count_reg[3]\(3),
      O => ram_empty_i_i_4_n_0
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F88F00008888"
    )
        port map (
      I0 => ram_full_fb_i_i_2_n_0,
      I1 => ram_full_i_reg_0,
      I2 => \gic0.gc0.count_d1_reg[3]\(3),
      I3 => \^ram_full_i_reg\(0),
      I4 => rst_full_gen_i,
      I5 => ram_full_fb_i_i_4_n_0,
      O => ram_full_i
    );
ram_full_fb_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_0_out(2),
      I1 => \gic0.gc0.count_reg[2]\(2),
      I2 => p_0_out(1),
      I3 => \gic0.gc0.count_reg[2]\(1),
      I4 => \gic0.gc0.count_reg[2]\(0),
      I5 => p_0_out(0),
      O => ram_full_fb_i_i_2_n_0
    );
ram_full_fb_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_0_out(2),
      I1 => \gic0.gc0.count_d1_reg[3]\(2),
      I2 => p_0_out(1),
      I3 => \gic0.gc0.count_d1_reg[3]\(1),
      I4 => \gic0.gc0.count_d1_reg[3]\(0),
      I5 => p_0_out(0),
      O => ram_full_fb_i_i_4_n_0
    );
\rd_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => \gsync_stage[2].wr_stg_inst_n_3\,
      Q => p_0_out(0)
    );
\rd_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => \gsync_stage[2].wr_stg_inst_n_2\,
      Q => p_0_out(1)
    );
\rd_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => \gsync_stage[2].wr_stg_inst_n_1\,
      Q => p_0_out(2)
    );
\rd_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => p_0_out_1(3),
      Q => \^ram_full_i_reg\(0)
    );
\rd_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(0),
      Q => rd_pntr_gc(0)
    );
\rd_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(1),
      Q => rd_pntr_gc(1)
    );
\rd_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => D(2),
      Q => rd_pntr_gc(2)
    );
\rd_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => Q(3),
      Q => rd_pntr_gc(3)
    );
\wr_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gsync_stage[2].rd_stg_inst_n_3\,
      Q => p_1_out(0)
    );
\wr_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => \gsync_stage[2].rd_stg_inst_n_2\,
      Q => p_1_out(1)
    );
\wr_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => p_0_in0,
      Q => p_1_out(2)
    );
\wr_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0),
      D => p_1_out_0(3),
      Q => p_1_out(3)
    );
\wr_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[3]\(0),
      I1 => \gic0.gc0.count_d2_reg[3]\(1),
      O => p_0_in2_out(0)
    );
\wr_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[3]\(1),
      I1 => \gic0.gc0.count_d2_reg[3]\(2),
      O => p_0_in2_out(1)
    );
\wr_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count_d2_reg[3]\(2),
      I1 => \gic0.gc0.count_d2_reg[3]\(3),
      O => p_0_in2_out(2)
    );
\wr_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => p_0_in2_out(0),
      Q => wr_pntr_gc(0)
    );
\wr_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => p_0_in2_out(1),
      Q => wr_pntr_gc(1)
    );
\wr_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => p_0_in2_out(2),
      Q => wr_pntr_gc(2)
    );
\wr_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0),
      D => \gic0.gc0.count_d2_reg[3]\(3),
      Q => wr_pntr_gc(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_crcgentx is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \emac_tx_wr_data_d1_reg[3]\ : out STD_LOGIC;
    \emac_tx_wr_data_d1_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txCrcEn_reg : in STD_LOGIC;
    enblCRC : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_crcgentx : entity is "crcgentx";
end ntps_top_axi_ethernetlite_0_0_crcgentx;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_crcgentx is
begin
NSR: entity work.ntps_top_axi_ethernetlite_0_0_crcnibshiftreg
     port map (
      E(0) => E(0),
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => SR(0),
      \emac_tx_wr_data_d1_reg[0]\(3 downto 0) => \emac_tx_wr_data_d1_reg[0]\(3 downto 0),
      \emac_tx_wr_data_d1_reg[3]\ => \emac_tx_wr_data_d1_reg[3]\,
      enblCRC => enblCRC,
      s_axi_aclk => s_axi_aclk,
      txCrcEn_reg => txCrcEn_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_deferral is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    STATE17A : in STD_LOGIC;
    C_SENSE_SYNC_2 : in STD_LOGIC;
    tx_clk_reg_d3 : in STD_LOGIC;
    tx_clk_reg_d2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_deferral : entity is "deferral";
end ntps_top_axi_ethernetlite_0_0_deferral;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_deferral is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \count_reg__0\ : STD_LOGIC_VECTOR ( 3 to 4 );
  signal \count_reg__0_0\ : STD_LOGIC_VECTOR ( 3 to 4 );
  signal ifgp1_zero : STD_LOGIC;
  signal ifgp2_zero : STD_LOGIC;
  signal inst_deferral_state_n_2 : STD_LOGIC;
  signal inst_deferral_state_n_3 : STD_LOGIC;
  signal inst_deferral_state_n_8 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
inst_deferral_state: entity work.ntps_top_axi_ethernetlite_0_0_defer_state
     port map (
      C_SENSE_SYNC_2 => C_SENSE_SYNC_2,
      D(1 downto 0) => \p_0_in__0\(1 downto 0),
      E(0) => inst_deferral_state_n_2,
      Q(1 downto 0) => \^q\(1 downto 0),
      STATE17A => STATE17A,
      \count_reg[0]\(0) => inst_deferral_state_n_3,
      \count_reg[0]_0\ => inst_deferral_state_n_8,
      \count_reg[3]\(1 downto 0) => p_0_in(1 downto 0),
      \count_reg[3]_0\(1) => \count_reg__0_0\(3),
      \count_reg[3]_0\(0) => \count_reg__0_0\(4),
      \count_reg[3]_1\(1) => \count_reg__0\(3),
      \count_reg[3]_1\(0) => \count_reg__0\(4),
      ifgp1_zero => ifgp1_zero,
      ifgp2_zero => ifgp2_zero,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      tx_clk_reg_d2 => tx_clk_reg_d2,
      tx_clk_reg_d3 => tx_clk_reg_d3
    );
inst_ifgp1_count: entity work.ntps_top_axi_ethernetlite_0_0_cntr5bit
     port map (
      D(1 downto 0) => p_0_in(1 downto 0),
      E(0) => inst_deferral_state_n_3,
      Q(1) => \count_reg__0\(3),
      Q(0) => \count_reg__0\(4),
      ifgp1_zero => ifgp1_zero,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \thisState_reg[1]\(1 downto 0) => \^q\(1 downto 0),
      \thisState_reg[1]_0\ => inst_deferral_state_n_8
    );
inst_ifgp2_count: entity work.ntps_top_axi_ethernetlite_0_0_cntr5bit_29
     port map (
      D(1 downto 0) => \p_0_in__0\(1 downto 0),
      E(0) => inst_deferral_state_n_2,
      Q(1) => \count_reg__0_0\(3),
      Q(0) => \count_reg__0_0\(4),
      ifgp2_zero => ifgp2_zero,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \thisState_reg[1]\(1 downto 0) => \^q\(1 downto 0),
      \thisState_reg[1]_0\ => inst_deferral_state_n_8
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_memory is
  port (
    \txNibbleCnt_pad_reg[0]\ : out STD_LOGIC;
    phy_tx_en_i : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIA : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    axi_phy_tx_en_i_p : in STD_LOGIC;
    fifo_tx_en_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    phy_tx_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_memory : entity is "memory";
end ntps_top_axi_ethernetlite_0_0_memory;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_memory is
begin
\gdm.dm\: entity work.ntps_top_axi_ethernetlite_0_0_dmem
     port map (
      D(3 downto 0) => D(3 downto 0),
      DIA(0) => DIA(0),
      E(0) => E(0),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0) => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0),
      Q(11 downto 0) => Q(11 downto 0),
      axi_phy_tx_en_i_p => axi_phy_tx_en_i_p,
      fifo_tx_en_reg(0) => fifo_tx_en_reg(0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      phy_tx_clk => phy_tx_clk,
      phy_tx_en_i => phy_tx_en_i,
      s_axi_aclk => s_axi_aclk,
      \txNibbleCnt_pad_reg[0]\ => \txNibbleCnt_pad_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_memory_39 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D11_out : out STD_LOGIC;
    state2a : out STD_LOGIC;
    preamble : out STD_LOGIC;
    D10_out : out STD_LOGIC;
    D20_out : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    busFifoData_is_5_d1_reg : out STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D17_out : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q3_in9_in : in STD_LOGIC;
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    rx_start : in STD_LOGIC;
    busFifoData_is_5_d1 : in STD_LOGIC;
    Q11_in : in STD_LOGIC;
    state3a : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[2]\ : in STD_LOGIC;
    state0a : in STD_LOGIC;
    \crc_local_reg[31]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_memory_39 : entity is "memory";
end ntps_top_axi_ethernetlite_0_0_memory_39;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_memory_39 is
begin
\gdm.dm\: entity work.ntps_top_axi_ethernetlite_0_0_dmem_41
     port map (
      D(7 downto 0) => D(7 downto 0),
      D10_out => D10_out,
      D11_out => D11_out,
      D17_out => D17_out,
      D20_out => D20_out,
      DIA(1 downto 0) => DIA(1 downto 0),
      DIB(1 downto 0) => DIB(1 downto 0),
      DIC(1 downto 0) => DIC(1 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      Q11_in => Q11_in,
      Q3_in9_in => Q3_in9_in,
      SR(0) => SR(0),
      busFifoData_is_5_d1 => busFifoData_is_5_d1,
      busFifoData_is_5_d1_reg => busFifoData_is_5_d1_reg,
      \crc_local_reg[31]\(10 downto 0) => \crc_local_reg[31]\(10 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0) => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      phy_rx_clk => phy_rx_clk,
      preamble => preamble,
      ram_empty_fb_i_reg(0) => ram_empty_fb_i_reg(0),
      ram_empty_i_reg => ram_empty_i_reg,
      \rdDestAddrNib_D_t_q_reg[2]\ => \rdDestAddrNib_D_t_q_reg[2]\,
      \rdDestAddrNib_D_t_q_reg[3]\ => \rdDestAddrNib_D_t_q_reg[3]\,
      rx_start => rx_start,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      state0a => state0a,
      state2a => state2a,
      state3a => state3a
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_rd_logic is
  port (
    fifo_empty_i : out STD_LOGIC;
    \gc0.count_d1_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rd_pntr_gc_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wr_pntr_bin_reg[3]\ : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_tx_en : in STD_LOGIC;
    \wr_pntr_bin_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_rd_logic : entity is "rd_logic";
end ntps_top_axi_ethernetlite_0_0_rd_logic;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_rd_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_18_out : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gras.rsts\: entity work.ntps_top_axi_ethernetlite_0_0_rd_status_flags_as
     port map (
      E(0) => \^e\(0),
      Q(0) => Q(0),
      fifo_empty_i => fifo_empty_i,
      fifo_tx_en => fifo_tx_en,
      p_18_out => p_18_out,
      phy_tx_clk => phy_tx_clk,
      \wr_pntr_bin_reg[3]\ => \wr_pntr_bin_reg[3]\
    );
rpntr: entity work.ntps_top_axi_ethernetlite_0_0_rd_bin_cntr
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => \^e\(0),
      Q(1 downto 0) => \gc0.count_d1_reg[3]\(1 downto 0),
      fifo_tx_en => fifo_tx_en,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0) => Q(0),
      p_18_out => p_18_out,
      phy_tx_clk => phy_tx_clk,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      \rd_pntr_gc_reg[3]\(3 downto 0) => \rd_pntr_gc_reg[3]\(3 downto 0),
      \wr_pntr_bin_reg[1]\(1 downto 0) => \wr_pntr_bin_reg[1]\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_rd_logic_37 is
  port (
    \rxbuffer_addr_reg[11]\ : out STD_LOGIC;
    state1a : out STD_LOGIC;
    p_18_out : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[1]\ : out STD_LOGIC;
    state1a_0 : out STD_LOGIC;
    goto_readDestAdrNib1 : out STD_LOGIC;
    rx_addr_en : out STD_LOGIC;
    state0a : out STD_LOGIC;
    \gc0.count_d1_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rd_pntr_gc_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_valid_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_pntr_bin_reg[2]\ : in STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[2]\ : in STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    state0a_0 : in STD_LOGIC;
    ping_rx_status_reg : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : in STD_LOGIC;
    rxCrcRst : in STD_LOGIC;
    Q3_in9_in : in STD_LOGIC;
    state4a : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_rd_logic_37 : entity is "rd_logic";
end ntps_top_axi_ethernetlite_0_0_rd_logic_37;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_rd_logic_37 is
  signal \^rxbuffer_addr_reg[11]\ : STD_LOGIC;
  signal \^state1a\ : STD_LOGIC;
begin
  \rxbuffer_addr_reg[11]\ <= \^rxbuffer_addr_reg[11]\;
  state1a <= \^state1a\;
\gras.rsts\: entity work.ntps_top_axi_ethernetlite_0_0_rd_status_flags_as_44
     port map (
      Q(0) => Q(0),
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => \RX_PONG_REG_GEN.pong_rx_status_reg\,
      \gpr1.dout_i_reg[1]\(0) => \gpr1.dout_i_reg[1]\(1),
      \gv.ram_valid_d1_reg\ => \^rxbuffer_addr_reg[11]\,
      p_18_out => p_18_out,
      ping_rx_status_reg => ping_rx_status_reg,
      \rdDestAddrNib_D_t_q_reg[1]\ => \rdDestAddrNib_D_t_q_reg[1]\,
      \rdDestAddrNib_D_t_q_reg[2]\ => \rdDestAddrNib_D_t_q_reg[2]\,
      rxCrcRst => rxCrcRst,
      s_axi_aclk => s_axi_aclk,
      state0a => state0a_0,
      state1a => \^state1a\,
      state1a_0 => state1a_0,
      \wr_pntr_bin_reg[2]\ => \wr_pntr_bin_reg[2]\
    );
\grhf.rhf\: entity work.ntps_top_axi_ethernetlite_0_0_rd_handshaking_flags
     port map (
      Q(0) => Q(0),
      Q3_in9_in => Q3_in9_in,
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => \RX_PONG_REG_GEN.pong_rx_status_reg\,
      goto_readDestAdrNib1 => goto_readDestAdrNib1,
      \gpr1.dout_i_reg[0]\(0) => \gpr1.dout_i_reg[1]\(0),
      ping_rx_status_reg => ping_rx_status_reg,
      ram_empty_i_reg => \^state1a\,
      ram_valid_i => ram_valid_i,
      rx_addr_en => rx_addr_en,
      \rxbuffer_addr_reg[11]\ => \^rxbuffer_addr_reg[11]\,
      s_axi_aclk => s_axi_aclk,
      state0a => state0a,
      state4a => state4a
    );
rpntr: entity work.ntps_top_axi_ethernetlite_0_0_rd_bin_cntr_45
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      Q(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0) => Q(0),
      \rd_pntr_gc_reg[3]\(3 downto 0) => \rd_pntr_gc_reg[3]\(3 downto 0),
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_wr_logic is
  port (
    txfifo_full : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D28_out : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wr_pntr_gc_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    rst_full_ff_i : in STD_LOGIC;
    txfifo_empty : in STD_LOGIC;
    Q32_in : in STD_LOGIC;
    STATE14A : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_wr_logic : entity is "wr_logic";
end ntps_top_axi_ethernetlite_0_0_wr_logic;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_wr_logic is
begin
\gwas.wsts\: entity work.ntps_top_axi_ethernetlite_0_0_wr_status_flags_as
     port map (
      D28_out => D28_out,
      Q32_in => Q32_in,
      STATE14A => STATE14A,
      p_0_out => p_0_out,
      ram_full_i => ram_full_i,
      rst_full_ff_i => rst_full_ff_i,
      s_axi_aclk => s_axi_aclk,
      txfifo_empty => txfifo_empty,
      txfifo_full => txfifo_full
    );
wpntr: entity work.ntps_top_axi_ethernetlite_0_0_wr_bin_cntr
     port map (
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      s_axi_aclk => s_axi_aclk,
      \wr_pntr_gc_reg[3]\(3 downto 0) => \wr_pntr_gc_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_wr_logic_38 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_full_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc0.count_d2_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wr_pntr_gc_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_i : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    rst_full_ff_i : in STD_LOGIC;
    \rd_pntr_bin_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_wr_logic_38 : entity is "wr_logic";
end ntps_top_axi_ethernetlite_0_0_wr_logic_38;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_wr_logic_38 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.ntps_top_axi_ethernetlite_0_0_wr_status_flags_as_42
     port map (
      E(0) => \^e\(0),
      Q(0) => wr_pntr_plus2(3),
      phy_rx_clk => phy_rx_clk,
      ram_full_i => ram_full_i,
      ram_full_i_reg_0 => ram_full_i_reg,
      \rd_pntr_bin_reg[3]\(0) => \rd_pntr_bin_reg[3]\(0),
      rst_full_ff_i => rst_full_ff_i
    );
wpntr: entity work.ntps_top_axi_ethernetlite_0_0_wr_bin_cntr_43
     port map (
      E(0) => \^e\(0),
      Q(3) => wr_pntr_plus2(3),
      Q(2 downto 0) => Q(2 downto 0),
      \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0) => \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0),
      phy_rx_clk => phy_rx_clk,
      \wr_pntr_gc_reg[3]\(3 downto 0) => \wr_pntr_gc_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr is
  port (
    \emac_tx_wr_data_d1_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      WEBWE(0) => WEBWE(0),
      \emac_tx_wr_data_d1_reg[0]\(3 downto 0) => \emac_tx_wr_data_d1_reg[0]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_15 is
  port (
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    reg_access_reg : in STD_LOGIC;
    \reg_data_out_reg[0]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \reg_data_out_reg[1]\ : in STD_LOGIC;
    \reg_data_out_reg[2]\ : in STD_LOGIC;
    p_21_in : in STD_LOGIC;
    p_27_in165_in : in STD_LOGIC;
    p_33_in184_in : in STD_LOGIC;
    p_39_in204_in : in STD_LOGIC;
    p_45_in221_in : in STD_LOGIC;
    p_51_in : in STD_LOGIC;
    p_57_in257_in : in STD_LOGIC;
    p_63_in273_in : in STD_LOGIC;
    p_69_in : in STD_LOGIC;
    p_68_in290_in : in STD_LOGIC;
    p_75_in : in STD_LOGIC;
    p_74_in308_in : in STD_LOGIC;
    p_81_in330_in : in STD_LOGIC;
    p_80_in328_in : in STD_LOGIC;
    p_87_in351_in : in STD_LOGIC;
    p_86_in349_in : in STD_LOGIC;
    p_93_in : in STD_LOGIC;
    p_92_in370_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_15 : entity is "blk_mem_gen_generic_cstr";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_15;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_15 is
begin
\ramloop[0].ram.r\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_16
     port map (
      \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0) => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(30 downto 0) => D(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0) => \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      p_21_in => p_21_in,
      p_27_in165_in => p_27_in165_in,
      p_33_in184_in => p_33_in184_in,
      p_39_in204_in => p_39_in204_in,
      p_45_in221_in => p_45_in221_in,
      p_51_in => p_51_in,
      p_57_in257_in => p_57_in257_in,
      p_63_in273_in => p_63_in273_in,
      p_68_in290_in => p_68_in290_in,
      p_69_in => p_69_in,
      p_74_in308_in => p_74_in308_in,
      p_75_in => p_75_in,
      p_80_in328_in => p_80_in328_in,
      p_81_in330_in => p_81_in330_in,
      p_86_in349_in => p_86_in349_in,
      p_87_in351_in => p_87_in351_in,
      p_92_in370_in => p_92_in370_in,
      p_93_in => p_93_in,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[0]\ => \reg_data_out_reg[0]\,
      \reg_data_out_reg[1]\ => \reg_data_out_reg[1]\,
      \reg_data_out_reg[2]\ => \reg_data_out_reg[2]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_22 is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 30 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_data_out_reg[31]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    reg_access_reg : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_22 : entity is "blk_mem_gen_generic_cstr";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_22;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_22 is
begin
\ramloop[0].ram.r\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_23
     port map (
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(0) => D(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[31]\ => \reg_data_out_reg[31]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_8 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_idle : in STD_LOGIC;
    \TX_PONG_GEN.tx_pong_ping_l_reg_0\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_8 : entity is "blk_mem_gen_generic_cstr";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_8;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_8 is
begin
\ramloop[0].ram.r\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_prim_width_9
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0),
      DOADO(3 downto 0) => DOADO(3 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      \TX_PONG_GEN.tx_pong_ping_l_reg_0\ => \TX_PONG_GEN.tx_pong_ping_l_reg_0\,
      WEBWE(0) => WEBWE(0),
      \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0) => \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tx_idle => tx_idle
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo is
  port (
    fifo_empty_i : out STD_LOGIC;
    txfifo_full : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    \txNibbleCnt_pad_reg[0]\ : out STD_LOGIC;
    D28_out : out STD_LOGIC;
    phy_tx_en_i : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Rst0 : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIA : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    txfifo_empty : in STD_LOGIC;
    Q32_in : in STD_LOGIC;
    STATE14A : in STD_LOGIC;
    axi_phy_tx_en_i_p : in STD_LOGIC;
    fifo_tx_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo is
  signal \gntv_or_sync_fifo.gcx.clkx_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_4\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_5\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_6\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_7\ : STD_LOGIC;
  signal \gwas.wsts/ram_full_i\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_20_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_8_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_9_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_2 : STD_LOGIC;
  signal rstblk_n_3 : STD_LOGIC;
  signal rstblk_n_5 : STD_LOGIC;
  signal rstblk_n_6 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.ntps_top_axi_ethernetlite_0_0_clk_x_pntrs
     port map (
      D(2) => \gntv_or_sync_fifo.gl0.rd_n_5\,
      D(1) => \gntv_or_sync_fifo.gl0.rd_n_6\,
      D(0) => \gntv_or_sync_fifo.gl0.rd_n_7\,
      E(0) => E(0),
      Q(3 downto 0) => wr_pntr_plus2(3 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_20_out(3 downto 0),
      \gc0.count_reg[3]\(1 downto 0) => rd_pntr_plus1(3 downto 2),
      \gic0.gc0.count_d1_reg[3]\(3 downto 0) => p_8_out(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_9_out(3 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => rstblk_n_3,
      \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0) => rstblk_n_6,
      phy_tx_clk => phy_tx_clk,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_1\,
      ram_empty_fb_i_reg_0(1 downto 0) => p_1_out(1 downto 0),
      ram_empty_fb_i_reg_1 => \gntv_or_sync_fifo.gl0.rd_n_4\,
      ram_full_i => \gwas.wsts/ram_full_i\,
      rst_full_gen_i => rst_full_gen_i,
      s_axi_aclk => s_axi_aclk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.ntps_top_axi_ethernetlite_0_0_rd_logic
     port map (
      D(2) => \gntv_or_sync_fifo.gl0.rd_n_5\,
      D(1) => \gntv_or_sync_fifo.gl0.rd_n_6\,
      D(0) => \gntv_or_sync_fifo.gl0.rd_n_7\,
      E(0) => ram_rd_en_i,
      Q(0) => rstblk_n_2,
      fifo_empty_i => fifo_empty_i,
      fifo_tx_en => fifo_tx_en,
      \gc0.count_d1_reg[3]\(1 downto 0) => rd_pntr_plus1(3 downto 2),
      phy_tx_clk => phy_tx_clk,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_4\,
      \rd_pntr_gc_reg[3]\(3 downto 0) => p_20_out(3 downto 0),
      \wr_pntr_bin_reg[1]\(1 downto 0) => p_1_out(1 downto 0),
      \wr_pntr_bin_reg[3]\ => \gntv_or_sync_fifo.gcx.clkx_n_1\
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.ntps_top_axi_ethernetlite_0_0_wr_logic
     port map (
      D28_out => D28_out,
      E(0) => E(0),
      Q(3 downto 0) => wr_pntr_plus2(3 downto 0),
      Q32_in => Q32_in,
      STATE14A => STATE14A,
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_8_out(3 downto 0),
      \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0) => rstblk_n_5,
      p_0_out => p_0_out,
      ram_full_i => \gwas.wsts/ram_full_i\,
      rst_full_ff_i => rst_full_ff_i,
      s_axi_aclk => s_axi_aclk,
      txfifo_empty => txfifo_empty,
      txfifo_full => txfifo_full,
      \wr_pntr_gc_reg[3]\(3 downto 0) => p_9_out(3 downto 0)
    );
\gntv_or_sync_fifo.mem\: entity work.ntps_top_axi_ethernetlite_0_0_memory
     port map (
      D(3 downto 0) => D(3 downto 0),
      DIA(0) => DIA(0),
      E(0) => E(0),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0) => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0),
      Q(11 downto 0) => Q(11 downto 0),
      axi_phy_tx_en_i_p => axi_phy_tx_en_i_p,
      fifo_tx_en_reg(0) => ram_rd_en_i,
      \gc0.count_d1_reg[3]\(3 downto 0) => p_20_out(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_9_out(3 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0) => rd_rst_i(0),
      phy_tx_clk => phy_tx_clk,
      phy_tx_en_i => phy_tx_en_i,
      s_axi_aclk => s_axi_aclk,
      \txNibbleCnt_pad_reg[0]\ => \txNibbleCnt_pad_reg[0]\
    );
rstblk: entity work.ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo
     port map (
      Q(2) => rstblk_n_2,
      Q(1) => rstblk_n_3,
      Q(0) => rd_rst_i(0),
      Rst0 => Rst0,
      \gic0.gc0.count_d2_reg[0]\(1) => rstblk_n_5,
      \gic0.gc0.count_d2_reg[0]\(0) => rstblk_n_6,
      phy_tx_clk => phy_tx_clk,
      rst_full_ff_i => rst_full_ff_i,
      rst_full_gen_i => rst_full_gen_i,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo_35 is
  port (
    \rxbuffer_addr_reg[11]\ : out STD_LOGIC;
    state1a : out STD_LOGIC;
    p_18_out : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    state1a_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D11_out : out STD_LOGIC;
    state2a : out STD_LOGIC;
    preamble : out STD_LOGIC;
    D10_out : out STD_LOGIC;
    D20_out : out STD_LOGIC;
    goto_readDestAdrNib1 : out STD_LOGIC;
    rx_addr_en : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[3]\ : out STD_LOGIC;
    state0a : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    busFifoData_is_5_d1_reg : out STD_LOGIC;
    ram_valid_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    rst_s : in STD_LOGIC;
    DIA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : in STD_LOGIC;
    state0a_0 : in STD_LOGIC;
    ping_rx_status_reg : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : in STD_LOGIC;
    rxCrcRst : in STD_LOGIC;
    D17_out : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q3_in9_in : in STD_LOGIC;
    rx_start : in STD_LOGIC;
    busFifoData_is_5_d1 : in STD_LOGIC;
    Q11_in : in STD_LOGIC;
    state3a : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    state4a : in STD_LOGIC;
    \crc_local_reg[31]\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo_35 : entity is "fifo_generator_ramfifo";
end ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo_35;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo_35 is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal RD_RST : STD_LOGIC;
  signal RST : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_12\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_13\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_14\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_3\ : STD_LOGIC;
  signal \gwas.wsts/ram_full_i\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_20_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_3_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_9_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_2 : STD_LOGIC;
  signal rstblk_n_6 : STD_LOGIC;
  signal \^rxbuffer_addr_reg[11]\ : STD_LOGIC;
  signal \^state1a\ : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  \rxbuffer_addr_reg[11]\ <= \^rxbuffer_addr_reg[11]\;
  state1a <= \^state1a\;
\gntv_or_sync_fifo.gcx.clkx\: entity work.ntps_top_axi_ethernetlite_0_0_clk_x_pntrs_36
     port map (
      D(2) => \gntv_or_sync_fifo.gl0.rd_n_12\,
      D(1) => \gntv_or_sync_fifo.gl0.rd_n_13\,
      D(0) => \gntv_or_sync_fifo.gl0.rd_n_14\,
      E(0) => E(0),
      Q(3 downto 0) => p_20_out(3 downto 0),
      \gc0.count_reg[3]\(3 downto 0) => rd_pntr_plus1(3 downto 0),
      \gic0.gc0.count_d1_reg[3]\(3 downto 0) => p_8_out(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_9_out(3 downto 0),
      \gic0.gc0.count_reg[2]\(2 downto 0) => wr_pntr_plus2(2 downto 0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\(0) => RD_RST,
      \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\(0) => rstblk_n_6,
      phy_rx_clk => phy_rx_clk,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      ram_full_i => \gwas.wsts/ram_full_i\,
      ram_full_i_reg(0) => p_0_out(3),
      ram_full_i_reg_0 => \gntv_or_sync_fifo.gl0.wr_n_3\,
      rst_full_gen_i => rst_full_gen_i,
      s_axi_aclk => s_axi_aclk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.ntps_top_axi_ethernetlite_0_0_rd_logic_37
     port map (
      D(2) => \gntv_or_sync_fifo.gl0.rd_n_12\,
      D(1) => \gntv_or_sync_fifo.gl0.rd_n_13\,
      D(0) => \gntv_or_sync_fifo.gl0.rd_n_14\,
      E(0) => E(0),
      Q(0) => rstblk_n_2,
      Q3_in9_in => Q3_in9_in,
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => \RX_PONG_REG_GEN.pong_rx_status_reg\,
      \gc0.count_d1_reg[3]\(3 downto 0) => rd_pntr_plus1(3 downto 0),
      goto_readDestAdrNib1 => goto_readDestAdrNib1,
      \gpr1.dout_i_reg[1]\(1 downto 0) => \^q\(1 downto 0),
      p_18_out => p_18_out,
      ping_rx_status_reg => ping_rx_status_reg,
      ram_valid_i => ram_valid_i,
      \rdDestAddrNib_D_t_q_reg[1]\ => \rdDestAddrNib_D_t_q_reg[1]\,
      \rdDestAddrNib_D_t_q_reg[2]\ => \rdDestAddrNib_D_t_q_reg[2]\,
      \rd_pntr_gc_reg[3]\(3 downto 0) => p_20_out(3 downto 0),
      rxCrcRst => rxCrcRst,
      rx_addr_en => rx_addr_en,
      \rxbuffer_addr_reg[11]\ => \^rxbuffer_addr_reg[11]\,
      s_axi_aclk => s_axi_aclk,
      state0a => state0a,
      state0a_0 => state0a_0,
      state1a => \^state1a\,
      state1a_0 => state1a_0,
      state4a => state4a,
      \wr_pntr_bin_reg[2]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.ntps_top_axi_ethernetlite_0_0_wr_logic_38
     port map (
      E(0) => p_3_out,
      Q(2 downto 0) => wr_pntr_plus2(2 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_8_out(3 downto 0),
      \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\(0) => RST,
      phy_rx_clk => phy_rx_clk,
      ram_full_i => \gwas.wsts/ram_full_i\,
      ram_full_i_reg => \gntv_or_sync_fifo.gl0.wr_n_3\,
      \rd_pntr_bin_reg[3]\(0) => p_0_out(3),
      rst_full_ff_i => rst_full_ff_i,
      \wr_pntr_gc_reg[3]\(3 downto 0) => p_9_out(3 downto 0)
    );
\gntv_or_sync_fifo.mem\: entity work.ntps_top_axi_ethernetlite_0_0_memory_39
     port map (
      D(7 downto 0) => D(7 downto 0),
      D10_out => D10_out,
      D11_out => D11_out,
      D17_out => D17_out,
      D20_out => D20_out,
      DIA(1 downto 0) => DIA(1 downto 0),
      DIB(1 downto 0) => DIB(1 downto 0),
      DIC(1 downto 0) => DIC(1 downto 0),
      E(0) => p_3_out,
      Q(5 downto 0) => \^q\(5 downto 0),
      Q11_in => Q11_in,
      Q3_in9_in => Q3_in9_in,
      SR(0) => SR(0),
      busFifoData_is_5_d1 => busFifoData_is_5_d1,
      busFifoData_is_5_d1_reg => busFifoData_is_5_d1_reg,
      \crc_local_reg[31]\(10 downto 0) => \crc_local_reg[31]\(10 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_20_out(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_9_out(3 downto 0),
      \gv.ram_valid_d1_reg\ => \^rxbuffer_addr_reg[11]\,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0) => rd_rst_i(0),
      phy_rx_clk => phy_rx_clk,
      preamble => preamble,
      ram_empty_fb_i_reg(0) => E(0),
      ram_empty_i_reg => \^state1a\,
      \rdDestAddrNib_D_t_q_reg[2]\ => \rdDestAddrNib_D_t_q_reg[2]\,
      \rdDestAddrNib_D_t_q_reg[3]\ => \rdDestAddrNib_D_t_q_reg[3]\,
      rx_start => rx_start,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      state0a => state0a_0,
      state2a => state2a,
      state3a => state3a
    );
rstblk: entity work.ntps_top_axi_ethernetlite_0_0_reset_blk_ramfifo_40
     port map (
      Q(2) => rstblk_n_2,
      Q(1) => RD_RST,
      Q(0) => rd_rst_i(0),
      \gic0.gc0.count_reg[0]\(1) => RST,
      \gic0.gc0.count_reg[0]\(0) => rstblk_n_6,
      phy_rx_clk => phy_rx_clk,
      rst_full_ff_i => rst_full_ff_i,
      rst_full_gen_i => rst_full_gen_i,
      rst_s => rst_s,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top is
  port (
    \emac_tx_wr_data_d1_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top : entity is "blk_mem_gen_top";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      WEBWE(0) => WEBWE(0),
      \emac_tx_wr_data_d1_reg[0]\(3 downto 0) => \emac_tx_wr_data_d1_reg[0]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_14 is
  port (
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    reg_access_reg : in STD_LOGIC;
    \reg_data_out_reg[0]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \reg_data_out_reg[1]\ : in STD_LOGIC;
    \reg_data_out_reg[2]\ : in STD_LOGIC;
    p_21_in : in STD_LOGIC;
    p_27_in165_in : in STD_LOGIC;
    p_33_in184_in : in STD_LOGIC;
    p_39_in204_in : in STD_LOGIC;
    p_45_in221_in : in STD_LOGIC;
    p_51_in : in STD_LOGIC;
    p_57_in257_in : in STD_LOGIC;
    p_63_in273_in : in STD_LOGIC;
    p_69_in : in STD_LOGIC;
    p_68_in290_in : in STD_LOGIC;
    p_75_in : in STD_LOGIC;
    p_74_in308_in : in STD_LOGIC;
    p_81_in330_in : in STD_LOGIC;
    p_80_in328_in : in STD_LOGIC;
    p_87_in351_in : in STD_LOGIC;
    p_86_in349_in : in STD_LOGIC;
    p_93_in : in STD_LOGIC;
    p_92_in370_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_14 : entity is "blk_mem_gen_top";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_14;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_14 is
begin
\valid.cstr\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_15
     port map (
      \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0) => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(30 downto 0) => D(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0) => \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      p_21_in => p_21_in,
      p_27_in165_in => p_27_in165_in,
      p_33_in184_in => p_33_in184_in,
      p_39_in204_in => p_39_in204_in,
      p_45_in221_in => p_45_in221_in,
      p_51_in => p_51_in,
      p_57_in257_in => p_57_in257_in,
      p_63_in273_in => p_63_in273_in,
      p_68_in290_in => p_68_in290_in,
      p_69_in => p_69_in,
      p_74_in308_in => p_74_in308_in,
      p_75_in => p_75_in,
      p_80_in328_in => p_80_in328_in,
      p_81_in330_in => p_81_in330_in,
      p_86_in349_in => p_86_in349_in,
      p_87_in351_in => p_87_in351_in,
      p_92_in370_in => p_92_in370_in,
      p_93_in => p_93_in,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[0]\ => \reg_data_out_reg[0]\,
      \reg_data_out_reg[1]\ => \reg_data_out_reg[1]\,
      \reg_data_out_reg[2]\ => \reg_data_out_reg[2]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_21 is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 30 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_data_out_reg[31]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    reg_access_reg : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_21 : entity is "blk_mem_gen_top";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_21;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_21 is
begin
\valid.cstr\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_22
     port map (
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(0) => D(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[31]\ => \reg_data_out_reg[31]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_7 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_idle : in STD_LOGIC;
    \TX_PONG_GEN.tx_pong_ping_l_reg_0\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_7 : entity is "blk_mem_gen_top";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_7;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_7 is
begin
\valid.cstr\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_generic_cstr_8
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0),
      DOADO(3 downto 0) => DOADO(3 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      \TX_PONG_GEN.tx_pong_ping_l_reg_0\ => \TX_PONG_GEN.tx_pong_ping_l_reg_0\,
      WEBWE(0) => WEBWE(0),
      \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0) => \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tx_idle => tx_idle
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_fifo_generator_top is
  port (
    fifo_empty_i : out STD_LOGIC;
    txfifo_full : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    \txNibbleCnt_pad_reg[0]\ : out STD_LOGIC;
    D28_out : out STD_LOGIC;
    phy_tx_en_i : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Rst0 : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIA : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    txfifo_empty : in STD_LOGIC;
    Q32_in : in STD_LOGIC;
    STATE14A : in STD_LOGIC;
    axi_phy_tx_en_i_p : in STD_LOGIC;
    fifo_tx_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_fifo_generator_top : entity is "fifo_generator_top";
end ntps_top_axi_ethernetlite_0_0_fifo_generator_top;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_fifo_generator_top is
begin
\grf.rf\: entity work.ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo
     port map (
      D(3 downto 0) => D(3 downto 0),
      D28_out => D28_out,
      DIA(0) => DIA(0),
      E(0) => E(0),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0) => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0),
      Q(11 downto 0) => Q(11 downto 0),
      Q32_in => Q32_in,
      Rst0 => Rst0,
      STATE14A => STATE14A,
      axi_phy_tx_en_i_p => axi_phy_tx_en_i_p,
      fifo_empty_i => fifo_empty_i,
      fifo_tx_en => fifo_tx_en,
      p_0_out => p_0_out,
      phy_tx_clk => phy_tx_clk,
      phy_tx_en_i => phy_tx_en_i,
      s_axi_aclk => s_axi_aclk,
      \txNibbleCnt_pad_reg[0]\ => \txNibbleCnt_pad_reg[0]\,
      txfifo_empty => txfifo_empty,
      txfifo_full => txfifo_full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_fifo_generator_top_34 is
  port (
    \rxbuffer_addr_reg[11]\ : out STD_LOGIC;
    state1a : out STD_LOGIC;
    p_18_out : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    state1a_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D11_out : out STD_LOGIC;
    state2a : out STD_LOGIC;
    preamble : out STD_LOGIC;
    D10_out : out STD_LOGIC;
    D20_out : out STD_LOGIC;
    goto_readDestAdrNib1 : out STD_LOGIC;
    rx_addr_en : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[3]\ : out STD_LOGIC;
    state0a : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    busFifoData_is_5_d1_reg : out STD_LOGIC;
    ram_valid_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    rst_s : in STD_LOGIC;
    DIA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : in STD_LOGIC;
    state0a_0 : in STD_LOGIC;
    ping_rx_status_reg : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : in STD_LOGIC;
    rxCrcRst : in STD_LOGIC;
    D17_out : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q3_in9_in : in STD_LOGIC;
    rx_start : in STD_LOGIC;
    busFifoData_is_5_d1 : in STD_LOGIC;
    Q11_in : in STD_LOGIC;
    state3a : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    state4a : in STD_LOGIC;
    \crc_local_reg[31]\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_fifo_generator_top_34 : entity is "fifo_generator_top";
end ntps_top_axi_ethernetlite_0_0_fifo_generator_top_34;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_fifo_generator_top_34 is
begin
\grf.rf\: entity work.ntps_top_axi_ethernetlite_0_0_fifo_generator_ramfifo_35
     port map (
      D(7 downto 0) => D(7 downto 0),
      D10_out => D10_out,
      D11_out => D11_out,
      D17_out => D17_out,
      D20_out => D20_out,
      DIA(1 downto 0) => DIA(1 downto 0),
      DIB(1 downto 0) => DIB(1 downto 0),
      DIC(1 downto 0) => DIC(1 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      Q11_in => Q11_in,
      Q3_in9_in => Q3_in9_in,
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => \RX_PONG_REG_GEN.pong_rx_status_reg\,
      SR(0) => SR(0),
      busFifoData_is_5_d1 => busFifoData_is_5_d1,
      busFifoData_is_5_d1_reg => busFifoData_is_5_d1_reg,
      \crc_local_reg[31]\(10 downto 0) => \crc_local_reg[31]\(10 downto 0),
      goto_readDestAdrNib1 => goto_readDestAdrNib1,
      p_18_out => p_18_out,
      phy_rx_clk => phy_rx_clk,
      ping_rx_status_reg => ping_rx_status_reg,
      preamble => preamble,
      ram_valid_i => ram_valid_i,
      \rdDestAddrNib_D_t_q_reg[1]\ => \rdDestAddrNib_D_t_q_reg[1]\,
      \rdDestAddrNib_D_t_q_reg[2]\ => \rdDestAddrNib_D_t_q_reg[2]\,
      \rdDestAddrNib_D_t_q_reg[3]\ => \rdDestAddrNib_D_t_q_reg[3]\,
      rst_s => rst_s,
      rxCrcRst => rxCrcRst,
      rx_addr_en => rx_addr_en,
      rx_start => rx_start,
      \rxbuffer_addr_reg[11]\ => \rxbuffer_addr_reg[11]\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      state0a => state0a,
      state0a_0 => state0a_0,
      state1a => state1a,
      state1a_0 => state1a_0,
      state2a => state2a,
      state3a => state3a,
      state4a => state4a
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth is
  port (
    \emac_tx_wr_data_d1_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth : entity is "blk_mem_gen_v8_2_synth";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth is
begin
\gnativebmg.native_blk_mem_gen\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      WEBWE(0) => WEBWE(0),
      \emac_tx_wr_data_d1_reg[0]\(3 downto 0) => \emac_tx_wr_data_d1_reg[0]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_13 is
  port (
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    reg_access_reg : in STD_LOGIC;
    \reg_data_out_reg[0]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \reg_data_out_reg[1]\ : in STD_LOGIC;
    \reg_data_out_reg[2]\ : in STD_LOGIC;
    p_21_in : in STD_LOGIC;
    p_27_in165_in : in STD_LOGIC;
    p_33_in184_in : in STD_LOGIC;
    p_39_in204_in : in STD_LOGIC;
    p_45_in221_in : in STD_LOGIC;
    p_51_in : in STD_LOGIC;
    p_57_in257_in : in STD_LOGIC;
    p_63_in273_in : in STD_LOGIC;
    p_69_in : in STD_LOGIC;
    p_68_in290_in : in STD_LOGIC;
    p_75_in : in STD_LOGIC;
    p_74_in308_in : in STD_LOGIC;
    p_81_in330_in : in STD_LOGIC;
    p_80_in328_in : in STD_LOGIC;
    p_87_in351_in : in STD_LOGIC;
    p_86_in349_in : in STD_LOGIC;
    p_93_in : in STD_LOGIC;
    p_92_in370_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_13 : entity is "blk_mem_gen_v8_2_synth";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_13;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_13 is
begin
\gnativebmg.native_blk_mem_gen\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_14
     port map (
      \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0) => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(30 downto 0) => D(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0) => \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      p_21_in => p_21_in,
      p_27_in165_in => p_27_in165_in,
      p_33_in184_in => p_33_in184_in,
      p_39_in204_in => p_39_in204_in,
      p_45_in221_in => p_45_in221_in,
      p_51_in => p_51_in,
      p_57_in257_in => p_57_in257_in,
      p_63_in273_in => p_63_in273_in,
      p_68_in290_in => p_68_in290_in,
      p_69_in => p_69_in,
      p_74_in308_in => p_74_in308_in,
      p_75_in => p_75_in,
      p_80_in328_in => p_80_in328_in,
      p_81_in330_in => p_81_in330_in,
      p_86_in349_in => p_86_in349_in,
      p_87_in351_in => p_87_in351_in,
      p_92_in370_in => p_92_in370_in,
      p_93_in => p_93_in,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[0]\ => \reg_data_out_reg[0]\,
      \reg_data_out_reg[1]\ => \reg_data_out_reg[1]\,
      \reg_data_out_reg[2]\ => \reg_data_out_reg[2]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_20 is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 30 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_data_out_reg[31]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    reg_access_reg : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_20 : entity is "blk_mem_gen_v8_2_synth";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_20;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_20 is
begin
\gnativebmg.native_blk_mem_gen\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_21
     port map (
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(0) => D(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[31]\ => \reg_data_out_reg[31]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_6 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_idle : in STD_LOGIC;
    \TX_PONG_GEN.tx_pong_ping_l_reg_0\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_6 : entity is "blk_mem_gen_v8_2_synth";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_6;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_6 is
begin
\gnativebmg.native_blk_mem_gen\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_top_7
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0),
      DOADO(3 downto 0) => DOADO(3 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      \TX_PONG_GEN.tx_pong_ping_l_reg_0\ => \TX_PONG_GEN.tx_pong_ping_l_reg_0\,
      WEBWE(0) => WEBWE(0),
      \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0) => \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tx_idle => tx_idle
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth is
  port (
    fifo_empty_i : out STD_LOGIC;
    txfifo_full : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    \txNibbleCnt_pad_reg[0]\ : out STD_LOGIC;
    D28_out : out STD_LOGIC;
    phy_tx_en_i : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Rst0 : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIA : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    txfifo_empty : in STD_LOGIC;
    Q32_in : in STD_LOGIC;
    STATE14A : in STD_LOGIC;
    axi_phy_tx_en_i_p : in STD_LOGIC;
    fifo_tx_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth : entity is "fifo_generator_v12_0_synth";
end ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth is
begin
\gconvfifo.rf\: entity work.ntps_top_axi_ethernetlite_0_0_fifo_generator_top
     port map (
      D(3 downto 0) => D(3 downto 0),
      D28_out => D28_out,
      DIA(0) => DIA(0),
      E(0) => E(0),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0) => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0),
      Q(11 downto 0) => Q(11 downto 0),
      Q32_in => Q32_in,
      Rst0 => Rst0,
      STATE14A => STATE14A,
      axi_phy_tx_en_i_p => axi_phy_tx_en_i_p,
      fifo_empty_i => fifo_empty_i,
      fifo_tx_en => fifo_tx_en,
      p_0_out => p_0_out,
      phy_tx_clk => phy_tx_clk,
      phy_tx_en_i => phy_tx_en_i,
      s_axi_aclk => s_axi_aclk,
      \txNibbleCnt_pad_reg[0]\ => \txNibbleCnt_pad_reg[0]\,
      txfifo_empty => txfifo_empty,
      txfifo_full => txfifo_full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth_33 is
  port (
    \rxbuffer_addr_reg[11]\ : out STD_LOGIC;
    state1a : out STD_LOGIC;
    p_18_out : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    state1a_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D11_out : out STD_LOGIC;
    state2a : out STD_LOGIC;
    preamble : out STD_LOGIC;
    D10_out : out STD_LOGIC;
    D20_out : out STD_LOGIC;
    goto_readDestAdrNib1 : out STD_LOGIC;
    rx_addr_en : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[3]\ : out STD_LOGIC;
    state0a : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    busFifoData_is_5_d1_reg : out STD_LOGIC;
    ram_valid_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    rst_s : in STD_LOGIC;
    DIA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : in STD_LOGIC;
    state0a_0 : in STD_LOGIC;
    ping_rx_status_reg : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : in STD_LOGIC;
    rxCrcRst : in STD_LOGIC;
    D17_out : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q3_in9_in : in STD_LOGIC;
    rx_start : in STD_LOGIC;
    busFifoData_is_5_d1 : in STD_LOGIC;
    Q11_in : in STD_LOGIC;
    state3a : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    state4a : in STD_LOGIC;
    \crc_local_reg[31]\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth_33 : entity is "fifo_generator_v12_0_synth";
end ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth_33;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth_33 is
begin
\gconvfifo.rf\: entity work.ntps_top_axi_ethernetlite_0_0_fifo_generator_top_34
     port map (
      D(7 downto 0) => D(7 downto 0),
      D10_out => D10_out,
      D11_out => D11_out,
      D17_out => D17_out,
      D20_out => D20_out,
      DIA(1 downto 0) => DIA(1 downto 0),
      DIB(1 downto 0) => DIB(1 downto 0),
      DIC(1 downto 0) => DIC(1 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      Q11_in => Q11_in,
      Q3_in9_in => Q3_in9_in,
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => \RX_PONG_REG_GEN.pong_rx_status_reg\,
      SR(0) => SR(0),
      busFifoData_is_5_d1 => busFifoData_is_5_d1,
      busFifoData_is_5_d1_reg => busFifoData_is_5_d1_reg,
      \crc_local_reg[31]\(10 downto 0) => \crc_local_reg[31]\(10 downto 0),
      goto_readDestAdrNib1 => goto_readDestAdrNib1,
      p_18_out => p_18_out,
      phy_rx_clk => phy_rx_clk,
      ping_rx_status_reg => ping_rx_status_reg,
      preamble => preamble,
      ram_valid_i => ram_valid_i,
      \rdDestAddrNib_D_t_q_reg[1]\ => \rdDestAddrNib_D_t_q_reg[1]\,
      \rdDestAddrNib_D_t_q_reg[2]\ => \rdDestAddrNib_D_t_q_reg[2]\,
      \rdDestAddrNib_D_t_q_reg[3]\ => \rdDestAddrNib_D_t_q_reg[3]\,
      rst_s => rst_s,
      rxCrcRst => rxCrcRst,
      rx_addr_en => rx_addr_en,
      rx_start => rx_start,
      \rxbuffer_addr_reg[11]\ => \rxbuffer_addr_reg[11]\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      state0a => state0a,
      state0a_0 => state0a_0,
      state1a => state1a,
      state1a_0 => state1a_0,
      state2a => state2a,
      state3a => state3a,
      state4a => state4a
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2 is
  port (
    \emac_tx_wr_data_d1_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2 : entity is "blk_mem_gen_v8_2";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2 is
begin
inst_blk_mem_gen: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      WEBWE(0) => WEBWE(0),
      \emac_tx_wr_data_d1_reg[0]\(3 downto 0) => \emac_tx_wr_data_d1_reg[0]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_12 is
  port (
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    reg_access_reg : in STD_LOGIC;
    \reg_data_out_reg[0]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \reg_data_out_reg[1]\ : in STD_LOGIC;
    \reg_data_out_reg[2]\ : in STD_LOGIC;
    p_21_in : in STD_LOGIC;
    p_27_in165_in : in STD_LOGIC;
    p_33_in184_in : in STD_LOGIC;
    p_39_in204_in : in STD_LOGIC;
    p_45_in221_in : in STD_LOGIC;
    p_51_in : in STD_LOGIC;
    p_57_in257_in : in STD_LOGIC;
    p_63_in273_in : in STD_LOGIC;
    p_69_in : in STD_LOGIC;
    p_68_in290_in : in STD_LOGIC;
    p_75_in : in STD_LOGIC;
    p_74_in308_in : in STD_LOGIC;
    p_81_in330_in : in STD_LOGIC;
    p_80_in328_in : in STD_LOGIC;
    p_87_in351_in : in STD_LOGIC;
    p_86_in349_in : in STD_LOGIC;
    p_93_in : in STD_LOGIC;
    p_92_in370_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_12 : entity is "blk_mem_gen_v8_2";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_12;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_12 is
begin
inst_blk_mem_gen: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_13
     port map (
      \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0) => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(30 downto 0) => D(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0) => \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      p_21_in => p_21_in,
      p_27_in165_in => p_27_in165_in,
      p_33_in184_in => p_33_in184_in,
      p_39_in204_in => p_39_in204_in,
      p_45_in221_in => p_45_in221_in,
      p_51_in => p_51_in,
      p_57_in257_in => p_57_in257_in,
      p_63_in273_in => p_63_in273_in,
      p_68_in290_in => p_68_in290_in,
      p_69_in => p_69_in,
      p_74_in308_in => p_74_in308_in,
      p_75_in => p_75_in,
      p_80_in328_in => p_80_in328_in,
      p_81_in330_in => p_81_in330_in,
      p_86_in349_in => p_86_in349_in,
      p_87_in351_in => p_87_in351_in,
      p_92_in370_in => p_92_in370_in,
      p_93_in => p_93_in,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[0]\ => \reg_data_out_reg[0]\,
      \reg_data_out_reg[1]\ => \reg_data_out_reg[1]\,
      \reg_data_out_reg[2]\ => \reg_data_out_reg[2]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_19 is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 30 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_data_out_reg[31]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    reg_access_reg : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_19 : entity is "blk_mem_gen_v8_2";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_19;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_19 is
begin
inst_blk_mem_gen: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_20
     port map (
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(0) => D(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[31]\ => \reg_data_out_reg[31]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_5 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_idle : in STD_LOGIC;
    \TX_PONG_GEN.tx_pong_ping_l_reg_0\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_5 : entity is "blk_mem_gen_v8_2";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_5;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_5 is
begin
inst_blk_mem_gen: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_synth_6
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0),
      DOADO(3 downto 0) => DOADO(3 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      \TX_PONG_GEN.tx_pong_ping_l_reg_0\ => \TX_PONG_GEN.tx_pong_ping_l_reg_0\,
      WEBWE(0) => WEBWE(0),
      \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0) => \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tx_idle => tx_idle
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0 is
  port (
    fifo_empty_i : out STD_LOGIC;
    txfifo_full : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    \txNibbleCnt_pad_reg[0]\ : out STD_LOGIC;
    D28_out : out STD_LOGIC;
    phy_tx_en_i : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Rst0 : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIA : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    txfifo_empty : in STD_LOGIC;
    Q32_in : in STD_LOGIC;
    STATE14A : in STD_LOGIC;
    axi_phy_tx_en_i_p : in STD_LOGIC;
    fifo_tx_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0 : entity is "fifo_generator_v12_0";
end ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0 is
begin
inst_fifo_gen: entity work.ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth
     port map (
      D(3 downto 0) => D(3 downto 0),
      D28_out => D28_out,
      DIA(0) => DIA(0),
      E(0) => E(0),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0) => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0),
      Q(11 downto 0) => Q(11 downto 0),
      Q32_in => Q32_in,
      Rst0 => Rst0,
      STATE14A => STATE14A,
      axi_phy_tx_en_i_p => axi_phy_tx_en_i_p,
      fifo_empty_i => fifo_empty_i,
      fifo_tx_en => fifo_tx_en,
      p_0_out => p_0_out,
      phy_tx_clk => phy_tx_clk,
      phy_tx_en_i => phy_tx_en_i,
      s_axi_aclk => s_axi_aclk,
      \txNibbleCnt_pad_reg[0]\ => \txNibbleCnt_pad_reg[0]\,
      txfifo_empty => txfifo_empty,
      txfifo_full => txfifo_full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_32 is
  port (
    \rxbuffer_addr_reg[11]\ : out STD_LOGIC;
    state1a : out STD_LOGIC;
    p_18_out : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    state1a_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D11_out : out STD_LOGIC;
    state2a : out STD_LOGIC;
    preamble : out STD_LOGIC;
    D10_out : out STD_LOGIC;
    D20_out : out STD_LOGIC;
    goto_readDestAdrNib1 : out STD_LOGIC;
    rx_addr_en : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[3]\ : out STD_LOGIC;
    state0a : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    busFifoData_is_5_d1_reg : out STD_LOGIC;
    ram_valid_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    rst_s : in STD_LOGIC;
    DIA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : in STD_LOGIC;
    state0a_0 : in STD_LOGIC;
    ping_rx_status_reg : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : in STD_LOGIC;
    rxCrcRst : in STD_LOGIC;
    D17_out : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q3_in9_in : in STD_LOGIC;
    rx_start : in STD_LOGIC;
    busFifoData_is_5_d1 : in STD_LOGIC;
    Q11_in : in STD_LOGIC;
    state3a : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    state4a : in STD_LOGIC;
    \crc_local_reg[31]\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_32 : entity is "fifo_generator_v12_0";
end ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_32;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_32 is
begin
inst_fifo_gen: entity work.ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_synth_33
     port map (
      D(7 downto 0) => D(7 downto 0),
      D10_out => D10_out,
      D11_out => D11_out,
      D17_out => D17_out,
      D20_out => D20_out,
      DIA(1 downto 0) => DIA(1 downto 0),
      DIB(1 downto 0) => DIB(1 downto 0),
      DIC(1 downto 0) => DIC(1 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      Q11_in => Q11_in,
      Q3_in9_in => Q3_in9_in,
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => \RX_PONG_REG_GEN.pong_rx_status_reg\,
      SR(0) => SR(0),
      busFifoData_is_5_d1 => busFifoData_is_5_d1,
      busFifoData_is_5_d1_reg => busFifoData_is_5_d1_reg,
      \crc_local_reg[31]\(10 downto 0) => \crc_local_reg[31]\(10 downto 0),
      goto_readDestAdrNib1 => goto_readDestAdrNib1,
      p_18_out => p_18_out,
      phy_rx_clk => phy_rx_clk,
      ping_rx_status_reg => ping_rx_status_reg,
      preamble => preamble,
      ram_valid_i => ram_valid_i,
      \rdDestAddrNib_D_t_q_reg[1]\ => \rdDestAddrNib_D_t_q_reg[1]\,
      \rdDestAddrNib_D_t_q_reg[2]\ => \rdDestAddrNib_D_t_q_reg[2]\,
      \rdDestAddrNib_D_t_q_reg[3]\ => \rdDestAddrNib_D_t_q_reg[3]\,
      rst_s => rst_s,
      rxCrcRst => rxCrcRst,
      rx_addr_en => rx_addr_en,
      rx_start => rx_start,
      \rxbuffer_addr_reg[11]\ => \rxbuffer_addr_reg[11]\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      state0a => state0a,
      state0a_0 => state0a_0,
      state1a => state1a,
      state1a_0 => state1a_0,
      state2a => state2a,
      state3a => state3a,
      state4a => state4a
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_async_fifo_fg is
  port (
    fifo_empty_i : out STD_LOGIC;
    txfifo_full : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    \txNibbleCnt_pad_reg[0]\ : out STD_LOGIC;
    D28_out : out STD_LOGIC;
    phy_tx_en_i : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Rst0 : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIA : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    txfifo_empty : in STD_LOGIC;
    Q32_in : in STD_LOGIC;
    STATE14A : in STD_LOGIC;
    axi_phy_tx_en_i_p : in STD_LOGIC;
    fifo_tx_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_async_fifo_fg : entity is "async_fifo_fg";
end ntps_top_axi_ethernetlite_0_0_async_fifo_fg;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_async_fifo_fg is
begin
\LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM\: entity work.ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0
     port map (
      D(3 downto 0) => D(3 downto 0),
      D28_out => D28_out,
      DIA(0) => DIA(0),
      E(0) => E(0),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0) => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0),
      Q(11 downto 0) => Q(11 downto 0),
      Q32_in => Q32_in,
      Rst0 => Rst0,
      STATE14A => STATE14A,
      axi_phy_tx_en_i_p => axi_phy_tx_en_i_p,
      fifo_empty_i => fifo_empty_i,
      fifo_tx_en => fifo_tx_en,
      p_0_out => p_0_out,
      phy_tx_clk => phy_tx_clk,
      phy_tx_en_i => phy_tx_en_i,
      s_axi_aclk => s_axi_aclk,
      \txNibbleCnt_pad_reg[0]\ => \txNibbleCnt_pad_reg[0]\,
      txfifo_empty => txfifo_empty,
      txfifo_full => txfifo_full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_async_fifo_fg_31 is
  port (
    \rxbuffer_addr_reg[11]\ : out STD_LOGIC;
    state1a : out STD_LOGIC;
    p_18_out : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    state1a_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D11_out : out STD_LOGIC;
    state2a : out STD_LOGIC;
    preamble : out STD_LOGIC;
    D10_out : out STD_LOGIC;
    D20_out : out STD_LOGIC;
    goto_readDestAdrNib1 : out STD_LOGIC;
    rx_addr_en : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[3]\ : out STD_LOGIC;
    state0a : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    busFifoData_is_5_d1_reg : out STD_LOGIC;
    ram_valid_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    rst_s : in STD_LOGIC;
    DIA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : in STD_LOGIC;
    state0a_0 : in STD_LOGIC;
    ping_rx_status_reg : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : in STD_LOGIC;
    rxCrcRst : in STD_LOGIC;
    D17_out : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q3_in9_in : in STD_LOGIC;
    rx_start : in STD_LOGIC;
    busFifoData_is_5_d1 : in STD_LOGIC;
    Q11_in : in STD_LOGIC;
    state3a : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    state4a : in STD_LOGIC;
    \crc_local_reg[31]\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_async_fifo_fg_31 : entity is "async_fifo_fg";
end ntps_top_axi_ethernetlite_0_0_async_fifo_fg_31;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_async_fifo_fg_31 is
begin
\LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM\: entity work.ntps_top_axi_ethernetlite_0_0_fifo_generator_v12_0_32
     port map (
      D(7 downto 0) => D(7 downto 0),
      D10_out => D10_out,
      D11_out => D11_out,
      D17_out => D17_out,
      D20_out => D20_out,
      DIA(1 downto 0) => DIA(1 downto 0),
      DIB(1 downto 0) => DIB(1 downto 0),
      DIC(1 downto 0) => DIC(1 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      Q11_in => Q11_in,
      Q3_in9_in => Q3_in9_in,
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => \RX_PONG_REG_GEN.pong_rx_status_reg\,
      SR(0) => SR(0),
      busFifoData_is_5_d1 => busFifoData_is_5_d1,
      busFifoData_is_5_d1_reg => busFifoData_is_5_d1_reg,
      \crc_local_reg[31]\(10 downto 0) => \crc_local_reg[31]\(10 downto 0),
      goto_readDestAdrNib1 => goto_readDestAdrNib1,
      p_18_out => p_18_out,
      phy_rx_clk => phy_rx_clk,
      ping_rx_status_reg => ping_rx_status_reg,
      preamble => preamble,
      ram_valid_i => ram_valid_i,
      \rdDestAddrNib_D_t_q_reg[1]\ => \rdDestAddrNib_D_t_q_reg[1]\,
      \rdDestAddrNib_D_t_q_reg[2]\ => \rdDestAddrNib_D_t_q_reg[2]\,
      \rdDestAddrNib_D_t_q_reg[3]\ => \rdDestAddrNib_D_t_q_reg[3]\,
      rst_s => rst_s,
      rxCrcRst => rxCrcRst,
      rx_addr_en => rx_addr_en,
      rx_start => rx_start,
      \rxbuffer_addr_reg[11]\ => \rxbuffer_addr_reg[11]\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      state0a => state0a,
      state0a_0 => state0a_0,
      state1a => state1a,
      state1a_0 => state1a_0,
      state2a => state2a,
      state3a => state3a,
      state4a => state4a
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper is
  port (
    \emac_tx_wr_data_d1_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper : entity is "blk_mem_gen_wrapper";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper is
begin
\FAMILY_SUPPORTED.I_TRUE_DUAL_PORT_BLK_MEM_GEN\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      WEBWE(0) => WEBWE(0),
      \emac_tx_wr_data_d1_reg[0]\(3 downto 0) => \emac_tx_wr_data_d1_reg[0]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_11 is
  port (
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    reg_access_reg : in STD_LOGIC;
    \reg_data_out_reg[0]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \reg_data_out_reg[1]\ : in STD_LOGIC;
    \reg_data_out_reg[2]\ : in STD_LOGIC;
    p_21_in : in STD_LOGIC;
    p_27_in165_in : in STD_LOGIC;
    p_33_in184_in : in STD_LOGIC;
    p_39_in204_in : in STD_LOGIC;
    p_45_in221_in : in STD_LOGIC;
    p_51_in : in STD_LOGIC;
    p_57_in257_in : in STD_LOGIC;
    p_63_in273_in : in STD_LOGIC;
    p_69_in : in STD_LOGIC;
    p_68_in290_in : in STD_LOGIC;
    p_75_in : in STD_LOGIC;
    p_74_in308_in : in STD_LOGIC;
    p_81_in330_in : in STD_LOGIC;
    p_80_in328_in : in STD_LOGIC;
    p_87_in351_in : in STD_LOGIC;
    p_86_in349_in : in STD_LOGIC;
    p_93_in : in STD_LOGIC;
    p_92_in370_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_11 : entity is "blk_mem_gen_wrapper";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_11;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_11 is
begin
\FAMILY_SUPPORTED.I_TRUE_DUAL_PORT_BLK_MEM_GEN\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_12
     port map (
      \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0) => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(30 downto 0) => D(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0) => \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      p_21_in => p_21_in,
      p_27_in165_in => p_27_in165_in,
      p_33_in184_in => p_33_in184_in,
      p_39_in204_in => p_39_in204_in,
      p_45_in221_in => p_45_in221_in,
      p_51_in => p_51_in,
      p_57_in257_in => p_57_in257_in,
      p_63_in273_in => p_63_in273_in,
      p_68_in290_in => p_68_in290_in,
      p_69_in => p_69_in,
      p_74_in308_in => p_74_in308_in,
      p_75_in => p_75_in,
      p_80_in328_in => p_80_in328_in,
      p_81_in330_in => p_81_in330_in,
      p_86_in349_in => p_86_in349_in,
      p_87_in351_in => p_87_in351_in,
      p_92_in370_in => p_92_in370_in,
      p_93_in => p_93_in,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[0]\ => \reg_data_out_reg[0]\,
      \reg_data_out_reg[1]\ => \reg_data_out_reg[1]\,
      \reg_data_out_reg[2]\ => \reg_data_out_reg[2]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_18 is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 30 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_data_out_reg[31]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    reg_access_reg : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_18 : entity is "blk_mem_gen_wrapper";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_18;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_18 is
begin
\FAMILY_SUPPORTED.I_TRUE_DUAL_PORT_BLK_MEM_GEN\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_19
     port map (
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(0) => D(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[31]\ => \reg_data_out_reg[31]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_4 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_idle : in STD_LOGIC;
    \TX_PONG_GEN.tx_pong_ping_l_reg_0\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_4 : entity is "blk_mem_gen_wrapper";
end ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_4;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_4 is
begin
\FAMILY_SUPPORTED.I_TRUE_DUAL_PORT_BLK_MEM_GEN\: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_v8_2_5
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0),
      DOADO(3 downto 0) => DOADO(3 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      \TX_PONG_GEN.tx_pong_ping_l_reg_0\ => \TX_PONG_GEN.tx_pong_ping_l_reg_0\,
      WEBWE(0) => WEBWE(0),
      \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0) => \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tx_idle => tx_idle
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_emac_dpram is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 30 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_data_out_reg[31]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    reg_access_reg : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_emac_dpram : entity is "emac_dpram";
end ntps_top_axi_ethernetlite_0_0_emac_dpram;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_emac_dpram is
begin
dpram_blkmem: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_18
     port map (
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(0) => D(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[31]\ => \reg_data_out_reg[31]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_emac_dpram_1 is
  port (
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \gv.ram_valid_d1_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    \rxbuffer_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    reg_access_reg : in STD_LOGIC;
    \reg_data_out_reg[0]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \MDIO_GEN.mdio_data_out_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \reg_data_out_reg[1]\ : in STD_LOGIC;
    \reg_data_out_reg[2]\ : in STD_LOGIC;
    p_21_in : in STD_LOGIC;
    p_27_in165_in : in STD_LOGIC;
    p_33_in184_in : in STD_LOGIC;
    p_39_in204_in : in STD_LOGIC;
    p_45_in221_in : in STD_LOGIC;
    p_51_in : in STD_LOGIC;
    p_57_in257_in : in STD_LOGIC;
    p_63_in273_in : in STD_LOGIC;
    p_69_in : in STD_LOGIC;
    p_68_in290_in : in STD_LOGIC;
    p_75_in : in STD_LOGIC;
    p_74_in308_in : in STD_LOGIC;
    p_81_in330_in : in STD_LOGIC;
    p_80_in328_in : in STD_LOGIC;
    p_87_in351_in : in STD_LOGIC;
    p_86_in349_in : in STD_LOGIC;
    p_93_in : in STD_LOGIC;
    p_92_in370_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_emac_dpram_1 : entity is "emac_dpram";
end ntps_top_axi_ethernetlite_0_0_emac_dpram_1;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_emac_dpram_1 is
begin
dpram_blkmem: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_11
     port map (
      \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0) => \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(30 downto 0) => D(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0),
      DOBDO(30 downto 0) => DOBDO(30 downto 0),
      \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0) => \MDIO_GEN.mdio_data_out_reg[10]\(10 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => \gv.ram_valid_d1_reg\,
      p_21_in => p_21_in,
      p_27_in165_in => p_27_in165_in,
      p_33_in184_in => p_33_in184_in,
      p_39_in204_in => p_39_in204_in,
      p_45_in221_in => p_45_in221_in,
      p_51_in => p_51_in,
      p_57_in257_in => p_57_in257_in,
      p_63_in273_in => p_63_in273_in,
      p_68_in290_in => p_68_in290_in,
      p_69_in => p_69_in,
      p_74_in308_in => p_74_in308_in,
      p_75_in => p_75_in,
      p_80_in328_in => p_80_in328_in,
      p_81_in330_in => p_81_in330_in,
      p_86_in349_in => p_86_in349_in,
      p_87_in351_in => p_87_in351_in,
      p_92_in370_in => p_92_in370_in,
      p_93_in => p_93_in,
      reg_access_reg => reg_access_reg,
      \reg_data_out_reg[0]\ => \reg_data_out_reg[0]\,
      \reg_data_out_reg[1]\ => \reg_data_out_reg[1]\,
      \reg_data_out_reg[2]\ => \reg_data_out_reg[2]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => \rxbuffer_addr_reg[0]\(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_emac_dpram_2 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_idle : in STD_LOGIC;
    \TX_PONG_GEN.tx_pong_ping_l_reg_0\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_emac_dpram_2 : entity is "emac_dpram";
end ntps_top_axi_ethernetlite_0_0_emac_dpram_2;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_emac_dpram_2 is
begin
dpram_blkmem: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper_4
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0),
      DOADO(3 downto 0) => DOADO(3 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      \TX_PONG_GEN.tx_pong_ping_l_reg_0\ => \TX_PONG_GEN.tx_pong_ping_l_reg_0\,
      WEBWE(0) => WEBWE(0),
      \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0) => \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tx_idle => tx_idle
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_emac_dpram_3 is
  port (
    \emac_tx_wr_data_d1_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_emac_dpram_3 : entity is "emac_dpram";
end ntps_top_axi_ethernetlite_0_0_emac_dpram_3;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_emac_dpram_3 is
begin
dpram_blkmem: entity work.ntps_top_axi_ethernetlite_0_0_blk_mem_gen_wrapper
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      WEBWE(0) => WEBWE(0),
      \emac_tx_wr_data_d1_reg[0]\(3 downto 0) => \emac_tx_wr_data_d1_reg[0]\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_rx_intrfce is
  port (
    rxBusFifoRdAck : out STD_LOGIC;
    fifo_empty_i : out STD_LOGIC;
    p_18_out : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    state1a : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D11_out : out STD_LOGIC;
    state2a : out STD_LOGIC;
    preamble : out STD_LOGIC;
    D10_out : out STD_LOGIC;
    D20_out : out STD_LOGIC;
    goto_readDestAdrNib1 : out STD_LOGIC;
    rx_addr_en : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[3]\ : out STD_LOGIC;
    state0a : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    busFifoData_is_5_d1_reg : out STD_LOGIC;
    ram_valid_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    DIA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rdDestAddrNib_D_t_q_reg[2]\ : in STD_LOGIC;
    state0a_0 : in STD_LOGIC;
    ping_rx_status_reg : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : in STD_LOGIC;
    rxCrcRst : in STD_LOGIC;
    D17_out : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q3_in9_in : in STD_LOGIC;
    rx_start : in STD_LOGIC;
    busFifoData_is_5_d1 : in STD_LOGIC;
    Q11_in : in STD_LOGIC;
    state3a : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    state4a : in STD_LOGIC;
    \crc_local_reg[31]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_rx_intrfce : entity is "rx_intrfce";
end ntps_top_axi_ethernetlite_0_0_rx_intrfce;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_rx_intrfce is
  signal rst_s : STD_LOGIC;
begin
CDC_FIFO_RST: entity work.ntps_top_axi_ethernetlite_0_0_cdc_sync_30
     port map (
      SS(0) => SS(0),
      phy_rx_clk => phy_rx_clk,
      scndry_out => rst_s
    );
I_RX_FIFO: entity work.ntps_top_axi_ethernetlite_0_0_async_fifo_fg_31
     port map (
      D(7 downto 0) => D(7 downto 0),
      D10_out => D10_out,
      D11_out => D11_out,
      D17_out => D17_out,
      D20_out => D20_out,
      DIA(1 downto 0) => DIA(1 downto 0),
      DIB(1 downto 0) => DIB(1 downto 0),
      DIC(1 downto 0) => DIC(1 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      Q11_in => Q11_in,
      Q3_in9_in => Q3_in9_in,
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => \RX_PONG_REG_GEN.pong_rx_status_reg\,
      SR(0) => SR(0),
      busFifoData_is_5_d1 => busFifoData_is_5_d1,
      busFifoData_is_5_d1_reg => busFifoData_is_5_d1_reg,
      \crc_local_reg[31]\(10 downto 0) => \crc_local_reg[31]\(10 downto 0),
      goto_readDestAdrNib1 => goto_readDestAdrNib1,
      p_18_out => p_18_out,
      phy_rx_clk => phy_rx_clk,
      ping_rx_status_reg => ping_rx_status_reg,
      preamble => preamble,
      ram_valid_i => ram_valid_i,
      \rdDestAddrNib_D_t_q_reg[1]\ => \rdDestAddrNib_D_t_q_reg[1]\,
      \rdDestAddrNib_D_t_q_reg[2]\ => \rdDestAddrNib_D_t_q_reg[2]\,
      \rdDestAddrNib_D_t_q_reg[3]\ => \rdDestAddrNib_D_t_q_reg[3]\,
      rst_s => rst_s,
      rxCrcRst => rxCrcRst,
      rx_addr_en => rx_addr_en,
      rx_start => rx_start,
      \rxbuffer_addr_reg[11]\ => rxBusFifoRdAck,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      state0a => state0a,
      state0a_0 => state0a_0,
      state1a => fifo_empty_i,
      state1a_0 => state1a,
      state2a => state2a,
      state3a => state3a,
      state4a => state4a
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_tx_intrfce is
  port (
    txfifo_empty : out STD_LOGIC;
    txfifo_full : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    \txNibbleCnt_pad_reg[0]\ : out STD_LOGIC;
    D28_out : out STD_LOGIC;
    phy_tx_en_i : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Rst0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIA : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q32_in : in STD_LOGIC;
    STATE14A : in STD_LOGIC;
    axi_phy_tx_en_i_p : in STD_LOGIC;
    fifo_tx_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_tx_intrfce : entity is "tx_intrfce";
end ntps_top_axi_ethernetlite_0_0_tx_intrfce;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_tx_intrfce is
  signal D_0 : STD_LOGIC;
  signal fifo_empty_i : STD_LOGIC;
  signal \^txfifo_empty\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of pipeIt : label is "FDR";
  attribute box_type : string;
  attribute box_type of pipeIt : label is "PRIMITIVE";
begin
  txfifo_empty <= \^txfifo_empty\;
CDC_FIFO_EMPTY: entity work.\ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized2\
     port map (
      prmry_in => fifo_empty_i,
      s_axi_aclk => s_axi_aclk,
      scndry_out => D_0
    );
I_TX_FIFO: entity work.ntps_top_axi_ethernetlite_0_0_async_fifo_fg
     port map (
      D(3 downto 0) => D(3 downto 0),
      D28_out => D28_out,
      DIA(0) => DIA(0),
      E(0) => E(0),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0) => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3 downto 0),
      Q(11 downto 0) => Q(11 downto 0),
      Q32_in => Q32_in,
      Rst0 => Rst0,
      STATE14A => STATE14A,
      axi_phy_tx_en_i_p => axi_phy_tx_en_i_p,
      fifo_empty_i => fifo_empty_i,
      fifo_tx_en => fifo_tx_en,
      p_0_out => p_0_out,
      phy_tx_clk => phy_tx_clk,
      phy_tx_en_i => phy_tx_en_i,
      s_axi_aclk => s_axi_aclk,
      \txNibbleCnt_pad_reg[0]\ => \txNibbleCnt_pad_reg[0]\,
      txfifo_empty => \^txfifo_empty\,
      txfifo_full => txfifo_full
    );
pipeIt: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D_0,
      Q => \^txfifo_empty\,
      R => Rst0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_receive is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_addr_en : out STD_LOGIC;
    checkingBroadcastAdr_reg_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rxbuffer_addr_reg[11]\ : out STD_LOGIC;
    D694_out : out STD_LOGIC;
    RX_DONE_D1_I : out STD_LOGIC;
    ping_rx_status_reg : out STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : out STD_LOGIC;
    \rdDestAddrNib_D_t_q_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    phy_rx_clk : in STD_LOGIC;
    DIA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    ping_rx_status_reg_0 : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg_0\ : in STD_LOGIC;
    rx_pong_ping_l : in STD_LOGIC;
    \emac_rx_rd_data_d1_reg[3]_0\ : in STD_LOGIC;
    \emac_rx_rd_data_d1_reg[2]_0\ : in STD_LOGIC;
    gie_enable : in STD_LOGIC;
    p_9_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    STATE17A : in STD_LOGIC;
    p_17_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_intr_en0 : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.write_in_prog_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_receive : entity is "receive";
end ntps_top_axi_ethernetlite_0_0_receive;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_receive is
  signal D10_out : STD_LOGIC;
  signal D11_out : STD_LOGIC;
  signal D17_out : STD_LOGIC;
  signal D20_out : STD_LOGIC;
  signal INST_CRCGENRX_n_0 : STD_LOGIC;
  signal INST_CRCGENRX_n_1 : STD_LOGIC;
  signal INST_CRCGENRX_n_12 : STD_LOGIC;
  signal INST_RX_INTRFCE_n_10 : STD_LOGIC;
  signal INST_RX_INTRFCE_n_11 : STD_LOGIC;
  signal INST_RX_INTRFCE_n_13 : STD_LOGIC;
  signal INST_RX_INTRFCE_n_14 : STD_LOGIC;
  signal INST_RX_INTRFCE_n_19 : STD_LOGIC;
  signal INST_RX_INTRFCE_n_20 : STD_LOGIC;
  signal INST_RX_INTRFCE_n_29 : STD_LOGIC;
  signal INST_RX_INTRFCE_n_3 : STD_LOGIC;
  signal INST_RX_STATE_n_15 : STD_LOGIC;
  signal INST_RX_STATE_n_16 : STD_LOGIC;
  signal INST_RX_STATE_n_7 : STD_LOGIC;
  signal INST_RX_STATE_n_8 : STD_LOGIC;
  signal \I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_i\ : STD_LOGIC;
  signal \I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_14_out\ : STD_LOGIC;
  signal \I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_18_out\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Q11_in : STD_LOGIC;
  signal Q3_in9_in : STD_LOGIC;
  signal Q7_in : STD_LOGIC;
  signal busFifoData_is_5_d1 : STD_LOGIC;
  signal \^checkingbroadcastadr_reg_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal emac_rx_rd_data_i : STD_LOGIC_VECTOR ( 4 to 5 );
  signal fifo_empty_i : STD_LOGIC;
  signal goto_readDestAdrNib1 : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_in4_in : STD_LOGIC;
  signal p_1_in7_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_9_in_0 : STD_LOGIC;
  signal parallel_crc : STD_LOGIC_VECTOR ( 13 downto 4 );
  signal parallel_crc1 : STD_LOGIC;
  signal rxBusFifoRdAck : STD_LOGIC;
  signal rxComboCrcRst : STD_LOGIC;
  signal rxCrcEn : STD_LOGIC;
  signal rxCrcEn_d1 : STD_LOGIC;
  signal rxCrcRst : STD_LOGIC;
  signal rx_start : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  checkingBroadcastAdr_reg_reg(3 downto 0) <= \^checkingbroadcastadr_reg_reg\(3 downto 0);
INST_CRCGENRX: entity work.ntps_top_axi_ethernetlite_0_0_crcgenrx
     port map (
      D(7) => parallel_crc(13),
      D(6 downto 5) => parallel_crc(11 downto 10),
      D(4 downto 3) => parallel_crc(8 downto 7),
      D(2 downto 1) => parallel_crc(5 downto 4),
      D(0) => parallel_crc1,
      E(0) => rxCrcEn_d1,
      Q(10) => p_1_in7_in,
      Q(9) => p_1_in4_in,
      Q(8) => p_1_in1_in,
      Q(7) => p_1_in,
      Q(6) => p_12_in,
      Q(5) => p_10_in,
      Q(4) => p_9_in_0,
      Q(3) => p_7_in,
      Q(2) => p_6_in,
      Q(1) => p_4_in,
      Q(0) => INST_CRCGENRX_n_12,
      Q7_in => Q7_in,
      SS(0) => rxComboCrcRst,
      crcokdelay => INST_CRCGENRX_n_0,
      crcokdelay_0 => INST_CRCGENRX_n_1,
      \gpr1.dout_i_reg[5]\(3 downto 0) => \^q\(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
INST_RX_INTRFCE: entity work.ntps_top_axi_ethernetlite_0_0_rx_intrfce
     port map (
      D(7) => parallel_crc(13),
      D(6 downto 5) => parallel_crc(11 downto 10),
      D(4 downto 3) => parallel_crc(8 downto 7),
      D(2 downto 1) => parallel_crc(5 downto 4),
      D(0) => parallel_crc1,
      D10_out => D10_out,
      D11_out => D11_out,
      D17_out => D17_out,
      D20_out => D20_out,
      DIA(1 downto 0) => DIA(1 downto 0),
      DIB(1 downto 0) => DIB(1 downto 0),
      DIC(1 downto 0) => DIC(1 downto 0),
      E(0) => \I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_14_out\,
      Q(5 downto 2) => \^q\(3 downto 0),
      Q(1) => emac_rx_rd_data_i(4),
      Q(0) => emac_rx_rd_data_i(5),
      Q11_in => Q11_in,
      Q3_in9_in => Q3_in9_in,
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => \RX_PONG_REG_GEN.pong_rx_status_reg_0\,
      SR(0) => INST_RX_INTRFCE_n_11,
      SS(0) => SS(0),
      busFifoData_is_5_d1 => busFifoData_is_5_d1,
      busFifoData_is_5_d1_reg => INST_RX_INTRFCE_n_29,
      \crc_local_reg[31]\(10) => p_1_in7_in,
      \crc_local_reg[31]\(9) => p_1_in4_in,
      \crc_local_reg[31]\(8) => p_1_in1_in,
      \crc_local_reg[31]\(7) => p_1_in,
      \crc_local_reg[31]\(6) => p_12_in,
      \crc_local_reg[31]\(5) => p_10_in,
      \crc_local_reg[31]\(4) => p_9_in_0,
      \crc_local_reg[31]\(3) => p_7_in,
      \crc_local_reg[31]\(2) => p_6_in,
      \crc_local_reg[31]\(1) => p_4_in,
      \crc_local_reg[31]\(0) => INST_CRCGENRX_n_12,
      fifo_empty_i => fifo_empty_i,
      goto_readDestAdrNib1 => goto_readDestAdrNib1,
      p_18_out => \I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_18_out\,
      phy_rx_clk => phy_rx_clk,
      ping_rx_status_reg => ping_rx_status_reg_0,
      preamble => INST_RX_INTRFCE_n_14,
      ram_valid_i => \I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_i\,
      \rdDestAddrNib_D_t_q_reg[1]\ => INST_RX_INTRFCE_n_3,
      \rdDestAddrNib_D_t_q_reg[2]\ => INST_RX_STATE_n_15,
      \rdDestAddrNib_D_t_q_reg[3]\ => INST_RX_INTRFCE_n_19,
      rxBusFifoRdAck => rxBusFifoRdAck,
      rxCrcRst => rxCrcRst,
      rx_addr_en => rx_addr_en,
      rx_start => rx_start,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      state0a => INST_RX_INTRFCE_n_20,
      state0a_0 => INST_RX_STATE_n_8,
      state1a => INST_RX_INTRFCE_n_10,
      state2a => INST_RX_INTRFCE_n_13,
      state3a => INST_RX_STATE_n_16,
      state4a => INST_RX_STATE_n_7
    );
INST_RX_STATE: entity work.ntps_top_axi_ethernetlite_0_0_rx_statemachine
     port map (
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\,
      \AXI4_LITE_IF_GEN.write_in_prog_reg\ => \AXI4_LITE_IF_GEN.write_in_prog_reg\,
      D10_out => D10_out,
      D11_out => D11_out,
      D17_out => D17_out,
      D20_out => D20_out,
      D694_out => D694_out,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\,
      E(0) => \I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_14_out\,
      Q(2) => \^q\(3),
      Q(1) => emac_rx_rd_data_i(4),
      Q(0) => emac_rx_rd_data_i(5),
      Q11_in => Q11_in,
      Q3_in9_in => Q3_in9_in,
      Q7_in => Q7_in,
      RX_DONE_D1_I => RX_DONE_D1_I,
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => \RX_PONG_REG_GEN.pong_rx_status_reg\,
      \RX_PONG_REG_GEN.pong_rx_status_reg_0\ => INST_RX_INTRFCE_n_20,
      \RX_PONG_REG_GEN.pong_rx_status_reg_1\ => \RX_PONG_REG_GEN.pong_rx_status_reg_0\,
      SR(0) => INST_RX_INTRFCE_n_11,
      SS(0) => SS(0),
      STATE17A => STATE17A,
      WEA(0) => WEA(0),
      busFifoData_is_5_d1 => busFifoData_is_5_d1,
      \crc_local_reg[16]\ => INST_CRCGENRX_n_1,
      \crc_local_reg[31]\(0) => rxComboCrcRst,
      crcokdelay_0 => INST_CRCGENRX_n_0,
      \emac_rx_rd_data_d1_reg[0]\(3 downto 0) => \^checkingbroadcastadr_reg_reg\(3 downto 0),
      \emac_rx_rd_data_d1_reg[2]\ => \emac_rx_rd_data_d1_reg[2]_0\,
      \emac_rx_rd_data_d1_reg[3]\ => \emac_rx_rd_data_d1_reg[3]_0\,
      fifo_empty_i => fifo_empty_i,
      gie_enable => gie_enable,
      goto_readDestAdrNib1 => goto_readDestAdrNib1,
      \gpr1.dout_i_reg[1]\ => INST_RX_INTRFCE_n_13,
      \gpr1.dout_i_reg[1]_0\ => INST_RX_INTRFCE_n_19,
      \gpr1.dout_i_reg[4]\ => INST_RX_INTRFCE_n_14,
      \gpr1.dout_i_reg[5]\ => INST_RX_INTRFCE_n_29,
      \gv.ram_valid_d1_reg\ => INST_RX_STATE_n_7,
      p_17_in(0) => p_17_in(0),
      p_18_out => \I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_18_out\,
      p_9_in(0) => p_9_in(0),
      ping_rx_status_reg => ping_rx_status_reg,
      ping_rx_status_reg_0 => ping_rx_status_reg_0,
      ram_empty_i_reg => INST_RX_INTRFCE_n_10,
      ram_empty_i_reg_0 => INST_RX_INTRFCE_n_3,
      ram_valid_i => \I_RX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_i\,
      \rdDestAddrNib_D_t_q_reg[2]_0\ => INST_RX_STATE_n_8,
      \rdDestAddrNib_D_t_q_reg[2]_1\(3 downto 0) => \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0),
      rxBusFifoRdAck => rxBusFifoRdAck,
      rxCrcEn => rxCrcEn,
      rxCrcEn_d1_reg => INST_RX_STATE_n_15,
      rxCrcRst => rxCrcRst,
      rx_intr_en0 => rx_intr_en0,
      rx_pong_ping_l => rx_pong_ping_l,
      rx_start => rx_start,
      \rxbuffer_addr_reg[11]\ => \rxbuffer_addr_reg[11]\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(0) => s_axi_wdata(0),
      state2a_0 => INST_RX_STATE_n_16
    );
\emac_rx_rd_data_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(3),
      Q => \^checkingbroadcastadr_reg_reg\(3),
      R => SS(0)
    );
\emac_rx_rd_data_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(2),
      Q => \^checkingbroadcastadr_reg_reg\(2),
      R => SS(0)
    );
\emac_rx_rd_data_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(1),
      Q => \^checkingbroadcastadr_reg_reg\(1),
      R => SS(0)
    );
\emac_rx_rd_data_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(0),
      Q => \^checkingbroadcastadr_reg_reg\(0),
      R => SS(0)
    );
rxCrcEn_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rxCrcEn,
      Q => rxCrcEn_d1,
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_transmit is
  port (
    loopback_en_reg : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    STATE24A : out STD_LOGIC;
    mac_addr_ram_we : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \txbuffer_addr_reg[11]\ : out STD_LOGIC;
    tx_addr_en : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    loopback_en_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    prmry_vect_in : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_tx_en_i : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    rx_pong_ping_l : in STD_LOGIC;
    \TX_PONG_REG_GEN.pong_mac_program_reg\ : in STD_LOGIC;
    \tx_packet_length_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    C_SENSE_SYNC_2 : in STD_LOGIC;
    tx_clk_reg_d3 : in STD_LOGIC;
    tx_clk_reg_d2 : in STD_LOGIC;
    tx_done_d2 : in STD_LOGIC;
    \TX_PONG_REG_GEN.pong_tx_status_reg\ : in STD_LOGIC;
    p_17_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_done_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_intr_en0 : in STD_LOGIC;
    loopback_en_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_transmit : entity is "transmit";
end ntps_top_axi_ethernetlite_0_0_transmit;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_transmit is
  signal CDC_TX_EN_n_0 : STD_LOGIC;
  signal CE : STD_LOGIC;
  signal CE_0 : STD_LOGIC;
  signal D0 : STD_LOGIC;
  signal D029_out : STD_LOGIC;
  signal D031_out : STD_LOGIC;
  signal D28_out : STD_LOGIC;
  signal INST_CRCCOUNTER_n_4 : STD_LOGIC;
  signal INST_CRCCOUNTER_n_6 : STD_LOGIC;
  signal INST_CRCGENTX_n_3 : STD_LOGIC;
  signal INST_DEFERRAL_CONTROL_n_0 : STD_LOGIC;
  signal INST_DEFERRAL_CONTROL_n_1 : STD_LOGIC;
  signal INST_TXBUSFIFOWRITENIBBLECOUNT_n_4 : STD_LOGIC;
  signal INST_TXBUSFIFOWRITENIBBLECOUNT_n_5 : STD_LOGIC;
  signal INST_TXNIBBLECOUNT_n_2 : STD_LOGIC;
  signal INST_TX_INTRFCE_n_3 : STD_LOGIC;
  signal INST_TX_INTRFCE_n_6 : STD_LOGIC;
  signal INST_TX_INTRFCE_n_7 : STD_LOGIC;
  signal INST_TX_INTRFCE_n_8 : STD_LOGIC;
  signal INST_TX_INTRFCE_n_9 : STD_LOGIC;
  signal INST_TX_STATE_MACHINE_n_10 : STD_LOGIC;
  signal INST_TX_STATE_MACHINE_n_13 : STD_LOGIC;
  signal INST_TX_STATE_MACHINE_n_20 : STD_LOGIC;
  signal INST_TX_STATE_MACHINE_n_21 : STD_LOGIC;
  signal INST_TX_STATE_MACHINE_n_22 : STD_LOGIC;
  signal INST_TX_STATE_MACHINE_n_23 : STD_LOGIC;
  signal INST_TX_STATE_MACHINE_n_24 : STD_LOGIC;
  signal INST_TX_STATE_MACHINE_n_26 : STD_LOGIC;
  signal INST_TX_STATE_MACHINE_n_27 : STD_LOGIC;
  signal INST_TX_STATE_MACHINE_n_30 : STD_LOGIC;
  signal INST_TX_STATE_MACHINE_n_34 : STD_LOGIC;
  signal \I_TX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_0_out\ : STD_LOGIC;
  signal \I_TX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_3_out\ : STD_LOGIC;
  signal \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg\ : STD_LOGIC;
  signal \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg\ : STD_LOGIC;
  signal Q0_in9_in : STD_LOGIC;
  signal Q1_in : STD_LOGIC;
  signal Q32_in : STD_LOGIC;
  signal Rst0 : STD_LOGIC;
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_phy_tx_en_i_p : STD_LOGIC;
  signal axi_phy_tx_en_i_p0 : STD_LOGIC;
  signal crcCnt : STD_LOGIC_VECTOR ( 0 to 3 );
  signal currentTxBusFifoWrCnt : STD_LOGIC_VECTOR ( 8 to 11 );
  signal currentTxNibbleCnt : STD_LOGIC_VECTOR ( 11 to 11 );
  signal emac_tx_wr_d1 : STD_LOGIC;
  signal emac_tx_wr_data_d1 : STD_LOGIC_VECTOR ( 0 to 3 );
  signal emac_tx_wr_data_i : STD_LOGIC_VECTOR ( 0 to 3 );
  signal emac_tx_wr_i : STD_LOGIC;
  signal enblCRC : STD_LOGIC;
  signal enblData : STD_LOGIC;
  signal fifo_tx_en : STD_LOGIC;
  signal lut_val : STD_LOGIC;
  signal mux_in_data : STD_LOGIC_VECTOR ( 16 to 18 );
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal txComboBusFifoWrCntRst : STD_LOGIC;
  signal txComboNibbleCntRst : STD_LOGIC;
  signal txCrcEn : STD_LOGIC;
  signal txCrcEn_reg : STD_LOGIC;
  signal txNibbleCnt_pad : STD_LOGIC_VECTOR ( 0 to 11 );
  signal txNibbleCnt_pad0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \txNibbleCnt_pad[0]_i_4_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad[0]_i_5_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad[0]_i_6_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad[3]_i_3_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad[3]_i_4_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad[3]_i_5_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad[3]_i_6_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad[7]_i_3_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad[7]_i_4_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad[7]_i_5_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad[7]_i_6_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \txNibbleCnt_pad_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \txNibbleCnt_pad_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \txNibbleCnt_pad_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \txNibbleCnt_pad_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \txNibbleCnt_pad_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \txNibbleCnt_pad_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \txNibbleCnt_pad_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \txNibbleCnt_pad_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal tx_d_rst : STD_LOGIC;
  signal tx_en_i : STD_LOGIC;
  signal txfifo_empty : STD_LOGIC;
  signal txfifo_full : STD_LOGIC;
  signal \NLW_txNibbleCnt_pad_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_txNibbleCnt_pad_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1\ : label is "soft_lutpair71";
begin
  SS(0) <= \^ss\(0);
CDC_PHY_TX_RST: entity work.\ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized4\
     port map (
      phy_tx_clk => phy_tx_clk,
      s_axi_aresetn => \^ss\(0),
      scndry_out => tx_d_rst
    );
CDC_TX_EN: entity work.\ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized3\
     port map (
      fifo_tx_en_reg => CDC_TX_EN_n_0,
      phy_tx_clk => phy_tx_clk,
      prmry_in => tx_en_i,
      tx_d_rst => tx_d_rst
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_phy_tx_en_i_p,
      I1 => INST_TX_INTRFCE_n_9,
      O => prmry_vect_in(0)
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_phy_tx_en_i_p,
      I1 => INST_TX_INTRFCE_n_8,
      O => prmry_vect_in(1)
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_phy_tx_en_i_p,
      I1 => INST_TX_INTRFCE_n_7,
      O => prmry_vect_in(2)
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_phy_tx_en_i_p,
      I1 => INST_TX_INTRFCE_n_6,
      O => prmry_vect_in(3)
    );
INST_CRCCOUNTER: entity work.\ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized1\
     port map (
      CE => CE,
      D0 => D0,
      DIA(0) => INST_CRCCOUNTER_n_4,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      Q0_in9_in => Q0_in9_in,
      STATE17A => INST_TX_STATE_MACHINE_n_34,
      crcCnt(0 to 3) => crcCnt(0 to 3),
      enblCRC => enblCRC,
      \gic0.gc0.count_reg[3]\ => INST_CRCCOUNTER_n_6,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => \^ss\(0),
      txfifo_full => txfifo_full
    );
INST_CRCGENTX: entity work.ntps_top_axi_ethernetlite_0_0_crcgentx
     port map (
      E(0) => INST_TX_STATE_MACHINE_n_21,
      Q(2) => mux_in_data(16),
      Q(1) => mux_in_data(17),
      Q(0) => mux_in_data(18),
      SR(0) => INST_TX_STATE_MACHINE_n_13,
      \emac_tx_wr_data_d1_reg[0]\(3) => emac_tx_wr_data_d1(0),
      \emac_tx_wr_data_d1_reg[0]\(2) => emac_tx_wr_data_d1(1),
      \emac_tx_wr_data_d1_reg[0]\(1) => emac_tx_wr_data_d1(2),
      \emac_tx_wr_data_d1_reg[0]\(0) => emac_tx_wr_data_d1(3),
      \emac_tx_wr_data_d1_reg[3]\ => INST_CRCGENTX_n_3,
      enblCRC => enblCRC,
      s_axi_aclk => s_axi_aclk,
      txCrcEn_reg => txCrcEn_reg
    );
INST_DEFERRAL_CONTROL: entity work.ntps_top_axi_ethernetlite_0_0_deferral
     port map (
      C_SENSE_SYNC_2 => C_SENSE_SYNC_2,
      Q(1) => INST_DEFERRAL_CONTROL_n_0,
      Q(0) => INST_DEFERRAL_CONTROL_n_1,
      STATE17A => INST_TX_STATE_MACHINE_n_34,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => \^ss\(0),
      tx_clk_reg_d2 => tx_clk_reg_d2,
      tx_clk_reg_d3 => tx_clk_reg_d3
    );
INST_TXBUSFIFOWRITENIBBLECOUNT: entity work.\ntps_top_axi_ethernetlite_0_0_ld_arith_reg__parameterized0\
     port map (
      \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg\ => \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg\,
      \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0\ => INST_TX_STATE_MACHINE_n_20,
      \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg\ => \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg\,
      \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg\ => \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg\,
      STATE11A => INST_TXBUSFIFOWRITENIBBLECOUNT_n_5,
      STATE8A => INST_TXBUSFIFOWRITENIBBLECOUNT_n_4,
      currentTxBusFifoWrCnt(3) => currentTxBusFifoWrCnt(8),
      currentTxBusFifoWrCnt(2) => currentTxBusFifoWrCnt(9),
      currentTxBusFifoWrCnt(1) => currentTxBusFifoWrCnt(10),
      currentTxBusFifoWrCnt(0) => currentTxBusFifoWrCnt(11),
      emac_tx_wr_i => emac_tx_wr_i,
      s_axi_aclk => s_axi_aclk,
      txComboBusFifoWrCntRst => txComboBusFifoWrCntRst
    );
INST_TXNIBBLECOUNT: entity work.ntps_top_axi_ethernetlite_0_0_ld_arith_reg
     port map (
      CE => CE_0,
      D029_out => D029_out,
      D031_out => D031_out,
      \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\,
      Q1_in => Q1_in,
      STATE13A(0) => currentTxNibbleCnt(11),
      enblData => enblData,
      s_axi_aclk => s_axi_aclk,
      txComboNibbleCntRst => txComboNibbleCntRst,
      \txNibbleCnt_pad_reg[11]\ => INST_TXNIBBLECOUNT_n_2,
      \tx_packet_length_reg[15]\(15 downto 0) => \tx_packet_length_reg[15]\(15 downto 0),
      txfifo_full => txfifo_full
    );
INST_TX_INTRFCE: entity work.ntps_top_axi_ethernetlite_0_0_tx_intrfce
     port map (
      D(3) => emac_tx_wr_data_i(0),
      D(2) => emac_tx_wr_data_i(1),
      D(1) => emac_tx_wr_data_i(2),
      D(0) => emac_tx_wr_data_i(3),
      D28_out => D28_out,
      DIA(0) => INST_CRCCOUNTER_n_4,
      E(0) => \I_TX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_3_out\,
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3) => INST_TX_INTRFCE_n_6,
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(2) => INST_TX_INTRFCE_n_7,
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(1) => INST_TX_INTRFCE_n_8,
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(0) => INST_TX_INTRFCE_n_9,
      Q(11) => txNibbleCnt_pad(0),
      Q(10) => txNibbleCnt_pad(1),
      Q(9) => txNibbleCnt_pad(2),
      Q(8) => txNibbleCnt_pad(3),
      Q(7) => txNibbleCnt_pad(4),
      Q(6) => txNibbleCnt_pad(5),
      Q(5) => txNibbleCnt_pad(6),
      Q(4) => txNibbleCnt_pad(7),
      Q(3) => txNibbleCnt_pad(8),
      Q(2) => txNibbleCnt_pad(9),
      Q(1) => txNibbleCnt_pad(10),
      Q(0) => txNibbleCnt_pad(11),
      Q32_in => Q32_in,
      Rst0 => Rst0,
      STATE14A => INST_CRCCOUNTER_n_6,
      axi_phy_tx_en_i_p => axi_phy_tx_en_i_p,
      fifo_tx_en => fifo_tx_en,
      p_0_out => \I_TX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_0_out\,
      phy_tx_clk => phy_tx_clk,
      phy_tx_en_i => phy_tx_en_i,
      s_axi_aclk => s_axi_aclk,
      \txNibbleCnt_pad_reg[0]\ => INST_TX_INTRFCE_n_3,
      txfifo_empty => txfifo_empty,
      txfifo_full => txfifo_full
    );
INST_TX_STATE_MACHINE: entity work.ntps_top_axi_ethernetlite_0_0_tx_statemachine
     port map (
      CE => CE_0,
      CE_0 => CE,
      D(5 downto 0) => D(5 downto 0),
      D0 => D0,
      D029_out => D029_out,
      D031_out => D031_out,
      D28_out => D28_out,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOADO(3 downto 0) => DOADO(3 downto 0),
      E(0) => INST_TX_STATE_MACHINE_n_21,
      \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[0].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg\ => \PERBIT_GEN[10].Q_I_GEN_ADD.q_i_ns_reg\,
      \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1\ => INST_TX_STATE_MACHINE_n_20,
      \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_0\(0) => currentTxNibbleCnt(11),
      \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_1\ => INST_TXBUSFIFOWRITENIBBLECOUNT_n_5,
      \PERBIT_GEN[11].FF_RST0_GEN.FDRE_i1_2\ => INST_TXBUSFIFOWRITENIBBLECOUNT_n_4,
      \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[11].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[1].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[2].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\ => \PERBIT_GEN[3].Q_I_GEN_SUB.q_i_ns_reg\,
      \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg\ => \PERBIT_GEN[8].Q_I_GEN_ADD.q_i_ns_reg\,
      \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg\ => \PERBIT_GEN[9].Q_I_GEN_ADD.q_i_ns_reg\,
      Q(2) => mux_in_data(16),
      Q(1) => mux_in_data(17),
      Q(0) => mux_in_data(18),
      Q0_in9_in => Q0_in9_in,
      Q1_in => Q1_in,
      Q32_in => Q32_in,
      Rst0 => Rst0,
      SR(0) => INST_TX_STATE_MACHINE_n_13,
      STATE14A_0 => INST_CRCCOUNTER_n_6,
      STATE24A_0 => STATE24A,
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      \TX_PONG_REG_GEN.pong_mac_program_reg\ => \TX_PONG_REG_GEN.pong_mac_program_reg\,
      \TX_PONG_REG_GEN.pong_tx_status_reg\ => \TX_PONG_REG_GEN.pong_tx_status_reg\,
      axi_phy_tx_en_i_p0 => axi_phy_tx_en_i_p0,
      crcCnt(0 to 3) => crcCnt(0 to 3),
      currentTxBusFifoWrCnt(3) => currentTxBusFifoWrCnt(8),
      currentTxBusFifoWrCnt(2) => currentTxBusFifoWrCnt(9),
      currentTxBusFifoWrCnt(1) => currentTxBusFifoWrCnt(10),
      currentTxBusFifoWrCnt(0) => currentTxBusFifoWrCnt(11),
      emac_tx_wr_d1 => emac_tx_wr_d1,
      \emac_tx_wr_data_d1_reg[0]\ => INST_TX_STATE_MACHINE_n_24,
      \emac_tx_wr_data_d1_reg[1]\ => INST_TX_STATE_MACHINE_n_23,
      \emac_tx_wr_data_d1_reg[1]_0\ => INST_TX_STATE_MACHINE_n_26,
      \emac_tx_wr_data_d1_reg[2]\ => INST_TX_STATE_MACHINE_n_10,
      \emac_tx_wr_data_d1_reg[2]_0\ => INST_TX_STATE_MACHINE_n_22,
      \emac_tx_wr_data_d1_reg[3]\ => INST_TX_STATE_MACHINE_n_27,
      emac_tx_wr_i => emac_tx_wr_i,
      enblCRC => enblCRC,
      enblData => enblData,
      \gic0.gc0.count_reg[3]\(0) => \I_TX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/p_3_out\,
      loopback_en_reg => loopback_en_reg,
      loopback_en_reg_0 => loopback_en_reg_0,
      loopback_en_reg_1 => loopback_en_reg_1,
      lut_val => lut_val,
      mac_addr_ram_we => mac_addr_ram_we,
      p_0_out => \I_TX_FIFO/LEGACY_COREGEN_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_0_out\,
      p_17_in(1 downto 0) => p_17_in(1 downto 0),
      \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0) => Q(3 downto 0),
      rx_done_d1 => rx_done_d1,
      rx_pong_ping_l => rx_pong_ping_l,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(0) => s_axi_wdata(0),
      \status_reg_reg[0]\(0) => E(0),
      \thisState_reg[1]\ => INST_TX_STATE_MACHINE_n_34,
      \thisState_reg[1]_0\(1) => INST_DEFERRAL_CONTROL_n_0,
      \thisState_reg[1]_0\(0) => INST_DEFERRAL_CONTROL_n_1,
      transmit_start_reg_reg_0 => \^ss\(0),
      txComboBusFifoWrCntRst => txComboBusFifoWrCntRst,
      txComboNibbleCntRst => txComboNibbleCntRst,
      txCrcEn => txCrcEn,
      txCrcEn_reg => txCrcEn_reg,
      txNibbleCnt_pad0(10 downto 0) => txNibbleCnt_pad0(11 downto 1),
      \txNibbleCnt_pad_reg[0]\(11 downto 0) => p_1_in(11 downto 0),
      \txNibbleCnt_pad_reg[11]\(0) => INST_TX_STATE_MACHINE_n_30,
      \txNibbleCnt_pad_reg[11]_0\(0) => txNibbleCnt_pad(11),
      \txNibbleCnt_pad_reg[8]\ => INST_TX_INTRFCE_n_3,
      tx_addr_en => tx_addr_en,
      tx_done_d2 => tx_done_d2,
      tx_en_i => tx_en_i,
      tx_intr_en0 => tx_intr_en0,
      \tx_packet_length_reg[10]\(10 downto 0) => \tx_packet_length_reg[15]\(10 downto 0),
      \tx_packet_length_reg[15]\ => INST_TXNIBBLECOUNT_n_2,
      \txbuffer_addr_reg[11]\ => \txbuffer_addr_reg[11]\,
      txfifo_empty => txfifo_empty,
      txfifo_full => txfifo_full
    );
ONR_HOT_MUX: entity work.ntps_top_axi_ethernetlite_0_0_mux_onehot_f
     port map (
      D(3) => emac_tx_wr_data_i(0),
      D(2) => emac_tx_wr_data_i(1),
      D(1) => emac_tx_wr_data_i(2),
      D(0) => emac_tx_wr_data_i(3),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ => INST_TX_STATE_MACHINE_n_26,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => INST_TX_STATE_MACHINE_n_10,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ => INST_TX_STATE_MACHINE_n_27,
      STATE15A => INST_TX_STATE_MACHINE_n_24,
      STATE15A_0 => INST_TX_STATE_MACHINE_n_23,
      STATE15A_1 => INST_TX_STATE_MACHINE_n_22,
      lut_val => lut_val,
      \nibData_reg[0]\ => INST_CRCGENTX_n_3
    );
axi_phy_tx_en_i_p_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_phy_tx_en_i_p0,
      Q => axi_phy_tx_en_i_p,
      R => \^ss\(0)
    );
emac_tx_wr_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => emac_tx_wr_i,
      Q => emac_tx_wr_d1,
      R => \^ss\(0)
    );
\emac_tx_wr_data_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => emac_tx_wr_data_i(0),
      Q => emac_tx_wr_data_d1(0),
      R => \^ss\(0)
    );
\emac_tx_wr_data_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => emac_tx_wr_data_i(1),
      Q => emac_tx_wr_data_d1(1),
      R => \^ss\(0)
    );
\emac_tx_wr_data_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => emac_tx_wr_data_i(2),
      Q => emac_tx_wr_data_d1(2),
      R => \^ss\(0)
    );
\emac_tx_wr_data_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => emac_tx_wr_data_i(3),
      Q => emac_tx_wr_data_d1(3),
      R => \^ss\(0)
    );
fifo_tx_en_reg: unisim.vcomponents.FDRE
     port map (
      C => phy_tx_clk,
      CE => '1',
      D => CDC_TX_EN_n_0,
      Q => fifo_tx_en,
      R => '0'
    );
\txNibbleCnt_pad[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txNibbleCnt_pad(0),
      O => \txNibbleCnt_pad[0]_i_4_n_0\
    );
\txNibbleCnt_pad[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txNibbleCnt_pad(1),
      O => \txNibbleCnt_pad[0]_i_5_n_0\
    );
\txNibbleCnt_pad[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txNibbleCnt_pad(2),
      O => \txNibbleCnt_pad[0]_i_6_n_0\
    );
\txNibbleCnt_pad[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txNibbleCnt_pad(3),
      O => \txNibbleCnt_pad[3]_i_3_n_0\
    );
\txNibbleCnt_pad[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txNibbleCnt_pad(4),
      O => \txNibbleCnt_pad[3]_i_4_n_0\
    );
\txNibbleCnt_pad[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txNibbleCnt_pad(5),
      O => \txNibbleCnt_pad[3]_i_5_n_0\
    );
\txNibbleCnt_pad[3]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txNibbleCnt_pad(6),
      O => \txNibbleCnt_pad[3]_i_6_n_0\
    );
\txNibbleCnt_pad[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txNibbleCnt_pad(7),
      O => \txNibbleCnt_pad[7]_i_3_n_0\
    );
\txNibbleCnt_pad[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txNibbleCnt_pad(8),
      O => \txNibbleCnt_pad[7]_i_4_n_0\
    );
\txNibbleCnt_pad[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txNibbleCnt_pad(9),
      O => \txNibbleCnt_pad[7]_i_5_n_0\
    );
\txNibbleCnt_pad[7]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txNibbleCnt_pad(10),
      O => \txNibbleCnt_pad[7]_i_6_n_0\
    );
\txNibbleCnt_pad_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INST_TX_STATE_MACHINE_n_30,
      D => p_1_in(11),
      Q => txNibbleCnt_pad(0),
      R => \^ss\(0)
    );
\txNibbleCnt_pad_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \txNibbleCnt_pad_reg[3]_i_2_n_0\,
      CO(3 downto 2) => \NLW_txNibbleCnt_pad_reg[0]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \txNibbleCnt_pad_reg[0]_i_3_n_2\,
      CO(0) => \txNibbleCnt_pad_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => txNibbleCnt_pad(1),
      DI(0) => txNibbleCnt_pad(2),
      O(3) => \NLW_txNibbleCnt_pad_reg[0]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => txNibbleCnt_pad0(11 downto 9),
      S(3) => '0',
      S(2) => \txNibbleCnt_pad[0]_i_4_n_0\,
      S(1) => \txNibbleCnt_pad[0]_i_5_n_0\,
      S(0) => \txNibbleCnt_pad[0]_i_6_n_0\
    );
\txNibbleCnt_pad_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INST_TX_STATE_MACHINE_n_30,
      D => p_1_in(1),
      Q => txNibbleCnt_pad(10),
      R => \^ss\(0)
    );
\txNibbleCnt_pad_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INST_TX_STATE_MACHINE_n_30,
      D => p_1_in(0),
      Q => txNibbleCnt_pad(11),
      R => \^ss\(0)
    );
\txNibbleCnt_pad_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INST_TX_STATE_MACHINE_n_30,
      D => p_1_in(10),
      Q => txNibbleCnt_pad(1),
      R => \^ss\(0)
    );
\txNibbleCnt_pad_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INST_TX_STATE_MACHINE_n_30,
      D => p_1_in(9),
      Q => txNibbleCnt_pad(2),
      R => \^ss\(0)
    );
\txNibbleCnt_pad_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INST_TX_STATE_MACHINE_n_30,
      D => p_1_in(8),
      Q => txNibbleCnt_pad(3),
      R => \^ss\(0)
    );
\txNibbleCnt_pad_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \txNibbleCnt_pad_reg[7]_i_2_n_0\,
      CO(3) => \txNibbleCnt_pad_reg[3]_i_2_n_0\,
      CO(2) => \txNibbleCnt_pad_reg[3]_i_2_n_1\,
      CO(1) => \txNibbleCnt_pad_reg[3]_i_2_n_2\,
      CO(0) => \txNibbleCnt_pad_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => txNibbleCnt_pad(3),
      DI(2) => txNibbleCnt_pad(4),
      DI(1) => txNibbleCnt_pad(5),
      DI(0) => txNibbleCnt_pad(6),
      O(3 downto 0) => txNibbleCnt_pad0(8 downto 5),
      S(3) => \txNibbleCnt_pad[3]_i_3_n_0\,
      S(2) => \txNibbleCnt_pad[3]_i_4_n_0\,
      S(1) => \txNibbleCnt_pad[3]_i_5_n_0\,
      S(0) => \txNibbleCnt_pad[3]_i_6_n_0\
    );
\txNibbleCnt_pad_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INST_TX_STATE_MACHINE_n_30,
      D => p_1_in(7),
      Q => txNibbleCnt_pad(4),
      R => \^ss\(0)
    );
\txNibbleCnt_pad_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INST_TX_STATE_MACHINE_n_30,
      D => p_1_in(6),
      Q => txNibbleCnt_pad(5),
      R => \^ss\(0)
    );
\txNibbleCnt_pad_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INST_TX_STATE_MACHINE_n_30,
      D => p_1_in(5),
      Q => txNibbleCnt_pad(6),
      R => \^ss\(0)
    );
\txNibbleCnt_pad_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INST_TX_STATE_MACHINE_n_30,
      D => p_1_in(4),
      Q => txNibbleCnt_pad(7),
      R => \^ss\(0)
    );
\txNibbleCnt_pad_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \txNibbleCnt_pad_reg[7]_i_2_n_0\,
      CO(2) => \txNibbleCnt_pad_reg[7]_i_2_n_1\,
      CO(1) => \txNibbleCnt_pad_reg[7]_i_2_n_2\,
      CO(0) => \txNibbleCnt_pad_reg[7]_i_2_n_3\,
      CYINIT => txNibbleCnt_pad(11),
      DI(3) => txNibbleCnt_pad(7),
      DI(2) => txNibbleCnt_pad(8),
      DI(1) => txNibbleCnt_pad(9),
      DI(0) => txNibbleCnt_pad(10),
      O(3 downto 0) => txNibbleCnt_pad0(4 downto 1),
      S(3) => \txNibbleCnt_pad[7]_i_3_n_0\,
      S(2) => \txNibbleCnt_pad[7]_i_4_n_0\,
      S(1) => \txNibbleCnt_pad[7]_i_5_n_0\,
      S(0) => \txNibbleCnt_pad[7]_i_6_n_0\
    );
\txNibbleCnt_pad_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INST_TX_STATE_MACHINE_n_30,
      D => p_1_in(3),
      Q => txNibbleCnt_pad(8),
      R => \^ss\(0)
    );
\txNibbleCnt_pad_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => INST_TX_STATE_MACHINE_n_30,
      D => p_1_in(2),
      Q => txNibbleCnt_pad(9),
      R => \^ss\(0)
    );
txcrcen_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => txCrcEn,
      Q => txCrcEn_reg,
      R => \^ss\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_axi_ethernetlite_v3_0_emac is
  port (
    prmry_in : out STD_LOGIC;
    tx_idle : out STD_LOGIC;
    D3_in2_in : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\ : out STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\ : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    D694_out : out STD_LOGIC;
    D_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    loopback_en_reg : out STD_LOGIC;
    ping_rx_status_reg : out STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg\ : out STD_LOGIC;
    prmry_vect_in : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_tx_en_i : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    phy_crs : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    DIA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : in STD_LOGIC_VECTOR ( 1 downto 0 );
    phy_tx_clk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ping_rx_status_reg_0 : in STD_LOGIC;
    \RX_PONG_REG_GEN.pong_rx_status_reg_0\ : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \TX_PONG_GEN.tx_pong_ping_l_reg\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_pong_ping_l : in STD_LOGIC;
    \TX_PONG_REG_GEN.pong_mac_program_reg\ : in STD_LOGIC;
    \tx_packet_length_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gie_enable : in STD_LOGIC;
    p_9_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_17_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_done_d2 : in STD_LOGIC;
    \TX_PONG_REG_GEN.pong_tx_status_reg\ : in STD_LOGIC;
    rx_done_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_intr_en0 : in STD_LOGIC;
    loopback_en_reg_0 : in STD_LOGIC;
    rx_intr_en0 : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.write_in_prog_reg\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_axi_ethernetlite_v3_0_emac : entity is "axi_ethernetlite_v3_0_emac";
end ntps_top_axi_ethernetlite_0_0_axi_ethernetlite_v3_0_emac;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_axi_ethernetlite_v3_0_emac is
  signal \^addrardaddr\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal C_SENSE_SYNC_1_n_0 : STD_LOGIC;
  signal C_SENSE_SYNC_2_n_0 : STD_LOGIC;
  signal \^d3_in2_in\ : STD_LOGIC;
  signal \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NODEMACADDRRAMI_n_0 : STD_LOGIC;
  signal NODEMACADDRRAMI_n_1 : STD_LOGIC;
  signal Phy_tx_clk_axi_d : STD_LOGIC;
  signal RX_n_10 : STD_LOGIC;
  signal RX_n_11 : STD_LOGIC;
  signal RX_n_12 : STD_LOGIC;
  signal RX_n_8 : STD_LOGIC;
  signal RX_n_9 : STD_LOGIC;
  signal TX_n_12 : STD_LOGIC;
  signal mac_addr_ram_addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal mac_addr_ram_addr_rd : STD_LOGIC_VECTOR ( 0 to 3 );
  signal mac_addr_ram_addr_wr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal mac_addr_ram_we : STD_LOGIC;
  signal \^prmry_in\ : STD_LOGIC;
  signal rx_addr_en : STD_LOGIC;
  signal \rxbuffer_addr[11]_i_4_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr[11]_i_5_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr[11]_i_6_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr[11]_i_7_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr[3]_i_3_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr[3]_i_4_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr[3]_i_5_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr[7]_i_4_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr[7]_i_5_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[11]_i_3_n_4\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[11]_i_3_n_5\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[11]_i_3_n_7\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \rxbuffer_addr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal tx_addr_en : STD_LOGIC;
  signal tx_clk_reg_d1 : STD_LOGIC;
  signal tx_clk_reg_d2 : STD_LOGIC;
  signal tx_clk_reg_d3 : STD_LOGIC;
  signal \txbuffer_addr[11]_i_5_n_0\ : STD_LOGIC;
  signal \txbuffer_addr[11]_i_6_n_0\ : STD_LOGIC;
  signal \txbuffer_addr[11]_i_7_n_0\ : STD_LOGIC;
  signal \txbuffer_addr[11]_i_8_n_0\ : STD_LOGIC;
  signal \txbuffer_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \txbuffer_addr[3]_i_3_n_0\ : STD_LOGIC;
  signal \txbuffer_addr[3]_i_4_n_0\ : STD_LOGIC;
  signal \txbuffer_addr[3]_i_5_n_0\ : STD_LOGIC;
  signal \txbuffer_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \txbuffer_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal \txbuffer_addr[7]_i_4_n_0\ : STD_LOGIC;
  signal \txbuffer_addr[7]_i_5_n_0\ : STD_LOGIC;
  signal \txbuffer_addr_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \txbuffer_addr_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \txbuffer_addr_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \txbuffer_addr_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \txbuffer_addr_reg[11]_i_3_n_4\ : STD_LOGIC;
  signal \txbuffer_addr_reg[11]_i_3_n_5\ : STD_LOGIC;
  signal \txbuffer_addr_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \txbuffer_addr_reg[11]_i_3_n_7\ : STD_LOGIC;
  signal \txbuffer_addr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \txbuffer_addr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \txbuffer_addr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \txbuffer_addr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \txbuffer_addr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \txbuffer_addr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \txbuffer_addr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \txbuffer_addr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \txbuffer_addr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \txbuffer_addr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \txbuffer_addr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \txbuffer_addr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \txbuffer_addr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \txbuffer_addr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \txbuffer_addr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_rxbuffer_addr_reg[3]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_txbuffer_addr_reg[3]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of C_SENSE_SYNC_1 : label is "FDR";
  attribute box_type : string;
  attribute box_type of C_SENSE_SYNC_1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of C_SENSE_SYNC_2 : label is "FDR";
  attribute box_type of C_SENSE_SYNC_2 : label is "PRIMITIVE";
begin
  ADDRARDADDR(11 downto 0) <= \^addrardaddr\(11 downto 0);
  D3_in2_in <= \^d3_in2_in\;
  \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(11 downto 0) <= \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(11 downto 0);
  prmry_in <= \^prmry_in\;
CDC_TX_CLK: entity work.ntps_top_axi_ethernetlite_0_0_cdc_sync_25
     port map (
      phy_tx_clk => phy_tx_clk,
      s_axi_aclk => s_axi_aclk,
      scndry_out => Phy_tx_clk_axi_d
    );
C_SENSE_SYNC_1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => phy_crs,
      Q => C_SENSE_SYNC_1_n_0,
      R => \^prmry_in\
    );
C_SENSE_SYNC_2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => C_SENSE_SYNC_1_n_0,
      Q => C_SENSE_SYNC_2_n_0,
      R => \^prmry_in\
    );
NODEMACADDRRAMI: entity work.ntps_top_axi_ethernetlite_0_0_MacAddrRAM
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(3 downto 0),
      Q(3) => RX_n_8,
      Q(2) => RX_n_9,
      Q(1) => RX_n_10,
      Q(0) => RX_n_11,
      mac_addr_ram_addr(0 to 3) => mac_addr_ram_addr(0 to 3),
      mac_addr_ram_we => mac_addr_ram_we,
      \rdDestAddrNib_D_t_q_reg[2]\ => NODEMACADDRRAMI_n_0,
      \rdDestAddrNib_D_t_q_reg[2]_0\ => NODEMACADDRRAMI_n_1,
      s_axi_aclk => s_axi_aclk
    );
RX: entity work.ntps_top_axi_ethernetlite_0_0_receive
     port map (
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\,
      \AXI4_LITE_IF_GEN.write_in_prog_reg\ => \AXI4_LITE_IF_GEN.write_in_prog_reg\,
      D694_out => D694_out,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\,
      DIA(1 downto 0) => DIA(1 downto 0),
      DIB(1 downto 0) => DIB(1 downto 0),
      DIC(1 downto 0) => DIC(1 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      RX_DONE_D1_I => D_0,
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => \RX_PONG_REG_GEN.pong_rx_status_reg\,
      \RX_PONG_REG_GEN.pong_rx_status_reg_0\ => \RX_PONG_REG_GEN.pong_rx_status_reg_0\,
      SS(0) => \^prmry_in\,
      STATE17A => \^d3_in2_in\,
      WEA(0) => WEA(0),
      checkingBroadcastAdr_reg_reg(3) => RX_n_8,
      checkingBroadcastAdr_reg_reg(2) => RX_n_9,
      checkingBroadcastAdr_reg_reg(1) => RX_n_10,
      checkingBroadcastAdr_reg_reg(0) => RX_n_11,
      \emac_rx_rd_data_d1_reg[2]_0\ => NODEMACADDRRAMI_n_0,
      \emac_rx_rd_data_d1_reg[3]_0\ => NODEMACADDRRAMI_n_1,
      gie_enable => gie_enable,
      p_17_in(0) => p_17_in(2),
      p_9_in(0) => p_9_in(0),
      phy_rx_clk => phy_rx_clk,
      ping_rx_status_reg => ping_rx_status_reg,
      ping_rx_status_reg_0 => ping_rx_status_reg_0,
      \rdDestAddrNib_D_t_q_reg[2]\(3) => mac_addr_ram_addr_rd(0),
      \rdDestAddrNib_D_t_q_reg[2]\(2) => mac_addr_ram_addr_rd(1),
      \rdDestAddrNib_D_t_q_reg[2]\(1) => mac_addr_ram_addr_rd(2),
      \rdDestAddrNib_D_t_q_reg[2]\(0) => mac_addr_ram_addr_rd(3),
      rx_addr_en => rx_addr_en,
      rx_intr_en0 => rx_intr_en0,
      rx_pong_ping_l => rx_pong_ping_l,
      \rxbuffer_addr_reg[11]\ => RX_n_12,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(0) => s_axi_wdata(0)
    );
TX: entity work.ntps_top_axi_ethernetlite_0_0_transmit
     port map (
      C_SENSE_SYNC_2 => C_SENSE_SYNC_2_n_0,
      D(5 downto 0) => D(5 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(3 downto 0),
      DOADO(3 downto 0) => DOADO(3 downto 0),
      E(0) => E(0),
      Q(3) => mac_addr_ram_addr_wr(0),
      Q(2) => mac_addr_ram_addr_wr(1),
      Q(1) => mac_addr_ram_addr_wr(2),
      Q(0) => mac_addr_ram_addr_wr(3),
      SS(0) => \^prmry_in\,
      STATE24A => \^d3_in2_in\,
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg\,
      \TX_PONG_REG_GEN.pong_mac_program_reg\ => \TX_PONG_REG_GEN.pong_mac_program_reg\,
      \TX_PONG_REG_GEN.pong_tx_status_reg\ => \TX_PONG_REG_GEN.pong_tx_status_reg\,
      loopback_en_reg => tx_idle,
      loopback_en_reg_0 => loopback_en_reg,
      loopback_en_reg_1 => loopback_en_reg_0,
      mac_addr_ram_we => mac_addr_ram_we,
      p_17_in(1 downto 0) => p_17_in(1 downto 0),
      phy_tx_clk => phy_tx_clk,
      phy_tx_en_i => phy_tx_en_i,
      prmry_vect_in(3 downto 0) => prmry_vect_in(3 downto 0),
      rx_done_d1 => rx_done_d1,
      rx_pong_ping_l => rx_pong_ping_l,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(0) => s_axi_wdata(1),
      tx_addr_en => tx_addr_en,
      tx_clk_reg_d2 => tx_clk_reg_d2,
      tx_clk_reg_d3 => tx_clk_reg_d3,
      tx_done_d2 => tx_done_d2,
      tx_intr_en0 => tx_intr_en0,
      \tx_packet_length_reg[15]\(15 downto 0) => \tx_packet_length_reg[15]\(15 downto 0),
      \txbuffer_addr_reg[11]\ => TX_n_12
    );
ram16x1_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mac_addr_ram_addr_wr(3),
      I1 => mac_addr_ram_we,
      I2 => mac_addr_ram_addr_rd(3),
      O => mac_addr_ram_addr(3)
    );
ram16x1_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mac_addr_ram_addr_wr(2),
      I1 => mac_addr_ram_we,
      I2 => mac_addr_ram_addr_rd(2),
      O => mac_addr_ram_addr(2)
    );
ram16x1_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mac_addr_ram_addr_wr(1),
      I1 => mac_addr_ram_we,
      I2 => mac_addr_ram_addr_rd(1),
      O => mac_addr_ram_addr(1)
    );
ram16x1_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mac_addr_ram_addr_wr(0),
      I1 => mac_addr_ram_we,
      I2 => mac_addr_ram_addr_rd(0),
      O => mac_addr_ram_addr(0)
    );
\rxbuffer_addr[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(3),
      O => \rxbuffer_addr[11]_i_4_n_0\
    );
\rxbuffer_addr[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      O => \rxbuffer_addr[11]_i_5_n_0\
    );
\rxbuffer_addr[11]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      O => \rxbuffer_addr[11]_i_6_n_0\
    );
\rxbuffer_addr[11]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      O => \rxbuffer_addr[11]_i_7_n_0\
    );
\rxbuffer_addr[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(11),
      O => \rxbuffer_addr[3]_i_2_n_0\
    );
\rxbuffer_addr[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      O => \rxbuffer_addr[3]_i_3_n_0\
    );
\rxbuffer_addr[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      O => \rxbuffer_addr[3]_i_4_n_0\
    );
\rxbuffer_addr[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      O => \rxbuffer_addr[3]_i_5_n_0\
    );
\rxbuffer_addr[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(7),
      O => \rxbuffer_addr[7]_i_2_n_0\
    );
\rxbuffer_addr[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      O => \rxbuffer_addr[7]_i_3_n_0\
    );
\rxbuffer_addr[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(5),
      O => \rxbuffer_addr[7]_i_4_n_0\
    );
\rxbuffer_addr[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(4),
      O => \rxbuffer_addr[7]_i_5_n_0\
    );
\rxbuffer_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rx_addr_en,
      D => \rxbuffer_addr_reg[3]_i_1_n_4\,
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(11),
      R => RX_n_12
    );
\rxbuffer_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rx_addr_en,
      D => \rxbuffer_addr_reg[11]_i_3_n_6\,
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(1),
      R => RX_n_12
    );
\rxbuffer_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rx_addr_en,
      D => \rxbuffer_addr_reg[11]_i_3_n_7\,
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(0),
      R => RX_n_12
    );
\rxbuffer_addr_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rxbuffer_addr_reg[11]_i_3_n_0\,
      CO(2) => \rxbuffer_addr_reg[11]_i_3_n_1\,
      CO(1) => \rxbuffer_addr_reg[11]_i_3_n_2\,
      CO(0) => \rxbuffer_addr_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \rxbuffer_addr_reg[11]_i_3_n_4\,
      O(2) => \rxbuffer_addr_reg[11]_i_3_n_5\,
      O(1) => \rxbuffer_addr_reg[11]_i_3_n_6\,
      O(0) => \rxbuffer_addr_reg[11]_i_3_n_7\,
      S(3) => \rxbuffer_addr[11]_i_4_n_0\,
      S(2) => \rxbuffer_addr[11]_i_5_n_0\,
      S(1) => \rxbuffer_addr[11]_i_6_n_0\,
      S(0) => \rxbuffer_addr[11]_i_7_n_0\
    );
\rxbuffer_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rx_addr_en,
      D => \rxbuffer_addr_reg[3]_i_1_n_5\,
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(10),
      R => RX_n_12
    );
\rxbuffer_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rx_addr_en,
      D => \rxbuffer_addr_reg[3]_i_1_n_6\,
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(9),
      R => RX_n_12
    );
\rxbuffer_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rx_addr_en,
      D => \rxbuffer_addr_reg[3]_i_1_n_7\,
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(8),
      R => RX_n_12
    );
\rxbuffer_addr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rxbuffer_addr_reg[7]_i_1_n_0\,
      CO(3) => \NLW_rxbuffer_addr_reg[3]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \rxbuffer_addr_reg[3]_i_1_n_1\,
      CO(1) => \rxbuffer_addr_reg[3]_i_1_n_2\,
      CO(0) => \rxbuffer_addr_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \rxbuffer_addr_reg[3]_i_1_n_4\,
      O(2) => \rxbuffer_addr_reg[3]_i_1_n_5\,
      O(1) => \rxbuffer_addr_reg[3]_i_1_n_6\,
      O(0) => \rxbuffer_addr_reg[3]_i_1_n_7\,
      S(3) => \rxbuffer_addr[3]_i_2_n_0\,
      S(2) => \rxbuffer_addr[3]_i_3_n_0\,
      S(1) => \rxbuffer_addr[3]_i_4_n_0\,
      S(0) => \rxbuffer_addr[3]_i_5_n_0\
    );
\rxbuffer_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rx_addr_en,
      D => \rxbuffer_addr_reg[7]_i_1_n_4\,
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(7),
      R => RX_n_12
    );
\rxbuffer_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rx_addr_en,
      D => \rxbuffer_addr_reg[7]_i_1_n_5\,
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(6),
      R => RX_n_12
    );
\rxbuffer_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rx_addr_en,
      D => \rxbuffer_addr_reg[7]_i_1_n_6\,
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(5),
      R => RX_n_12
    );
\rxbuffer_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rx_addr_en,
      D => \rxbuffer_addr_reg[7]_i_1_n_7\,
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(4),
      R => RX_n_12
    );
\rxbuffer_addr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rxbuffer_addr_reg[11]_i_3_n_0\,
      CO(3) => \rxbuffer_addr_reg[7]_i_1_n_0\,
      CO(2) => \rxbuffer_addr_reg[7]_i_1_n_1\,
      CO(1) => \rxbuffer_addr_reg[7]_i_1_n_2\,
      CO(0) => \rxbuffer_addr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \rxbuffer_addr_reg[7]_i_1_n_4\,
      O(2) => \rxbuffer_addr_reg[7]_i_1_n_5\,
      O(1) => \rxbuffer_addr_reg[7]_i_1_n_6\,
      O(0) => \rxbuffer_addr_reg[7]_i_1_n_7\,
      S(3) => \rxbuffer_addr[7]_i_2_n_0\,
      S(2) => \rxbuffer_addr[7]_i_3_n_0\,
      S(1) => \rxbuffer_addr[7]_i_4_n_0\,
      S(0) => \rxbuffer_addr[7]_i_5_n_0\
    );
\rxbuffer_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rx_addr_en,
      D => \rxbuffer_addr_reg[11]_i_3_n_4\,
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(3),
      R => RX_n_12
    );
\rxbuffer_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rx_addr_en,
      D => \rxbuffer_addr_reg[11]_i_3_n_5\,
      Q => \^device_7series.no_bmm_info.true_dp.simple_prim36.ram\(2),
      R => RX_n_12
    );
tx_clk_reg_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Phy_tx_clk_axi_d,
      Q => tx_clk_reg_d1,
      R => \^prmry_in\
    );
tx_clk_reg_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_clk_reg_d1,
      Q => tx_clk_reg_d2,
      R => \^prmry_in\
    );
tx_clk_reg_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_clk_reg_d2,
      Q => tx_clk_reg_d3,
      R => \^prmry_in\
    );
\txbuffer_addr[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addrardaddr\(3),
      O => \txbuffer_addr[11]_i_5_n_0\
    );
\txbuffer_addr[11]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addrardaddr\(2),
      O => \txbuffer_addr[11]_i_6_n_0\
    );
\txbuffer_addr[11]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addrardaddr\(1),
      O => \txbuffer_addr[11]_i_7_n_0\
    );
\txbuffer_addr[11]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addrardaddr\(0),
      O => \txbuffer_addr[11]_i_8_n_0\
    );
\txbuffer_addr[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addrardaddr\(11),
      O => \txbuffer_addr[3]_i_2_n_0\
    );
\txbuffer_addr[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addrardaddr\(10),
      O => \txbuffer_addr[3]_i_3_n_0\
    );
\txbuffer_addr[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addrardaddr\(9),
      O => \txbuffer_addr[3]_i_4_n_0\
    );
\txbuffer_addr[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addrardaddr\(8),
      O => \txbuffer_addr[3]_i_5_n_0\
    );
\txbuffer_addr[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addrardaddr\(7),
      O => \txbuffer_addr[7]_i_2_n_0\
    );
\txbuffer_addr[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addrardaddr\(6),
      O => \txbuffer_addr[7]_i_3_n_0\
    );
\txbuffer_addr[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addrardaddr\(5),
      O => \txbuffer_addr[7]_i_4_n_0\
    );
\txbuffer_addr[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^addrardaddr\(4),
      O => \txbuffer_addr[7]_i_5_n_0\
    );
\txbuffer_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tx_addr_en,
      D => \txbuffer_addr_reg[3]_i_1_n_4\,
      Q => \^addrardaddr\(11),
      R => TX_n_12
    );
\txbuffer_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tx_addr_en,
      D => \txbuffer_addr_reg[11]_i_3_n_6\,
      Q => \^addrardaddr\(1),
      R => TX_n_12
    );
\txbuffer_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tx_addr_en,
      D => \txbuffer_addr_reg[11]_i_3_n_7\,
      Q => \^addrardaddr\(0),
      R => TX_n_12
    );
\txbuffer_addr_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \txbuffer_addr_reg[11]_i_3_n_0\,
      CO(2) => \txbuffer_addr_reg[11]_i_3_n_1\,
      CO(1) => \txbuffer_addr_reg[11]_i_3_n_2\,
      CO(0) => \txbuffer_addr_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \txbuffer_addr_reg[11]_i_3_n_4\,
      O(2) => \txbuffer_addr_reg[11]_i_3_n_5\,
      O(1) => \txbuffer_addr_reg[11]_i_3_n_6\,
      O(0) => \txbuffer_addr_reg[11]_i_3_n_7\,
      S(3) => \txbuffer_addr[11]_i_5_n_0\,
      S(2) => \txbuffer_addr[11]_i_6_n_0\,
      S(1) => \txbuffer_addr[11]_i_7_n_0\,
      S(0) => \txbuffer_addr[11]_i_8_n_0\
    );
\txbuffer_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tx_addr_en,
      D => \txbuffer_addr_reg[3]_i_1_n_5\,
      Q => \^addrardaddr\(10),
      R => TX_n_12
    );
\txbuffer_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tx_addr_en,
      D => \txbuffer_addr_reg[3]_i_1_n_6\,
      Q => \^addrardaddr\(9),
      R => TX_n_12
    );
\txbuffer_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tx_addr_en,
      D => \txbuffer_addr_reg[3]_i_1_n_7\,
      Q => \^addrardaddr\(8),
      R => TX_n_12
    );
\txbuffer_addr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \txbuffer_addr_reg[7]_i_1_n_0\,
      CO(3) => \NLW_txbuffer_addr_reg[3]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \txbuffer_addr_reg[3]_i_1_n_1\,
      CO(1) => \txbuffer_addr_reg[3]_i_1_n_2\,
      CO(0) => \txbuffer_addr_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \txbuffer_addr_reg[3]_i_1_n_4\,
      O(2) => \txbuffer_addr_reg[3]_i_1_n_5\,
      O(1) => \txbuffer_addr_reg[3]_i_1_n_6\,
      O(0) => \txbuffer_addr_reg[3]_i_1_n_7\,
      S(3) => \txbuffer_addr[3]_i_2_n_0\,
      S(2) => \txbuffer_addr[3]_i_3_n_0\,
      S(1) => \txbuffer_addr[3]_i_4_n_0\,
      S(0) => \txbuffer_addr[3]_i_5_n_0\
    );
\txbuffer_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tx_addr_en,
      D => \txbuffer_addr_reg[7]_i_1_n_4\,
      Q => \^addrardaddr\(7),
      R => TX_n_12
    );
\txbuffer_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tx_addr_en,
      D => \txbuffer_addr_reg[7]_i_1_n_5\,
      Q => \^addrardaddr\(6),
      R => TX_n_12
    );
\txbuffer_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tx_addr_en,
      D => \txbuffer_addr_reg[7]_i_1_n_6\,
      Q => \^addrardaddr\(5),
      R => TX_n_12
    );
\txbuffer_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tx_addr_en,
      D => \txbuffer_addr_reg[7]_i_1_n_7\,
      Q => \^addrardaddr\(4),
      R => TX_n_12
    );
\txbuffer_addr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \txbuffer_addr_reg[11]_i_3_n_0\,
      CO(3) => \txbuffer_addr_reg[7]_i_1_n_0\,
      CO(2) => \txbuffer_addr_reg[7]_i_1_n_1\,
      CO(1) => \txbuffer_addr_reg[7]_i_1_n_2\,
      CO(0) => \txbuffer_addr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \txbuffer_addr_reg[7]_i_1_n_4\,
      O(2) => \txbuffer_addr_reg[7]_i_1_n_5\,
      O(1) => \txbuffer_addr_reg[7]_i_1_n_6\,
      O(0) => \txbuffer_addr_reg[7]_i_1_n_7\,
      S(3) => \txbuffer_addr[7]_i_2_n_0\,
      S(2) => \txbuffer_addr[7]_i_3_n_0\,
      S(1) => \txbuffer_addr[7]_i_4_n_0\,
      S(0) => \txbuffer_addr[7]_i_5_n_0\
    );
\txbuffer_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tx_addr_en,
      D => \txbuffer_addr_reg[11]_i_3_n_4\,
      Q => \^addrardaddr\(3),
      R => TX_n_12
    );
\txbuffer_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tx_addr_en,
      D => \txbuffer_addr_reg[11]_i_3_n_5\,
      Q => \^addrardaddr\(2),
      R => TX_n_12
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_xemac is
  port (
    ip2intc_irpt : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    phy_mdc : out STD_LOGIC;
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\ : out STD_LOGIC;
    p_33_in184_in : out STD_LOGIC;
    p_27_in165_in : out STD_LOGIC;
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[2]\ : out STD_LOGIC;
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1]\ : out STD_LOGIC;
    \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0]\ : out STD_LOGIC;
    \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]\ : out STD_LOGIC;
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]\ : out STD_LOGIC;
    \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]\ : out STD_LOGIC;
    \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]\ : out STD_LOGIC;
    \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]\ : out STD_LOGIC;
    phy_mdio_o : out STD_LOGIC;
    phy_mdio_t : out STD_LOGIC;
    reg_access : out STD_LOGIC;
    mdio_en_i : out STD_LOGIC;
    p_15_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_17_in : out STD_LOGIC_VECTOR ( 2 downto 0 );
    loopback_en_reg_0 : out STD_LOGIC;
    p_9_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pong_rx_status : out STD_LOGIC;
    gie_enable : out STD_LOGIC;
    ping_soft_status : out STD_LOGIC;
    pong_soft_status : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \tx_packet_length_reg[15]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \tx_packet_length_reg[15]_1\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \MDIO_GEN.mdio_data_out_reg[15]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    prmry_vect_in : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_tx_en_i : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    phy_crs : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    DIA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DIC : in STD_LOGIC_VECTOR ( 1 downto 0 );
    phy_tx_clk : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_1\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_2\ : in STD_LOGIC;
    phy_mdio_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \AXI4_LITE_IF_GEN.read_in_prog_reg\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.read_in_prog_reg_0\ : in STD_LOGIC;
    \ping_pkt_lenth_reg[15]_0\ : in STD_LOGIC;
    \ping_pkt_lenth_reg[14]_0\ : in STD_LOGIC;
    \ping_pkt_lenth_reg[13]_0\ : in STD_LOGIC;
    \ping_pkt_lenth_reg[12]_0\ : in STD_LOGIC;
    \ping_pkt_lenth_reg[11]_0\ : in STD_LOGIC;
    \ping_pkt_lenth_reg[10]_0\ : in STD_LOGIC;
    \ping_pkt_lenth_reg[9]_0\ : in STD_LOGIC;
    \ping_pkt_lenth_reg[8]_0\ : in STD_LOGIC;
    \ping_pkt_lenth_reg[7]_0\ : in STD_LOGIC;
    \ping_pkt_lenth_reg[6]_0\ : in STD_LOGIC;
    \reg_data_out_reg[31]_0\ : in STD_LOGIC;
    \reg_data_out_reg[5]_0\ : in STD_LOGIC;
    \reg_data_out_reg[4]_0\ : in STD_LOGIC;
    \reg_data_out_reg[2]_0\ : in STD_LOGIC;
    \reg_data_out_reg[1]_0\ : in STD_LOGIC;
    \reg_data_out_reg[0]_0\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.read_in_prog_reg_1\ : in STD_LOGIC;
    \MDIO_GEN.mdio_en_i_reg_0\ : in STD_LOGIC;
    tx_intr_en_reg_0 : in STD_LOGIC;
    rx_intr_en_reg_0 : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.write_in_prog_reg\ : in STD_LOGIC;
    ping_soft_status_reg_0 : in STD_LOGIC;
    \TX_PONG_REG_GEN.pong_soft_status_reg_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[8]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_3\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.read_in_prog_reg_2\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.read_in_prog_reg_3\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.read_in_prog_reg_4\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.read_in_prog_reg_5\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\ : in STD_LOGIC;
    p_21_out : in STD_LOGIC;
    tx_intr_en0 : in STD_LOGIC;
    rx_intr_en0 : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.write_in_prog_reg_0\ : in STD_LOGIC;
    p_48_out : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \AXI4_LITE_IF_GEN.read_in_prog_reg_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \AXI4_LITE_IF_GEN.read_in_prog_reg_7\ : in STD_LOGIC;
    \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0\ : in STD_LOGIC;
    \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0\ : in STD_LOGIC;
    \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0\ : in STD_LOGIC;
    \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0\ : in STD_LOGIC;
    \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0\ : in STD_LOGIC;
    \AXI4_LITE_IF_GEN.write_in_prog_reg_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \AXI4_LITE_IF_GEN.write_in_prog_reg_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_xemac : entity is "xemac";
end ntps_top_axi_ethernetlite_0_0_xemac;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_xemac is
  signal \^axi4_lite_if_gen.ip2bus_data_sampled_reg[0]\ : STD_LOGIC;
  signal \^axi4_lite_if_gen.ip2bus_data_sampled_reg[1]\ : STD_LOGIC;
  signal \^axi4_lite_if_gen.ip2bus_data_sampled_reg[2]\ : STD_LOGIC;
  signal \^axi4_lite_if_gen.ip2bus_data_sampled_reg[31]\ : STD_LOGIC;
  signal D694_out : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal EMAC_I_n_31 : STD_LOGIC;
  signal EMAC_I_n_32 : STD_LOGIC;
  signal EMAC_I_n_33 : STD_LOGIC;
  signal EMAC_I_n_34 : STD_LOGIC;
  signal EMAC_I_n_35 : STD_LOGIC;
  signal EMAC_I_n_36 : STD_LOGIC;
  signal EMAC_I_n_37 : STD_LOGIC;
  signal EMAC_I_n_38 : STD_LOGIC;
  signal EMAC_I_n_39 : STD_LOGIC;
  signal EMAC_I_n_40 : STD_LOGIC;
  signal EMAC_I_n_44 : STD_LOGIC;
  signal EMAC_I_n_45 : STD_LOGIC;
  signal EMAC_I_n_46 : STD_LOGIC;
  signal EMAC_I_n_47 : STD_LOGIC;
  signal \MDIO_GEN.MDIO_IF_I_n_10\ : STD_LOGIC;
  signal \MDIO_GEN.MDIO_IF_I_n_11\ : STD_LOGIC;
  signal \MDIO_GEN.MDIO_IF_I_n_12\ : STD_LOGIC;
  signal \MDIO_GEN.MDIO_IF_I_n_13\ : STD_LOGIC;
  signal \MDIO_GEN.MDIO_IF_I_n_14\ : STD_LOGIC;
  signal \MDIO_GEN.MDIO_IF_I_n_15\ : STD_LOGIC;
  signal \MDIO_GEN.MDIO_IF_I_n_16\ : STD_LOGIC;
  signal \MDIO_GEN.MDIO_IF_I_n_17\ : STD_LOGIC;
  signal \MDIO_GEN.MDIO_IF_I_n_18\ : STD_LOGIC;
  signal \MDIO_GEN.MDIO_IF_I_n_7\ : STD_LOGIC;
  signal \MDIO_GEN.MDIO_IF_I_n_8\ : STD_LOGIC;
  signal \MDIO_GEN.MDIO_IF_I_n_9\ : STD_LOGIC;
  signal \MDIO_GEN.clk_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \MDIO_GEN.clk_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \MDIO_GEN.clk_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \MDIO_GEN.clk_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \MDIO_GEN.clk_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \MDIO_GEN.clk_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_clk_i_i_1_n_0\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_clk_i_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_data_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_data_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_data_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_data_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_data_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_data_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \^mdio_gen.mdio_data_out_reg[15]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \MDIO_GEN.mdio_data_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \MDIO_GEN.mdio_req_i_reg_n_0\ : STD_LOGIC;
  signal RX_PING_n_28 : STD_LOGIC;
  signal \RX_PONG_GEN.rx_pong_ping_l_i_1_n_0\ : STD_LOGIC;
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \TX/INST_TX_STATE_MACHINE/D3_in2_in\ : STD_LOGIC;
  signal TX_PING_n_0 : STD_LOGIC;
  signal TX_PING_n_4 : STD_LOGIC;
  signal \TX_PONG_GEN.tx_pong_ping_l_i_1_n_0\ : STD_LOGIC;
  signal \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\ : STD_LOGIC;
  signal \TX_PONG_REG_GEN.pong_mac_program_i_1_n_0\ : STD_LOGIC;
  signal \TX_PONG_REG_GEN.pong_tx_status_i_1_n_0\ : STD_LOGIC;
  signal clk_cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal data7 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^gie_enable\ : STD_LOGIC;
  signal \^loopback_en_reg_0\ : STD_LOGIC;
  signal \^mdio_en_i\ : STD_LOGIC;
  signal mdio_op_i : STD_LOGIC;
  signal mdio_phy_addr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mdio_reg_addr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mdio_wr_data_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_101_in : STD_LOGIC;
  signal p_103_in401_in : STD_LOGIC;
  signal p_107_in : STD_LOGIC;
  signal p_109_in417_in : STD_LOGIC;
  signal p_113_in : STD_LOGIC;
  signal p_115_in433_in : STD_LOGIC;
  signal p_119_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_121_in : STD_LOGIC;
  signal p_125_in : STD_LOGIC;
  signal p_127_in467_in : STD_LOGIC;
  signal p_131_in : STD_LOGIC;
  signal p_133_in483_in : STD_LOGIC;
  signal p_137_in : STD_LOGIC;
  signal p_139_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_143_in : STD_LOGIC;
  signal p_145_in517_in : STD_LOGIC;
  signal p_149_in : STD_LOGIC;
  signal p_14_in128_in : STD_LOGIC;
  signal p_151_in533_in : STD_LOGIC;
  signal p_155_in : STD_LOGIC;
  signal p_157_in : STD_LOGIC;
  signal \^p_15_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_161_in : STD_LOGIC;
  signal p_163_in567_in : STD_LOGIC;
  signal p_167_in : STD_LOGIC;
  signal p_169_in583_in : STD_LOGIC;
  signal p_173_in : STD_LOGIC;
  signal p_175_in600_in : STD_LOGIC;
  signal p_179_in : STD_LOGIC;
  signal \^p_17_in\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_181_in : STD_LOGIC;
  signal p_185_in : STD_LOGIC;
  signal p_187_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_20_in146_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_23_in154_in : STD_LOGIC;
  signal p_25_in159_in : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal \^p_27_in165_in\ : STD_LOGIC;
  signal p_29_in173_in : STD_LOGIC;
  signal p_2_in678_in : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 31 to 31 );
  signal p_31_in : STD_LOGIC;
  signal p_32_in : STD_LOGIC;
  signal \^p_33_in184_in\ : STD_LOGIC;
  signal p_35_in192_in : STD_LOGIC;
  signal p_37_in197_in : STD_LOGIC;
  signal p_38_in202_in : STD_LOGIC;
  signal p_39_in204_in : STD_LOGIC;
  signal p_41_in : STD_LOGIC;
  signal p_43_in : STD_LOGIC;
  signal p_44_in219_in : STD_LOGIC;
  signal p_45_in221_in : STD_LOGIC;
  signal p_47_in229_in : STD_LOGIC;
  signal p_49_in : STD_LOGIC;
  signal p_4_in100_in : STD_LOGIC;
  signal p_4_in682_in : STD_LOGIC;
  signal p_4_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_50_in238_in : STD_LOGIC;
  signal p_51_in : STD_LOGIC;
  signal p_53_in : STD_LOGIC;
  signal p_55_in : STD_LOGIC;
  signal p_56_in : STD_LOGIC;
  signal p_57_in257_in : STD_LOGIC;
  signal p_59_in : STD_LOGIC;
  signal p_61_in : STD_LOGIC;
  signal p_62_in : STD_LOGIC;
  signal p_63_in273_in : STD_LOGIC;
  signal p_65_in : STD_LOGIC;
  signal p_67_in : STD_LOGIC;
  signal p_68_in290_in : STD_LOGIC;
  signal p_69_in : STD_LOGIC;
  signal p_6_in104_in : STD_LOGIC;
  signal p_6_in686_in : STD_LOGIC;
  signal p_71_in : STD_LOGIC;
  signal p_73_in : STD_LOGIC;
  signal p_74_in308_in : STD_LOGIC;
  signal p_75_in : STD_LOGIC;
  signal p_77_in317_in : STD_LOGIC;
  signal p_79_in323_in : STD_LOGIC;
  signal p_80_in328_in : STD_LOGIC;
  signal p_81_in330_in : STD_LOGIC;
  signal p_83_in338_in : STD_LOGIC;
  signal p_85_in344_in : STD_LOGIC;
  signal p_86_in349_in : STD_LOGIC;
  signal p_87_in351_in : STD_LOGIC;
  signal p_89_in359_in : STD_LOGIC;
  signal p_8_in110_in : STD_LOGIC;
  signal p_91_in365_in : STD_LOGIC;
  signal p_92_in370_in : STD_LOGIC;
  signal p_93_in : STD_LOGIC;
  signal p_95_in : STD_LOGIC;
  signal p_97_in : STD_LOGIC;
  signal \^p_9_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phy_mdc\ : STD_LOGIC;
  signal ping_mac_program_i_1_n_0 : STD_LOGIC;
  signal ping_pkt_lenth : STD_LOGIC_VECTOR ( 3 to 3 );
  signal ping_tx_status_i_1_n_0 : STD_LOGIC;
  signal pong_pkt_lenth : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^pong_rx_status\ : STD_LOGIC;
  signal \^reg_access\ : STD_LOGIC;
  signal \reg_data_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_data_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \reg_data_out[3]_i_6_n_0\ : STD_LOGIC;
  signal rx_DPM_adr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rx_DPM_wr_data : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_done_d1 : STD_LOGIC;
  signal rx_pong_ping_l : STD_LOGIC;
  signal tx_DPM_adr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal tx_DPM_rd_data : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_done_d1 : STD_LOGIC;
  signal tx_done_d2 : STD_LOGIC;
  signal tx_idle : STD_LOGIC;
  signal tx_packet_length : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \tx_packet_length[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[11]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[12]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[13]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[15]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_packet_length[9]_i_1_n_0\ : STD_LOGIC;
  signal \^tx_packet_length_reg[15]_0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^tx_packet_length_reg[15]_1\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal wr_rd_n_a_i : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of IP2INTC_IRPT_REG_I : label is "FDR";
  attribute box_type : string;
  attribute box_type of IP2INTC_IRPT_REG_I : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MDIO_GEN.clk_cnt[3]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \MDIO_GEN.clk_cnt[4]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[10]_i_3\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[2]_i_2\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[4]_i_2\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[5]_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[6]_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \MDIO_GEN.mdio_data_out[9]_i_2\ : label is "soft_lutpair97";
  attribute XILINX_LEGACY_PRIM of RX_DONE_D1_I : label is "FDR";
  attribute box_type of RX_DONE_D1_I : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of TX_DONE_D1_I : label is "FDR";
  attribute box_type of TX_DONE_D1_I : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of TX_DONE_D2_I : label is "FDR";
  attribute box_type of TX_DONE_D2_I : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \tx_packet_length[0]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \tx_packet_length[10]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \tx_packet_length[11]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \tx_packet_length[12]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \tx_packet_length[13]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \tx_packet_length[14]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \tx_packet_length[15]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \tx_packet_length[1]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \tx_packet_length[2]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \tx_packet_length[3]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \tx_packet_length[4]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \tx_packet_length[5]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \tx_packet_length[6]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \tx_packet_length[7]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \tx_packet_length[8]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \tx_packet_length[9]_i_1\ : label is "soft_lutpair89";
begin
  \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0]\ <= \^axi4_lite_if_gen.ip2bus_data_sampled_reg[0]\;
  \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1]\ <= \^axi4_lite_if_gen.ip2bus_data_sampled_reg[1]\;
  \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[2]\ <= \^axi4_lite_if_gen.ip2bus_data_sampled_reg[2]\;
  \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\ <= \^axi4_lite_if_gen.ip2bus_data_sampled_reg[31]\;
  \MDIO_GEN.mdio_data_out_reg[15]_0\(4 downto 0) <= \^mdio_gen.mdio_data_out_reg[15]_0\(4 downto 0);
  SS(0) <= \^ss\(0);
  gie_enable <= \^gie_enable\;
  loopback_en_reg_0 <= \^loopback_en_reg_0\;
  mdio_en_i <= \^mdio_en_i\;
  p_15_in(1 downto 0) <= \^p_15_in\(1 downto 0);
  p_17_in(2 downto 0) <= \^p_17_in\(2 downto 0);
  p_27_in165_in <= \^p_27_in165_in\;
  p_33_in184_in <= \^p_33_in184_in\;
  p_9_in(1 downto 0) <= \^p_9_in\(1 downto 0);
  phy_mdc <= \^phy_mdc\;
  pong_rx_status <= \^pong_rx_status\;
  reg_access <= \^reg_access\;
  \tx_packet_length_reg[15]_0\(14 downto 0) <= \^tx_packet_length_reg[15]_0\(14 downto 0);
  \tx_packet_length_reg[15]_1\(14 downto 0) <= \^tx_packet_length_reg[15]_1\(14 downto 0);
EMAC_I: entity work.ntps_top_axi_ethernetlite_0_0_axi_ethernetlite_v3_0_emac
     port map (
      ADDRARDADDR(11 downto 0) => tx_DPM_adr(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2\,
      \AXI4_LITE_IF_GEN.write_in_prog_reg\ => \AXI4_LITE_IF_GEN.write_in_prog_reg_0\,
      D(5) => EMAC_I_n_33,
      D(4) => EMAC_I_n_34,
      D(3) => EMAC_I_n_35,
      D(2) => EMAC_I_n_36,
      D(1) => EMAC_I_n_37,
      D(0) => EMAC_I_n_38,
      D3_in2_in => \TX/INST_TX_STATE_MACHINE/D3_in2_in\,
      D694_out => D694_out,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(11 downto 0) => rx_DPM_adr(11 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => EMAC_I_n_31,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ => EMAC_I_n_32,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\ => EMAC_I_n_39,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\ => EMAC_I_n_40,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(3 downto 0) => p_4_out(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(3 downto 0) => tx_DPM_rd_data(3 downto 0),
      DIA(1 downto 0) => DIA(1 downto 0),
      DIB(1 downto 0) => DIB(1 downto 0),
      DIC(1 downto 0) => DIC(1 downto 0),
      DOADO(3) => TX_PING_n_0,
      DOADO(2) => p_6_in686_in,
      DOADO(1) => p_4_in682_in,
      DOADO(0) => p_2_in678_in,
      D_0 => D_0,
      E(0) => EMAC_I_n_44,
      Q(3 downto 0) => rx_DPM_wr_data(3 downto 0),
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => EMAC_I_n_47,
      \RX_PONG_REG_GEN.pong_rx_status_reg_0\ => \^pong_rx_status\,
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      \TX_PONG_REG_GEN.pong_mac_program_reg\ => \^p_15_in\(1),
      \TX_PONG_REG_GEN.pong_tx_status_reg\ => \^p_15_in\(0),
      WEA(0) => wr_rd_n_a_i,
      gie_enable => \^gie_enable\,
      loopback_en_reg => EMAC_I_n_45,
      loopback_en_reg_0 => \^loopback_en_reg_0\,
      p_17_in(2 downto 0) => \^p_17_in\(2 downto 0),
      p_9_in(0) => \^p_9_in\(1),
      phy_crs => phy_crs,
      phy_rx_clk => phy_rx_clk,
      phy_tx_clk => phy_tx_clk,
      phy_tx_en_i => phy_tx_en_i,
      ping_rx_status_reg => EMAC_I_n_46,
      ping_rx_status_reg_0 => \^p_9_in\(0),
      prmry_in => \^ss\(0),
      prmry_vect_in(3 downto 0) => prmry_vect_in(3 downto 0),
      rx_done_d1 => rx_done_d1,
      rx_intr_en0 => rx_intr_en0,
      rx_pong_ping_l => rx_pong_ping_l,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(1) => s_axi_wdata(4),
      s_axi_wdata(0) => s_axi_wdata(0),
      tx_done_d2 => tx_done_d2,
      tx_idle => tx_idle,
      tx_intr_en0 => tx_intr_en0,
      \tx_packet_length_reg[15]\(15 downto 0) => tx_packet_length(15 downto 0)
    );
IP2INTC_IRPT_REG_I: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D694_out,
      Q => ip2intc_irpt,
      R => \^ss\(0)
    );
\MDIO_GEN.MDIO_IF_I\: entity work.ntps_top_axi_ethernetlite_0_0_mdio_if
     port map (
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\(0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]\,
      \AXI4_LITE_IF_GEN.read_in_prog_reg\ => \AXI4_LITE_IF_GEN.read_in_prog_reg_5\,
      D(10) => \MDIO_GEN.MDIO_IF_I_n_7\,
      D(9) => \MDIO_GEN.MDIO_IF_I_n_8\,
      D(8) => \MDIO_GEN.MDIO_IF_I_n_9\,
      D(7) => \MDIO_GEN.MDIO_IF_I_n_10\,
      D(6) => \MDIO_GEN.MDIO_IF_I_n_11\,
      D(5) => \MDIO_GEN.MDIO_IF_I_n_12\,
      D(4) => \MDIO_GEN.MDIO_IF_I_n_13\,
      D(3) => \MDIO_GEN.MDIO_IF_I_n_14\,
      D(2) => \MDIO_GEN.MDIO_IF_I_n_15\,
      D(1) => \MDIO_GEN.MDIO_IF_I_n_16\,
      D(0) => \MDIO_GEN.MDIO_IF_I_n_17\,
      \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0\ => \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]\,
      \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0\ => \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]\,
      \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0\ => \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]\,
      \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0\ => \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]\,
      \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0\ => \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]\,
      \MDIO_GEN.mdio_clk_i_reg\ => \^phy_mdc\,
      \MDIO_GEN.mdio_phy_addr_reg[4]\(4 downto 0) => mdio_phy_addr(4 downto 0),
      \MDIO_GEN.mdio_req_i_reg\ => \MDIO_GEN.MDIO_IF_I_n_18\,
      \MDIO_GEN.mdio_req_i_reg_0\ => \MDIO_GEN.mdio_req_i_reg_n_0\,
      \MDIO_GEN.mdio_wr_data_reg_reg[10]\ => \MDIO_GEN.mdio_data_out[10]_i_3_n_0\,
      \MDIO_GEN.mdio_wr_data_reg_reg[15]\(15 downto 11) => \^mdio_gen.mdio_data_out_reg[15]_0\(4 downto 0),
      \MDIO_GEN.mdio_wr_data_reg_reg[15]\(10 downto 0) => mdio_wr_data_reg(10 downto 0),
      \MDIO_GEN.mdio_wr_data_reg_reg[2]\ => \MDIO_GEN.mdio_data_out[2]_i_2_n_0\,
      \MDIO_GEN.mdio_wr_data_reg_reg[4]\ => \MDIO_GEN.mdio_data_out[4]_i_2_n_0\,
      \MDIO_GEN.mdio_wr_data_reg_reg[5]\ => \MDIO_GEN.mdio_data_out[5]_i_2_n_0\,
      \MDIO_GEN.mdio_wr_data_reg_reg[6]\ => \MDIO_GEN.mdio_data_out[6]_i_2_n_0\,
      \MDIO_GEN.mdio_wr_data_reg_reg[9]\ => \MDIO_GEN.mdio_data_out[9]_i_2_n_0\,
      Q(4 downto 0) => mdio_reg_addr(4 downto 0),
      mdio_en_i => \^mdio_en_i\,
      mdio_op_i => mdio_op_i,
      p_21_out => p_21_out,
      phy_mdio_i => phy_mdio_i,
      phy_mdio_o => phy_mdio_o,
      phy_mdio_t => phy_mdio_t,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^ss\(0),
      s_axi_wdata(0) => s_axi_wdata(0)
    );
\MDIO_GEN.clk_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \MDIO_GEN.clk_cnt_reg_n_0_[4]\,
      I1 => \MDIO_GEN.clk_cnt_reg_n_0_[5]\,
      I2 => \MDIO_GEN.clk_cnt_reg_n_0_[3]\,
      I3 => \MDIO_GEN.clk_cnt_reg_n_0_[1]\,
      I4 => \MDIO_GEN.clk_cnt_reg_n_0_[2]\,
      I5 => \MDIO_GEN.clk_cnt_reg_n_0_[0]\,
      O => clk_cnt(0)
    );
\MDIO_GEN.clk_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \MDIO_GEN.clk_cnt_reg_n_0_[1]\,
      I1 => \MDIO_GEN.clk_cnt_reg_n_0_[0]\,
      O => clk_cnt(1)
    );
\MDIO_GEN.clk_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF0000FE"
    )
        port map (
      I0 => \MDIO_GEN.clk_cnt_reg_n_0_[4]\,
      I1 => \MDIO_GEN.clk_cnt_reg_n_0_[5]\,
      I2 => \MDIO_GEN.clk_cnt_reg_n_0_[3]\,
      I3 => \MDIO_GEN.clk_cnt_reg_n_0_[1]\,
      I4 => \MDIO_GEN.clk_cnt_reg_n_0_[2]\,
      I5 => \MDIO_GEN.clk_cnt_reg_n_0_[0]\,
      O => clk_cnt(2)
    );
\MDIO_GEN.clk_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \MDIO_GEN.clk_cnt_reg_n_0_[3]\,
      I1 => \MDIO_GEN.clk_cnt_reg_n_0_[1]\,
      I2 => \MDIO_GEN.clk_cnt_reg_n_0_[2]\,
      I3 => \MDIO_GEN.clk_cnt_reg_n_0_[0]\,
      O => clk_cnt(3)
    );
\MDIO_GEN.clk_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \MDIO_GEN.clk_cnt_reg_n_0_[4]\,
      I1 => \MDIO_GEN.clk_cnt_reg_n_0_[3]\,
      I2 => \MDIO_GEN.clk_cnt_reg_n_0_[1]\,
      I3 => \MDIO_GEN.clk_cnt_reg_n_0_[2]\,
      I4 => \MDIO_GEN.clk_cnt_reg_n_0_[0]\,
      O => clk_cnt(4)
    );
\MDIO_GEN.clk_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCC8"
    )
        port map (
      I0 => \MDIO_GEN.clk_cnt_reg_n_0_[4]\,
      I1 => \MDIO_GEN.clk_cnt_reg_n_0_[5]\,
      I2 => \MDIO_GEN.clk_cnt_reg_n_0_[3]\,
      I3 => \MDIO_GEN.clk_cnt_reg_n_0_[1]\,
      I4 => \MDIO_GEN.clk_cnt_reg_n_0_[2]\,
      I5 => \MDIO_GEN.clk_cnt_reg_n_0_[0]\,
      O => clk_cnt(5)
    );
\MDIO_GEN.clk_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk_cnt(0),
      Q => \MDIO_GEN.clk_cnt_reg_n_0_[0]\,
      R => \^ss\(0)
    );
\MDIO_GEN.clk_cnt_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk_cnt(1),
      Q => \MDIO_GEN.clk_cnt_reg_n_0_[1]\,
      S => \^ss\(0)
    );
\MDIO_GEN.clk_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk_cnt(2),
      Q => \MDIO_GEN.clk_cnt_reg_n_0_[2]\,
      R => \^ss\(0)
    );
\MDIO_GEN.clk_cnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk_cnt(3),
      Q => \MDIO_GEN.clk_cnt_reg_n_0_[3]\,
      S => \^ss\(0)
    );
\MDIO_GEN.clk_cnt_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk_cnt(4),
      Q => \MDIO_GEN.clk_cnt_reg_n_0_[4]\,
      S => \^ss\(0)
    );
\MDIO_GEN.clk_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => clk_cnt(5),
      Q => \MDIO_GEN.clk_cnt_reg_n_0_[5]\,
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_clk_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \MDIO_GEN.clk_cnt_reg_n_0_[2]\,
      I1 => \MDIO_GEN.clk_cnt_reg_n_0_[3]\,
      I2 => \MDIO_GEN.clk_cnt_reg_n_0_[0]\,
      I3 => \MDIO_GEN.clk_cnt_reg_n_0_[1]\,
      I4 => \MDIO_GEN.mdio_clk_i_i_2_n_0\,
      I5 => \^phy_mdc\,
      O => \MDIO_GEN.mdio_clk_i_i_1_n_0\
    );
\MDIO_GEN.mdio_clk_i_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \MDIO_GEN.clk_cnt_reg_n_0_[4]\,
      I1 => \MDIO_GEN.clk_cnt_reg_n_0_[5]\,
      O => \MDIO_GEN.mdio_clk_i_i_2_n_0\
    );
\MDIO_GEN.mdio_clk_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_GEN.mdio_clk_i_i_1_n_0\,
      Q => \^phy_mdc\,
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_data_out[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mdio_wr_data_reg(10),
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\,
      O => \MDIO_GEN.mdio_data_out[10]_i_3_n_0\
    );
\MDIO_GEN.mdio_data_out[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mdio_wr_data_reg(2),
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\,
      O => \MDIO_GEN.mdio_data_out[2]_i_2_n_0\
    );
\MDIO_GEN.mdio_data_out[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mdio_wr_data_reg(4),
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\,
      O => \MDIO_GEN.mdio_data_out[4]_i_2_n_0\
    );
\MDIO_GEN.mdio_data_out[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mdio_wr_data_reg(5),
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\,
      O => \MDIO_GEN.mdio_data_out[5]_i_2_n_0\
    );
\MDIO_GEN.mdio_data_out[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mdio_wr_data_reg(6),
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\,
      O => \MDIO_GEN.mdio_data_out[6]_i_2_n_0\
    );
\MDIO_GEN.mdio_data_out[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mdio_wr_data_reg(9),
      I1 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\,
      O => \MDIO_GEN.mdio_data_out[9]_i_2_n_0\
    );
\MDIO_GEN.mdio_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_GEN.MDIO_IF_I_n_17\,
      Q => \MDIO_GEN.mdio_data_out_reg_n_0_[0]\,
      R => '0'
    );
\MDIO_GEN.mdio_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_GEN.MDIO_IF_I_n_7\,
      Q => p_62_in,
      R => '0'
    );
\MDIO_GEN.mdio_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0\,
      Q => p_68_in290_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg_7\
    );
\MDIO_GEN.mdio_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0\,
      Q => p_74_in308_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg_7\
    );
\MDIO_GEN.mdio_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0\,
      Q => p_80_in328_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg_7\
    );
\MDIO_GEN.mdio_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0\,
      Q => p_86_in349_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg_7\
    );
\MDIO_GEN.mdio_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0\,
      Q => p_92_in370_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg_7\
    );
\MDIO_GEN.mdio_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_GEN.MDIO_IF_I_n_16\,
      Q => p_8_in110_in,
      R => '0'
    );
\MDIO_GEN.mdio_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_GEN.MDIO_IF_I_n_15\,
      Q => p_14_in128_in,
      R => '0'
    );
\MDIO_GEN.mdio_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_GEN.MDIO_IF_I_n_14\,
      Q => p_20_in146_in,
      R => '0'
    );
\MDIO_GEN.mdio_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_GEN.MDIO_IF_I_n_13\,
      Q => p_26_in,
      R => '0'
    );
\MDIO_GEN.mdio_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_GEN.MDIO_IF_I_n_12\,
      Q => p_32_in,
      R => '0'
    );
\MDIO_GEN.mdio_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_GEN.MDIO_IF_I_n_11\,
      Q => p_38_in202_in,
      R => '0'
    );
\MDIO_GEN.mdio_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_GEN.MDIO_IF_I_n_10\,
      Q => p_44_in219_in,
      R => '0'
    );
\MDIO_GEN.mdio_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_GEN.MDIO_IF_I_n_9\,
      Q => p_50_in238_in,
      R => '0'
    );
\MDIO_GEN.mdio_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0),
      D => \MDIO_GEN.MDIO_IF_I_n_8\,
      Q => p_56_in,
      R => '0'
    );
\MDIO_GEN.mdio_en_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_GEN.mdio_en_i_reg_0\,
      Q => \^mdio_en_i\,
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_op_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(10),
      Q => mdio_op_i,
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_phy_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => mdio_phy_addr(0),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_phy_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => mdio_phy_addr(1),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_phy_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => mdio_phy_addr(2),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_phy_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(8),
      Q => mdio_phy_addr(3),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_phy_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(9),
      Q => mdio_phy_addr(4),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_reg_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => mdio_reg_addr(0),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_reg_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => mdio_reg_addr(1),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_reg_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => mdio_reg_addr(2),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_reg_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => mdio_reg_addr(3),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_reg_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => mdio_reg_addr(4),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_req_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MDIO_GEN.MDIO_IF_I_n_18\,
      Q => \MDIO_GEN.mdio_req_i_reg_n_0\,
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(0),
      Q => mdio_wr_data_reg(0),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(10),
      Q => mdio_wr_data_reg(10),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(11),
      Q => \^mdio_gen.mdio_data_out_reg[15]_0\(0),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(12),
      Q => \^mdio_gen.mdio_data_out_reg[15]_0\(1),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(13),
      Q => \^mdio_gen.mdio_data_out_reg[15]_0\(2),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(14),
      Q => \^mdio_gen.mdio_data_out_reg[15]_0\(3),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(15),
      Q => \^mdio_gen.mdio_data_out_reg[15]_0\(4),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(1),
      Q => mdio_wr_data_reg(1),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(2),
      Q => mdio_wr_data_reg(2),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(3),
      Q => mdio_wr_data_reg(3),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(4),
      Q => mdio_wr_data_reg(4),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(5),
      Q => mdio_wr_data_reg(5),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(6),
      Q => mdio_wr_data_reg(6),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(7),
      Q => mdio_wr_data_reg(7),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(8),
      Q => mdio_wr_data_reg(8),
      R => \^ss\(0)
    );
\MDIO_GEN.mdio_wr_data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0),
      D => s_axi_wdata(9),
      Q => mdio_wr_data_reg(9),
      R => \^ss\(0)
    );
RX_DONE_D1_I: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D_0,
      Q => rx_done_d1,
      R => \^ss\(0)
    );
RX_PING: entity work.ntps_top_axi_ethernetlite_0_0_emac_dpram
     port map (
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(0) => D(31),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => p_1_out(31),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => p_2_out(31),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => TX_PING_n_4,
      DOBDO(30) => p_185_in,
      DOBDO(29) => p_179_in,
      DOBDO(28) => p_173_in,
      DOBDO(27) => p_167_in,
      DOBDO(26) => p_161_in,
      DOBDO(25) => p_155_in,
      DOBDO(24) => p_149_in,
      DOBDO(23) => p_143_in,
      DOBDO(22) => p_137_in,
      DOBDO(21) => p_131_in,
      DOBDO(20) => p_125_in,
      DOBDO(19) => p_119_in,
      DOBDO(18) => p_113_in,
      DOBDO(17) => p_107_in,
      DOBDO(16) => p_101_in,
      DOBDO(15) => p_95_in,
      DOBDO(14) => p_89_in359_in,
      DOBDO(13) => p_83_in338_in,
      DOBDO(12) => p_77_in317_in,
      DOBDO(11) => p_71_in,
      DOBDO(10) => p_65_in,
      DOBDO(9) => p_59_in,
      DOBDO(8) => p_53_in,
      DOBDO(7) => p_47_in229_in,
      DOBDO(6) => p_41_in,
      DOBDO(5) => p_35_in192_in,
      DOBDO(4) => p_29_in173_in,
      DOBDO(3) => p_23_in154_in,
      DOBDO(2) => RX_PING_n_28,
      DOBDO(1) => p_11_in,
      DOBDO(0) => p_4_in100_in,
      Q(3 downto 0) => rx_DPM_wr_data(3 downto 0),
      WEA(0) => wr_rd_n_a_i,
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => EMAC_I_n_40,
      reg_access_reg => \^reg_access\,
      \reg_data_out_reg[31]\ => \^axi4_lite_if_gen.ip2bus_data_sampled_reg[31]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => rx_DPM_adr(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
\RX_PONG_GEN.RX_PONG_I\: entity work.ntps_top_axi_ethernetlite_0_0_emac_dpram_1
     port map (
      \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\(0) => p_2_out(31),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_2\,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\,
      D(30 downto 0) => D(30 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(30) => p_185_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(29) => p_179_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(28) => p_173_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(27) => p_167_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(26) => p_161_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(25) => p_155_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(24) => p_149_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(23) => p_143_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(22) => p_137_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(21) => p_131_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(20) => p_125_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(19) => p_119_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(18) => p_113_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(17) => p_107_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(16) => p_101_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(15) => p_95_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(14) => p_89_in359_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(13) => p_83_in338_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(12) => p_77_in317_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(11) => p_71_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(10) => p_65_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(9) => p_59_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(8) => p_53_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(7) => p_47_in229_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(6) => p_41_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(5) => p_35_in192_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(4) => p_29_in173_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3) => p_23_in154_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(2) => RX_PING_n_28,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(1) => p_11_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => p_4_in100_in,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(30 downto 0) => p_1_out(30 downto 0),
      DOBDO(30) => p_187_in,
      DOBDO(29) => p_181_in,
      DOBDO(28) => p_175_in600_in,
      DOBDO(27) => p_169_in583_in,
      DOBDO(26) => p_163_in567_in,
      DOBDO(25) => p_157_in,
      DOBDO(24) => p_151_in533_in,
      DOBDO(23) => p_145_in517_in,
      DOBDO(22) => p_139_in,
      DOBDO(21) => p_133_in483_in,
      DOBDO(20) => p_127_in467_in,
      DOBDO(19) => p_121_in,
      DOBDO(18) => p_115_in433_in,
      DOBDO(17) => p_109_in417_in,
      DOBDO(16) => p_103_in401_in,
      DOBDO(15) => p_97_in,
      DOBDO(14) => p_91_in365_in,
      DOBDO(13) => p_85_in344_in,
      DOBDO(12) => p_79_in323_in,
      DOBDO(11) => p_73_in,
      DOBDO(10) => p_67_in,
      DOBDO(9) => p_61_in,
      DOBDO(8) => p_55_in,
      DOBDO(7) => p_49_in,
      DOBDO(6) => p_43_in,
      DOBDO(5) => p_37_in197_in,
      DOBDO(4) => p_31_in,
      DOBDO(3) => p_25_in159_in,
      DOBDO(2) => p_19_in,
      DOBDO(1) => p_13_in,
      DOBDO(0) => p_6_in104_in,
      \MDIO_GEN.mdio_data_out_reg[10]\(10) => p_62_in,
      \MDIO_GEN.mdio_data_out_reg[10]\(9) => p_56_in,
      \MDIO_GEN.mdio_data_out_reg[10]\(8) => p_50_in238_in,
      \MDIO_GEN.mdio_data_out_reg[10]\(7) => p_44_in219_in,
      \MDIO_GEN.mdio_data_out_reg[10]\(6) => p_38_in202_in,
      \MDIO_GEN.mdio_data_out_reg[10]\(5) => p_32_in,
      \MDIO_GEN.mdio_data_out_reg[10]\(4) => p_26_in,
      \MDIO_GEN.mdio_data_out_reg[10]\(3) => p_20_in146_in,
      \MDIO_GEN.mdio_data_out_reg[10]\(2) => p_14_in128_in,
      \MDIO_GEN.mdio_data_out_reg[10]\(1) => p_8_in110_in,
      \MDIO_GEN.mdio_data_out_reg[10]\(0) => \MDIO_GEN.mdio_data_out_reg_n_0_[0]\,
      Q(3 downto 0) => rx_DPM_wr_data(3 downto 0),
      WEA(0) => wr_rd_n_a_i,
      WEBWE(0) => WEBWE(0),
      \gv.ram_valid_d1_reg\ => EMAC_I_n_39,
      p_21_in => p_21_in,
      p_27_in165_in => \^p_27_in165_in\,
      p_33_in184_in => \^p_33_in184_in\,
      p_39_in204_in => p_39_in204_in,
      p_45_in221_in => p_45_in221_in,
      p_51_in => p_51_in,
      p_57_in257_in => p_57_in257_in,
      p_63_in273_in => p_63_in273_in,
      p_68_in290_in => p_68_in290_in,
      p_69_in => p_69_in,
      p_74_in308_in => p_74_in308_in,
      p_75_in => p_75_in,
      p_80_in328_in => p_80_in328_in,
      p_81_in330_in => p_81_in330_in,
      p_86_in349_in => p_86_in349_in,
      p_87_in351_in => p_87_in351_in,
      p_92_in370_in => p_92_in370_in,
      p_93_in => p_93_in,
      reg_access_reg => \^reg_access\,
      \reg_data_out_reg[0]\ => \^axi4_lite_if_gen.ip2bus_data_sampled_reg[0]\,
      \reg_data_out_reg[1]\ => \^axi4_lite_if_gen.ip2bus_data_sampled_reg[1]\,
      \reg_data_out_reg[2]\ => \^axi4_lite_if_gen.ip2bus_data_sampled_reg[2]\,
      \rxbuffer_addr_reg[0]\(11 downto 0) => rx_DPM_adr(11 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
\RX_PONG_GEN.rx_pong_ping_l_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rx_done_d1,
      I1 => rx_pong_ping_l,
      O => \RX_PONG_GEN.rx_pong_ping_l_i_1_n_0\
    );
\RX_PONG_GEN.rx_pong_ping_l_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RX_PONG_GEN.rx_pong_ping_l_i_1_n_0\,
      Q => rx_pong_ping_l,
      R => \^ss\(0)
    );
\RX_PONG_REG_GEN.pong_rx_status_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => EMAC_I_n_47,
      Q => \^pong_rx_status\,
      R => \^ss\(0)
    );
TX_DONE_D1_I: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \TX/INST_TX_STATE_MACHINE/D3_in2_in\,
      Q => tx_done_d1,
      R => \^ss\(0)
    );
TX_DONE_D2_I: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_done_d1,
      Q => tx_done_d2,
      R => \^ss\(0)
    );
TX_PING: entity work.ntps_top_axi_ethernetlite_0_0_emac_dpram_2
     port map (
      ADDRARDADDR(11 downto 0) => tx_DPM_adr(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0) => p_4_out(3 downto 0),
      DOADO(3) => TX_PING_n_0,
      DOADO(2) => p_6_in686_in,
      DOADO(1) => p_4_in682_in,
      DOADO(0) => p_2_in678_in,
      DOBDO(31) => TX_PING_n_4,
      DOBDO(30) => p_187_in,
      DOBDO(29) => p_181_in,
      DOBDO(28) => p_175_in600_in,
      DOBDO(27) => p_169_in583_in,
      DOBDO(26) => p_163_in567_in,
      DOBDO(25) => p_157_in,
      DOBDO(24) => p_151_in533_in,
      DOBDO(23) => p_145_in517_in,
      DOBDO(22) => p_139_in,
      DOBDO(21) => p_133_in483_in,
      DOBDO(20) => p_127_in467_in,
      DOBDO(19) => p_121_in,
      DOBDO(18) => p_115_in433_in,
      DOBDO(17) => p_109_in417_in,
      DOBDO(16) => p_103_in401_in,
      DOBDO(15) => p_97_in,
      DOBDO(14) => p_91_in365_in,
      DOBDO(13) => p_85_in344_in,
      DOBDO(12) => p_79_in323_in,
      DOBDO(11) => p_73_in,
      DOBDO(10) => p_67_in,
      DOBDO(9) => p_61_in,
      DOBDO(8) => p_55_in,
      DOBDO(7) => p_49_in,
      DOBDO(6) => p_43_in,
      DOBDO(5) => p_37_in197_in,
      DOBDO(4) => p_31_in,
      DOBDO(3) => p_25_in159_in,
      DOBDO(2) => p_19_in,
      DOBDO(1) => p_13_in,
      DOBDO(0) => p_6_in104_in,
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => EMAC_I_n_31,
      \TX_PONG_GEN.tx_pong_ping_l_reg_0\ => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      WEBWE(0) => WEBWE(0),
      \rdDestAddrNib_D_t_q_reg[2]\(3 downto 0) => tx_DPM_rd_data(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tx_idle => tx_idle
    );
\TX_PONG_GEN.TX_PONG_I\: entity work.ntps_top_axi_ethernetlite_0_0_emac_dpram_3
     port map (
      ADDRARDADDR(11 downto 0) => tx_DPM_adr(11 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[10]\(8 downto 0) => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(8 downto 0),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_1\,
      DOBDO(31 downto 0) => p_1_out(31 downto 0),
      \TX_PONG_GEN.tx_pong_ping_l_reg\ => EMAC_I_n_32,
      WEBWE(0) => WEBWE(0),
      \emac_tx_wr_data_d1_reg[0]\(3 downto 0) => p_4_out(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
\TX_PONG_GEN.tx_pong_ping_l_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22028A88"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => tx_done_d1,
      I2 => \^p_17_in\(0),
      I3 => \^p_15_in\(0),
      I4 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      O => \TX_PONG_GEN.tx_pong_ping_l_i_1_n_0\
    );
\TX_PONG_GEN.tx_pong_ping_l_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \TX_PONG_GEN.tx_pong_ping_l_i_1_n_0\,
      Q => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      R => '0'
    );
\TX_PONG_REG_GEN.pong_mac_program_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8888"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => p_48_out,
      I2 => tx_done_d1,
      I3 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I4 => \^p_15_in\(1),
      O => \TX_PONG_REG_GEN.pong_mac_program_i_1_n_0\
    );
\TX_PONG_REG_GEN.pong_mac_program_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \TX_PONG_REG_GEN.pong_mac_program_i_1_n_0\,
      Q => \^p_15_in\(1),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(0),
      Q => \^tx_packet_length_reg[15]_0\(0),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(10),
      Q => \^tx_packet_length_reg[15]_0\(9),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(11),
      Q => \^tx_packet_length_reg[15]_0\(10),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(12),
      Q => \^tx_packet_length_reg[15]_0\(11),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(13),
      Q => \^tx_packet_length_reg[15]_0\(12),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(14),
      Q => \^tx_packet_length_reg[15]_0\(13),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(15),
      Q => \^tx_packet_length_reg[15]_0\(14),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(1),
      Q => \^tx_packet_length_reg[15]_0\(1),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(2),
      Q => \^tx_packet_length_reg[15]_0\(2),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(3),
      Q => pong_pkt_lenth(3),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(4),
      Q => \^tx_packet_length_reg[15]_0\(3),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(5),
      Q => \^tx_packet_length_reg[15]_0\(4),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(6),
      Q => \^tx_packet_length_reg[15]_0\(5),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(7),
      Q => \^tx_packet_length_reg[15]_0\(6),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(8),
      Q => \^tx_packet_length_reg[15]_0\(7),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_pkt_lenth_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0),
      D => s_axi_wdata(9),
      Q => \^tx_packet_length_reg[15]_0\(8),
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_soft_status_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \TX_PONG_REG_GEN.pong_soft_status_reg_0\,
      Q => pong_soft_status,
      R => \^ss\(0)
    );
\TX_PONG_REG_GEN.pong_tx_status_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8888"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_48_out,
      I2 => tx_done_d1,
      I3 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I4 => \^p_15_in\(0),
      O => \TX_PONG_REG_GEN.pong_tx_status_i_1_n_0\
    );
\TX_PONG_REG_GEN.pong_tx_status_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \TX_PONG_REG_GEN.pong_tx_status_i_1_n_0\,
      Q => \^p_15_in\(0),
      R => \^ss\(0)
    );
gie_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \AXI4_LITE_IF_GEN.write_in_prog_reg\,
      Q => \^gie_enable\,
      R => \^ss\(0)
    );
loopback_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => EMAC_I_n_45,
      Q => \^loopback_en_reg_0\,
      R => \^ss\(0)
    );
ping_mac_program_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BB8888"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => tx_intr_en0,
      I2 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I3 => tx_done_d1,
      I4 => \^p_17_in\(1),
      O => ping_mac_program_i_1_n_0
    );
ping_mac_program_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ping_mac_program_i_1_n_0,
      Q => \^p_17_in\(1),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(0),
      Q => \^tx_packet_length_reg[15]_1\(0),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(10),
      Q => \^tx_packet_length_reg[15]_1\(9),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(11),
      Q => \^tx_packet_length_reg[15]_1\(10),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(12),
      Q => \^tx_packet_length_reg[15]_1\(11),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(13),
      Q => \^tx_packet_length_reg[15]_1\(12),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(14),
      Q => \^tx_packet_length_reg[15]_1\(13),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(15),
      Q => \^tx_packet_length_reg[15]_1\(14),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(1),
      Q => \^tx_packet_length_reg[15]_1\(1),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(2),
      Q => \^tx_packet_length_reg[15]_1\(2),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(3),
      Q => ping_pkt_lenth(3),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(4),
      Q => \^tx_packet_length_reg[15]_1\(3),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(5),
      Q => \^tx_packet_length_reg[15]_1\(4),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(6),
      Q => \^tx_packet_length_reg[15]_1\(5),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(7),
      Q => \^tx_packet_length_reg[15]_1\(6),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(8),
      Q => \^tx_packet_length_reg[15]_1\(7),
      R => \^ss\(0)
    );
\ping_pkt_lenth_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0),
      D => s_axi_wdata(9),
      Q => \^tx_packet_length_reg[15]_1\(8),
      R => \^ss\(0)
    );
ping_rx_status_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => EMAC_I_n_46,
      Q => \^p_9_in\(0),
      R => \^ss\(0)
    );
ping_soft_status_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ping_soft_status_reg_0,
      Q => ping_soft_status,
      R => \^ss\(0)
    );
ping_tx_status_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BB8888"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => tx_intr_en0,
      I2 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I3 => tx_done_d1,
      I4 => \^p_17_in\(0),
      O => ping_tx_status_i_1_n_0
    );
ping_tx_status_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ping_tx_status_i_1_n_0,
      Q => \^p_17_in\(0),
      R => \^ss\(0)
    );
reg_access_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \AXI4_LITE_IF_GEN.read_in_prog_reg_1\,
      Q => \^reg_access\,
      R => \^ss\(0)
    );
\reg_data_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEE22E2"
    )
        port map (
      I0 => p_21_in,
      I1 => \AXI4_LITE_IF_GEN.read_in_prog_reg_0\,
      I2 => \^p_17_in\(2),
      I3 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[8]\,
      I4 => \reg_data_out[3]_i_3_n_0\,
      I5 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_3\,
      O => \reg_data_out[3]_i_1_n_0\
    );
\reg_data_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2020202F2F2F2F"
    )
        port map (
      I0 => data7(3),
      I1 => \AXI4_LITE_IF_GEN.read_in_prog_reg_2\,
      I2 => \AXI4_LITE_IF_GEN.read_in_prog_reg_3\,
      I3 => \AXI4_LITE_IF_GEN.read_in_prog_reg_4\,
      I4 => pong_pkt_lenth(3),
      I5 => \reg_data_out[3]_i_6_n_0\,
      O => \reg_data_out[3]_i_3_n_0\
    );
\reg_data_out[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C5F5"
    )
        port map (
      I0 => ping_pkt_lenth(3),
      I1 => \AXI4_LITE_IF_GEN.read_in_prog_reg_4\,
      I2 => \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\,
      I3 => \^p_9_in\(1),
      O => \reg_data_out[3]_i_6_n_0\
    );
\reg_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reg_data_out_reg[0]_0\,
      Q => \^axi4_lite_if_gen.ip2bus_data_sampled_reg[0]\,
      R => '0'
    );
\reg_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_0\,
      D => \ping_pkt_lenth_reg[10]_0\,
      Q => p_63_in273_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg\
    );
\reg_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_0\,
      D => \ping_pkt_lenth_reg[11]_0\,
      Q => p_69_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg\
    );
\reg_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_0\,
      D => \ping_pkt_lenth_reg[12]_0\,
      Q => p_75_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg\
    );
\reg_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_0\,
      D => \ping_pkt_lenth_reg[13]_0\,
      Q => p_81_in330_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg\
    );
\reg_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_0\,
      D => \ping_pkt_lenth_reg[14]_0\,
      Q => p_87_in351_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg\
    );
\reg_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_0\,
      D => \ping_pkt_lenth_reg[15]_0\,
      Q => p_93_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg\
    );
\reg_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reg_data_out_reg[1]_0\,
      Q => \^axi4_lite_if_gen.ip2bus_data_sampled_reg[1]\,
      R => '0'
    );
\reg_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reg_data_out_reg[2]_0\,
      Q => \^axi4_lite_if_gen.ip2bus_data_sampled_reg[2]\,
      R => '0'
    );
\reg_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reg_data_out_reg[31]_0\,
      Q => \^axi4_lite_if_gen.ip2bus_data_sampled_reg[31]\,
      R => '0'
    );
\reg_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reg_data_out[3]_i_1_n_0\,
      Q => p_21_in,
      R => '0'
    );
\reg_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reg_data_out_reg[4]_0\,
      Q => \^p_27_in165_in\,
      R => '0'
    );
\reg_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \reg_data_out_reg[5]_0\,
      Q => \^p_33_in184_in\,
      R => '0'
    );
\reg_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_0\,
      D => \ping_pkt_lenth_reg[6]_0\,
      Q => p_39_in204_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg\
    );
\reg_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_0\,
      D => \ping_pkt_lenth_reg[7]_0\,
      Q => p_45_in221_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg\
    );
\reg_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_0\,
      D => \ping_pkt_lenth_reg[8]_0\,
      Q => p_51_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg\
    );
\reg_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \AXI4_LITE_IF_GEN.read_in_prog_reg_0\,
      D => \ping_pkt_lenth_reg[9]_0\,
      Q => p_57_in257_in,
      R => \AXI4_LITE_IF_GEN.read_in_prog_reg\
    );
rx_intr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rx_intr_en_reg_0,
      Q => \^p_9_in\(1),
      R => \^ss\(0)
    );
\status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => EMAC_I_n_44,
      D => EMAC_I_n_38,
      Q => Q(0),
      R => '0'
    );
\status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => EMAC_I_n_44,
      D => EMAC_I_n_37,
      Q => Q(1),
      R => '0'
    );
\status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => EMAC_I_n_44,
      D => EMAC_I_n_36,
      Q => Q(2),
      R => '0'
    );
\status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => EMAC_I_n_44,
      D => EMAC_I_n_35,
      Q => data7(3),
      R => '0'
    );
\status_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => EMAC_I_n_44,
      D => EMAC_I_n_34,
      Q => Q(3),
      R => '0'
    );
\status_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => EMAC_I_n_44,
      D => EMAC_I_n_33,
      Q => Q(4),
      R => '0'
    );
tx_intr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_intr_en_reg_0,
      Q => \^p_17_in\(2),
      R => \^ss\(0)
    );
\tx_packet_length[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(0),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(0),
      O => \tx_packet_length[0]_i_1_n_0\
    );
\tx_packet_length[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(9),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(9),
      O => \tx_packet_length[10]_i_1_n_0\
    );
\tx_packet_length[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(10),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(10),
      O => \tx_packet_length[11]_i_1_n_0\
    );
\tx_packet_length[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(11),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(11),
      O => \tx_packet_length[12]_i_1_n_0\
    );
\tx_packet_length[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(12),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(12),
      O => \tx_packet_length[13]_i_1_n_0\
    );
\tx_packet_length[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(13),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(13),
      O => \tx_packet_length[14]_i_1_n_0\
    );
\tx_packet_length[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(14),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(14),
      O => \tx_packet_length[15]_i_1_n_0\
    );
\tx_packet_length[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(1),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(1),
      O => \tx_packet_length[1]_i_1_n_0\
    );
\tx_packet_length[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(2),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(2),
      O => \tx_packet_length[2]_i_1_n_0\
    );
\tx_packet_length[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pong_pkt_lenth(3),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => ping_pkt_lenth(3),
      O => \tx_packet_length[3]_i_1_n_0\
    );
\tx_packet_length[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(3),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(3),
      O => \tx_packet_length[4]_i_1_n_0\
    );
\tx_packet_length[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(4),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(4),
      O => \tx_packet_length[5]_i_1_n_0\
    );
\tx_packet_length[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(5),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(5),
      O => \tx_packet_length[6]_i_1_n_0\
    );
\tx_packet_length[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(6),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(6),
      O => \tx_packet_length[7]_i_1_n_0\
    );
\tx_packet_length[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(7),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(7),
      O => \tx_packet_length[8]_i_1_n_0\
    );
\tx_packet_length[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tx_packet_length_reg[15]_0\(8),
      I1 => \TX_PONG_GEN.tx_pong_ping_l_reg_n_0\,
      I2 => \^tx_packet_length_reg[15]_1\(8),
      O => \tx_packet_length[9]_i_1_n_0\
    );
\tx_packet_length_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[0]_i_1_n_0\,
      Q => tx_packet_length(0),
      R => \^ss\(0)
    );
\tx_packet_length_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[10]_i_1_n_0\,
      Q => tx_packet_length(10),
      R => \^ss\(0)
    );
\tx_packet_length_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[11]_i_1_n_0\,
      Q => tx_packet_length(11),
      R => \^ss\(0)
    );
\tx_packet_length_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[12]_i_1_n_0\,
      Q => tx_packet_length(12),
      R => \^ss\(0)
    );
\tx_packet_length_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[13]_i_1_n_0\,
      Q => tx_packet_length(13),
      R => \^ss\(0)
    );
\tx_packet_length_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[14]_i_1_n_0\,
      Q => tx_packet_length(14),
      R => \^ss\(0)
    );
\tx_packet_length_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[15]_i_1_n_0\,
      Q => tx_packet_length(15),
      R => \^ss\(0)
    );
\tx_packet_length_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[1]_i_1_n_0\,
      Q => tx_packet_length(1),
      R => \^ss\(0)
    );
\tx_packet_length_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[2]_i_1_n_0\,
      Q => tx_packet_length(2),
      R => \^ss\(0)
    );
\tx_packet_length_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[3]_i_1_n_0\,
      Q => tx_packet_length(3),
      R => \^ss\(0)
    );
\tx_packet_length_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[4]_i_1_n_0\,
      Q => tx_packet_length(4),
      R => \^ss\(0)
    );
\tx_packet_length_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[5]_i_1_n_0\,
      Q => tx_packet_length(5),
      R => \^ss\(0)
    );
\tx_packet_length_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[6]_i_1_n_0\,
      Q => tx_packet_length(6),
      R => \^ss\(0)
    );
\tx_packet_length_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[7]_i_1_n_0\,
      Q => tx_packet_length(7),
      R => \^ss\(0)
    );
\tx_packet_length_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[8]_i_1_n_0\,
      Q => tx_packet_length(8),
      R => \^ss\(0)
    );
\tx_packet_length_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tx_packet_length[9]_i_1_n_0\,
      Q => tx_packet_length(9),
      R => \^ss\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0_axi_ethernetlite is
  port (
    ip2intc_irpt : out STD_LOGIC;
    phy_mdc : out STD_LOGIC;
    phy_tx_data : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_tx_en : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    phy_mdio_t : out STD_LOGIC;
    phy_mdio_o : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    phy_crs : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    phy_mdio_i : in STD_LOGIC;
    phy_rx_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_dv : in STD_LOGIC;
    phy_rx_er : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_axi_ethernetlite_0_0_axi_ethernetlite : entity is "axi_ethernetlite";
end ntps_top_axi_ethernetlite_0_0_axi_ethernetlite;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0_axi_ethernetlite is
  signal CDC_PHY_TX_DATA_OUT_n_0 : STD_LOGIC;
  signal CDC_PHY_TX_DATA_OUT_n_1 : STD_LOGIC;
  signal CDC_PHY_TX_DATA_OUT_n_2 : STD_LOGIC;
  signal CDC_PHY_TX_DATA_OUT_n_3 : STD_LOGIC;
  signal D : STD_LOGIC;
  signal \IOFFS_GEN2.DVD_FF_n_0\ : STD_LOGIC;
  signal \IOFFS_GEN2.RER_FF_n_0\ : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_14 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_15 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_16 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_17 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_18 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_19 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_20 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_21 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_22 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_23 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_24 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_25 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_26 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_27 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_28 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_29 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_30 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_31 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_32 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_33 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_34 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_35 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_36 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_37 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_38 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_39 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_40 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_41 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_42 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_43 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_44 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_46 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_47 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_48 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_49 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_50 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_51 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_52 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_53 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_54 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_55 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_57 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_64 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_66 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_67 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_68 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_69 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_70 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_71 : STD_LOGIC;
  signal I_AXI_NATIVE_IPIF_n_72 : STD_LOGIC;
  signal Q1_out : STD_LOGIC;
  signal Q3_out : STD_LOGIC;
  signal Q5_out : STD_LOGIC;
  signal Q7_out : STD_LOGIC;
  signal R : STD_LOGIC;
  signal R0_in : STD_LOGIC;
  signal XEMAC_I_n_10 : STD_LOGIC;
  signal XEMAC_I_n_11 : STD_LOGIC;
  signal XEMAC_I_n_12 : STD_LOGIC;
  signal XEMAC_I_n_13 : STD_LOGIC;
  signal XEMAC_I_n_23 : STD_LOGIC;
  signal XEMAC_I_n_3 : STD_LOGIC;
  signal XEMAC_I_n_31 : STD_LOGIC;
  signal XEMAC_I_n_32 : STD_LOGIC;
  signal XEMAC_I_n_33 : STD_LOGIC;
  signal XEMAC_I_n_34 : STD_LOGIC;
  signal XEMAC_I_n_35 : STD_LOGIC;
  signal XEMAC_I_n_36 : STD_LOGIC;
  signal XEMAC_I_n_37 : STD_LOGIC;
  signal XEMAC_I_n_38 : STD_LOGIC;
  signal XEMAC_I_n_39 : STD_LOGIC;
  signal XEMAC_I_n_40 : STD_LOGIC;
  signal XEMAC_I_n_41 : STD_LOGIC;
  signal XEMAC_I_n_42 : STD_LOGIC;
  signal XEMAC_I_n_43 : STD_LOGIC;
  signal XEMAC_I_n_44 : STD_LOGIC;
  signal XEMAC_I_n_45 : STD_LOGIC;
  signal XEMAC_I_n_6 : STD_LOGIC;
  signal XEMAC_I_n_7 : STD_LOGIC;
  signal XEMAC_I_n_8 : STD_LOGIC;
  signal XEMAC_I_n_9 : STD_LOGIC;
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal bus_rst : STD_LOGIC;
  signal data7 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal gie_enable : STD_LOGIC;
  signal ip2bus_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mdio_en_i : STD_LOGIC;
  signal mdio_wr_data_reg : STD_LOGIC_VECTOR ( 15 downto 11 );
  signal p_15_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_17_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_17_out : STD_LOGIC;
  signal p_19_out : STD_LOGIC;
  signal p_21_out : STD_LOGIC;
  signal p_27_in165_in : STD_LOGIC;
  signal p_33_in184_in : STD_LOGIC;
  signal p_40_out : STD_LOGIC;
  signal p_48_out : STD_LOGIC;
  signal p_9_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal phy_tx_data_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal phy_tx_en_i : STD_LOGIC;
  signal ping_pkt_lenth : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ping_pkt_lenth0 : STD_LOGIC;
  signal ping_soft_status : STD_LOGIC;
  signal pong_pkt_lenth : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pong_rx_status : STD_LOGIC;
  signal pong_soft_status : STD_LOGIC;
  signal reg_access : STD_LOGIC;
  signal rx_intr_en0 : STD_LOGIC;
  signal tx_intr_en0 : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \IOFFS_GEN2.DVD_FF\ : label is "PRIMITIVE";
  attribute box_type of \IOFFS_GEN2.RER_FF\ : label is "PRIMITIVE";
  attribute box_type of \IOFFS_GEN2.TEN_FF\ : label is "PRIMITIVE";
  attribute box_type of \IOFFS_GEN[0].RX_FF_I\ : label is "PRIMITIVE";
  attribute box_type of \IOFFS_GEN[0].TX_FF_I\ : label is "PRIMITIVE";
  attribute box_type of \IOFFS_GEN[1].RX_FF_I\ : label is "PRIMITIVE";
  attribute box_type of \IOFFS_GEN[1].TX_FF_I\ : label is "PRIMITIVE";
  attribute box_type of \IOFFS_GEN[2].RX_FF_I\ : label is "PRIMITIVE";
  attribute box_type of \IOFFS_GEN[2].TX_FF_I\ : label is "PRIMITIVE";
  attribute box_type of \IOFFS_GEN[3].RX_FF_I\ : label is "PRIMITIVE";
  attribute box_type of \IOFFS_GEN[3].TX_FF_I\ : label is "PRIMITIVE";
begin
BUS_RST_RX_SYNC_CORE_I: entity work.ntps_top_axi_ethernetlite_0_0_cdc_sync
     port map (
      SS(0) => bus_rst,
      phy_rx_clk => phy_rx_clk,
      scndry_out => R0_in
    );
BUS_RST_TX_SYNC_CORE_I: entity work.ntps_top_axi_ethernetlite_0_0_cdc_sync_0
     port map (
      SS(0) => bus_rst,
      phy_tx_clk => phy_tx_clk,
      scndry_out => R
    );
CDC_PHY_TX_DATA_OUT: entity work.\ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized1\
     port map (
      phy_tx_clk => phy_tx_clk,
      prmry_vect_in(3 downto 0) => phy_tx_data_i(3 downto 0),
      scndry_vect_out(3) => CDC_PHY_TX_DATA_OUT_n_0,
      scndry_vect_out(2) => CDC_PHY_TX_DATA_OUT_n_1,
      scndry_vect_out(1) => CDC_PHY_TX_DATA_OUT_n_2,
      scndry_vect_out(0) => CDC_PHY_TX_DATA_OUT_n_3
    );
CDC_PHY_TX_EN_O: entity work.\ntps_top_axi_ethernetlite_0_0_cdc_sync__parameterized0\
     port map (
      phy_tx_clk => phy_tx_clk,
      prmry_in => phy_tx_en_i,
      scndry_out => D
    );
\IOFFS_GEN2.DVD_FF\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => phy_dv,
      Q => \IOFFS_GEN2.DVD_FF_n_0\,
      R => R0_in
    );
\IOFFS_GEN2.RER_FF\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => phy_rx_er,
      Q => \IOFFS_GEN2.RER_FF_n_0\,
      R => R0_in
    );
\IOFFS_GEN2.TEN_FF\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => D,
      Q => phy_tx_en,
      R => R
    );
\IOFFS_GEN[0].RX_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => phy_rx_data(0),
      Q => Q1_out,
      R => R0_in
    );
\IOFFS_GEN[0].TX_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => CDC_PHY_TX_DATA_OUT_n_3,
      Q => phy_tx_data(0),
      R => R
    );
\IOFFS_GEN[1].RX_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => phy_rx_data(1),
      Q => Q3_out,
      R => R0_in
    );
\IOFFS_GEN[1].TX_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => CDC_PHY_TX_DATA_OUT_n_2,
      Q => phy_tx_data(1),
      R => R
    );
\IOFFS_GEN[2].RX_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => phy_rx_data(2),
      Q => Q5_out,
      R => R0_in
    );
\IOFFS_GEN[2].TX_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => CDC_PHY_TX_DATA_OUT_n_1,
      Q => phy_tx_data(2),
      R => R
    );
\IOFFS_GEN[3].RX_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => phy_rx_clk,
      CE => '1',
      D => phy_rx_data(3),
      Q => Q7_out,
      R => R0_in
    );
\IOFFS_GEN[3].TX_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => phy_tx_clk,
      CE => '1',
      D => CDC_PHY_TX_DATA_OUT_n_0,
      Q => phy_tx_data(3),
      R => R
    );
I_AXI_NATIVE_IPIF: entity work.ntps_top_axi_ethernetlite_0_0_axi_interface
     port map (
      D(31) => ip2bus_data(31),
      D(30) => XEMAC_I_n_31,
      D(29) => XEMAC_I_n_32,
      D(28) => XEMAC_I_n_33,
      D(27) => XEMAC_I_n_34,
      D(26) => XEMAC_I_n_35,
      D(25) => XEMAC_I_n_36,
      D(24) => XEMAC_I_n_37,
      D(23) => XEMAC_I_n_38,
      D(22) => XEMAC_I_n_39,
      D(21) => XEMAC_I_n_40,
      D(20) => XEMAC_I_n_41,
      D(19) => XEMAC_I_n_42,
      D(18) => XEMAC_I_n_43,
      D(17) => XEMAC_I_n_44,
      D(16) => XEMAC_I_n_45,
      D(15 downto 0) => ip2bus_data(15 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(10 downto 0) => bus2ip_addr(12 downto 2),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => I_AXI_NATIVE_IPIF_n_16,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ => I_AXI_NATIVE_IPIF_n_17,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\ => I_AXI_NATIVE_IPIF_n_18,
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\ => I_AXI_NATIVE_IPIF_n_19,
      E(0) => I_AXI_NATIVE_IPIF_n_29,
      \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]\ => XEMAC_I_n_9,
      \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]\ => XEMAC_I_n_10,
      \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]\ => XEMAC_I_n_11,
      \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]\ => XEMAC_I_n_12,
      \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]\ => XEMAC_I_n_13,
      \MDIO_GEN.mdio_data_out_reg[11]\ => I_AXI_NATIVE_IPIF_n_21,
      \MDIO_GEN.mdio_data_out_reg[11]_0\ => I_AXI_NATIVE_IPIF_n_22,
      \MDIO_GEN.mdio_data_out_reg[11]_1\ => I_AXI_NATIVE_IPIF_n_23,
      \MDIO_GEN.mdio_data_out_reg[11]_2\ => I_AXI_NATIVE_IPIF_n_30,
      \MDIO_GEN.mdio_data_out_reg[11]_3\ => I_AXI_NATIVE_IPIF_n_34,
      \MDIO_GEN.mdio_data_out_reg[11]_4\ => I_AXI_NATIVE_IPIF_n_35,
      \MDIO_GEN.mdio_data_out_reg[12]\ => I_AXI_NATIVE_IPIF_n_24,
      \MDIO_GEN.mdio_data_out_reg[13]\ => I_AXI_NATIVE_IPIF_n_25,
      \MDIO_GEN.mdio_data_out_reg[14]\ => I_AXI_NATIVE_IPIF_n_26,
      \MDIO_GEN.mdio_data_out_reg[15]\ => I_AXI_NATIVE_IPIF_n_27,
      \MDIO_GEN.mdio_data_out_reg[3]\ => I_AXI_NATIVE_IPIF_n_28,
      \MDIO_GEN.mdio_en_i_reg\ => I_AXI_NATIVE_IPIF_n_67,
      \MDIO_GEN.mdio_reg_addr_reg[4]\(0) => p_19_out,
      \MDIO_GEN.mdio_wr_data_reg_reg[15]\(0) => p_17_out,
      \MDIO_GEN.mdio_wr_data_reg_reg[15]_0\(4 downto 0) => mdio_wr_data_reg(15 downto 11),
      Q(4 downto 3) => data7(5 downto 4),
      Q(2 downto 0) => data7(2 downto 0),
      \RX_PONG_REG_GEN.pong_rx_status_reg\ => I_AXI_NATIVE_IPIF_n_57,
      \RX_PONG_REG_GEN.pong_rx_status_reg_0\ => I_AXI_NATIVE_IPIF_n_64,
      SS(0) => bus_rst,
      \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]\(0) => p_40_out,
      \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(14 downto 3) => pong_pkt_lenth(15 downto 4),
      \TX_PONG_REG_GEN.pong_pkt_lenth_reg[15]_0\(2 downto 0) => pong_pkt_lenth(2 downto 0),
      \TX_PONG_REG_GEN.pong_soft_status_reg\ => I_AXI_NATIVE_IPIF_n_69,
      WEBWE(0) => I_AXI_NATIVE_IPIF_n_20,
      gie_enable => gie_enable,
      gie_enable_reg => I_AXI_NATIVE_IPIF_n_68,
      loopback_en_reg => XEMAC_I_n_23,
      mdio_en_i => mdio_en_i,
      p_15_in(1 downto 0) => p_15_in(1 downto 0),
      p_17_in(2) => p_17_in(3),
      p_17_in(1 downto 0) => p_17_in(1 downto 0),
      p_21_out => p_21_out,
      p_27_in165_in => p_27_in165_in,
      p_33_in184_in => p_33_in184_in,
      p_48_out => p_48_out,
      p_9_in(1) => p_9_in(3),
      p_9_in(0) => p_9_in(0),
      \ping_pkt_lenth_reg[15]\(0) => ping_pkt_lenth0,
      \ping_pkt_lenth_reg[15]_0\(14 downto 3) => ping_pkt_lenth(15 downto 4),
      \ping_pkt_lenth_reg[15]_0\(2 downto 0) => ping_pkt_lenth(2 downto 0),
      ping_soft_status => ping_soft_status,
      ping_soft_status_reg => I_AXI_NATIVE_IPIF_n_70,
      pong_rx_status => pong_rx_status,
      pong_soft_status => pong_soft_status,
      reg_access => reg_access,
      reg_access_reg => I_AXI_NATIVE_IPIF_n_66,
      \reg_data_out_reg[0]\ => I_AXI_NATIVE_IPIF_n_37,
      \reg_data_out_reg[0]_0\ => I_AXI_NATIVE_IPIF_n_40,
      \reg_data_out_reg[0]_1\ => XEMAC_I_n_8,
      \reg_data_out_reg[10]\ => I_AXI_NATIVE_IPIF_n_51,
      \reg_data_out_reg[11]\ => I_AXI_NATIVE_IPIF_n_50,
      \reg_data_out_reg[12]\ => I_AXI_NATIVE_IPIF_n_49,
      \reg_data_out_reg[13]\ => I_AXI_NATIVE_IPIF_n_48,
      \reg_data_out_reg[14]\ => I_AXI_NATIVE_IPIF_n_47,
      \reg_data_out_reg[15]\ => I_AXI_NATIVE_IPIF_n_15,
      \reg_data_out_reg[15]_0\ => I_AXI_NATIVE_IPIF_n_32,
      \reg_data_out_reg[15]_1\ => I_AXI_NATIVE_IPIF_n_44,
      \reg_data_out_reg[15]_2\ => I_AXI_NATIVE_IPIF_n_46,
      \reg_data_out_reg[1]\ => I_AXI_NATIVE_IPIF_n_31,
      \reg_data_out_reg[1]_0\ => I_AXI_NATIVE_IPIF_n_41,
      \reg_data_out_reg[1]_1\ => XEMAC_I_n_7,
      \reg_data_out_reg[2]\ => I_AXI_NATIVE_IPIF_n_39,
      \reg_data_out_reg[2]_0\ => XEMAC_I_n_6,
      \reg_data_out_reg[31]\ => I_AXI_NATIVE_IPIF_n_36,
      \reg_data_out_reg[31]_0\ => XEMAC_I_n_3,
      \reg_data_out_reg[3]\ => I_AXI_NATIVE_IPIF_n_14,
      \reg_data_out_reg[3]_0\ => I_AXI_NATIVE_IPIF_n_42,
      \reg_data_out_reg[4]\ => I_AXI_NATIVE_IPIF_n_33,
      \reg_data_out_reg[5]\ => I_AXI_NATIVE_IPIF_n_38,
      \reg_data_out_reg[6]\ => I_AXI_NATIVE_IPIF_n_43,
      \reg_data_out_reg[6]_0\ => I_AXI_NATIVE_IPIF_n_55,
      \reg_data_out_reg[7]\ => I_AXI_NATIVE_IPIF_n_54,
      \reg_data_out_reg[8]\ => I_AXI_NATIVE_IPIF_n_53,
      \reg_data_out_reg[9]\ => I_AXI_NATIVE_IPIF_n_52,
      rx_intr_en0 => rx_intr_en0,
      rx_intr_en_reg => I_AXI_NATIVE_IPIF_n_72,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(10 downto 0) => s_axi_araddr(10 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(10 downto 0) => s_axi_awaddr(10 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(1) => s_axi_wdata(31),
      s_axi_wdata(0) => s_axi_wdata(3),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      tx_intr_en0 => tx_intr_en0,
      tx_intr_en_reg => I_AXI_NATIVE_IPIF_n_71
    );
XEMAC_I: entity work.ntps_top_axi_ethernetlite_0_0_xemac
     port map (
      \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[0]\ => XEMAC_I_n_8,
      \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[1]\ => XEMAC_I_n_7,
      \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[2]\ => XEMAC_I_n_6,
      \AXI4_LITE_IF_GEN.IP2Bus_Data_sampled_reg[31]\ => XEMAC_I_n_3,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[11]\ => I_AXI_NATIVE_IPIF_n_19,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]\ => I_AXI_NATIVE_IPIF_n_16,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_0\(10 downto 0) => bus2ip_addr(12 downto 2),
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_1\ => I_AXI_NATIVE_IPIF_n_18,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_2\ => I_AXI_NATIVE_IPIF_n_17,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[12]_3\ => I_AXI_NATIVE_IPIF_n_42,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]\ => I_AXI_NATIVE_IPIF_n_15,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_0\ => I_AXI_NATIVE_IPIF_n_22,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_1\ => I_AXI_NATIVE_IPIF_n_23,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[2]_2\ => I_AXI_NATIVE_IPIF_n_64,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[3]\ => I_AXI_NATIVE_IPIF_n_30,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]\ => I_AXI_NATIVE_IPIF_n_28,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[4]_0\(0) => p_17_out,
      \AXI4_LITE_IF_GEN.bus2ip_addr_i_reg[8]\ => I_AXI_NATIVE_IPIF_n_14,
      \AXI4_LITE_IF_GEN.read_in_prog_reg\ => I_AXI_NATIVE_IPIF_n_43,
      \AXI4_LITE_IF_GEN.read_in_prog_reg_0\ => I_AXI_NATIVE_IPIF_n_32,
      \AXI4_LITE_IF_GEN.read_in_prog_reg_1\ => I_AXI_NATIVE_IPIF_n_66,
      \AXI4_LITE_IF_GEN.read_in_prog_reg_2\ => I_AXI_NATIVE_IPIF_n_41,
      \AXI4_LITE_IF_GEN.read_in_prog_reg_3\ => I_AXI_NATIVE_IPIF_n_40,
      \AXI4_LITE_IF_GEN.read_in_prog_reg_4\ => I_AXI_NATIVE_IPIF_n_44,
      \AXI4_LITE_IF_GEN.read_in_prog_reg_5\ => I_AXI_NATIVE_IPIF_n_35,
      \AXI4_LITE_IF_GEN.read_in_prog_reg_6\(0) => I_AXI_NATIVE_IPIF_n_29,
      \AXI4_LITE_IF_GEN.read_in_prog_reg_7\ => I_AXI_NATIVE_IPIF_n_34,
      \AXI4_LITE_IF_GEN.write_in_prog_reg\ => I_AXI_NATIVE_IPIF_n_68,
      \AXI4_LITE_IF_GEN.write_in_prog_reg_0\ => I_AXI_NATIVE_IPIF_n_57,
      \AXI4_LITE_IF_GEN.write_in_prog_reg_1\(0) => ping_pkt_lenth0,
      \AXI4_LITE_IF_GEN.write_in_prog_reg_2\(0) => p_40_out,
      D(31) => ip2bus_data(31),
      D(30) => XEMAC_I_n_31,
      D(29) => XEMAC_I_n_32,
      D(28) => XEMAC_I_n_33,
      D(27) => XEMAC_I_n_34,
      D(26) => XEMAC_I_n_35,
      D(25) => XEMAC_I_n_36,
      D(24) => XEMAC_I_n_37,
      D(23) => XEMAC_I_n_38,
      D(22) => XEMAC_I_n_39,
      D(21) => XEMAC_I_n_40,
      D(20) => XEMAC_I_n_41,
      D(19) => XEMAC_I_n_42,
      D(18) => XEMAC_I_n_43,
      D(17) => XEMAC_I_n_44,
      D(16) => XEMAC_I_n_45,
      D(15 downto 0) => ip2bus_data(15 downto 0),
      DIA(1) => \IOFFS_GEN2.DVD_FF_n_0\,
      DIA(0) => \IOFFS_GEN2.RER_FF_n_0\,
      DIB(1) => Q3_out,
      DIB(0) => Q1_out,
      DIC(1) => Q7_out,
      DIC(0) => Q5_out,
      E(0) => p_19_out,
      \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]\ => XEMAC_I_n_9,
      \MDIO_CAPTURE_DATA[11].MDIO_RD_DATA_reg[11]_0\ => I_AXI_NATIVE_IPIF_n_21,
      \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]\ => XEMAC_I_n_10,
      \MDIO_CAPTURE_DATA[12].MDIO_RD_DATA_reg[12]_0\ => I_AXI_NATIVE_IPIF_n_24,
      \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]\ => XEMAC_I_n_11,
      \MDIO_CAPTURE_DATA[13].MDIO_RD_DATA_reg[13]_0\ => I_AXI_NATIVE_IPIF_n_25,
      \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]\ => XEMAC_I_n_12,
      \MDIO_CAPTURE_DATA[14].MDIO_RD_DATA_reg[14]_0\ => I_AXI_NATIVE_IPIF_n_26,
      \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]\ => XEMAC_I_n_13,
      \MDIO_CAPTURE_DATA[15].MDIO_RD_DATA_reg[15]_0\ => I_AXI_NATIVE_IPIF_n_27,
      \MDIO_GEN.mdio_data_out_reg[15]_0\(4 downto 0) => mdio_wr_data_reg(15 downto 11),
      \MDIO_GEN.mdio_en_i_reg_0\ => I_AXI_NATIVE_IPIF_n_67,
      Q(4 downto 3) => data7(5 downto 4),
      Q(2 downto 0) => data7(2 downto 0),
      SS(0) => bus_rst,
      \TX_PONG_REG_GEN.pong_soft_status_reg_0\ => I_AXI_NATIVE_IPIF_n_69,
      WEBWE(0) => I_AXI_NATIVE_IPIF_n_20,
      gie_enable => gie_enable,
      ip2intc_irpt => ip2intc_irpt,
      loopback_en_reg_0 => XEMAC_I_n_23,
      mdio_en_i => mdio_en_i,
      p_15_in(1 downto 0) => p_15_in(1 downto 0),
      p_17_in(2) => p_17_in(3),
      p_17_in(1 downto 0) => p_17_in(1 downto 0),
      p_21_out => p_21_out,
      p_27_in165_in => p_27_in165_in,
      p_33_in184_in => p_33_in184_in,
      p_48_out => p_48_out,
      p_9_in(1) => p_9_in(3),
      p_9_in(0) => p_9_in(0),
      phy_crs => phy_crs,
      phy_mdc => phy_mdc,
      phy_mdio_i => phy_mdio_i,
      phy_mdio_o => phy_mdio_o,
      phy_mdio_t => phy_mdio_t,
      phy_rx_clk => phy_rx_clk,
      phy_tx_clk => phy_tx_clk,
      phy_tx_en_i => phy_tx_en_i,
      \ping_pkt_lenth_reg[10]_0\ => I_AXI_NATIVE_IPIF_n_51,
      \ping_pkt_lenth_reg[11]_0\ => I_AXI_NATIVE_IPIF_n_50,
      \ping_pkt_lenth_reg[12]_0\ => I_AXI_NATIVE_IPIF_n_49,
      \ping_pkt_lenth_reg[13]_0\ => I_AXI_NATIVE_IPIF_n_48,
      \ping_pkt_lenth_reg[14]_0\ => I_AXI_NATIVE_IPIF_n_47,
      \ping_pkt_lenth_reg[15]_0\ => I_AXI_NATIVE_IPIF_n_46,
      \ping_pkt_lenth_reg[6]_0\ => I_AXI_NATIVE_IPIF_n_55,
      \ping_pkt_lenth_reg[7]_0\ => I_AXI_NATIVE_IPIF_n_54,
      \ping_pkt_lenth_reg[8]_0\ => I_AXI_NATIVE_IPIF_n_53,
      \ping_pkt_lenth_reg[9]_0\ => I_AXI_NATIVE_IPIF_n_52,
      ping_soft_status => ping_soft_status,
      ping_soft_status_reg_0 => I_AXI_NATIVE_IPIF_n_70,
      pong_rx_status => pong_rx_status,
      pong_soft_status => pong_soft_status,
      prmry_vect_in(3 downto 0) => phy_tx_data_i(3 downto 0),
      reg_access => reg_access,
      \reg_data_out_reg[0]_0\ => I_AXI_NATIVE_IPIF_n_37,
      \reg_data_out_reg[1]_0\ => I_AXI_NATIVE_IPIF_n_31,
      \reg_data_out_reg[2]_0\ => I_AXI_NATIVE_IPIF_n_39,
      \reg_data_out_reg[31]_0\ => I_AXI_NATIVE_IPIF_n_36,
      \reg_data_out_reg[4]_0\ => I_AXI_NATIVE_IPIF_n_33,
      \reg_data_out_reg[5]_0\ => I_AXI_NATIVE_IPIF_n_38,
      rx_intr_en0 => rx_intr_en0,
      rx_intr_en_reg_0 => I_AXI_NATIVE_IPIF_n_72,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tx_intr_en0 => tx_intr_en0,
      tx_intr_en_reg_0 => I_AXI_NATIVE_IPIF_n_71,
      \tx_packet_length_reg[15]_0\(14 downto 3) => pong_pkt_lenth(15 downto 4),
      \tx_packet_length_reg[15]_0\(2 downto 0) => pong_pkt_lenth(2 downto 0),
      \tx_packet_length_reg[15]_1\(14 downto 3) => ping_pkt_lenth(15 downto 4),
      \tx_packet_length_reg[15]_1\(2 downto 0) => ping_pkt_lenth(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_axi_ethernetlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    phy_tx_clk : in STD_LOGIC;
    phy_rx_clk : in STD_LOGIC;
    phy_crs : in STD_LOGIC;
    phy_dv : in STD_LOGIC;
    phy_rx_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_col : in STD_LOGIC;
    phy_rx_er : in STD_LOGIC;
    phy_rst_n : out STD_LOGIC;
    phy_tx_en : out STD_LOGIC;
    phy_tx_data : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_mdio_i : in STD_LOGIC;
    phy_mdio_o : out STD_LOGIC;
    phy_mdio_t : out STD_LOGIC;
    phy_mdc : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ntps_top_axi_ethernetlite_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ntps_top_axi_ethernetlite_0_0 : entity is "ntps_top_axi_ethernetlite_0_0,axi_ethernetlite,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of ntps_top_axi_ethernetlite_0_0 : entity is "ntps_top_axi_ethernetlite_0_0,axi_ethernetlite,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_ethernetlite,x_ipVersion=3.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=virtex7,C_INSTANCE=axi_ethernetlite_inst,C_S_AXI_ACLK_PERIOD_PS=8000,C_S_AXI_ADDR_WIDTH=13,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ID_WIDTH=1,C_S_AXI_PROTOCOL=AXI4LITE,C_INCLUDE_MDIO=1,C_INCLUDE_INTERNAL_LOOPBACK=0,C_INCLUDE_GLOBAL_BUFFERS=0,C_DUPLEX=1,C_TX_PING_PONG=1,C_RX_PING_PONG=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ntps_top_axi_ethernetlite_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ntps_top_axi_ethernetlite_0_0 : entity is "axi_ethernetlite,Vivado 2015.2";
end ntps_top_axi_ethernetlite_0_0;

architecture STRUCTURE of ntps_top_axi_ethernetlite_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_aresetn\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
begin
  \^s_axi_aresetn\ <= s_axi_aresetn;
  phy_rst_n <= \^s_axi_aresetn\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.ntps_top_axi_ethernetlite_0_0_axi_ethernetlite
     port map (
      ip2intc_irpt => ip2intc_irpt,
      phy_crs => phy_crs,
      phy_dv => phy_dv,
      phy_mdc => phy_mdc,
      phy_mdio_i => phy_mdio_i,
      phy_mdio_o => phy_mdio_o,
      phy_mdio_t => phy_mdio_t,
      phy_rx_clk => phy_rx_clk,
      phy_rx_data(3 downto 0) => phy_rx_data(3 downto 0),
      phy_rx_er => phy_rx_er,
      phy_tx_clk => phy_tx_clk,
      phy_tx_data(3 downto 0) => phy_tx_data(3 downto 0),
      phy_tx_en => phy_tx_en,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(10 downto 0) => s_axi_araddr(12 downto 2),
      s_axi_aresetn => \^s_axi_aresetn\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(10 downto 0) => s_axi_awaddr(12 downto 2),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
