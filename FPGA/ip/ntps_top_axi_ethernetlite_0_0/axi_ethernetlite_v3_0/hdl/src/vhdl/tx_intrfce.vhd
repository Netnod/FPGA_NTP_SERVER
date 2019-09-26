-------------------------------------------------------------------------------
-- tx_intrfce - entity/architecture pair
-------------------------------------------------------------------------------
--  ***************************************************************************
--  ** DISCLAIMER OF LIABILITY                                               **
--  **                                                                       **
--  **  This file contains proprietary and confidential information of       **
--  **  Xilinx, Inc. ("Xilinx"), that is distributed under a license         **
--  **  from Xilinx, and may be used, copied and/or disclosed only           **
--  **  pursuant to the terms of a valid license agreement with Xilinx.      **
--  **                                                                       **
--  **  XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION                **
--  **  ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER           **
--  **  EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT                  **
--  **  LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,            **
--  **  MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx        **
--  **  does not warrant that functions included in the Materials will       **
--  **  meet the requirements of Licensee, or that the operation of the      **
--  **  Materials will be uninterrupted or error-free, or that defects       **
--  **  in the Materials will be corrected. Furthermore, Xilinx does         **
--  **  not warrant or make any representations regarding use, or the        **
--  **  results of the use, of the Materials in terms of correctness,        **
--  **  accuracy, reliability or otherwise.                                  **
--  **                                                                       **
--  **  Xilinx products are not designed or intended to be fail-safe,        **
--  **  or for use in any application requiring fail-safe performance,       **
--  **  such as life-support or safety devices or systems, Class III         **
--  **  medical devices, nuclear facilities, applications related to         **
--  **  the deployment of airbags, or any other applications that could      **
--  **  lead to death, personal injury or severe property or                 **
--  **  environmental damage (individually and collectively, "critical       **
--  **  applications"). Customer assumes the sole risk and liability         **
--  **  of any use of Xilinx products in critical applications,              **
--  **  subject only to applicable laws and regulations governing            **
--  **  limitations on product liability.                                    **
--  **                                                                       **
--  **  Copyright 2010 Xilinx, Inc.                                          **
--  **  All rights reserved.                                                 **
--  **                                                                       **
--  **  This disclaimer and copyright notice must be retained as part        **
--  **  of this file at all times.                                           **
--  ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename     : tx_intrfce.vhd
-- Version      : v2.0
-- Description  : This is the ethernet transmit interface. 
-- VHDL-Standard: VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--
--  axi_ethernetlite.vhd
--      \
--      \-- axi_interface.vhd
--      \-- xemac.vhd
--           \
--           \-- mdio_if.vhd
--           \-- emac_dpram.vhd                     
--           \    \                     
--           \    \-- RAMB16_S4_S36
--           \                          
--           \    
--           \-- emac.vhd                     
--                \                     
--                \-- MacAddrRAM                   
--                \-- receive.vhd
--                \      rx_statemachine.vhd
--                \      rx_intrfce.vhd
--                \         async_fifo_fg.vhd
--                \      crcgenrx.vhd
--                \                     
--                \-- transmit.vhd
--                       crcgentx.vhd
--                          crcnibshiftreg
--                       tx_intrfce.vhd
--                          async_fifo_fg.vhd
--                       tx_statemachine.vhd
--                       deferral.vhd
--                          cntr5bit.vhd
--                          defer_state.vhd
--                       bocntr.vhd
--                          lfsr16.vhd
--                       msh_cnt.vhd
--                       ld_arith_reg.vhd
--

-------------------------------------------------------------------------------
-- Author:    PVK
-- History:    
-- PVK        06/07/2010     First Version
-- ^^^^^^
-- First version.  
-- ~~~~~~
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "Clk", "clk_div#", "clk_#x" 
--      reset signals:                          "Rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
-- 
library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------
-- axi_ethernetlite_v3_0 library is used for axi_ethernetlite_v3_0 
-- component declarations
-------------------------------------------------------------------------------
library axi_ethernetlite_v3_0;
use axi_ethernetlite_v3_0.all;

-------------------------------------------------------------------------------
library lib_cdc_v1_0;
library lib_fifo_v1_0;

--library fifo_generator_v11_0; --FIFO Hier
--use fifo_generator_v11_0.all;
-- synopsys translate_off
-- Library XilinxCoreLib;
--library simprim;
-- synopsys translate_on

-------------------------------------------------------------------------------
-- Vcomponents from unisim library is used for FIFO instatiation
-- function declarations
-------------------------------------------------------------------------------
library unisim;
use unisim.vcomponents.all;

-------------------------------------------------------------------------------
-- Definition of Ports:
--
--  Clk                 -- System Clock
--  Rst                 -- System Reset
--  Phy_tx_clk          -- PHY TX Clock
--  Emac_tx_wr_data     -- Ethernet transmit data
--  Tx_er               -- Transmit error
--  Phy_tx_en           -- Ethernet transmit enable
--  Tx_en               -- Transmit enable
--  Emac_tx_wr          -- TX FIFO write enable
--  Fifo_empty          -- TX FIFO empty
--  Fifo_almost_emp     -- TX FIFP almost empty
--  Fifo_full           -- TX FIFO full
--  Phy_tx_data         -- Ethernet transmit data
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity tx_intrfce is
  generic 
    (
    C_FAMILY          : string  := "virtex6"  
    );
  port 
    (
    Clk               : in  std_logic;
    Rst               : in  std_logic;
    Phy_tx_clk        : in  std_logic;
    Emac_tx_wr_data   : in  std_logic_vector (0 to 3);
    Tx_er             : in  std_logic;
    PhyTxEn           : in  std_logic;
    Tx_en             : in  std_logic;
    Emac_tx_wr        : in  std_logic;
    Fifo_empty        : out std_logic;
    Fifo_full         : out std_logic;
    Phy_tx_data       : out std_logic_vector (0 to 5)
    );
end tx_intrfce;

architecture implementation of tx_intrfce is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";

-------------------------------------------------------------------------------
--  Constant Declarations
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--  Signal and Type Declarations
-------------------------------------------------------------------------------

signal bus_combo    : std_logic_vector (0 to 5);
signal fifo_empty_i : std_logic;
signal fifo_empty_c : std_logic;
-------------------------------------------------------------------------------
-- Component Declarations
-------------------------------------------------------------------------------
-- The following components are the building blocks of the EMAC
-------------------------------------------------------------------------------
component FDR
  port 
   (
    Q : out std_logic;
    C : in std_logic;
    D : in std_logic;
    R : in std_logic
   );
end component;

--FIFO HIER
--component async_fifo_eth
--  port (
--    rst     : in std_logic;
--    wr_clk  : in std_logic;
--    rd_clk  : in std_logic;
--    din     : in std_logic_vector(5 downto 0);
--    wr_en   : in std_logic;
--    rd_en   : in std_logic;
--    dout    : out std_logic_vector(5 downto 0);
--    full    : out std_logic;
--    empty   : out std_logic;
--    valid   : out std_logic
--  );
--end component;


begin


   I_TX_FIFO: entity lib_fifo_v1_0.async_fifo_fg
     generic map(
       C_ALLOW_2N_DEPTH   => 0,  -- New paramter to leverage FIFO Gen 2**N depth
       C_FAMILY           => C_FAMILY,  -- new for FIFO Gen
       C_DATA_WIDTH       => 6,
       C_ENABLE_RLOCS     => 0,  -- not supported in FG
       C_FIFO_DEPTH       => 15,
       C_HAS_ALMOST_EMPTY => 0,
       C_HAS_ALMOST_FULL  => 0,
       C_HAS_RD_ACK       => 1,
       C_HAS_RD_COUNT     => 0,
       C_HAS_RD_ERR       => 0,
       C_HAS_WR_ACK       => 0,
       C_HAS_WR_COUNT     => 0,
       C_HAS_WR_ERR       => 0,
       C_RD_ACK_LOW       => 0,
       C_RD_COUNT_WIDTH   => 2,
       C_RD_ERR_LOW       => 0,
       C_USE_BLOCKMEM     => 0,  -- 0 = distributed RAM, 1 = BRAM
       C_WR_ACK_LOW       => 0,
       C_WR_COUNT_WIDTH   => 2,
       C_WR_ERR_LOW       => 0   
     )
     port map(
       Din            => bus_combo, 
       Wr_en          => Emac_tx_wr,
       Wr_clk         => Clk,
       Rd_en          => Tx_en,
       Rd_clk         => Phy_tx_clk,
       Ainit          => Rst,   
       Dout           => Phy_tx_data,
       Full           => Fifo_full,
       Empty          => fifo_empty_i,
       Almost_full    => open,
       Almost_empty   => open, 
       Wr_count       => open,
       Rd_count       => open,
       Rd_ack         => open,
       Rd_err         => open,
       Wr_ack         => open,
       Wr_err         => open
     );

-- I_TX_FIFO : async_fifo_eth
--   port map(
--    din            => bus_combo, 
--    wr_en          => Emac_tx_wr,
--    wr_clk         => Clk,
--    rd_en          => Tx_en,
--    rd_clk         => Phy_tx_clk,
--    rst            => Rst,   
--    dout           => Phy_tx_data,
--    full           => Fifo_full,
--    empty          => fifo_empty_i,
--    valid          => open    
--   );

   pipeIt: FDR
     port map
      (
       Q => Fifo_empty,   --[out]
       C => Clk,          --[in]
       D => fifo_empty_c, --[in]
       R => Rst           --[in]
      );
   ----------------------------------------------------------------------------
   -- CDC module for syncing tx_en_i in fifo_empty domain
   ----------------------------------------------------------------------------
  CDC_FIFO_EMPTY: entity  lib_cdc_v1_0.cdc_sync
  generic map (
    C_CDC_TYPE           => 1,
    C_RESET_STATE        => 0,
    C_SINGLE_BIT         => 1,
    C_FLOP_INPUT         => 0,
    C_VECTOR_WIDTH       => 1,
    C_MTBF_STAGES        => 3
            )
  port map(
    prmry_aclk            => '1',
    prmry_resetn          => '1',
    prmry_in              => fifo_empty_i,
    prmry_ack             => open,
    scndry_out            => fifo_empty_c,
    scndry_aclk           => Clk,
    scndry_resetn         => '1',
    prmry_vect_in         => (OTHERS => '0'),
    scndry_vect_out       => open
     );    

   bus_combo <= (Emac_tx_wr_data & Tx_er & PhyTxEn); 
           
end implementation;

