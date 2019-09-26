-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Thu Sep 26 15:32:13 2019
-- Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/wingel/work/FPGA_NTP_INTERNAL/FPGA_NTP_SERVER/FPGA/ip/ntps_top_axi_pcie3_0_0/ntps_top_axi_pcie3_0_0_stub.vhdl
-- Design      : ntps_top_axi_pcie3_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ntps_top_axi_pcie3_0_0 is
  Port ( 
    sys_rst_n : in STD_LOGIC;
    user_link_up : out STD_LOGIC;
    axi_ctl_aclk : in STD_LOGIC;
    intx_msi_request : in STD_LOGIC;
    msi_vector_num : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awready : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    pci_exp_rxp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pci_exp_rxn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    refclk : in STD_LOGIC;
    s_axi_ctl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_awvalid : in STD_LOGIC;
    s_axi_ctl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctl_wvalid : in STD_LOGIC;
    s_axi_ctl_bready : in STD_LOGIC;
    s_axi_ctl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_arvalid : in STD_LOGIC;
    s_axi_ctl_rready : in STD_LOGIC;
    axi_aclk : out STD_LOGIC;
    axi_aresetn : out STD_LOGIC;
    interrupt_out : out STD_LOGIC;
    intx_msi_grant : out STD_LOGIC;
    msi_enable : out STD_LOGIC;
    msi_vector_width : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awlock : out STD_LOGIC;
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wuser : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arlock : out STD_LOGIC;
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    pci_exp_txp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pci_exp_txn : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctl_awready : out STD_LOGIC;
    s_axi_ctl_wready : out STD_LOGIC;
    s_axi_ctl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctl_bvalid : out STD_LOGIC;
    s_axi_ctl_arready : out STD_LOGIC;
    s_axi_ctl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctl_rvalid : out STD_LOGIC
  );

end ntps_top_axi_pcie3_0_0;

architecture stub of ntps_top_axi_pcie3_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_rst_n,user_link_up,axi_ctl_aclk,intx_msi_request,msi_vector_num[4:0],m_axi_awready,m_axi_wready,m_axi_bid[2:0],m_axi_bresp[1:0],m_axi_bvalid,m_axi_arready,m_axi_rid[2:0],m_axi_rdata[255:0],m_axi_ruser[31:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,pci_exp_rxp[7:0],pci_exp_rxn[7:0],refclk,s_axi_ctl_awaddr[31:0],s_axi_ctl_awvalid,s_axi_ctl_wdata[31:0],s_axi_ctl_wstrb[3:0],s_axi_ctl_wvalid,s_axi_ctl_bready,s_axi_ctl_araddr[31:0],s_axi_ctl_arvalid,s_axi_ctl_rready,axi_aclk,axi_aresetn,interrupt_out,intx_msi_grant,msi_enable,msi_vector_width[2:0],m_axi_awid[2:0],m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awprot[2:0],m_axi_awvalid,m_axi_awlock,m_axi_awcache[3:0],m_axi_wdata[255:0],m_axi_wuser[31:0],m_axi_wstrb[31:0],m_axi_wlast,m_axi_wvalid,m_axi_bready,m_axi_arid[2:0],m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arvalid,m_axi_arlock,m_axi_arcache[3:0],m_axi_rready,pci_exp_txp[7:0],pci_exp_txn[7:0],s_axi_ctl_awready,s_axi_ctl_wready,s_axi_ctl_bresp[1:0],s_axi_ctl_bvalid,s_axi_ctl_arready,s_axi_ctl_rdata[31:0],s_axi_ctl_rresp[1:0],s_axi_ctl_rvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ntps_top_axi_pcie3_0_0_core_top,Vivado 2015.2";
begin
end;
