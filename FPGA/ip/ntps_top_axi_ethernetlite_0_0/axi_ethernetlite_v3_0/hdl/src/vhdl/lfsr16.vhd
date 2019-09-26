-------------------------------------------------------------------------------
-- lfsr16 - entity/architecture pair
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
-- Filename     : lfsr16.vhd
-- Version      : v2.0
-- Description  : This is a 15 bit random number generator.
--                In simulation we need to reset first, then give the enable signal.
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
-- This is a 15 bit random number generator.
-- In simulation we need to reset first, then give the enable signal.
-- 
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-------------------------------------------------------------------------------
-- Vcomponents from unisim library is used for FIFO instatiation
-- function declarations
-------------------------------------------------------------------------------
library unisim;
use unisim.Vcomponents.all;

-------------------------------------------------------------------------------
-- axi_ethernetlite_v3_0 library is used for axi_ethernetlite_v3_0 
-- component declarations
-------------------------------------------------------------------------------
library axi_ethernetlite_v3_0;
use axi_ethernetlite_v3_0.mac_pkg.all;

-- synopsys translate_off
-- Library XilinxCoreLib;
-- synopsys translate_on

-------------------------------------------------------------------------------
-- Port Declaration
-------------------------------------------------------------------------------
-- Definition of Ports:
--
--  Clk          -- System Clock
--  Rst          -- System Reset
--  Clken        -- Clock enable
--  Enbl         -- LFSR enable
--  Shftout      -- Shift data output
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity lfsr16 is
  port 
       (
        Clk     : in  std_logic; 
        Rst     : in  std_logic; 
        Clken   : in  std_logic; -- tx Clk based. Assumed to be 2.5 or 25 MHz
        Enbl    : in  std_logic; 
        Shftout : out std_logic
        );
end lfsr16;
-------------------------------------------------------------------------------
-- Definition of Generics:
--          No Generics were used for this Entity.
--
-- Definition of Ports:
--         
-------------------------------------------------------------------------------
architecture imp of lfsr16 is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";

-------------------------------------------------------------------------------
--  Constant Declarations
-------------------------------------------------------------------------------
-- Constants used in this design are found in mac_pkg.vhd

-------------------------------------------------------------------------------
-- Signal and Type Declarations
-------------------------------------------------------------------------------
  signal   Bit1           : std_logic;
  signal   Bit15          : std_logic;
  signal   Bit14          : std_logic;
  signal   XNORGateOutput : std_logic;
  signal   zero           : std_logic;
  signal   one            : std_logic;
  signal   combo_enbl     : std_logic;
-------------------------------------------------------------------------------
-- Component Declarations
-------------------------------------------------------------------------------
-- The following components are the building blocks of the 16 bit lfsr

  component SRL16E
   -- synthesis translate_off 
       generic (INIT : bit_vector := X"0000"); 
   -- synthesis translate_on 
    port (
      Q   : out std_logic;
      A0  : in  std_logic;              -- Set the address to 12.
      A1  : in  std_logic;
      A2  : in  std_logic;
      A3  : in  std_logic;
      D   : in  std_logic;
      Clk : in  std_logic;
      CE  : in  std_logic);
  end component;
  
begin

  zero <= '0';
  one  <= '1';

  SHREG0 : SRL16E
   -- synthesis translate_off 
   generic map (INIT => X"5a5a") 
   -- synthesis translate_on 
    port map(
      Q   => Bit14,
      A0  => zero,
      A1  => zero,
      A2  => one,
      A3  => one,
      D   => Bit1,
      CE  => combo_enbl,
      Clk => Clk);
      combo_enbl <= Enbl and Clken;
      
-------------------------------------------------------------------------------
-- determine bit 15 value
-------------------------------------------------------------------------------
  REG0_PROCESS:process(Clk)
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        Bit15 <= '0';
      elsif combo_enbl = '1' then
        Bit15 <= Bit14;
      end if;
    end if;
  end process REG0_PROCESS;
      
-------------------------------------------------------------------------------
-- determine bit 1 value
-------------------------------------------------------------------------------
  REG1_PROCESS:process(Clk)
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        Bit1 <= '0';
      elsif combo_enbl = '1' then
        Bit1 <= XNORGateOutput;
      end if;
    end if;
  end process REG1_PROCESS;


  XNORGateOutput <= Bit14 XNOR Bit15; 
  
  Shftout        <= Bit1;
  
end imp;
