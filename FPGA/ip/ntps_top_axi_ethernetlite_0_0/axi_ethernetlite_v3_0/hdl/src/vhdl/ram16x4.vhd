-------------------------------------------------------------------------------
-- ram16x4 - entity/architecture pair
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
--  **  Copyright 2007, 2008, 2009 Xilinx, Inc.                              **
--  **  All rights reserved.                                                 **
--  **                                                                       **
--  **  This disclaimer and copyright notice must be retained as part        **
--  **  of this file at all times.                                           **
--  ***************************************************************************
--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Filename   : ram16x4.vhd
-- Version    : v4.00.a
-- Description: This is a LUT RAM design to provide 4 bits wide and 16 bits
--              deep memory structue. The initial string for rom16x4 is 
--              specially designed to ease the initialization of this memory.  
--              The initialization value is taken from the "INIT_XX" string.  
--              Each string is read in the standard Xilinx format, which is to
--              take the right-most character as the least significant bit. 
--              INIT_00 is for address 0 to address 3, INIT_01 is for address 
--              4 to address 7, ..., INIT_03 is for address 12 to address 15.
--              Uses 16 LUTs (16 RAM16x1)
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-------------------------------------------------------------------------------
-- axi_ethernetlite_v3_0 library is used for axi_ethernetlite_v3_0 
-- component declarations
-------------------------------------------------------------------------------
library axi_ethernetlite_v3_0;
use axi_ethernetlite_v3_0.mac_pkg.all;

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
-- Port Declaration
-------------------------------------------------------------------------------
entity ram16x4 is
  generic(
      INIT_00  : bit_vector(15 downto 0)  :=x"0000";-- for addr(3 downto 0)
      INIT_01  : bit_vector(15 downto 0)  :=x"0000";-- for addr(7 downto 4)
      INIT_02  : bit_vector(15 downto 0)  :=x"0000";-- for addr(11 downto 8)
      INIT_03  : bit_vector(15 downto 0)  :=x"0000" -- for addr(15 downto 12)
      );
  port(
    Addr : in  std_logic_vector(3 downto 0);
    D    : in  std_logic_vector(3 downto 0);
    We   : in  std_logic;
    Clk  : in  std_logic;
    Q    : out std_logic_vector(3 downto 0));
end entity ram16x4 ;


-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------  
architecture imp of ram16x4 is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";

  attribute INIT : string ;
  attribute INIT of ram16x1_0 : label is GetInitString4(0, INIT_00,INIT_01,
      INIT_02, INIT_03);
  attribute INIT of ram16x1_1 : label is GetInitString4(1, INIT_00,INIT_01,
      INIT_02, INIT_03);
  attribute INIT of ram16x1_2 : label is GetInitString4(2, INIT_00,INIT_01,
      INIT_02, INIT_03);
  attribute INIT of ram16x1_3 : label is GetInitString4(3, INIT_00,INIT_01,
      INIT_02, INIT_03);

-------------------------------------------------------------------------------
-- Component Declarations
-------------------------------------------------------------------------------
  component ram16x1s
    -- synthesis translate_off
    -- synopsys translate_off
    generic ( init : bit_vector);
    -- synopsys translate_on
    -- synthesis translate_on
    port (
      a0   : in  std_logic;
      a1   : in  std_logic;
      a2   : in  std_logic;
      a3   : in  std_logic;
      d    : in  std_logic;
      we   : in  std_logic;
      wclk : in std_logic;
      o    : out std_logic);
   end component;


begin

  -----------------------------------------------------------------------------
  -- RAM 0 
  -----------------------------------------------------------------------------
  ram16x1_0 : ram16x1s
    -- synthesis translate_off
    -- synopsys translate_off
    generic map (init => GetInitVector4(0, INIT_00,INIT_01,
      INIT_02, INIT_03))
    -- synopsys translate_on
    -- synthesis translate_on
    port map (a0 => Addr(0), a1 => Addr(1), a2 => Addr(2), a3 => Addr(3),
               d => D(0), we => We, wclk => Clk, o => Q(0));

  -----------------------------------------------------------------------------
  -- RAM 1 
  -----------------------------------------------------------------------------
  ram16x1_1 : ram16x1s
    -- synthesis translate_off
    -- synopsys translate_off
    generic map (init => GetInitVector4(1, INIT_00,INIT_01,
      INIT_02, INIT_03))
    -- synopsys translate_on
    -- synthesis translate_on
    port map (a0 => Addr(0), a1 => Addr(1), a2 => Addr(2), a3 => Addr(3),
               d => D(1), we => We, wclk => Clk, o => Q(1));

  -----------------------------------------------------------------------------
  -- RAM 2 
  -----------------------------------------------------------------------------
  ram16x1_2 : ram16x1s
    -- synthesis translate_off
    -- synopsys translate_off
    generic map (init => GetInitVector4(2, INIT_00,INIT_01,
      INIT_02, INIT_03))
    -- synopsys translate_on
    -- synthesis translate_on
    port map (a0 => Addr(0), a1 => Addr(1), a2 => Addr(2), a3 => Addr(3),
               d => D(2), we => We, wclk => Clk, o => Q(2));

  -----------------------------------------------------------------------------
  -- RAM 3 
  -----------------------------------------------------------------------------
  ram16x1_3 : ram16x1s
    -- synthesis translate_off
    -- synopsys translate_off
    generic map (init => GetInitVector4(3, INIT_00,INIT_01,
      INIT_02, INIT_03))
    -- synopsys translate_on
    -- synthesis translate_on
    port map (a0 => Addr(0), a1 => Addr(1), a2 => Addr(2), a3 => Addr(3),
               d => D(3), we => We, wclk => Clk, o => Q(3));


end imp;
