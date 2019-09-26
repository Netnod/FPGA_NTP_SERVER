-------------------------------------------------------------------------------
-- crcnibshiftreg - entity/architecture pair
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
-------------------------------------------------------------------------------
-- Filename     : crcnibshiftreg.vhd
-- Version      : v2.0
-- Description  : CRC Nible Shift Register
--
-- VHDL-Standard:   VHDL'93
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

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------
-- Definition of Ports:
--
--  Clk      -- System Clock
--  Rst      -- System Reset
--  Clke     -- Clock enable
--  Din      -- Data in 
--  Load     -- Data load
--  Shift    -- Data shift enable
--  Dout     -- data out
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity crcnibshiftreg is

  port (
    Clk   : in  std_logic;
    Rst   : in  std_logic;
    Clken : in  std_logic;
    Din   : in  std_logic_vector(31 downto 0);
    Load  : in  std_logic;
    Shift : in  std_logic; 
    Dout  : out std_logic_vector(31 downto 0)
    );
end crcnibshiftreg;

architecture implementation of crcnibshiftreg is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";

-------------------------------------------------------------------------------
--  Signal and Type Declarations
-------------------------------------------------------------------------------
signal nibData  : std_logic_vector (31 downto 0);
  
begin

   ----------------------------------------------------------------------------
   -- PROCESS : SHIFTER 
   ----------------------------------------------------------------------------
   -- The process shifts the nibble data when shift is enabled.
   ----------------------------------------------------------------------------
   SHIFTER : process (Clk)
   begin  --
  
      if (Clk'event and Clk = '1') then
         if Rst = '1' then
            nibData <= (others => '0');        
         elsif (Clken = '1') then
            if (Load = '1') then
               nibData <= Din;
            elsif (Shift = '1') then
               nibData(3 downto 0)   <= nibData(7 downto 4);
               nibData(7 downto 4)   <= nibData(11 downto 8);
               nibData(11 downto 8)  <= nibData(15 downto 12);
               nibData(15 downto 12) <= nibData(19 downto 16);
               nibData(19 downto 16) <= nibData(23 downto 20);
               nibData(23 downto 20) <= nibData(27 downto 24);
               nibData(27 downto 24) <= nibData(31 downto 28);
               nibData(31 downto 28) <= (others => '0');
            end if;
         end if;
      end if;
   end process SHIFTER;
   
   Dout <= nibData;
  
end implementation;
  
