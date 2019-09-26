-------------------------------------------------------------------------------
-- MacAddrRAM - entity/architecture pair
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
-- Filename     : macaddram.vhd
-- Version      : v2.0
-- Description  : Design file for the Ethernet Lite MAC. 
--         There is a rom used in the MII to store the MAC address
--
--         Note that the two nibbles in each word of the MAC address
--         are transposed in order to transmit to the network in the 
--         proper order.However, the generic value (MACAddr)of this 
--         ROM keeps the normal order.
--
--         Representation of each word in this ROM (list with address order)
--
--         Addr (3 downto 0)   : netOrder(MACAddr(47 downto 32))   e.g.: 0xafec
--         Addr (7 downto 4)   : netOrder(MACAddr(31 downto 16))   e.g.: 0xedfa
--         Addr (11 downto 8)  : netOrder(MACAddr(15 downto 0))    e.g.: 0xacef
--         Addr (15 downto 12) : netOrder(Filler)    e.g.: 0x0000
--
--         Uses 4 LUTs (4 rom16x1), 0 register
--
-- VHDL-Standard:  VHDL'93
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
use ieee.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-------------------------------------------------------------------------------
-- axi_ethernetlite_v3_0 library is used for axi_ethernetlite_v3_0 
-- component declarations
-------------------------------------------------------------------------------
library axi_ethernetlite_v3_0;
use axi_ethernetlite_v3_0.mac_pkg.all;

-------------------------------------------------------------------------------
-- synopsys translate_off
-- Library XilinxCoreLib;
--library simprim;
-- synopsys translate_on

-------------------------------------------------------------------------------
-- Vcomponents from unisim library is used for FIFO instatiation
-- function declarations
-------------------------------------------------------------------------------
library unisim;
use unisim.Vcomponents.all;
-------------------------------------------------------------------------------
-- Definition of Generics:
-------------------------------------------------------------------------------
-- 
-- MACAddr              -- MAC Address
-- Filler               -- Filler
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Ports:
--
--   Addr                 -- Address   
--   Dout                 -- Data output
--   Din                  -- Data input
--   We                   -- Write Enable
--   Clk                  -- Clock
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity MacAddrRAM is
  generic
      (MACAddr : bit_vector(47 downto 0) := x"ffffffffffaa";
                                                      -- use the normal order
       Filler  : bit_vector(15 downto 0) := x"0000");
  
  port(
       Addr    : in  std_logic_vector (3 downto 0);
       Dout    : out std_logic_vector (3 downto 0);
       Din     : in  std_logic_vector (3 downto 0);
       We      : in  std_logic;
       Clk     : in  std_logic 
       );
end MacAddrRAM;

architecture imp of MacAddrRAM is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";

-------------------------------------------------------------------------------
--  Constant Declarations
-------------------------------------------------------------------------------
  
-- Constants used in this design are found in mac_pkg.vhd

-------------------------------------------------------------------------------
-- Component Declarations
-------------------------------------------------------------------------------

-- The following components are the building blocks of the EMAC
--component ram16x4
--  generic(
--      INIT_00  : bit_vector(15 downto 0)  :=x"0000";-- for Addr(3 downto 0)
--      INIT_01  : bit_vector(15 downto 0)  :=x"0000";-- for Addr(7 downto 4)
--      INIT_02  : bit_vector(15 downto 0)  :=x"0000";-- for Addr(11 downto 8)
--      INIT_03  : bit_vector(15 downto 0)  :=x"0000" -- for Addr(15 downto 12)
--      );
--  port(
--    Addr : in  std_logic_vector(3 downto 0);
--    D    : in  std_logic_vector(3 downto 0);
--    We   : in  std_logic;
--    Clk  : in  std_logic;
--    Q    : out std_logic_vector(3 downto 0));
--end component;

 begin

  ram16x4i: entity axi_ethernetlite_v3_0.ram16x4
     generic map
       (INIT_00 => netOrder(MACAddr(47 downto 32)),
        INIT_01 => netOrder(MACAddr(31 downto 16)),
        INIT_02 => netOrder(MACAddr(15 downto 0)),
        INIT_03 => netOrder(Filler)
        )
     port map
       (Addr => Addr,
        D    => Din,
        Q    => Dout,
        We   => We,
        Clk  => Clk
        );

end imp;
