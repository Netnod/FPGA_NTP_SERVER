//-----------------------------------------------------------------------------
//
// (c) Copyright 2012-2012 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
//
// Project    : AXI-MM to PCI Express
// File       : ntps_top_axi_pcie3_0_0_core_top.v
// Version    : $IpVersion 
//-----------------------------------------------------------------------------

`timescale 1ns/1ps
`include "axi4mm_axi_bridge.vh"
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ntps_top_axi_pcie3_0_0_core_top
   #(
    parameter TCQ = 1,
    parameter COMPONENT_NAME = "axi_pcie_0",
      //--Family Generics
    parameter C_FAMILY = "virtex7",
    parameter C_NO_OF_LANES          = 8,  // 1- X1, 2 - X2, 4 - X4, 8 - X8
    parameter PCIE_BLK_LOCN  = "0",  // 0: X0Y0, 1: X0Y1. 2: X0Y2
    parameter xlnx_ref_board = "NONE", // "NONE", "VC709", "KU105"
    parameter SILICON_REV = "Production", // "Production", "ES"
    // ATS Attributes - Start
    parameter C_ATS_ENABLE = "FALSE",      // 1. Enable AXI-ST CQ/RQ interfaces for ATS/PRI related message routing
                                           // 2. Provide AT Field control by using A*REGION
                                           // 3. The embedded Address Translation Logic (BAR) should be turned off
    parameter C_PRI_ENABLE  = "FALSE",     // Enable Page Request Ext Cap
    parameter C_FF_ON_INT_IF = "FALSE",    // Hidden, enable for timing if needed
    parameter [29:0] C_ATS_OFFSET = 30'h120,      // In DW offset; << 2 bits for Byte offset
    parameter [29:0] C_PR_OFFSET = 30'h124,       // In DW offset; << 2 bits for Byte offset
    parameter [11:0] C_ATS_CAP_NEXTPTR = 12'h490, // In Byte offset
    parameter [11:0] C_PR_CAP_NEXTPTR = 12'h4A0,  // In Byte offset
    parameter [4:0]  C_INV_QUEUE_DEPTH = 5'h00,
    parameter [31:0] C_OST_PR_CAP = 32'h0,
    // ATS Attributes - End
    // PCIe Parameters
    parameter PL_UPSTREAM_FACING = "true",
    parameter TL_LEGACY_MODE_ENABLE = "FALSE",
    parameter PL_LINK_CAP_MAX_LINK_WIDTH = 8,
    parameter PL_LINK_CAP_MAX_LINK_SPEED = 4,
    parameter REF_CLK_FREQ = "250_MHz",
    parameter USER_CLK_FREQ = 250,
    parameter CORE_CLK_FREQ = 2,
    parameter PLL_TYPE = 0,
    parameter PIPE_SIM = "FALSE",
    parameter EXT_CH_GT_DRP = "FALSE",
    parameter PCIE3_DRP = "FALSE",
    parameter DEDICATE_PERST = "TRUE",
    parameter SYS_RESET_POLARITY = 0,
    parameter MCAP_ENABLEMENT = "NONE", // "NONE", "TANDEM_PROM", "TANDEM_PCIe"
    parameter EXT_STARTUP_PRIMITIVE = "FALSE",
    parameter PF0_VENDOR_ID = 16'h10EE,
    parameter PF0_DEVICE_ID = 16'h7011,
    parameter PF0_REVISION_ID = 8'h00,
    parameter PF0_SUBSYSTEM_VENDOR_ID = 16'h0000,
    parameter PF0_SUBSYSTEM_ID = 16'h0000,
    parameter PF0_CLASS_CODE = 24'h050000,
    parameter PF0_BAR0_APERTURE_SIZE = 5'b00011,
    parameter PF0_BAR0_CONTROL = 3'b100,
    parameter PF0_BAR1_APERTURE_SIZE = 5'b00000,
    parameter PF0_BAR1_CONTROL = 3'b000,
    parameter PF0_BAR2_APERTURE_SIZE = 5'b00011,
    parameter PF0_BAR2_CONTROL = 3'b100,
    parameter PF0_BAR3_APERTURE_SIZE = 5'b00011,
    parameter PF0_BAR3_CONTROL = 3'b000,
    parameter PF0_BAR4_APERTURE_SIZE = 5'b00011,
    parameter PF0_BAR4_CONTROL = 3'b100,
    parameter PF0_BAR5_APERTURE_SIZE = 5'b00011,
    parameter PF0_BAR5_CONTROL = 3'b000,
    parameter PF0_INTERRUPT_PIN = 3'b001,
    parameter PF0_MSI_CAP_MULTIMSGCAP= 0,
    parameter SHARED_LOGIC = 1,    
    parameter SHARED_LOGIC_GTC = "FALSE",    
    parameter SHARED_LOGIC_CLK = "FALSE",    
    parameter SHARED_LOGIC_BOTH = "FALSE",    
    parameter EN_TRANSCEIVER_STATUS_PORTS = "FALSE",
    // AXI4MM Parameters
    parameter EN_AXI_SLAVE_IF = "TRUE",
    parameter EN_AXI_MASTER_IF = "TRUE",
    parameter C_S_AXI_ID_WIDTH = 4,
    parameter C_M_AXI_ID_WIDTH = 4,
    parameter AXI_ADDR_WIDTH = 64,
    parameter AXI_DATA_WIDTH = 256,


    parameter C_S_KEEP_WIDTH   = AXI_DATA_WIDTH / 32,
    parameter C_M_KEEP_WIDTH   = AXI_DATA_WIDTH / 32,
    parameter C_M_AXIS_RQ_USER_WIDTH = 60,
    parameter C_M_AXIS_RC_USER_WIDTH = 75,
    parameter C_S_AXIS_CQ_USER_WIDTH = 85,
    parameter C_S_AXIS_CC_USER_WIDTH = 33,
    parameter C_M_AXIS_RC_READY_WIDTH = 1,
    parameter C_S_AXIS_CQ_READY_WIDTH = 1,
    parameter C_M_AXIS_RQ_READY_WIDTH = 4,
    parameter C_S_AXIS_CC_READY_WIDTH = 4,
    parameter C_S_AXIS_USER_WIDTH = 64,
    parameter C_M_AXIS_USER_WIDTH = 64,
    parameter C_RD_BUFFER_ADDR_SIZE = 9,
    parameter C_RD_BUFFER_SIZE_BITS = 5,
    parameter C_RLX_SLVRD_SLVWR = 0,
    parameter C_RLX_SLVCPL_MASWR = 0,
    parameter C_RLX_MASRD_MASWR = 0,
    parameter C_RLX_MASCPL_SLVWR = 0,
    parameter [31:0]  C_BASEADDR = 32'hFFFF_FFFF,    // Not used
    parameter [31:0]  C_HIGHADDR = 32'h0000_0000,    // Not used
    parameter [11:0]  C_LAST_CORE_CAP_ADDR = 12'h100,// DWORD address of last enabled block capability
    parameter [11:0]  C_VSEC_CAP_ADDR = 12'h128,     // DWORD address of start of VSEC Header
    parameter         C_VSEC_CAP_LAST = "FALSE",     // VSEC next capability offset control
    parameter [15:0]  C_VSEC_ID = 16'h0000,
    parameter         C_DEVICE_NUMBER = 0,           // Device number for Root Port configurations only
    parameter         C_NUM_USER_INTR = 9,           // Number of user interrupts in User interrupt vector
    parameter         C_NUM_USER_NEW_INTR = 6,           // Number of user interrupts in User interrupt vector
    parameter [15:0]  C_USER_PTR = 16'h00D8,         // Address pointer to User Space
    parameter C_INTERRUPT_PIN = 0,
    parameter C_COMP_TIMEOUT = 0,
    parameter C_TIMEOUT0_SEL = 4'h14,
    parameter C_TIMEOUT1_SEL = 4'h15,
    parameter C_TIMEOUT_MULT = 3'h3,
    parameter C_OLD_BRIDGE_TIMEOUT = 0,
    parameter C_S_AXI_SUPPORTS_NARROW_BURST = 0,
    parameter C_EP_LINK_PARTNER_RCB = 0,
    parameter C_INCLUDE_BAROFFSET_REG = 1,
    parameter C_AXIBAR_NUM = 6,
    parameter C_AXIBAR_NOXLATE = 0,
    parameter C_AXIBAR2PCIEBAR_0 = 64'h0000_0000_0000_0000,
    parameter C_AXIBAR2PCIEBAR_1 = 64'h0000_0000_0000_0000,
    parameter C_AXIBAR2PCIEBAR_2 = 64'h0000_0000_0000_0000,
    parameter C_AXIBAR2PCIEBAR_3 = 64'h0000_0000_0000_0000,
    parameter C_AXIBAR2PCIEBAR_4 = 64'h0000_0000_0000_0000,
    parameter C_AXIBAR2PCIEBAR_5 = 64'h0000_0000_0000_0000,
    parameter C_AXIBAR2PCIEATTR_0 = 3'h0,
    parameter C_AXIBAR2PCIEATTR_1 = 3'h0,
    parameter C_AXIBAR2PCIEATTR_2 = 3'h0,
    parameter C_AXIBAR2PCIEATTR_3 = 3'h0,
    parameter C_AXIBAR2PCIEATTR_4 = 3'h0,
    parameter C_AXIBAR2PCIEATTR_5 = 3'h0,
    parameter C_AXIBAR_AS_0 = 1,
    parameter C_AXIBAR_AS_1 = 1,
    parameter C_AXIBAR_AS_2 = 1,
    parameter C_AXIBAR_AS_3 = 1,
    parameter C_AXIBAR_AS_4 = 1,
    parameter C_AXIBAR_AS_5 = 1,
    parameter C_AXIBAR_0 = 64'h0000_0000_0000_0000,
    parameter C_AXIBAR_HIGHADDR_0 = 64'hffff_ffff_ffff_ffff,
    parameter C_AXIBAR_1 = 64'h0000_0000_0000_0000,
    parameter C_AXIBAR_HIGHADDR_1 = 64'hffff_ffff_ffff_ffff,
    parameter C_AXIBAR_2 = 64'h0000_0000_0000_0000,
    parameter C_AXIBAR_HIGHADDR_2 = 64'hffff_ffff_ffff_ffff,
    parameter C_AXIBAR_3 = 64'h0000_0000_0000_0000,
    parameter C_AXIBAR_HIGHADDR_3 = 64'hffff_ffff_ffff_ffff,
    parameter C_AXIBAR_4 = 64'h0000_0000_0000_0000,
    parameter C_AXIBAR_HIGHADDR_4 = 64'hffff_ffff_ffff_ffff,
    parameter C_AXIBAR_5 = 64'h0000_0000_0000_0000,
    parameter C_AXIBAR_HIGHADDR_5 = 64'hffff_ffff_ffff_ffff,
    parameter PCIEBAR_NUM = 6,
    parameter C_PCIEBAR_AS = 1,
    parameter C_PCIEBAR2AXIBAR_0 = 64'h00000000,
    parameter C_PCIEBAR2AXIBAR_0_SEC = 0,
    parameter C_PCIEBAR_LEN_0 = PF0_BAR0_APERTURE_SIZE + 12 - 5,
    parameter C_PCIEBAR2AXIBAR_1 = 64'h00000000,
    parameter C_PCIEBAR2AXIBAR_1_SEC = 0,
    parameter C_PCIEBAR_LEN_1 = PF0_BAR1_APERTURE_SIZE + 12 - 5,
    parameter C_PCIEBAR2AXIBAR_2 = 64'h00000000,
    parameter C_PCIEBAR2AXIBAR_2_SEC = 0,
    parameter C_PCIEBAR_LEN_2 = PF0_BAR2_APERTURE_SIZE + 12 - 5,
    parameter C_PCIEBAR2AXIBAR_3 = 64'h00000000,
    parameter C_PCIEBAR2AXIBAR_3_SEC = 0,
    parameter C_PCIEBAR_LEN_3 = PF0_BAR3_APERTURE_SIZE + 12 - 5,
    parameter C_PCIEBAR2AXIBAR_4 = 64'h00000000,
    parameter C_PCIEBAR2AXIBAR_4_SEC = 0,
    parameter C_PCIEBAR_LEN_4 = PF0_BAR4_APERTURE_SIZE + 12 - 5,
    parameter C_PCIEBAR2AXIBAR_5 = 64'h00000000,
    parameter C_PCIEBAR2AXIBAR_5_SEC = 0,
    parameter C_PCIEBAR_LEN_5 = PF0_BAR5_APERTURE_SIZE + 12 - 5,
    parameter C_PCIEBAR2AXIBAR_6 = 64'h00000000,
    parameter C_PCIEBAR2AXIBAR_6_SEC = 0,
    parameter C_PCIEBAR_LEN_6 = 64,
    parameter C_AXIBRIDGE_PARITY_DATAPROT_EN = "FALSE",
    parameter C_AXIBRIDGE_ECC_DATAPROT_EN = "FALSE",
    parameter C_SLAVE_ERROR_POISON = 1'b1,
    parameter C_S_AXI_NUM_READ = 8,
    parameter C_M_AXI_NUM_READ = 8,
    parameter C_S_AXI_NUM_WRITE = 8,
    parameter C_M_AXI_NUM_WRITE = 8,
    parameter IS_BOARD_PROJECT = 0,
    parameter EN_GT_SELECTION = "FALSE",
    parameter SELECT_QUAD = "Quad_1",
    parameter ULTRASCALE = "FALSE",
    parameter MSI_ENABLED = "TRUE",
    parameter DEV_PORT_TYPE = 0,
    parameter MSIX_EN = "FALSE",
    parameter MSIX_IMPL_EXT = "TRUE",
    parameter  GT_TX_PD = "FALSE",
    parameter RX_DETECT = 0,
    parameter ENABLE_IBERT="FALSE",
    parameter ENABLE_JTAG_DBG="FALSE",
    parameter ULTRASCALE_PLUS = "TRUE",
    parameter AXI_ACLK_LOOPBACK = "FALSE",
    parameter VU9P_BOARD        = "FALSE",
    parameter VCU118_BOARD      = "FALSE",    
    parameter CFG_EXT_IF = "TRUE",
    parameter EXT_XVC_VSEC_ENABLE = "TRUE",
    parameter AXSIZE_BYTE_ACCESS_EN = "FALSE",
    parameter MCAP_FPGA_BITSTREAM_VERSION = 32'd0,
    parameter NO_SLV_ERR = "FALSE"        // TRUE = Ignore (returns OK w/ F's) when bus-walking bus number > sub-ordinate bus number (Legacy PCI spec). FALSE = returns SLV ERR
   ) 
(
  user_link_up,
  gt_tx_powerdown,
  sys_rst_n,
  cfg_ltssm_state,
  axi_aclk,
  axi_aresetn,
  axi_ctl_aresetn,
  axi_ctl_aclk,
  interrupt_out,
  intx_msi_request,
  intx_msi_grant,
  msi_enable,
  msi_vector_num,
  msi_vector_width,
  msix_entry_num,
  s_axi_awid,
  s_axi_awaddr,
  s_axi_awregion,
  s_axi_awlen,
  s_axi_awsize,
  s_axi_awburst,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wuser,
  s_axi_wstrb,
  s_axi_wlast,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_bid,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_bready,
  s_axi_arid,
  s_axi_araddr,
  s_axi_arregion,
  s_axi_arlen,
  s_axi_arsize,
  s_axi_arburst,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rid,
  s_axi_rdata,
  s_axi_ruser,
  s_axi_rresp,
  s_axi_rlast,
  s_axi_rvalid,
  s_axi_rready,
  m_axi_awid,
  m_axi_awaddr,
  m_axi_awlen,
  m_axi_awsize,
  m_axi_awburst,
  m_axi_awprot,
  m_axi_awvalid,
  m_axi_awready,
  m_axi_awlock,
  m_axi_awcache,
  m_axi_wdata,
  m_axi_wuser,
  m_axi_wstrb,
  m_axi_wlast,
  m_axi_wvalid,
  m_axi_wready,
  m_axi_bid,
  m_axi_bresp,
  m_axi_bvalid,
  m_axi_bready,
  m_axi_arid,
  m_axi_araddr,
  m_axi_arlen,
  m_axi_arsize,
  m_axi_arburst,
  m_axi_arprot,
  m_axi_arvalid,
  m_axi_arready,
  m_axi_arlock,
  m_axi_arcache,
  m_axi_rid,
  m_axi_rdata,
  m_axi_ruser,
  m_axi_rresp,
  m_axi_rlast,
  m_axi_rvalid,
  m_axi_rready,
  pci_exp_txp,
  pci_exp_txn,
  pci_exp_rxp,
  pci_exp_rxn,
  refclk,
  sys_clk_gt,
  s_axi_ctl_awaddr,
  s_axi_ctl_awvalid,
  s_axi_ctl_awready,
  s_axi_ctl_wdata,
  s_axi_ctl_wstrb,
  s_axi_ctl_wvalid,
  s_axi_ctl_wready,
  s_axi_ctl_bresp,
  s_axi_ctl_bvalid,
  s_axi_ctl_bready,
  s_axi_ctl_araddr,
  s_axi_ctl_arvalid,
  s_axi_ctl_arready,
  s_axi_ctl_rdata,
  s_axi_ctl_rresp,
  s_axi_ctl_rvalid,
  s_axi_ctl_rready,

 // --- PIPE Interface for both pcie3_7x and pcie3_us
  common_commands_in,
  pipe_rx_0_sigs,
  pipe_rx_1_sigs,
  pipe_rx_2_sigs,
  pipe_rx_3_sigs,
  pipe_rx_4_sigs,
  pipe_rx_5_sigs,
  pipe_rx_6_sigs,
  pipe_rx_7_sigs,
  pipe_rx_8_sigs,
  pipe_rx_9_sigs,
  pipe_rx_10_sigs,
  pipe_rx_11_sigs,
  pipe_rx_12_sigs,
  pipe_rx_13_sigs,
  pipe_rx_14_sigs,
  pipe_rx_15_sigs,

  common_commands_out,
  pipe_tx_0_sigs,
  pipe_tx_1_sigs,
  pipe_tx_2_sigs,
  pipe_tx_3_sigs,
  pipe_tx_4_sigs,
  pipe_tx_5_sigs,
  pipe_tx_6_sigs,
  pipe_tx_7_sigs,
  pipe_tx_8_sigs,
  pipe_tx_9_sigs,
  pipe_tx_10_sigs,
  pipe_tx_11_sigs,
  pipe_tx_12_sigs,
  pipe_tx_13_sigs,
  pipe_tx_14_sigs,
  pipe_tx_15_sigs,

  // --- Shared Logic Clock Internal Interface for pcie3_7x
  int_pclk_out_slave,
  int_pipe_rxusrclk_out,
  int_rxoutclk_out,
  int_dclk_out,
  int_userclk1_out,
  int_userclk2_out,
  int_oobclk_out,
  int_qplllock_out,
  int_qplloutclk_out,
  int_qplloutrefclk_out,
  int_pclk_sel_slave,

  // --- Shared Logic Clock External Interface for pcie3_7x
  pipe_pclk_in,
  pipe_rxusrclk_in,
  pipe_rxoutclk_in,
  pipe_dclk_in,
  pipe_userclk1_in,
  pipe_userclk2_in,
  pipe_oobclk_in,
  pipe_mmcm_rst_n,
  pipe_mmcm_lock_in,
  pipe_txoutclk_out,
  pipe_rxoutclk_out,
  pipe_pclk_sel_out,
  pipe_gen3_out,

  // --- Shared Logic External GT COMMON for pcie3_7x  
  qpll_drp_crscode,
  qpll_drp_fsm,
  qpll_drp_done,
  qpll_drp_reset,
  qpll_qplllock,
  qpll_qplloutclk,
  qpll_qplloutrefclk,
  qpll_qplld,
  qpll_qpllreset,
  qpll_drp_clk,
  qpll_drp_rst_n,
  qpll_drp_ovrd,
  qpll_drp_gen3,
  qpll_drp_start,

  // --- TRANSCEIVER_DEBUG for pcie3_7x
  pipe_txprbssel,        
  pipe_rxprbssel,     
  pipe_txprbsforceerr,
  pipe_rxprbscntreset,
  pipe_loopback,     
  pipe_rxprbserr,   
  pipe_txinhibit,
  pipe_rst_fsm,         
  pipe_qrst_fsm,       
  pipe_rate_fsm,      
  pipe_sync_fsm_tx,  
  pipe_sync_fsm_rx, 
  pipe_drp_fsm,    
  pipe_rst_idle,         
  pipe_qrst_idle,       
  pipe_rate_idle,      
  pipe_eyescandataerror,          
  pipe_rxstatus,
  pipe_dmonitorout,
  pipe_cpll_lock,
  pipe_qpll_lock,
  pipe_rxpmaresetdone,       
  pipe_rxbufstatus,         
  pipe_txphaligndone,       
  pipe_txphinitdone,        
  pipe_txdlysresetdone,    
  pipe_rxphaligndone,      
  pipe_rxdlysresetdone,     
  pipe_rxsyncdone,       
  pipe_rxdisperr,       
  pipe_rxnotintable,      
  pipe_rxcommadet,        
  gt_ch_drp_rdy,
  pipe_debug_0,          
  pipe_debug_1,         
  pipe_debug_2,        
  pipe_debug_3,       
  pipe_debug_4,      
  pipe_debug_5,     
  pipe_debug_6,    
  pipe_debug_7,   
  pipe_debug_8,  
  pipe_debug_9, 
  pipe_debug,

  // --- Shared Logic GT_COMMON Internal Interface for pcie3_us
  int_qpll1lock_out,
  int_qpll1outclk_out,
  int_qpll1outrefclk_out,

  // --- Shared Logic GT_COMMON External Interface for pcie3_us
  ext_qpll1refclk,
  ext_qpll1pd,
  ext_qpll1rate,
  ext_qpll1reset,
  ext_qpll1lock_out,
  ext_qpll1outclk_out,
  ext_qpll1outrefclk_out,

  // --- TRANSCEIVER_DEBUG for pcie3_us
  gt_pcieuserratedone,
  gt_loopback,
  gt_txprbsforceerr,
  gt_txinhibit,
  gt_txprbssel,
  gt_rxprbssel,
  gt_rxprbscntreset,
  gt_dmonitorclk,
  gt_dmonfiforeset,
  gt_txelecidle,              
  gt_txresetdone,     
  gt_rxresetdone,         
  gt_rxpmaresetdone,       
  gt_txphaligndone,             
  gt_txphinitdone,          
  gt_txdlysresetdone,          
  gt_rxphaligndone,         
  gt_rxdlysresetdone,           
  gt_rxsyncdone,         
  gt_eyescandataerror,                
  gt_rxprbserr,            
  gt_dmonitorout,            
  gt_rxcommadet,                    
  gt_phystatus,                    
  gt_rxvalid,               
  gt_rxcdrlock,          
  gt_pcierateidle, 
  gt_pcieuserratestart, 
  gt_gtpowergood,   
  gt_cplllock,               
  gt_rxoutclk,  
  gt_rxrecclkout, 
  gt_qpll1lock,             
  gt_rxstatus,             
  gt_rxbufstatus,             
  gt_bufgtdiv,                  
  phy_txeq_ctrl,                   
  phy_txeq_preset,                    
  phy_rst_fsm,                  
  phy_txeq_fsm,                   
  phy_rxeq_fsm,                  
  phy_rst_idle,                               
  phy_rrst_n, 
  phy_prst_n, 
  free_run_clock,

  ext_ch_gt_drpclk,
  ext_ch_gt_drpaddr,
  ext_ch_gt_drpen,
  ext_ch_gt_drpwe,
  ext_ch_gt_drpdi,
  ext_ch_gt_drprdy,
  ext_ch_gt_drpdo,

  //--------------------------------------------------------------------------------------//
  //  MCAP Design Switch signal                                                           //
  //   - This signal goes high once the tandem stage2 bitstream is loaded.                //
  //   - This signal may be asserted high by SW after the first PR programming sequence   //
  //     has completed.                                                                   //
  //   - After going high, this signal should not be written back to zero by SW.          // 
  //--------------------------------------------------------------------------------------//
  mcap_design_switch,
  //--------------------------------------------------------------------------------------//
  //  Configuration Arbitration Signals                                                   //
  //    - These signals should be used to arbitrate for control of the underlying FPGA    //
  //      Configuration logic. Request, Grant, and Release signals should be connected in //
  //      the user design.                                                                //
  //--------------------------------------------------------------------------------------//
  cap_req,
  cap_gnt,
  cap_rel,
  //--------------------------------------------------------------------------------------//
  //  End of Startup (EOS) Signal                                                         //
  //    - This singal should be driven directly by the End of Startup (EOS) output of     //
  //      the STARTUP primitive                                                           //
  //--------------------------------------------------------------------------------------//
  mcap_eos_in,
  //--------------------------------------------------------------------------------------//
  //  Startup Signals                                                                     //
  //    - The startup interface is exposed to the external user for connectifity to other //
  //      IPs                                                                             //
  //--------------------------------------------------------------------------------------//
  startup_cfgclk,
  startup_cfgmclk,
  startup_di,
  startup_eos,
  startup_preq,
  startup_do,
  startup_dts,
  startup_fcsbo,
  startup_fcsbts,
  startup_gsr,
  startup_gts,
  startup_keyclearb,
  startup_pack,
  startup_usrcclko,
  startup_usrcclkts,
  startup_usrdoneo,
  startup_usrdonets,

  cfg_interrupt_msix_enable,
  cfg_interrupt_msix_mask,
  cfg_interrupt_msix_vf_enable,
  cfg_interrupt_msix_vf_mask,
  cfg_interrupt_msix_data,
  cfg_interrupt_msix_address,
  cfg_interrupt_msix_int,
  cfg_interrupt_msix_sent,
  cfg_interrupt_msix_fail,

  // ATS Signals - Start
  m_axis_cq_tdata,
  m_axis_cq_tuser,
  m_axis_cq_tlast,
  m_axis_cq_tkeep,
  m_axis_cq_tvalid,
  m_axis_cq_tready,
  s_axis_rq_tdata,
  s_axis_rq_tuser,
  s_axis_rq_tlast,
  s_axis_rq_tkeep,
  s_axis_rq_tvalid,
  s_axis_rq_tready,
  cfg_status_ats_stu,
  cfg_status_ats_en,
  cfg_status_pr_en,
  cfg_status_pr_rst,
  cfg_status_pr_uprgi,
  cfg_status_set_uprgi,
  cfg_status_pr_rf,
  cfg_status_set_rf,
  cfg_status_set_s,
  cfg_status_clr_s,
  cfg_status_ost_pr_alloc,
  // ATS Signals - End

  drp_rdy,
  drp_do,
  drp_clk,
  drp_en,
  drp_we,
  drp_addr,
  drp_di,

  cfg_ext_read_received,
  cfg_ext_write_received,
  cfg_ext_register_number,
  cfg_ext_function_number,
  cfg_ext_write_data,
  cfg_ext_write_byte_enable,
  cfg_ext_read_data,
  cfg_ext_read_data_valid 

);

  input  wire [25:0] common_commands_in;
  input  wire [83:0] pipe_rx_0_sigs;
  input  wire [83:0] pipe_rx_1_sigs;
  input  wire [83:0] pipe_rx_2_sigs;
  input  wire [83:0] pipe_rx_3_sigs;
  input  wire [83:0] pipe_rx_4_sigs;
  input  wire [83:0] pipe_rx_5_sigs;
  input  wire [83:0] pipe_rx_6_sigs;
  input  wire [83:0] pipe_rx_7_sigs;
  input  wire [83:0] pipe_rx_8_sigs;
  input  wire [83:0] pipe_rx_9_sigs;
  input  wire [83:0] pipe_rx_10_sigs;
  input  wire [83:0] pipe_rx_11_sigs;
  input  wire [83:0] pipe_rx_12_sigs;
  input  wire [83:0] pipe_rx_13_sigs;
  input  wire [83:0] pipe_rx_14_sigs;
  input  wire [83:0] pipe_rx_15_sigs;
  output wire [25:0] common_commands_out;
  output wire [83:0] pipe_tx_0_sigs;
  output wire [83:0] pipe_tx_1_sigs;
  output wire [83:0] pipe_tx_2_sigs;
  output wire [83:0] pipe_tx_3_sigs;
  output wire [83:0] pipe_tx_4_sigs;
  output wire [83:0] pipe_tx_5_sigs;
  output wire [83:0] pipe_tx_6_sigs;
  output wire [83:0] pipe_tx_7_sigs;
  output wire [83:0] pipe_tx_8_sigs;
  output wire [83:0] pipe_tx_9_sigs;
  output wire [83:0] pipe_tx_10_sigs;
  output wire [83:0] pipe_tx_11_sigs;
  output wire [83:0] pipe_tx_12_sigs;
  output wire [83:0] pipe_tx_13_sigs;
  output wire [83:0] pipe_tx_14_sigs;
  output wire [83:0] pipe_tx_15_sigs;

  output  [((PL_LINK_CAP_MAX_LINK_WIDTH-1)>>2):0] int_qpll1lock_out;
  output  [((PL_LINK_CAP_MAX_LINK_WIDTH-1)>>2):0] int_qpll1outclk_out;
  output  [((PL_LINK_CAP_MAX_LINK_WIDTH-1)>>2):0] int_qpll1outrefclk_out;
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH-1)>>2):0] ext_qpll1refclk;
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH-1)>>2):0] ext_qpll1pd;
  output wire [((((PL_LINK_CAP_MAX_LINK_WIDTH-1)>>2)+1)*3)-1:0] ext_qpll1rate;
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH-1)>>2):0] ext_qpll1reset;
  input wire  [((PL_LINK_CAP_MAX_LINK_WIDTH-1)>>2):0] ext_qpll1lock_out;
  input wire  [((PL_LINK_CAP_MAX_LINK_WIDTH-1)>>2):0] ext_qpll1outclk_out;
  input wire  [((PL_LINK_CAP_MAX_LINK_WIDTH-1)>>2):0] ext_qpll1outrefclk_out;

  // Shared Logic Internal
  output                                     int_pclk_out_slave;
  output                                     int_pipe_rxusrclk_out;
  output [(PL_LINK_CAP_MAX_LINK_WIDTH-1):0]  int_rxoutclk_out;
  output                                     int_dclk_out;
  output                                     int_userclk1_out;
  output                                     int_userclk2_out;
  output                                     int_oobclk_out;
  output  [1:0]                              int_qplllock_out;
  output  [1:0]                              int_qplloutclk_out;
  output  [1:0]                              int_qplloutrefclk_out;
  input  [(PL_LINK_CAP_MAX_LINK_WIDTH-1):0]  int_pclk_sel_slave;

  // Shared Logic External Clock
  input                                       pipe_pclk_in;
  input                                       pipe_rxusrclk_in;
  input  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_rxoutclk_in;
  input                                       pipe_dclk_in;
  input                                       pipe_userclk1_in;
  input                                       pipe_userclk2_in;
  input                                       pipe_oobclk_in;
  input                                       pipe_mmcm_lock_in;
  input                                       pipe_mmcm_rst_n;
  output                                      pipe_txoutclk_out;
  output [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_rxoutclk_out;
  output [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_pclk_sel_out;
  output                                      pipe_gen3_out;

  // Shared Logic External GT COMMON pcie3_7x 
  input  [11:0]   qpll_drp_crscode;
  input  [17:0]   qpll_drp_fsm;
  input  [1:0]    qpll_drp_done;
  input  [1:0]    qpll_drp_reset;
  input  [1:0]    qpll_qplllock;
  input  [1:0]    qpll_qplloutclk;
  input  [1:0]    qpll_qplloutrefclk;
  output          qpll_qplld;
  output [1:0]    qpll_qpllreset;
  output          qpll_drp_clk;
  output          qpll_drp_rst_n;
  output          qpll_drp_ovrd;
  output          qpll_drp_gen3;
  output          qpll_drp_start;

  //--------------TRANSCEIVER_DEBUG---------------------------------
  input   [ 2:0]                               pipe_txprbssel;        
  input   [ 2:0]                               pipe_rxprbssel;     
  input                                        pipe_txprbsforceerr;
  input                                        pipe_rxprbscntreset;
  input   [ 2:0]                               pipe_loopback;     
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_rxprbserr;   
  input  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]      pipe_txinhibit;   
  output  [4:0]                                pipe_rst_fsm;         
  output  [11:0]                               pipe_qrst_fsm;       
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH*5)-1:0] pipe_rate_fsm;      
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH*6)-1:0] pipe_sync_fsm_tx;  
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH*7)-1:0] pipe_sync_fsm_rx; 
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH*7)-1:0] pipe_drp_fsm;    
  output                                       pipe_rst_idle;         
  output                                       pipe_qrst_idle;       
  output                                       pipe_rate_idle;      
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_eyescandataerror;          
  output  [PL_LINK_CAP_MAX_LINK_WIDTH*3-1:0]   pipe_rxstatus;
  output  [PL_LINK_CAP_MAX_LINK_WIDTH*15-1:0]  pipe_dmonitorout;
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_cpll_lock;
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH-1)>>2:0] pipe_qpll_lock;
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_rxpmaresetdone;       
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH*3)-1:0]  pipe_rxbufstatus;         
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_txphaligndone;       
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_txphinitdone;        
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_txdlysresetdone;    
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_rxphaligndone;      
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_rxdlysresetdone;     
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_rxsyncdone;       
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH*8)-1:0]  pipe_rxdisperr;       
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH*8)-1:0]  pipe_rxnotintable;      
  output  [(PL_LINK_CAP_MAX_LINK_WIDTH)-1:0]    pipe_rxcommadet;        
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     gt_ch_drp_rdy;
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_0;          
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_1;         
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_2;        
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_3;       
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_4;      
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_5;     
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_6;    
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_7;   
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_8;  
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1:0]     pipe_debug_9; 
  output  [31:0]                               pipe_debug;
  //--------------------------------------------------------------------------
  input wire  [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_pcieuserratedone ;
  input wire  [((PL_LINK_CAP_MAX_LINK_WIDTH*3)-1):0] gt_loopback         ;
  input wire  [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_txprbsforceerr   ;
  input wire  [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_txinhibit        ;
  input wire  [((PL_LINK_CAP_MAX_LINK_WIDTH*4)-1):0] gt_txprbssel        ;
  input wire  [((PL_LINK_CAP_MAX_LINK_WIDTH*4)-1):0] gt_rxprbssel        ;
  input wire  [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_rxprbscntreset   ;
  input wire  [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_dmonitorclk      ;
  input wire  [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_dmonfiforeset    ;

  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_txelecidle       ;
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_txresetdone      ;
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_rxresetdone      ;         
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_rxpmaresetdone   ;       
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_txphaligndone    ;             
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_txphinitdone     ;          
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_txdlysresetdone  ;          
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_rxphaligndone    ;         
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_rxdlysresetdone  ;           
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_rxsyncdone       ;         
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_eyescandataerror ;                
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_rxprbserr        ;            
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*17)-1):0] gt_dmonitorout     ;
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_rxcommadet       ;                    
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_phystatus        ;                    
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_rxvalid          ;               
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_rxcdrlock        ;          
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_pcierateidle     ; 
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_pcieuserratestart; 
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_gtpowergood      ;   
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_cplllock         ;               
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_rxoutclk         ;  
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*1)-1):0] gt_rxrecclkout      ;
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH-1)>>2):0] gt_qpll1lock       ;
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*3)-1):0] gt_rxstatus         ;             
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*3)-1):0] gt_rxbufstatus      ;             
  output wire [8:0]                                  gt_bufgtdiv         ;                  
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*2)-1):0] phy_txeq_ctrl       ;                   
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*4)-1):0] phy_txeq_preset     ;                    
  output wire [3:0]                                  phy_rst_fsm         ;                  
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*3)-1):0] phy_txeq_fsm        ;                   
  output wire [((PL_LINK_CAP_MAX_LINK_WIDTH*3)-1):0] phy_rxeq_fsm        ;                  
  output wire                                        phy_rst_idle        ;                               
  output wire                                        phy_rrst_n          ; 
  output wire                                        phy_prst_n          ; 
  input  wire                                       free_run_clock       ;

  input wire sys_rst_n;
  output     axi_aclk ;
  output  [5:0] cfg_ltssm_state ;
  output  axi_aresetn ;
  output  axi_ctl_aresetn ;
  output  user_link_up ;
  input [2:0] gt_tx_powerdown;
  input  axi_ctl_aclk ;
  output  interrupt_out ;
  input  intx_msi_request ;
  output  intx_msi_grant ;
  output  msi_enable ;
  input  [4 : 0] msi_vector_num ;
  output  [2 : 0] msi_vector_width ;
  input  [10 : 0] msix_entry_num ;
  input  [C_S_AXI_ID_WIDTH-1 : 0] s_axi_awid ;
  input  [AXI_ADDR_WIDTH-1 : 0] s_axi_awaddr ;
  input  [3 : 0] s_axi_awregion ;
  input  [7 : 0] s_axi_awlen ;
  input  [2 : 0] s_axi_awsize ;
  input  [1 : 0] s_axi_awburst ;
  input  s_axi_awvalid ;
  output  s_axi_awready ;
  input  [AXI_DATA_WIDTH-1 : 0] s_axi_wdata ;
  input  [(AXI_DATA_WIDTH/8)-1 : 0] s_axi_wuser ;
  input  [AXI_DATA_WIDTH/8-1 : 0] s_axi_wstrb ;
  input  s_axi_wlast ;
  input  s_axi_wvalid ;
  output  s_axi_wready ;
  output  [C_S_AXI_ID_WIDTH-1 : 0] s_axi_bid ;
  output  [1 : 0] s_axi_bresp ;
  output  s_axi_bvalid ;
  input  s_axi_bready ;
  input  [C_S_AXI_ID_WIDTH-1 : 0] s_axi_arid ;
  input  [AXI_ADDR_WIDTH-1 : 0] s_axi_araddr ;
  input  [3 : 0] s_axi_arregion ;
  input  [7 : 0] s_axi_arlen ;
  input  [2 : 0] s_axi_arsize ;
  input  [1 : 0] s_axi_arburst ;
  input  s_axi_arvalid ;
  output  s_axi_arready ;
  output  [C_S_AXI_ID_WIDTH-1 : 0] s_axi_rid ;
  output  [AXI_DATA_WIDTH-1 : 0] s_axi_rdata ;
  output  [(AXI_DATA_WIDTH/8)-1 : 0] s_axi_ruser ;
  output  [1 : 0] s_axi_rresp ;
  output  s_axi_rlast ;
  output  s_axi_rvalid ;
  input  s_axi_rready ;
  output  [C_M_AXI_ID_WIDTH-1 : 0] m_axi_awid ;
  output  [AXI_ADDR_WIDTH-1 : 0] m_axi_awaddr ;
  output  [7 : 0] m_axi_awlen ;
  output  [2 : 0] m_axi_awsize ;
  output  [1 : 0] m_axi_awburst ;
  output  [2 : 0] m_axi_awprot ;
  output  m_axi_awvalid ;
  input  m_axi_awready ;
  output  m_axi_awlock ;
  output  [3 : 0] m_axi_awcache ;
  output  [AXI_DATA_WIDTH-1 : 0] m_axi_wdata ;
  output  [(AXI_DATA_WIDTH/8)-1 : 0] m_axi_wuser ;
  output  [AXI_DATA_WIDTH/8-1 : 0] m_axi_wstrb ;
  output  m_axi_wlast ;
  output  m_axi_wvalid ;
  input  m_axi_wready ;
  input  [C_M_AXI_ID_WIDTH-1 : 0] m_axi_bid ;
  input  [1 : 0] m_axi_bresp ;
  input  m_axi_bvalid ;
  output  m_axi_bready ;
  output  [C_M_AXI_ID_WIDTH-1 : 0] m_axi_arid ;
  output  [AXI_ADDR_WIDTH-1 : 0] m_axi_araddr ;
  output  [7 : 0] m_axi_arlen ;
  output  [2 : 0] m_axi_arsize ;
  output  [1 : 0] m_axi_arburst ;
  output  [2 : 0] m_axi_arprot ;
  output  m_axi_arvalid ;
  input  m_axi_arready ;
  output  m_axi_arlock ;
  output  [3 : 0] m_axi_arcache ;
  input  [C_M_AXI_ID_WIDTH-1 : 0] m_axi_rid ;
  input  [AXI_DATA_WIDTH-1 : 0] m_axi_rdata ;
  input  [(AXI_DATA_WIDTH/8)-1 : 0] m_axi_ruser ;
  input  [1 : 0] m_axi_rresp ;
  input  m_axi_rlast ;
  input  m_axi_rvalid ;
  output  m_axi_rready ;
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1 : 0] pci_exp_txp ;
  output  [PL_LINK_CAP_MAX_LINK_WIDTH-1 : 0] pci_exp_txn ;
  input  [PL_LINK_CAP_MAX_LINK_WIDTH-1 : 0] pci_exp_rxp ;
  input  [PL_LINK_CAP_MAX_LINK_WIDTH-1 : 0] pci_exp_rxn ;
  input  refclk ;
  input  sys_clk_gt ;
  input  [11 : 0] s_axi_ctl_awaddr ;
  input  s_axi_ctl_awvalid ;
  output  s_axi_ctl_awready ;
  input  [31 : 0] s_axi_ctl_wdata ;
  input  [3 : 0] s_axi_ctl_wstrb ;
  input  s_axi_ctl_wvalid ;
  output  s_axi_ctl_wready ;
  output  [1 : 0] s_axi_ctl_bresp ;
  output  s_axi_ctl_bvalid ;
  input  s_axi_ctl_bready ;
  input  [11 : 0] s_axi_ctl_araddr ;
  input  s_axi_ctl_arvalid ;
  output  s_axi_ctl_arready ;
  output  [31 : 0] s_axi_ctl_rdata ;
  output  [1 : 0] s_axi_ctl_rresp ;
  output  s_axi_ctl_rvalid ;
  input  s_axi_ctl_rready ;
  //-- Bar Ports

  output          drp_rdy ;
  output   [15:0] drp_do ;
  input           drp_clk ;
  input           drp_en ;
  input           drp_we ;
  input    [10:0] drp_addr ;
  input    [15:0] drp_di ;

  output                                            ext_ch_gt_drpclk ;
  input   [((PL_LINK_CAP_MAX_LINK_WIDTH *  9)-1):0] ext_ch_gt_drpaddr ;
  input   [((PL_LINK_CAP_MAX_LINK_WIDTH *  1)-1):0] ext_ch_gt_drpen ;
  input   [((PL_LINK_CAP_MAX_LINK_WIDTH *  1)-1):0] ext_ch_gt_drpwe ;
  input   [((PL_LINK_CAP_MAX_LINK_WIDTH * 16)-1):0] ext_ch_gt_drpdi ;
  output  [((PL_LINK_CAP_MAX_LINK_WIDTH *  1)-1):0] ext_ch_gt_drprdy ;
  output  [((PL_LINK_CAP_MAX_LINK_WIDTH * 16)-1):0] ext_ch_gt_drpdo ;

  // ATS Signals - Start
  output  [AXI_DATA_WIDTH-1 : 0]                    m_axis_cq_tdata ;
  output  [AXI_DATA_WIDTH/32-1 : 0]                 m_axis_cq_tkeep ;
  output  [C_S_AXIS_CQ_USER_WIDTH-1 : 0]            m_axis_cq_tuser ;
  output                                            m_axis_cq_tlast ;
  output                                            m_axis_cq_tvalid ;
  input                                             m_axis_cq_tready ;
  input   [AXI_DATA_WIDTH-1 : 0]                    s_axis_rq_tdata ;
  input   [AXI_DATA_WIDTH/32-1 : 0]                 s_axis_rq_tkeep ;
  input   [C_M_AXIS_RQ_USER_WIDTH-1 : 0]            s_axis_rq_tuser ;
  input                                             s_axis_rq_tlast ;
  input                                             s_axis_rq_tvalid ;
  output                                            s_axis_rq_tready ;
  output  [4 : 0]                                   cfg_status_ats_stu ;
  output                                            cfg_status_ats_en ;
  output                                            cfg_status_pr_en ;
  output                                            cfg_status_pr_rst ;
  output                                            cfg_status_pr_uprgi ;
  input                                             cfg_status_set_uprgi ;
  output                                            cfg_status_pr_rf ;
  input                                             cfg_status_set_rf ;
  input                                             cfg_status_set_s ;
  input                                             cfg_status_clr_s ;
  output  [31 : 0]                                  cfg_status_ost_pr_alloc ;
  // ATS Signals - End



  // MSIX Interface signals
  output wire   [3:0] cfg_interrupt_msix_enable;
  output wire   [3:0] cfg_interrupt_msix_mask;
  output wire   [7:0] cfg_interrupt_msix_vf_enable;
  output wire   [7:0] cfg_interrupt_msix_vf_mask;
  input  wire  [31:0] cfg_interrupt_msix_data;
  input  wire  [63:0] cfg_interrupt_msix_address;
  input  wire         cfg_interrupt_msix_int;
  output wire         cfg_interrupt_msix_sent;
  output wire         cfg_interrupt_msix_fail;

  // mcap and startup signals.
  output wire                                        mcap_design_switch;
  input  wire                                        mcap_eos_in;
  output wire                                        cap_req;
  input  wire                                        cap_gnt;
  input  wire                                        cap_rel;
  output wire                                        startup_cfgclk;
  output wire                                        startup_cfgmclk;
  output wire [3:0]                                  startup_di;
  output wire                                        startup_eos;
  output wire                                        startup_preq;
  input  wire [3:0]                                  startup_do;
  input  wire [3:0]                                  startup_dts;
  input  wire                                        startup_fcsbo;
  input  wire                                        startup_fcsbts;
  input  wire                                        startup_gsr;
  input  wire                                        startup_gts;
  input  wire                                        startup_keyclearb;
  input  wire                                        startup_pack;
  input  wire                                        startup_usrcclko;
  input  wire                                        startup_usrcclkts;
  input  wire                                        startup_usrdoneo;
  input  wire                                        startup_usrdonets;

  // Configuration External Interface from/to Top Level (User)
  output wire                                        cfg_ext_read_received;
  output wire                                        cfg_ext_write_received;
  output wire [9:0]                                  cfg_ext_register_number;
  output wire [7:0]                                  cfg_ext_function_number;
  output wire [31:0]                                 cfg_ext_write_data;
  output wire [3:0]                                  cfg_ext_write_byte_enable;
  input  wire [31:0]                                 cfg_ext_read_data;
  input  wire                                        cfg_ext_read_data_valid;
  

  // Configuration External Interface from/to PCIe Block
  (* keep = "true" *) wire        blk_cfg_ext_read_received;
  (* keep = "true" *) wire        blk_cfg_ext_write_received;
  (* keep = "true" *) wire [9:0]  blk_cfg_ext_register_number;
  (* keep = "true" *) wire [7:0]  blk_cfg_ext_function_number;
  (* keep = "true" *) wire [31:0] blk_cfg_ext_write_data;
  (* keep = "true" *) wire [3:0]  blk_cfg_ext_write_byte_enable;
  (* keep = "true" *) wire [31:0] blk_cfg_ext_read_data;
  (* keep = "true" *) wire        blk_cfg_ext_read_data_valid;
  (* keep = "true" *) wire axi_aclk;
  (* keep = "true" *) wire [5:0] cfg_ltssm_state ;
  (* keep = "true" *) wire axi_aresetn ;
  (* keep = "true" *) wire axi_ctl_aresetn ;
  (* keep = "true" *) wire user_link_up ;
  (* keep = "true" *) wire [2:0] gt_tx_powerdown ;
  (* keep = "true" *) wire axi_ctl_aclk ;
  (* keep = "true" *) wire interrupt_out ;
  (* keep = "true" *) wire intx_msi_request ;
  (* keep = "true" *) wire intx_msi_grant ;
  (* keep = "true" *) wire msi_enable ;
  (* keep = "true" *) wire [4 : 0] msi_vector_num ;
  (* keep = "true" *) wire [2 : 0] msi_vector_width ;
  (* keep = "true" *) wire [10 : 0] msix_entry_num ;
  (* keep = "true" *) wire [C_S_AXI_ID_WIDTH-1 : 0] s_axi_awid ;
  (* keep = "true" *) wire [AXI_ADDR_WIDTH-1 : 0] s_axi_awaddr ;
  (* keep = "true" *) wire [3 : 0] s_axi_awregion ;
  (* keep = "true" *) wire [7 : 0] s_axi_awlen ;
  (* keep = "true" *) wire [2 : 0] s_axi_awsize ;
  (* keep = "true" *) wire [1 : 0] s_axi_awburst ;
  (* keep = "true" *) wire s_axi_awvalid ;
  (* keep = "true" *) wire s_axi_awready ;
  (* keep = "true" *) wire [AXI_DATA_WIDTH-1 : 0] s_axi_wdata ;
  (* keep = "true" *) wire [(AXI_DATA_WIDTH/8)-1 : 0] s_axi_wuser ;
  (* keep = "true" *) wire [AXI_DATA_WIDTH/8-1 : 0] s_axi_wstrb ;
  (* keep = "true" *) wire s_axi_wlast ;
  (* keep = "true" *) wire s_axi_wvalid ;
  (* keep = "true" *) wire s_axi_wready ;
  (* keep = "true" *) wire [C_S_AXI_ID_WIDTH-1 : 0] s_axi_bid ;
  (* keep = "true" *) wire [1 : 0] s_axi_bresp ;
  (* keep = "true" *) wire s_axi_bvalid ;
  (* keep = "true" *) wire s_axi_bready ;
  (* keep = "true" *) wire [C_S_AXI_ID_WIDTH-1 : 0] s_axi_arid ;
  (* keep = "true" *) wire [AXI_ADDR_WIDTH-1 : 0] s_axi_araddr ;
  (* keep = "true" *) wire [3 : 0] s_axi_arregion ;
  (* keep = "true" *) wire [7 : 0] s_axi_arlen ;
  (* keep = "true" *) wire [2 : 0] s_axi_arsize ;
  (* keep = "true" *) wire [1 : 0] s_axi_arburst ;
  (* keep = "true" *) wire s_axi_arvalid ;
  (* keep = "true" *) wire s_axi_arready ;
  (* keep = "true" *) wire [C_S_AXI_ID_WIDTH-1 : 0] s_axi_rid ;
  (* keep = "true" *) wire [AXI_DATA_WIDTH-1 : 0] s_axi_rdata ;
  (* keep = "true" *) wire [(AXI_DATA_WIDTH/8)-1 : 0] s_axi_ruser ;
  (* keep = "true" *) wire [1 : 0] s_axi_rresp ;
  (* keep = "true" *) wire s_axi_rlast ;
  (* keep = "true" *) wire s_axi_rvalid ;
  (* keep = "true" *) wire s_axi_rready ;
  (* keep = "true" *) wire [C_M_AXI_ID_WIDTH-1 : 0] m_axi_awid ;
  (* keep = "true" *) wire [AXI_ADDR_WIDTH-1 : 0] m_axi_awaddr ;
  (* keep = "true" *) wire [7 : 0] m_axi_awlen ;
  (* keep = "true" *) wire [2 : 0] m_axi_awsize ;
  (* keep = "true" *) wire [1 : 0] m_axi_awburst ;
  (* keep = "true" *) wire [2 : 0] m_axi_awprot ;
  (* keep = "true" *) wire m_axi_awvalid ;
  (* keep = "true" *) wire m_axi_awready ;
  (* keep = "true" *) wire m_axi_awlock ;
  (* keep = "true" *) wire [3 : 0] m_axi_awcache ;
  (* keep = "true" *) wire [AXI_DATA_WIDTH-1 : 0] m_axi_wdata ;
  (* keep = "true" *) wire [(AXI_DATA_WIDTH/8)-1 : 0] m_axi_wuser ;
  (* keep = "true" *) wire [AXI_DATA_WIDTH/8-1 : 0] m_axi_wstrb ;
  (* keep = "true" *) wire m_axi_wlast ;
  (* keep = "true" *) wire m_axi_wvalid ;
  (* keep = "true" *) wire m_axi_wready ;
  (* keep = "true" *) wire [C_M_AXI_ID_WIDTH-1 : 0] m_axi_bid ;
  (* keep = "true" *) wire [1 : 0] m_axi_bresp ;
  (* keep = "true" *) wire m_axi_bvalid ;
  (* keep = "true" *) wire m_axi_bready ;
  (* keep = "true" *) wire [C_M_AXI_ID_WIDTH-1 : 0] m_axi_arid ;
  (* keep = "true" *) wire [AXI_ADDR_WIDTH-1 : 0] m_axi_araddr ;
  (* keep = "true" *) wire [7 : 0] m_axi_arlen ;
  (* keep = "true" *) wire [2 : 0] m_axi_arsize ;
  (* keep = "true" *) wire [1 : 0] m_axi_arburst ;
  (* keep = "true" *) wire [2 : 0] m_axi_arprot ;
  (* keep = "true" *) wire m_axi_arvalid ;
  (* keep = "true" *) wire m_axi_arready ;
  (* keep = "true" *) wire m_axi_arlock ;
  (* keep = "true" *) wire [3 : 0] m_axi_arcache ;
  (* keep = "true" *) wire [C_M_AXI_ID_WIDTH-1 : 0] m_axi_rid ;
  (* keep = "true" *) wire [AXI_DATA_WIDTH-1 : 0] m_axi_rdata ;
  (* keep = "true" *) wire [(AXI_DATA_WIDTH/8)-1 : 0] m_axi_ruser ;
  (* keep = "true" *) wire [1 : 0] m_axi_rresp ;
  (* keep = "true" *) wire m_axi_rlast ;
  (* keep = "true" *) wire m_axi_rvalid ;
  (* keep = "true" *) wire m_axi_rready ;
  (* keep = "true" *) wire [PL_LINK_CAP_MAX_LINK_WIDTH-1 : 0] pci_exp_txp ;
  (* keep = "true" *) wire [PL_LINK_CAP_MAX_LINK_WIDTH-1 : 0] pci_exp_txn ;
  (* keep = "true" *) wire [PL_LINK_CAP_MAX_LINK_WIDTH-1 : 0] pci_exp_rxp ;
  (* keep = "true" *) wire [PL_LINK_CAP_MAX_LINK_WIDTH-1 : 0] pci_exp_rxn ;
  (* keep = "true" *) wire refclk ;
  (* keep = "true" *) wire sys_clk_gt ;
  (* keep = "true" *) wire [11 : 0] s_axi_ctl_awaddr ;
  (* keep = "true" *) wire s_axi_ctl_awvalid ;
  (* keep = "true" *) wire s_axi_ctl_awready ;
  (* keep = "true" *) wire [31 : 0] s_axi_ctl_wdata ;
  (* keep = "true" *) wire [3 : 0] s_axi_ctl_wstrb ;
  (* keep = "true" *) wire s_axi_ctl_wvalid ;
  (* keep = "true" *) wire s_axi_ctl_wready ;
  (* keep = "true" *) wire [1 : 0] s_axi_ctl_bresp ;
  (* keep = "true" *) wire s_axi_ctl_bvalid ;
  (* keep = "true" *) wire s_axi_ctl_bready ;
  (* keep = "true" *) wire [11 : 0] s_axi_ctl_araddr ;
  (* keep = "true" *) wire s_axi_ctl_arvalid ;
  (* keep = "true" *) wire s_axi_ctl_arready ;
  (* keep = "true" *) wire [31 : 0] s_axi_ctl_rdata ;
  (* keep = "true" *) wire [1 : 0] s_axi_ctl_rresp ;
  (* keep = "true" *) wire s_axi_ctl_rvalid ;
  (* keep = "true" *) wire s_axi_ctl_rready ;
  //-- Bar Ports

  (* keep = "true" *) wire        drp_rdy ;
  (* keep = "true" *) wire [15:0] drp_do ;
  (* keep = "true" *) wire        drp_clk ;
  (* keep = "true" *) wire        drp_en ;
  (* keep = "true" *) wire        drp_we ;
  (* keep = "true" *) wire [10:0] drp_addr ;
  (* keep = "true" *) wire [15:0] drp_di ;

  (* keep = "true" *) wire                                           ext_ch_gt_drpclk ;
  (* keep = "true" *) wire [((PL_LINK_CAP_MAX_LINK_WIDTH *  9)-1):0] ext_ch_gt_drpaddr ;
  (* keep = "true" *) wire [((PL_LINK_CAP_MAX_LINK_WIDTH *  1)-1):0] ext_ch_gt_drpen ;
  (* keep = "true" *) wire [((PL_LINK_CAP_MAX_LINK_WIDTH *  1)-1):0] ext_ch_gt_drpwe ;
  (* keep = "true" *) wire [((PL_LINK_CAP_MAX_LINK_WIDTH * 16)-1):0] ext_ch_gt_drpdi ;
  (* keep = "true" *) wire [((PL_LINK_CAP_MAX_LINK_WIDTH *  1)-1):0] ext_ch_gt_drprdy ;
  (* keep = "true" *) wire [((PL_LINK_CAP_MAX_LINK_WIDTH * 16)-1):0] ext_ch_gt_drpdo ;

  // ATS Signals - Start
  (* keep = "true" *) wire [AXI_DATA_WIDTH-1 : 0]                    m_axis_cq_tdata ;
  (* keep = "true" *) wire [AXI_DATA_WIDTH/32-1 : 0]                 m_axis_cq_tkeep ;
  (* keep = "true" *) wire [C_S_AXIS_CQ_USER_WIDTH-1 : 0]            m_axis_cq_tuser ;
  (* keep = "true" *) wire                                           m_axis_cq_tlast ;
  (* keep = "true" *) wire                                           m_axis_cq_tvalid ;
  (* keep = "true" *) wire                                           m_axis_cq_tready ;
  (* keep = "true" *) wire [AXI_DATA_WIDTH-1 : 0]                    s_axis_rq_tdata ;
  (* keep = "true" *) wire [AXI_DATA_WIDTH/32-1 : 0]                 s_axis_rq_tkeep ;
  (* keep = "true" *) wire [C_M_AXIS_RQ_USER_WIDTH-1 : 0]            s_axis_rq_tuser ;
  (* keep = "true" *) wire                                           s_axis_rq_tlast ;
  (* keep = "true" *) wire                                           s_axis_rq_tvalid ;
  (* keep = "true" *) wire                                           s_axis_rq_tready ;
  (* keep = "true" *) wire [4 : 0]                                   cfg_status_ats_stu ;
  (* keep = "true" *) wire                                           cfg_status_ats_en ;
  (* keep = "true" *) wire                                           cfg_status_pr_en ;
  (* keep = "true" *) wire                                           cfg_status_pr_rst ;
  (* keep = "true" *) wire                                           cfg_status_pr_uprgi ;
  (* keep = "true" *) wire                                           cfg_status_set_uprgi ;
  (* keep = "true" *) wire                                           cfg_status_pr_rf ;
  (* keep = "true" *) wire                                           cfg_status_set_rf ;
  (* keep = "true" *) wire                                           cfg_status_set_s ;
  (* keep = "true" *) wire                                           cfg_status_clr_s ;
  (* keep = "true" *) wire [31 : 0]                                  cfg_status_ost_pr_alloc ;

  wire [2:0]                    axist_sz;
  wire [2:0]                    aximm_sz;
  wire                          cfg_phy_link_down;
  wire [1:0]                    cfg_phy_link_status;
  wire [2:0]                    cfg_max_read_req;
  wire [7:0]                    cfg_function_status;
  wire [5:0]                    cfg_function_power_state;
  wire [1:0]                    cfg_link_power_state;
  wire    [3:0]  cfg_negotiated_width;
  wire    [2:0]  cfg_current_speed;
  wire    [2:0]  cfg_max_payload;

  // Error Reporting Interface
  wire                          cfg_err_cor_out;
  wire                          cfg_err_nonfatal_out;
  wire                          cfg_err_fatal_out;
  wire                          cfg_local_error;

  wire                          cfg_ltr_enable;
  wire    [1:0] cfg_rx_pm_state;
   wire    [1:0] cfg_tx_pm_state;
  wire [1:0]                    cfg_rcb_status;
  wire [1:0]                    cfg_dpa_substate_change;
  wire [1:0]                    cfg_obff_enable;
  wire                          cfg_pl_status_change;

  wire                          cfg_msg_received;
  wire [7:0]                    cfg_msg_received_data;
  wire [4:0]                    cfg_msg_received_type;

  wire                          cfg_msg_transmit;
  wire [2:0]                    cfg_msg_transmit_type;
  wire [31:0]                   cfg_msg_transmit_data;
  wire                          cfg_msg_transmit_done;
  
  wire [2:0]                    cfg_fc_sel;
  wire [7:0]                    cfg_fc_ph;
  wire [11:0]                   cfg_fc_pd;
  wire [7:0]                    cfg_fc_nph;
  wire [11:0]                   cfg_fc_npd;
  wire [7:0]                    cfg_fc_cplh;
  wire [11:0]                   cfg_fc_cpld;

  wire [2:0]                    cfg_per_func_status_control;
  wire [15:0]                   cfg_per_func_status_data;
  wire [3:0]                    cfg_per_function_number;
  wire                          cfg_per_function_output_request;
  wire                          cfg_per_function_update_done;

  wire [7:0] 	                cfg_rev_id;
  wire [15:0] 	                cfg_subsys_id = PF0_SUBSYSTEM_ID;
  wire [15:0] 	                cfg_subsys_vend_id = PF0_SUBSYSTEM_VENDOR_ID;
  wire [15:0] 	                cfg_vend_id;
  
  wire  [63:0]                  cfg_dsn;
  wire                          cfg_power_state_change_ack;
  wire                          cfg_power_state_change_interrupt;
  wire                          cfg_err_cor_in;
  wire                          cfg_err_uncor_in;

  wire                          cfg_link_training_enable;

  // Interrupt Interface Signals
  wire  [3:0] 	                cfg_interrupt_int;
  wire  [3:0]                   cfg_interrupt_pending;
  wire                          cfg_interrupt_sent;
  wire                          cfg_interrupt_msi_enable_bit1;
  wire  [5:0]                   cfg_interrupt_msi_mmenable;
  wire                          cfg_interrupt_msi_mask_update;
  wire  [31:0]                  cfg_interrupt_msi_data;
  wire  [3:0]                   cfg_interrupt_msi_select;
  wire  [31:0]                  cfg_interrupt_msi_int;
  wire  [31:0]                  cfg_interrupt_msi_pending_status;
  wire                          cfg_interrupt_msi_pending_status_data_enable;
  wire  [3:0]                   cfg_interrupt_msi_pending_status_function_num;
  wire                          cfg_interrupt_msi_sent;
  wire                          cfg_interrupt_msi_fail;
  wire  [2:0]                   cfg_interrupt_msi_attr;
  wire                          cfg_interrupt_msi_tph_present;
  wire  [1:0]                   cfg_interrupt_msi_tph_type;
  wire  [8:0]                   cfg_interrupt_msi_tph_st_tag;
  wire  [3:0]                   cfg_interrupt_msi_function_number;
  wire                          cfg_hot_reset_out;
  wire                          cfg_config_space_enable;
  wire                          cfg_req_pm_transition_l23_ready;
  wire                          cfg_hot_reset_in;
  wire  [7:0]                   cfg_ds_port_number;
  wire  [7:0]                   cfg_ds_bus_number;
  wire  [4:0]                   cfg_ds_device_number;
  wire  [2:0]                   cfg_ds_function_number;
  wire  [4:0]                   user_tph_stt_address;
  wire  [3:0]                   user_tph_function_num;
  wire  [31:0]                  user_tph_stt_read_data;
  wire                          user_tph_stt_read_data_valid;
  wire                          user_tph_stt_read_enable;

  wire  [3:0] 	                cfg_flr_done;
  wire  [7:0] 	                cfg_vf_flr_done;
  wire  [3:0]                   cfg_flr_in_process;
   
  wire                          m_axis_rq_tlast;
  wire  [AXI_DATA_WIDTH-1:0]    m_axis_rq_tdata;
  wire [C_M_AXIS_RQ_USER_WIDTH-1:0] m_axis_rq_tuser;
  wire   [C_S_KEEP_WIDTH-1:0]   m_axis_rq_tkeep;
  wire   [C_M_AXIS_RQ_READY_WIDTH-1:0] m_axis_rq_tready;
  wire                          m_axis_rq_tvalid;

  wire   [AXI_DATA_WIDTH-1:0]   m_axis_rc_tdata;
  wire [C_M_AXIS_RC_USER_WIDTH-1:0] m_axis_rc_tuser;
  wire                          m_axis_rc_tlast;
  wire   [C_M_KEEP_WIDTH-1:0]   m_axis_rc_tkeep;
  wire                          m_axis_rc_tvalid;
  wire [C_M_AXIS_RC_READY_WIDTH-1:0] m_axis_rc_tready;
  wire                          m_axis_rc_tready_axi4mm;

  wire   [AXI_DATA_WIDTH-1:0]   m_axis_cq_tdata_int;
  wire [C_S_AXIS_CQ_USER_WIDTH-1:0] m_axis_cq_tuser_int;
  wire                          m_axis_cq_tlast_int;
  wire   [C_M_KEEP_WIDTH-1:0]   m_axis_cq_tkeep_int;
  wire                          m_axis_cq_tvalid_int;
  wire [C_S_AXIS_CQ_READY_WIDTH-1:0] m_axis_cq_tready_int;
  wire                          m_axis_cq_tready_axi4mm;

  wire   [AXI_DATA_WIDTH-1:0]   s_axis_cc_tdata;
  wire [C_S_AXIS_CC_USER_WIDTH-1:0] s_axis_cc_tuser;
  wire                          s_axis_cc_tlast;
  wire   [C_S_KEEP_WIDTH-1:0]   s_axis_cc_tkeep;
  wire                          s_axis_cc_tvalid;
  wire   [C_S_AXIS_CC_READY_WIDTH-1:0] s_axis_cc_tready;

  wire                          user_reset;
  wire                          user_lnk_up;
  wire   [1:0]                  pcie_tfc_nph_av;
  wire   [1:0]                  pcie_tfc_npd_av;
  wire   [1:0]                  pcie_tfc_nph_av_aximm;
  wire   [5:0]                  pcie_cq_np_req_count;
  wire                          pcie_cq_np_req;
  wire                          pcie_rq_seq_num_vld;
  wire                          pcie_rq_seq_num_vld1;

  wire   [3:0]                  pcie_rq_seq_num;
  wire   [3:0]                  pcie_rq_seq_num1;

  wire   [18:0]                 cfg_mgmt_addr;
  wire                          cfg_mgmt_write;
  wire   [31:0]                 cfg_mgmt_write_data;
  wire   [3:0]                  cfg_mgmt_byte_enable;
  wire                          cfg_mgmt_read;
  wire   [31:0]                 cfg_mgmt_read_data;
  wire                          cfg_mgmt_read_write_done;
  wire                          cfg_mgmt_type1_cfg_reg_access;

  wire   [15:0]                 blk_dcontrol;
  wire   [15:0]                 blk_command;
  wire                          attr_rlx_masread_maswrite;
  wire                          attr_rlx_mascpl_slvwrite;
  wire                          attr_rlx_slvread_slvwrite;
  wire                          attr_rlx_slvcpl_maswrite;
  wire   [15:0]                 requester_id;
  wire   [7:0]                  pcie_rq_tag;
  wire                          pcie_rq_tag_vld;

  wire                          axi_ctl_aclk_sig;
  
generate
  if (AXI_ACLK_LOOPBACK == "TRUE") begin
    assign axi_ctl_aclk_sig = axi_ctl_aclk;
  end else begin
    assign axi_ctl_aclk_sig = axi_aclk;
  end
endgenerate

  assign aximm_sz = ((AXI_DATA_WIDTH == 256) ? 3'h2 :
          ((AXI_DATA_WIDTH == 128) ?  3'h1 :
	  ((AXI_DATA_WIDTH == 64) ?  3'h0 : 3'h3)));
  assign axist_sz = aximm_sz;
  assign m_axis_cq_tready_int = {C_S_AXIS_CQ_READY_WIDTH{m_axis_cq_tready_axi4mm}};
  assign m_axis_rc_tready = {C_M_AXIS_RC_READY_WIDTH{m_axis_rc_tready_axi4mm}};
  assign axi_aresetn = ~user_reset;
  assign pcie_tfc_nph_av_aximm = pcie_tfc_nph_av;
  assign pcie_rq_seq_num1 = 4'h0;
  assign pcie_rq_seq_num_vld1 = 1'b0;
  assign cfg_interrupt_msix_enable[3:2] = 2'b00;
  assign cfg_interrupt_msix_mask[3:2] = 2'b00;
  assign cfg_interrupt_msix_vf_enable[7:6] = 2'b00;
  assign cfg_interrupt_msix_vf_mask[7:6] = 2'b00; 

  // Synchronize AXI CTL Interface Reset
  wire mmcm_lock;
  reg axi_ctl_aresetn_reg;
  assign axi_ctl_aresetn = axi_ctl_aresetn_reg;
  (* ASYNC_REG = "TRUE" *)  reg sys_rst_n_reg;
  (* ASYNC_REG = "TRUE" *)  reg sys_rst_n_reg2;
  always @ (posedge axi_ctl_aclk_sig or negedge sys_rst_n) begin
      if (!sys_rst_n) begin
          sys_rst_n_reg  <= #TCQ 1'b0;
          sys_rst_n_reg2 <= #TCQ 1'b0;
      end else begin
          sys_rst_n_reg  <= #TCQ 1'b1;
          sys_rst_n_reg2 <= #TCQ sys_rst_n_reg;  
      end
  end
  always @ (posedge axi_ctl_aclk_sig) begin
      if (sys_rst_n_reg2 && mmcm_lock)
          axi_ctl_aresetn_reg <= #TCQ 1'b1; 
      else
          axi_ctl_aresetn_reg <= #TCQ 1'b0;
  end
  assign cfg_fc_sel = 3'b000;
  assign m_axi_awid = 'h0;
  assign m_axi_arid = 'h0;

  assign user_link_up = user_lnk_up;
 
  localparam C_INCLUDE_RC = (PL_UPSTREAM_FACING == "true") ? 0 : 1;

  axi_pcie3_v3_0_10_axi_pcie_mm_s_wrap #(
    .TCQ(TCQ),
    .PL_LINK_CAP_MAX_LINK_SPEED(PL_LINK_CAP_MAX_LINK_SPEED),
    .NO_SLV_ERR( NO_SLV_ERR ),
    .C_FAMILY(C_FAMILY),
    .C_ATS_ENABLE(C_ATS_ENABLE),
    .C_PRI_ENABLE(C_PRI_ENABLE),
    .C_FF_ON_INT_IF(C_FF_ON_INT_IF),
    .C_ATS_OFFSET(C_ATS_OFFSET),
    .C_PR_OFFSET(C_PR_OFFSET),
    .C_ATS_CAP_NEXTPTR(C_ATS_CAP_NEXTPTR),
    .C_PR_CAP_NEXTPTR(C_PR_CAP_NEXTPTR),
    .C_INV_QUEUE_DEPTH(C_INV_QUEUE_DEPTH),
    .C_OST_PR_CAP(C_OST_PR_CAP),
    .C_M_AXI_ID_WIDTH(C_M_AXI_ID_WIDTH),
    .C_S_AXI_ID_WIDTH(C_S_AXI_ID_WIDTH),
    .C_S_AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
    .C_S_AXI_DATA_WIDTH(AXI_DATA_WIDTH),
    .C_M_AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
    .C_M_AXI_DATA_WIDTH(AXI_DATA_WIDTH),
    .C_S_AXIS_DATA_WIDTH(AXI_DATA_WIDTH),
    .C_M_AXIS_DATA_WIDTH(AXI_DATA_WIDTH),
    .C_RD_BUFFER_ADDR_SIZE(C_RD_BUFFER_ADDR_SIZE),
    .C_RD_BUFFER_SIZE_BITS(C_RD_BUFFER_SIZE_BITS),
    .C_M_AXIS_RQ_USER_WIDTH(C_M_AXIS_RQ_USER_WIDTH),
    .C_M_AXIS_RC_USER_WIDTH(C_M_AXIS_RC_USER_WIDTH),
    .C_S_AXIS_CQ_USER_WIDTH(C_S_AXIS_CQ_USER_WIDTH),
    .C_S_AXIS_CC_USER_WIDTH(C_S_AXIS_CC_USER_WIDTH),
    .C_M_NUM_AXI_WRITE(C_M_AXI_NUM_WRITE),
    .C_M_NUM_AXI_READ(C_M_AXI_NUM_READ),
    .C_S_NUM_AXI_WRITE(C_S_AXI_NUM_WRITE),
    .C_S_NUM_AXI_READ(C_S_AXI_NUM_READ),
    .C_COMP_TIMEOUT(C_COMP_TIMEOUT),
    .C_TIMEOUT0_SEL(C_TIMEOUT0_SEL),
    .C_TIMEOUT1_SEL(C_TIMEOUT1_SEL),
    .C_TIMEOUT_MULT(C_TIMEOUT_MULT),
    .C_OLD_BRIDGE_TIMEOUT(C_OLD_BRIDGE_TIMEOUT),
    .C_INCLUDE_RC(C_INCLUDE_RC),
    .C_S_AXI_SUPPORTS_NARROW_BURST(C_S_AXI_SUPPORTS_NARROW_BURST),
    .C_INCLUDE_BAROFFSET_REG(C_INCLUDE_BAROFFSET_REG),
    .C_AXIBAR_NUM(C_AXIBAR_NUM),
    .C_AXIBAR_NOXLATE(C_AXIBAR_NOXLATE),
    .C_AXIBAR2PCIEBAR_0(C_AXIBAR2PCIEBAR_0),
    .C_AXIBAR2PCIEBAR_1(C_AXIBAR2PCIEBAR_1),
    .C_AXIBAR2PCIEBAR_2(C_AXIBAR2PCIEBAR_2),
    .C_AXIBAR2PCIEBAR_3(C_AXIBAR2PCIEBAR_3),
    .C_AXIBAR2PCIEBAR_4(C_AXIBAR2PCIEBAR_4),
    .C_AXIBAR2PCIEBAR_5(C_AXIBAR2PCIEBAR_5),
    .C_AXIBAR2PCIEATTR_0(C_AXIBAR2PCIEATTR_0),
    .C_AXIBAR2PCIEATTR_1(C_AXIBAR2PCIEATTR_1),
    .C_AXIBAR2PCIEATTR_2(C_AXIBAR2PCIEATTR_2),
    .C_AXIBAR2PCIEATTR_3(C_AXIBAR2PCIEATTR_3),
    .C_AXIBAR2PCIEATTR_4(C_AXIBAR2PCIEATTR_4),
    .C_AXIBAR2PCIEATTR_5(C_AXIBAR2PCIEATTR_5),
    .C_AXIBAR_AS_0(C_AXIBAR_AS_0),
    .C_AXIBAR_AS_1(C_AXIBAR_AS_1),
    .C_AXIBAR_AS_2(C_AXIBAR_AS_2),
    .C_AXIBAR_AS_3(C_AXIBAR_AS_3),
    .C_AXIBAR_AS_4(C_AXIBAR_AS_4),
    .C_AXIBAR_AS_5(C_AXIBAR_AS_5),
    .C_AXIBAR_0(C_AXIBAR_0),
    .C_AXIBAR_HIGHADDR_0(C_AXIBAR_HIGHADDR_0),
    .C_AXIBAR_1(C_AXIBAR_1),
    .C_AXIBAR_HIGHADDR_1(C_AXIBAR_HIGHADDR_1),
    .C_AXIBAR_2(C_AXIBAR_2),
    .C_AXIBAR_HIGHADDR_2(C_AXIBAR_HIGHADDR_2),
    .C_AXIBAR_3(C_AXIBAR_3),
    .C_AXIBAR_HIGHADDR_3(C_AXIBAR_HIGHADDR_3),
    .C_AXIBAR_4(C_AXIBAR_4),
    .C_AXIBAR_HIGHADDR_4(C_AXIBAR_HIGHADDR_4),
    .C_AXIBAR_5(C_AXIBAR_5),
    .C_AXIBAR_HIGHADDR_5(C_AXIBAR_HIGHADDR_5),
    .C_PCIEBAR_NUM(PCIEBAR_NUM),
    .C_PCIEBAR_AS(C_PCIEBAR_AS),
    .C_PCIEBAR2AXIBAR_0(C_PCIEBAR2AXIBAR_0),
    .C_PCIEBAR2AXIBAR_0_SEC(C_PCIEBAR2AXIBAR_0_SEC),
    .C_PCIEBAR_LEN_0(C_PCIEBAR_LEN_0),
    .C_PCIEBAR2AXIBAR_1(C_PCIEBAR2AXIBAR_1),
    .C_PCIEBAR2AXIBAR_1_SEC(C_PCIEBAR2AXIBAR_1_SEC),
    .C_PCIEBAR_LEN_1(C_PCIEBAR_LEN_1),
    .C_PCIEBAR2AXIBAR_2(C_PCIEBAR2AXIBAR_2),
    .C_PCIEBAR2AXIBAR_2_SEC(C_PCIEBAR2AXIBAR_2_SEC),
    .C_PCIEBAR_LEN_2(C_PCIEBAR_LEN_2),
    .C_PCIEBAR2AXIBAR_3(C_PCIEBAR2AXIBAR_3),
    .C_PCIEBAR2AXIBAR_3_SEC(C_PCIEBAR2AXIBAR_3_SEC),
    .C_PCIEBAR_LEN_3(C_PCIEBAR_LEN_3),
    .C_PCIEBAR2AXIBAR_4(C_PCIEBAR2AXIBAR_4),
    .C_PCIEBAR2AXIBAR_4_SEC(C_PCIEBAR2AXIBAR_4_SEC),
    .C_PCIEBAR_LEN_4(C_PCIEBAR_LEN_4),
    .C_PCIEBAR2AXIBAR_5(C_PCIEBAR2AXIBAR_5),
    .C_PCIEBAR2AXIBAR_5_SEC(C_PCIEBAR2AXIBAR_5_SEC),
    .C_PCIEBAR_LEN_5(C_PCIEBAR_LEN_5),
    .C_PCIEBAR2AXIBAR_6(C_PCIEBAR2AXIBAR_6),
    .C_PCIEBAR2AXIBAR_6_SEC(C_PCIEBAR2AXIBAR_6_SEC),
    .C_PCIEBAR_LEN_6(C_PCIEBAR_LEN_6),
    .C_EP_LINK_PARTNER_RCB(C_EP_LINK_PARTNER_RCB),
    .C_BASEADDR( C_BASEADDR ),
    .C_HIGHADDR( C_HIGHADDR ),
    .C_LAST_CORE_CAP_ADDR( C_LAST_CORE_CAP_ADDR ),
    .C_VSEC_CAP_ADDR( C_VSEC_CAP_ADDR ),
    .C_VSEC_CAP_LAST( C_VSEC_CAP_LAST ),
    .C_VSEC_ID( C_VSEC_ID ),
    .C_DEVICE_NUMBER( C_DEVICE_NUMBER ),
    .C_NUM_USER_INTR( C_NUM_USER_INTR ),
    .C_NUM_USER_NEW_INTR( C_NUM_USER_NEW_INTR ),
    .C_AXIBRIDGE_ECC_DATAPROT_EN(C_AXIBRIDGE_ECC_DATAPROT_EN),
    .C_AXIBRIDGE_PARITY_DATAPROT_EN(C_AXIBRIDGE_PARITY_DATAPROT_EN),
    .C_USER_PTR( C_USER_PTR ),
    .C_RLX_SLVRD_SLVWR(C_RLX_SLVRD_SLVWR),
    .C_RLX_SLVCPL_MASWR(C_RLX_SLVCPL_MASWR),
    .C_RLX_MASRD_MASWR(C_RLX_MASRD_MASWR),
    .C_RLX_MASCPL_SLVWR(C_RLX_MASCPL_SLVWR),
    .AXSIZE_BYTE_ACCESS_EN(AXSIZE_BYTE_ACCESS_EN),
    .C_MSI_ENABLED(MSI_ENABLED)
  ) inst (
    .axi_aclk                                       ( axi_aclk ),
    .user_reset                                     ( user_reset ),
    .axi_ctl_aresetn                                ( axi_ctl_aresetn ),
    // AXI Streaming Size
    .axist_sz                                       ( axist_sz ),
			     
    // AXI MM Size
    .aximm_sz                                       ( aximm_sz ),

    //--AXI Streaming Block Interface
    .user_lnk_up                                    ( user_lnk_up ),
    .cfg_ds_bus_number                              ( cfg_ds_bus_number ),
    .cfg_ds_device_number                           ( cfg_ds_device_number ),
    .cfg_ds_function_number                         ( cfg_ds_function_number ),
    .cfg_ds_port_number                             ( cfg_ds_port_number ),
    .s_axi_awid                                     ( s_axi_awid ),
    .s_axi_awaddr                                   ( s_axi_awaddr ),
    .s_axi_awregion                                 ( s_axi_awregion ),
    .s_axi_awlen                                    ( s_axi_awlen ),
    .s_axi_awsize                                   ( s_axi_awsize ),
    .s_axi_awburst                                  ( s_axi_awburst ),
    .s_axi_awvalid                                  ( s_axi_awvalid ),
    .s_axi_awready                                  ( s_axi_awready ),
    .s_axi_wdata                                    ( s_axi_wdata ),
    .s_axi_wdataeccparity                           ( s_axi_wuser ),
    .s_axi_wstrb                                    ( s_axi_wstrb ),
    .s_axi_wlast                                    ( s_axi_wlast ),
    .s_axi_wvalid                                   ( s_axi_wvalid ),
    .s_axi_wready                                   ( s_axi_wready ),
    .s_axi_bid                                      ( s_axi_bid ),
    .s_axi_bresp                                    ( s_axi_bresp ),
    .s_axi_bvalid                                   ( s_axi_bvalid ),
    .s_axi_bready                                   ( s_axi_bready ),
    .s_axi_arid                                     ( s_axi_arid ),
    .s_axi_araddr                                   ( s_axi_araddr ),
    .s_axi_arregion                                 ( s_axi_arregion ),
    .s_axi_arlen                                    ( s_axi_arlen ),
    .s_axi_arsize                                   ( s_axi_arsize ),
    .s_axi_arburst                                  ( s_axi_arburst ),
    .s_axi_arvalid                                  ( s_axi_arvalid ),
    .s_axi_arready                                  ( s_axi_arready ),
    .s_axi_rid                                      ( s_axi_rid ),
    .s_axi_rdata                                    ( s_axi_rdata ),
    .s_axi_rdataeccparity                           ( s_axi_ruser ),
    .s_axi_rresp                                    ( s_axi_rresp ),
    .s_axi_rlast                                    ( s_axi_rlast ),
    .s_axi_rvalid                                   ( s_axi_rvalid ),
    .s_axi_rready                                   ( s_axi_rready ),
    .m_axi_awaddr                                   ( m_axi_awaddr ),
    .m_axi_awlen                                    ( m_axi_awlen ),
    .m_axi_awsize                                   ( m_axi_awsize ),
    .m_axi_awburst                                  ( m_axi_awburst ),
    .m_axi_awprot                                   ( m_axi_awprot ),
    .m_axi_awvalid                                  ( m_axi_awvalid ),
    .m_axi_awready                                  ( m_axi_awready ),
    .m_axi_awlock                                   ( m_axi_awlock ),
    .m_axi_awcache                                  ( m_axi_awcache ),
    .m_axi_wdata                                    ( m_axi_wdata ),
    .m_axi_wdataeccparity                           ( m_axi_wuser ),
    .m_axi_wstrb                                    ( m_axi_wstrb ),
    .m_axi_wlast                                    ( m_axi_wlast ),
    .m_axi_wvalid                                   ( m_axi_wvalid ),
    .m_axi_wready                                   ( m_axi_wready ),
    .m_axi_bresp                                    ( m_axi_bresp ),
    .m_axi_bvalid                                   ( m_axi_bvalid ),
    .m_axi_bready                                   ( m_axi_bready ),
    .m_axi_arid                                     (  ),
    .m_axi_araddr                                   ( m_axi_araddr ),
    .m_axi_arlen                                    ( m_axi_arlen ),
    .m_axi_arsize                                   ( m_axi_arsize ),
    .m_axi_arburst                                  ( m_axi_arburst ),
    .m_axi_arprot                                   ( m_axi_arprot ),
    .m_axi_arvalid                                  ( m_axi_arvalid ),
    .m_axi_arready                                  ( m_axi_arready ),
    .m_axi_arlock                                   ( m_axi_arlock ),
    .m_axi_arcache                                  ( m_axi_arcache ),
    .m_axi_rid                                      ( m_axi_rid ),
    .m_axi_rdata                                    ( m_axi_rdata ),
    .m_axi_rdataeccparity                           ( m_axi_ruser ),
    .m_axi_rresp                                    ( m_axi_rresp ),
    .m_axi_rlast                                    ( m_axi_rlast ),
    .m_axi_rvalid                                   ( m_axi_rvalid ),
    .m_axi_rready                                   ( m_axi_rready ),

    //-- AXIS RQ Request Channel
    .m_axis_rq_tdata                                ( m_axis_rq_tdata ),
    .m_axis_rq_tkeep                                ( m_axis_rq_tkeep ),
    .m_axis_rq_tuser                                ( m_axis_rq_tuser ),
    .m_axis_rq_tlast                                ( m_axis_rq_tlast ),
    .m_axis_rq_tvalid                               ( m_axis_rq_tvalid ),
    .m_axis_rq_tready                               ( m_axis_rq_tready ),
    .pcie_tfc_nph_av                                (pcie_tfc_nph_av_aximm),
    .pcie_rq_seq_num_vld                            ( pcie_rq_seq_num_vld ),
    .pcie_rq_seq_num                                ( pcie_rq_seq_num[3:0]),
    .pcie_rq_seq_num_vld1                           (pcie_rq_seq_num_vld1),
    .pcie_rq_seq_num1                               (pcie_rq_seq_num1[3:0]),

    //-- AXIS Completion Requester Channel
    .s_axis_rc_tdata                                ( m_axis_rc_tdata ),
    .s_axis_rc_tkeep                                ( m_axis_rc_tkeep ),
    .s_axis_rc_tuser                                ( m_axis_rc_tuser ),
    .s_axis_rc_tlast                                ( m_axis_rc_tlast ),
    .s_axis_rc_tvalid                               ( m_axis_rc_tvalid ),
    .s_axis_rc_tready                               ( m_axis_rc_tready_axi4mm ),

      //--AXIS Completer Request Channel
     .s_axis_cq_tdata                               ( m_axis_cq_tdata_int ),
     .s_axis_cq_tkeep                               ( m_axis_cq_tkeep_int ),
     .s_axis_cq_tlast                               ( m_axis_cq_tlast_int ),
     .s_axis_cq_tvalid                              ( m_axis_cq_tvalid_int ),
     .s_axis_cq_tready                              ( m_axis_cq_tready_axi4mm ),
     .s_axis_cq_tuser                               ( m_axis_cq_tuser_int ),
     .pcie_cq_np_req                                ( pcie_cq_np_req ),

      //--AXIS Completion Target Channel
     .m_axis_cc_tdata                               ( s_axis_cc_tdata ),
     .m_axis_cc_tkeep                               ( s_axis_cc_tkeep ),
     .m_axis_cc_tlast                               ( s_axis_cc_tlast ),
     .m_axis_cc_tvalid                              ( s_axis_cc_tvalid ),
     .m_axis_cc_tready                              ( s_axis_cc_tready ),
     .m_axis_cc_tuser                               ( s_axis_cc_tuser ),

      
     // AXI -Lite Write Address channel
     .s_axi_ctl_awaddr                              ( {20'b0, s_axi_ctl_awaddr} ),
     .s_axi_ctl_awvalid                             ( s_axi_ctl_awvalid ),
     .s_axi_ctl_awready                             ( s_axi_ctl_awready ),
    
     // AXI - Lite Write Data Channel
     .s_axi_ctl_wdata                               ( s_axi_ctl_wdata ),
     .s_axi_ctl_wstrb                               ( s_axi_ctl_wstrb ),
     .s_axi_ctl_wvalid                              ( s_axi_ctl_wvalid ),
     .s_axi_ctl_wready                              ( s_axi_ctl_wready ),

     // AXI - Lite Write Response Channel
     .s_axi_ctl_bresp                               ( s_axi_ctl_bresp ),
     .s_axi_ctl_bvalid                              ( s_axi_ctl_bvalid ),
     .s_axi_ctl_bready                              ( s_axi_ctl_bready ),
 
     // AXI -Lite Read Address channel
     .s_axi_ctl_araddr                              ( {20'b0, s_axi_ctl_araddr} ),
     .s_axi_ctl_arvalid                             ( s_axi_ctl_arvalid ),
     .s_axi_ctl_arready                             ( s_axi_ctl_arready ),

     // AXI - Lite Read Response Channel
     .s_axi_ctl_rdata                               ( s_axi_ctl_rdata ),
     .s_axi_ctl_rresp                               ( s_axi_ctl_rresp ),
     .s_axi_ctl_rvalid                              ( s_axi_ctl_rvalid ),
     .s_axi_ctl_rready                              ( s_axi_ctl_rready ),

     // Management Interface
     .cfg_mgmt_addr                                 ( cfg_mgmt_addr ),
     .cfg_mgmt_write                                ( cfg_mgmt_write ),
     .cfg_mgmt_write_data                           ( cfg_mgmt_write_data ),
     .cfg_mgmt_byte_enable                          ( cfg_mgmt_byte_enable ),
     .cfg_mgmt_read                                 ( cfg_mgmt_read ),
     .cfg_mgmt_read_data                            ( cfg_mgmt_read_data ),
     .cfg_mgmt_read_write_done                      ( cfg_mgmt_read_write_done ),
     .cfg_mgmt_type1_cfg_reg_access                 ( cfg_mgmt_type1_cfg_reg_access ),
 
     .cfg_phy_link_down                             ( cfg_phy_link_down ),
     .cfg_phy_link_status                           ( cfg_phy_link_status ),
     
     
     .cfg_max_payload                               ( cfg_max_payload ),
     .cfg_negotiated_width                          ( cfg_negotiated_width ),
     .cfg_current_speed                             ( cfg_current_speed ),
     .cfg_max_read_req                              ( cfg_max_read_req ),
     .cfg_function_status                           ( {8'b0, cfg_function_status} ),
     .cfg_per_func_status_control                   ( cfg_per_func_status_control ),
     .cfg_per_func_status_data                      ( cfg_per_func_status_data ),
     .cfg_per_function_number                       ( cfg_per_function_number ),
     .cfg_per_function_output_request               ( cfg_per_function_output_request ),
     .cfg_per_function_update_done                  ( cfg_per_function_update_done ),

     // Error Reporting Interface
     .cfg_err_cor_out                               ( cfg_err_cor_out ),
     .cfg_err_nonfatal_out                          ( cfg_err_nonfatal_out ),
     .cfg_err_fatal_out                             ( cfg_err_fatal_out ),
     .cfg_local_error                               ( cfg_local_error ),
 
     .cfg_ltssm_state                               ( cfg_ltssm_state ),
     .cfg_pl_status_change                          ( cfg_pl_status_change ),

     .cfg_msg_received                              ( cfg_msg_received ),
     .cfg_msg_received_data                         ( cfg_msg_received_data ),
     .cfg_msg_received_type                         ( cfg_msg_received_type ),

     .cfg_msg_transmit                              ( cfg_msg_transmit ),
     .cfg_msg_transmit_type                         ( cfg_msg_transmit_type ),
     .cfg_msg_transmit_data                         ( cfg_msg_transmit_data ),
     .cfg_msg_transmit_done                         ( cfg_msg_transmit_done ),
     .cfg_rev_id                                    ( cfg_rev_id            ),
     .cfg_subsys_id                                 (),
     .cfg_subsys_vend_id                            (),
     .cfg_vend_id                                   ( cfg_vend_id ),
     .cfg_dsn                                       ( cfg_dsn ),
     .cfg_err_cor_in                                ( cfg_err_cor_in ),
     .cfg_err_uncor_in                              ( cfg_err_uncor_in ),

     .cfg_link_training_enable                      ( cfg_link_training_enable ),
 
     .user_cfg_ext_read_received_o                  ( cfg_ext_read_received ),
     .user_cfg_ext_write_received_o                 ( cfg_ext_write_received ),
     .user_cfg_ext_register_number_o                ( cfg_ext_register_number ),
     .user_cfg_ext_function_number_o                ( cfg_ext_function_number ),
     .user_cfg_ext_write_data_o                     ( cfg_ext_write_data ),
     .user_cfg_ext_write_byte_enable_o              ( cfg_ext_write_byte_enable ),
     .user_cfg_ext_read_data_i                      ( cfg_ext_read_data ),
     .user_cfg_ext_read_data_valid_i                ( cfg_ext_read_data_valid ),

     .blk_cfg_ext_read_received_i                   ( blk_cfg_ext_read_received ),
     .blk_cfg_ext_write_received_i                  ( blk_cfg_ext_write_received ),
     .blk_cfg_ext_register_number_i                 ( blk_cfg_ext_register_number ),
     .blk_cfg_ext_function_number_i                 ( blk_cfg_ext_function_number ),
     .blk_cfg_ext_write_data_i                      ( blk_cfg_ext_write_data ),
     .blk_cfg_ext_write_byte_enable_i               ( blk_cfg_ext_write_byte_enable ),
     .blk_cfg_ext_read_data_o                       ( blk_cfg_ext_read_data ),
     .blk_cfg_ext_read_data_valid_o                 ( blk_cfg_ext_read_data_valid ),

     .cfg_interrupt_int                             ( cfg_interrupt_int ),
     .cfg_interrupt_pending                         ( cfg_interrupt_pending ),
     .cfg_interrupt_sent                            ( cfg_interrupt_sent ),
     .cfg_interrupt_msi_mmenable                    ( {6'b0, cfg_interrupt_msi_mmenable} ),
     .cfg_interrupt_msi_mask_update                 ( cfg_interrupt_msi_mask_update ),
     .cfg_interrupt_msi_data                        ( cfg_interrupt_msi_data ),
     .cfg_interrupt_msi_int                         ( cfg_interrupt_msi_int ),
     .cfg_interrupt_msi_pending_status              ( cfg_interrupt_msi_pending_status ),
     .cfg_interrupt_msi_pending_status_data_enable  ( cfg_interrupt_msi_pending_status_data_enable ),
     .cfg_interrupt_msi_pending_status_function_num ( cfg_interrupt_msi_pending_status_function_num ),
     .cfg_interrupt_msi_sent                        ( cfg_interrupt_msi_sent ),
     .cfg_interrupt_msi_fail                        ( cfg_interrupt_msi_fail ),

     .cfg_interrupt_msi_attr                        ( cfg_interrupt_msi_attr ),
     .cfg_interrupt_msi_tph_present                 ( cfg_interrupt_msi_tph_present ),
     .cfg_interrupt_msi_tph_type                    ( cfg_interrupt_msi_tph_type ),
     .cfg_interrupt_msi_tph_st_tag                  ( cfg_interrupt_msi_tph_st_tag ),

     // EP only
     .cfg_flr_in_process                            ( cfg_flr_in_process ),
     .cfg_flr_done                                  ( cfg_flr_done),
     .cfg_vf_flr_done                               ( cfg_vf_flr_done),
     .cfg_hot_reset_out                             ( cfg_hot_reset_out ),
     .cfg_config_space_enable                       ( cfg_config_space_enable ),

     // RP only
    .cfg_hot_reset_in                               ( cfg_hot_reset_in ),

    .m_axis_cq_tdata                                ( m_axis_cq_tdata ),
    .m_axis_cq_tvalid                               ( m_axis_cq_tvalid ),
    .m_axis_cq_tready                               ( m_axis_cq_tready ),
    .m_axis_cq_tkeep                                ( m_axis_cq_tkeep ),
    .m_axis_cq_tlast                                ( m_axis_cq_tlast ),
    .m_axis_cq_tuser                                ( m_axis_cq_tuser ),

    .s_axis_rq_tdata                                ( s_axis_rq_tdata ),
    .s_axis_rq_tvalid                               ( s_axis_rq_tvalid ),
    .s_axis_rq_tready                               ( s_axis_rq_tready ),
    .s_axis_rq_tkeep                                ( s_axis_rq_tkeep ),
    .s_axis_rq_tlast                                ( s_axis_rq_tlast ),
    .s_axis_rq_tuser                                ( s_axis_rq_tuser ),



    .cfg_status_ats_stu                             ( cfg_status_ats_stu ),
    .cfg_status_ats_en                              ( cfg_status_ats_en ),
    .cfg_status_pr_en                               ( cfg_status_pr_en ),
    .cfg_status_pr_rst                              ( cfg_status_pr_rst ),
    .cfg_status_pr_uprgi                            ( cfg_status_pr_uprgi ),
    .cfg_status_set_uprgi                           ( cfg_status_set_uprgi ),
    .cfg_status_pr_rf                               ( cfg_status_pr_rf ),
    .cfg_status_set_rf                              ( cfg_status_set_rf ),
    .cfg_status_set_s                               ( cfg_status_set_s ),
    .cfg_status_clr_s                               ( cfg_status_clr_s ),
    .cfg_status_ost_pr_alloc                        ( cfg_status_ost_pr_alloc ),
    .INTX_MSI_Request                               ( intx_msi_request),
    .INTX_MSI_Grant                                 ( intx_msi_grant),
    .MSI_enable                                     ( msi_enable),
    .MSI_Vector_Num                                 ( msi_vector_num),
    .MSI_Vector_Width                               ( msi_vector_width),
    .interrupt_out                                  ( interrupt_out),

    .requester_id                                   ( requester_id )

);
  ntps_top_axi_pcie3_0_0_pcie3_ip  pcie3_ip_i (

    //---------------------------------------------------------------------------------------//
    //  PCI Express (pci_exp) Interface                                                      //
    //---------------------------------------------------------------------------------------//

    // Tx
    .pci_exp_txn                                    ( pci_exp_txn ),
    .pci_exp_txp                                    ( pci_exp_txp ),

    // Rx
    .pci_exp_rxn                                    ( pci_exp_rxn ),
    .pci_exp_rxp                                    ( pci_exp_rxp ),

    //---------------------------------------------------------------------------------------//
    //  AXI Interface                                                                        //
    //---------------------------------------------------------------------------------------//

    .mmcm_lock                                      ( mmcm_lock ),
    .user_clk                                       ( axi_aclk ),
    .user_reset                                     ( user_reset ),
    .user_lnk_up                                    ( user_lnk_up ),

    .s_axis_rq_tlast                                ( m_axis_rq_tlast ),
    .s_axis_rq_tdata                                ( m_axis_rq_tdata ),
    .s_axis_rq_tuser                                ( m_axis_rq_tuser ),
    .s_axis_rq_tkeep                                ( m_axis_rq_tkeep ),
    .s_axis_rq_tready                               ( m_axis_rq_tready ),
    .s_axis_rq_tvalid                               ( m_axis_rq_tvalid ),

    .m_axis_rc_tdata                                ( m_axis_rc_tdata ),
    .m_axis_rc_tuser                                ( m_axis_rc_tuser ),
    .m_axis_rc_tlast                                ( m_axis_rc_tlast ),
    .m_axis_rc_tkeep                                ( m_axis_rc_tkeep ),
    .m_axis_rc_tvalid                               ( m_axis_rc_tvalid ),
    .m_axis_rc_tready                               ( m_axis_rc_tready ),

    .m_axis_cq_tdata                                ( m_axis_cq_tdata_int ),
    .m_axis_cq_tuser                                ( m_axis_cq_tuser_int ),
    .m_axis_cq_tlast                                ( m_axis_cq_tlast_int ),
    .m_axis_cq_tkeep                                ( m_axis_cq_tkeep_int ),
    .m_axis_cq_tvalid                               ( m_axis_cq_tvalid_int ),
    .m_axis_cq_tready                               ( m_axis_cq_tready_int ),

    .s_axis_cc_tdata                                ( s_axis_cc_tdata ),
    .s_axis_cc_tuser                                ( s_axis_cc_tuser ),
    .s_axis_cc_tlast                                ( s_axis_cc_tlast ),
    .s_axis_cc_tkeep                                ( s_axis_cc_tkeep ),
    .s_axis_cc_tvalid                               ( s_axis_cc_tvalid ),
    .s_axis_cc_tready                               ( s_axis_cc_tready ),

    .pcie_rq_seq_num                                ( pcie_rq_seq_num ),
    .pcie_rq_seq_num_vld                            ( pcie_rq_seq_num_vld ),
    .pcie_rq_tag                                    ( pcie_rq_tag[5:0] ),
    .pcie_rq_tag_vld                                ( pcie_rq_tag_vld ),

    .pcie_tfc_nph_av                                ( pcie_tfc_nph_av ),
    .pcie_tfc_npd_av                                ( pcie_tfc_npd_av ),
    .pcie_cq_np_req                                 ( pcie_cq_np_req ),
    .pcie_cq_np_req_count                           ( pcie_cq_np_req_count ),

    //---------------------------------------------------------------------------------------//
    //  Configuration (CFG) Interface                                                        //
    //---------------------------------------------------------------------------------------//

    //-------------------------------------------------------------------------------//
    // EP and RP                                                                     //
    //-------------------------------------------------------------------------------//

    .cfg_phy_link_down                              ( cfg_phy_link_down ),
    .cfg_phy_link_status                            ( cfg_phy_link_status ),
    .cfg_negotiated_width                           ( cfg_negotiated_width ),
    .cfg_current_speed                              ( cfg_current_speed ),
    .cfg_max_payload                                ( cfg_max_payload ),
    .cfg_max_read_req                               ( cfg_max_read_req ),
    .cfg_function_status                            ( cfg_function_status ),
    .cfg_function_power_state                       ( cfg_function_power_state ),
    .cfg_link_power_state                           ( cfg_link_power_state ),

    // Management Interface
    .cfg_mgmt_addr                                  ( cfg_mgmt_addr ),
    .cfg_mgmt_write                                 ( cfg_mgmt_write ),
    .cfg_mgmt_write_data                            ( cfg_mgmt_write_data ),
    .cfg_mgmt_byte_enable                           ( cfg_mgmt_byte_enable ),
    .cfg_mgmt_read                                  ( cfg_mgmt_read ),
    .cfg_mgmt_read_data                             ( cfg_mgmt_read_data ),
    .cfg_mgmt_read_write_done                       ( cfg_mgmt_read_write_done ),
    .cfg_mgmt_type1_cfg_reg_access                  ( cfg_mgmt_type1_cfg_reg_access ),

    // Error Reporting Interface
    .cfg_err_cor_out                                ( cfg_err_cor_out ),
    .cfg_err_nonfatal_out                           ( cfg_err_nonfatal_out ),
    .cfg_err_fatal_out                              ( cfg_err_fatal_out ),

    .cfg_ltr_enable                                 ( cfg_ltr_enable ),
    .cfg_ltssm_state                                ( cfg_ltssm_state ),
    .cfg_rcb_status                                 ( cfg_rcb_status ),
    .cfg_dpa_substate_change                        ( cfg_dpa_substate_change ),
    .cfg_obff_enable                                ( cfg_obff_enable ),
    .cfg_pl_status_change                           ( cfg_pl_status_change ),

    .cfg_msg_received                               ( cfg_msg_received ),
    .cfg_msg_received_data                          ( cfg_msg_received_data ),
    .cfg_msg_received_type                          ( cfg_msg_received_type ),

    .cfg_msg_transmit                               ( cfg_msg_transmit ),
    .cfg_msg_transmit_type                          ( cfg_msg_transmit_type ),
    .cfg_msg_transmit_data                          ( cfg_msg_transmit_data ),
    .cfg_msg_transmit_done                          ( cfg_msg_transmit_done ),

    .cfg_fc_ph                                      ( cfg_fc_ph ),
    .cfg_fc_pd                                      ( cfg_fc_pd ),
    .cfg_fc_nph                                     ( cfg_fc_nph ),
    .cfg_fc_npd                                     ( cfg_fc_npd ),
    .cfg_fc_cplh                                    ( cfg_fc_cplh ),
    .cfg_fc_cpld                                    ( cfg_fc_cpld ),
    .cfg_fc_sel                                     ( cfg_fc_sel ),

    .cfg_per_func_status_control                    ( cfg_per_func_status_control ),
    .cfg_per_func_status_data                       ( cfg_per_func_status_data ),
    .cfg_per_function_number                        ( cfg_per_function_number[2:0] ),
    .cfg_per_function_output_request                ( cfg_per_function_output_request ),
    .cfg_per_function_update_done                   ( cfg_per_function_update_done ),

    .cfg_subsys_vend_id                             ( cfg_subsys_vend_id ),
    .cfg_dsn                                        ( cfg_dsn ),
    .cfg_power_state_change_ack                     ( 1'b1 ),
    .cfg_power_state_change_interrupt               ( cfg_power_state_change_interrupt ),
    .cfg_err_cor_in                                 ( cfg_err_cor_in ),
    .cfg_err_uncor_in                               ( cfg_err_uncor_in ),

    .cfg_link_training_enable                       ( cfg_link_training_enable ),
    //-------------------------------------------------------------------------------//
    // EP Only                                                                       //
    //-------------------------------------------------------------------------------//
    // Interrupt Interface Signals
    .cfg_interrupt_int                              ( cfg_interrupt_int ),
    .cfg_interrupt_pending                          ( cfg_interrupt_pending[1:0] ),
    .cfg_interrupt_sent                             ( cfg_interrupt_sent ),
    .cfg_interrupt_msi_enable                       ( { cfg_interrupt_msi_enable_bit1, msi_enable} ),
    .cfg_interrupt_msi_mmenable                     ( cfg_interrupt_msi_mmenable ),
    .cfg_interrupt_msi_mask_update                  ( cfg_interrupt_msi_mask_update ),
    .cfg_interrupt_msi_data                         ( cfg_interrupt_msi_data ),
    .cfg_interrupt_msi_select                       ( 4'b0000 ),
    .cfg_interrupt_msi_int                          ( cfg_interrupt_msi_int ),
    .cfg_interrupt_msi_pending_status               ( {32'b0, cfg_interrupt_msi_pending_status} ),
    .cfg_interrupt_msi_sent                         ( cfg_interrupt_msi_sent ),
    .cfg_interrupt_msi_fail                         ( cfg_interrupt_msi_fail ),

    .cfg_interrupt_msi_attr                         ( cfg_interrupt_msi_attr ),
    .cfg_interrupt_msi_tph_present                  ( cfg_interrupt_msi_tph_present ),
    .cfg_interrupt_msi_tph_type                     ( cfg_interrupt_msi_tph_type ),
    .cfg_interrupt_msi_tph_st_tag                   ( cfg_interrupt_msi_tph_st_tag ),
    .cfg_interrupt_msi_function_number              ( 3'b0 ),
     // EP only
    .cfg_flr_in_process                             (cfg_flr_in_process[1:0]),
    .cfg_flr_done                                   (cfg_flr_done[1:0]),
    .cfg_vf_flr_done                                (cfg_vf_flr_done[5:0]),
    .cfg_hot_reset_out                              ( cfg_hot_reset_out ),
    .cfg_config_space_enable                        ( cfg_config_space_enable ),
    .cfg_req_pm_transition_l23_ready                ( 1'b0 ),

    // RP only
    .cfg_hot_reset_in                               ( cfg_hot_reset_in ),
 
    .cfg_ds_bus_number                              ( cfg_ds_bus_number ),
    .cfg_ds_device_number                           ( cfg_ds_device_number ),
    .cfg_ds_function_number                         ( cfg_ds_function_number ),
    .cfg_ds_port_number                             ( cfg_ds_port_number ),
    //--------------------------------------------------------------------------------------//
    //  System(SYS) Interface                                                               //
    //--------------------------------------------------------------------------------------//
    .sys_clk                                        ( refclk ),
    .sys_reset                                      ( ~sys_rst_n )
  );

    assign common_commands_out = 26'b0;
    assign pipe_tx_0_sigs     = 84'b0;
    assign pipe_tx_1_sigs     = 84'b0;
    assign pipe_tx_2_sigs     = 84'b0;
    assign pipe_tx_3_sigs     = 84'b0;
    assign pipe_tx_4_sigs     = 84'b0;
    assign pipe_tx_5_sigs     = 84'b0;
    assign pipe_tx_6_sigs     = 84'b0;
    assign pipe_tx_7_sigs     = 84'b0;
    assign pipe_tx_8_sigs      = 84'b0;
    assign pipe_tx_9_sigs      = 84'b0;
    assign pipe_tx_10_sigs     = 84'b0;
    assign pipe_tx_11_sigs     = 84'b0;
    assign pipe_tx_12_sigs     = 84'b0;
    assign pipe_tx_13_sigs     = 84'b0;
    assign pipe_tx_14_sigs     = 84'b0;
    assign pipe_tx_15_sigs     = 84'b0;
    assign ext_ch_gt_drpclk = 1'b0;
    assign ext_ch_gt_drprdy = {PL_LINK_CAP_MAX_LINK_WIDTH{1'b0}};
    assign ext_ch_gt_drpdo  = {PL_LINK_CAP_MAX_LINK_WIDTH*16{1'b0}};

    assign drp_rdy = 1'b0;
    assign drp_do  = 16'b0;




    //  Tie-off unused mcap outputs
    assign mcap_design_switch = 1'b1;
    assign cap_req = 1'b0;

    //  Tie-off unused Startup Signals
    assign startup_cfgclk = 1'b0;
    assign startup_cfgmclk = 1'b0;
    assign startup_di = 4'b0000;
    assign startup_eos = 1'b0;
    assign startup_preq = 1'b0;


endmodule
