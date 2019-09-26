-------------------------------------------------------------------------------
-- rx_intrfce - entity/architecture pair
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
-- Filename     : rx_intrfce.vhd
-- Version      : v2.0
-- Description  : This is the ethernet receive interface. 
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
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
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
-------------------------------------------------------------------------------
library lib_cdc_v1_0;
use lib_cdc_v1_0.all;

library lib_fifo_v1_0;
use lib_fifo_v1_0.all;

--library fifo_generator_v11_0; -- FIFO HIER
--use fifo_generator_v11_0.all;
-- synopsys translate_off
-- Library XilinxCoreLib;
library unisim;
--library simprim;
-- synopsys translate_on

-------------------------------------------------------------------------------
-- Definition of Ports:
--
--  Clk                 -- System Clock
--  Rst                 -- System Reset
--  Phy_rx_clk          -- PHY RX Clock
--  InternalWrapEn      -- Internal wrap enable
--  Phy_rx_er           -- Receive error
--  Phy_dv              -- Ethernet receive enable
--  Phy_rx_data         -- Ethernet receive data
--  Rcv_en              -- Receive enable
--  Fifo_empty          -- RX FIFO empty
--  Fifo_full           -- RX FIFO full
--  Emac_rx_rd          -- RX FIFO Read enable
--  Emac_rx_rd_data     -- RX FIFO read data to controller
--  RdAck               -- RX FIFO read ack
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity rx_intrfce is
  generic 
    (
    C_FAMILY        : string  := "virtex6"  
    );
  port (
    Clk             : in std_logic;
    Rst             : in std_logic;
    Phy_rx_clk      : in std_logic;
    InternalWrapEn  : in std_logic;
    Phy_rx_er       : in std_logic;
    Phy_dv          : in std_logic;
    Phy_rx_data     : in std_logic_vector (0 to 3);
    Rcv_en          : in std_logic;
    Fifo_empty      : out std_logic;
    Fifo_full       : out std_logic;
    Emac_rx_rd      : in std_logic;
    Emac_rx_rd_data : out std_logic_vector (0 to 5);
    RdAck           : out std_logic
    );
end rx_intrfce;

-------------------------------------------------------------------------------
-- Definition of Generics:
--          No Generics were used for this Entity.
--
-- Definition of Ports:
--         
-------------------------------------------------------------------------------

architecture implementation of rx_intrfce is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";

-------------------------------------------------------------------------------
--  Constant Declarations
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--  Signal and Type Declarations
-------------------------------------------------------------------------------

signal rxBusCombo      : std_logic_vector (0 to 5);
signal rx_wr_en        : std_logic;
signal rx_data         : std_logic_vector (0 to 5);
signal rx_fifo_full    : std_logic;
signal rx_fifo_empty   : std_logic;
signal rx_rd_ack       : std_logic;
signal rst_s           : std_logic;

-------------------------------------------------------------------------------
-- Component Declarations
-------------------------------------------------------------------------------
-- The following components are the building blocks of the EMAC
-------------------------------------------------------------------------------
--FIFI HIER
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
   ----------------------------------------------------------------------------
   -- CDC module for syncing reset in wr clk domain
   ----------------------------------------------------------------------------
  CDC_FIFO_RST: entity  lib_cdc_v1_0.cdc_sync
  generic map (
    C_CDC_TYPE           => 1,
    C_RESET_STATE        => 0,
    C_SINGLE_BIT         => 1,
    C_FLOP_INPUT         => 0,
    C_VECTOR_WIDTH       => 1,
    C_MTBF_STAGES        => 4
            )
  port map(
    prmry_aclk            => '1',
    prmry_resetn          => '1',
    prmry_in              => Rst,
    prmry_ack             => open,
    scndry_out            => rst_s,
    scndry_aclk           => Phy_rx_clk,
    scndry_resetn         => '1',
    prmry_vect_in         => (OTHERS => '0'),
    scndry_vect_out       => open
     );

   I_RX_FIFO: entity lib_fifo_v1_0.async_fifo_fg
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
       Din            => rxBusCombo, 
       Wr_en          => rx_wr_en,
       Wr_clk         => Phy_rx_clk,
       Rd_en          => Emac_rx_rd,
       Rd_clk         => Clk,
       Ainit          => rst_s,   
       Dout           => rx_data,
       Full           => rx_fifo_full,
       Empty          => rx_fifo_empty,
       Almost_full    => open,
       Almost_empty   => open, 
       Wr_count       => open,
       Rd_count       => open,
       Rd_ack         => rx_rd_ack,
       Rd_err         => open,
       Wr_ack         => open,
       Wr_err         => open
     );

-- FIFO HIER
-- I_RX_FIFO : async_fifo_eth
--   port map(    
--       din            => rxBusCombo, 
--       wr_en          => rx_wr_en,
--       wr_clk         => Phy_rx_clk,
--       rd_en          => Emac_rx_rd,
--       rd_clk         => Clk,
--       rst            => Rst,   
--       dout           => rx_data,
--       full           => rx_fifo_full,
--       empty          => rx_fifo_empty,
--       valid          => rx_rd_ack
--   );

rxBusCombo      <= (Phy_rx_data & Phy_dv & Phy_rx_er);
Emac_rx_rd_data <= rx_data; 
RdAck           <= rx_rd_ack; 
Fifo_full       <= rx_fifo_full; 
Fifo_empty      <= rx_fifo_empty; 
--rx_wr_en        <= Rcv_en; 
rx_wr_en        <= not(rx_fifo_full); -- having this as Rcv_en is generated in lite_clock domain and passing to FIFO working in rx_clk domain

           
end implementation;
