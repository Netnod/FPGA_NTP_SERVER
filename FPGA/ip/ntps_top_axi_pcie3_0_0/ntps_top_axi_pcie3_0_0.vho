-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:axi_pcie3:3.0
-- IP Revision: 10

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT ntps_top_axi_pcie3_0_0
  PORT (
    sys_rst_n : IN STD_LOGIC;
    cfg_ltssm_state : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    user_link_up : OUT STD_LOGIC;
    axi_ctl_aclk : IN STD_LOGIC;
    intx_msi_request : IN STD_LOGIC;
    msi_vector_num : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    m_axi_awready : IN STD_LOGIC;
    m_axi_wready : IN STD_LOGIC;
    m_axi_bid : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bvalid : IN STD_LOGIC;
    m_axi_arready : IN STD_LOGIC;
    m_axi_rid : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_rdata : IN STD_LOGIC_VECTOR(255 DOWNTO 0);
    m_axi_ruser : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast : IN STD_LOGIC;
    m_axi_rvalid : IN STD_LOGIC;
    pci_exp_rxp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    pci_exp_rxn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    refclk : IN STD_LOGIC;
    s_axi_ctl_awaddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi_ctl_awvalid : IN STD_LOGIC;
    s_axi_ctl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctl_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_ctl_wvalid : IN STD_LOGIC;
    s_axi_ctl_bready : IN STD_LOGIC;
    s_axi_ctl_araddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axi_ctl_arvalid : IN STD_LOGIC;
    s_axi_ctl_rready : IN STD_LOGIC;
    axi_aclk : OUT STD_LOGIC;
    axi_aresetn : OUT STD_LOGIC;
    axi_ctl_aresetn : OUT STD_LOGIC;
    interrupt_out : OUT STD_LOGIC;
    intx_msi_grant : OUT STD_LOGIC;
    msi_enable : OUT STD_LOGIC;
    msi_vector_width : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awid : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awvalid : OUT STD_LOGIC;
    m_axi_awlock : OUT STD_LOGIC;
    m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wdata : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
    m_axi_wuser : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_wstrb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_wlast : OUT STD_LOGIC;
    m_axi_wvalid : OUT STD_LOGIC;
    m_axi_bready : OUT STD_LOGIC;
    m_axi_arid : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arvalid : OUT STD_LOGIC;
    m_axi_arlock : OUT STD_LOGIC;
    m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rready : OUT STD_LOGIC;
    pci_exp_txp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    pci_exp_txn : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_ctl_awready : OUT STD_LOGIC;
    s_axi_ctl_wready : OUT STD_LOGIC;
    s_axi_ctl_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctl_bvalid : OUT STD_LOGIC;
    s_axi_ctl_arready : OUT STD_LOGIC;
    s_axi_ctl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctl_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctl_rvalid : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : ntps_top_axi_pcie3_0_0
  PORT MAP (
    sys_rst_n => sys_rst_n,
    cfg_ltssm_state => cfg_ltssm_state,
    user_link_up => user_link_up,
    axi_ctl_aclk => axi_ctl_aclk,
    intx_msi_request => intx_msi_request,
    msi_vector_num => msi_vector_num,
    m_axi_awready => m_axi_awready,
    m_axi_wready => m_axi_wready,
    m_axi_bid => m_axi_bid,
    m_axi_bresp => m_axi_bresp,
    m_axi_bvalid => m_axi_bvalid,
    m_axi_arready => m_axi_arready,
    m_axi_rid => m_axi_rid,
    m_axi_rdata => m_axi_rdata,
    m_axi_ruser => m_axi_ruser,
    m_axi_rresp => m_axi_rresp,
    m_axi_rlast => m_axi_rlast,
    m_axi_rvalid => m_axi_rvalid,
    pci_exp_rxp => pci_exp_rxp,
    pci_exp_rxn => pci_exp_rxn,
    refclk => refclk,
    s_axi_ctl_awaddr => s_axi_ctl_awaddr,
    s_axi_ctl_awvalid => s_axi_ctl_awvalid,
    s_axi_ctl_wdata => s_axi_ctl_wdata,
    s_axi_ctl_wstrb => s_axi_ctl_wstrb,
    s_axi_ctl_wvalid => s_axi_ctl_wvalid,
    s_axi_ctl_bready => s_axi_ctl_bready,
    s_axi_ctl_araddr => s_axi_ctl_araddr,
    s_axi_ctl_arvalid => s_axi_ctl_arvalid,
    s_axi_ctl_rready => s_axi_ctl_rready,
    axi_aclk => axi_aclk,
    axi_aresetn => axi_aresetn,
    axi_ctl_aresetn => axi_ctl_aresetn,
    interrupt_out => interrupt_out,
    intx_msi_grant => intx_msi_grant,
    msi_enable => msi_enable,
    msi_vector_width => msi_vector_width,
    m_axi_awid => m_axi_awid,
    m_axi_awaddr => m_axi_awaddr,
    m_axi_awlen => m_axi_awlen,
    m_axi_awsize => m_axi_awsize,
    m_axi_awburst => m_axi_awburst,
    m_axi_awprot => m_axi_awprot,
    m_axi_awvalid => m_axi_awvalid,
    m_axi_awlock => m_axi_awlock,
    m_axi_awcache => m_axi_awcache,
    m_axi_wdata => m_axi_wdata,
    m_axi_wuser => m_axi_wuser,
    m_axi_wstrb => m_axi_wstrb,
    m_axi_wlast => m_axi_wlast,
    m_axi_wvalid => m_axi_wvalid,
    m_axi_bready => m_axi_bready,
    m_axi_arid => m_axi_arid,
    m_axi_araddr => m_axi_araddr,
    m_axi_arlen => m_axi_arlen,
    m_axi_arsize => m_axi_arsize,
    m_axi_arburst => m_axi_arburst,
    m_axi_arprot => m_axi_arprot,
    m_axi_arvalid => m_axi_arvalid,
    m_axi_arlock => m_axi_arlock,
    m_axi_arcache => m_axi_arcache,
    m_axi_rready => m_axi_rready,
    pci_exp_txp => pci_exp_txp,
    pci_exp_txn => pci_exp_txn,
    s_axi_ctl_awready => s_axi_ctl_awready,
    s_axi_ctl_wready => s_axi_ctl_wready,
    s_axi_ctl_bresp => s_axi_ctl_bresp,
    s_axi_ctl_bvalid => s_axi_ctl_bvalid,
    s_axi_ctl_arready => s_axi_ctl_arready,
    s_axi_ctl_rdata => s_axi_ctl_rdata,
    s_axi_ctl_rresp => s_axi_ctl_rresp,
    s_axi_ctl_rvalid => s_axi_ctl_rvalid
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file ntps_top_axi_pcie3_0_0.vhd when simulating
-- the core, ntps_top_axi_pcie3_0_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

