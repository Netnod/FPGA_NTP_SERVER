-------------------------------------------------------------------------------
-- defer_state - entity/architecture pair
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
-- Filename     : defer_state.vhd
-- Version      : v2.0
-- Description  : This file contains the transmit deferral state machine.
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
--  TxEn         -- Transmit enable
--  Txrst        -- Transmit reset
--  Ifgp2Done    -- Interframe gap2 done
--  Ifgp1Done    -- Interframe gap1 done
--  BackingOff   -- Backing off 
--  Crs          -- Carrier sense
--  Full_half_n  -- Full/Half duplex indicator
--  Deferring    -- Deffering for the tx data
--  CntrEnbl     -- Counter enable 
--  CntrLd       -- Counter load
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity defer_state is
  port (
        Clk         : in  std_logic;
        Rst         : in  std_logic;
        TxEn        : in  std_logic; 
        Txrst       : in  std_logic;
        Ifgp2Done   : in  std_logic;
        Ifgp1Done   : in  std_logic;
        BackingOff  : in  std_logic;
        Crs         : in  std_logic;
        Full_half_n : in  std_logic;        
        Deferring   : out std_logic;
        CntrEnbl    : out std_logic;
        CntrLd      : out std_logic
        );
 
end defer_state;

-------------------------------------------------------------------------------
-- Definition of Generics:
--          No Generics were used for this Entity.
--
-- Definition of Ports:
--         
-------------------------------------------------------------------------------

architecture implementation of defer_state is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";

-------------------------------------------------------------------------------
--  Constant Declarations
-------------------------------------------------------------------------------
-- Constants used in this design are found in mac_pkg.vhd
-------------------------------------------------------------------------------
-- Signal and Type Declarations
-------------------------------------------------------------------------------
 
  type StateName is (loadCntr,startIfgp1Cnt,startIfgp2Cnt,cntDone);
  signal thisState               : StateName;
  signal nextState               : StateName;  
   
-------------------------------------------------------------------------------
-- Component Declarations
-------------------------------------------------------------------------------
-- The following components are the building blocks of the tx state machine
 
begin

   ----------------------------------------------------------------------------
   -- FSMR Process
   ----------------------------------------------------------------------------
   -- An FSM that deals with transmitting data
   ----------------------------------------------------------------------------
   FSMR : process (Clk)
   begin  --
      if (Clk'event and Clk = '1') then     -- rising clock edge
         if (Rst = '1' or Txrst = '1') then
            thisState <= loadCntr;
         else
            thisState <= nextState;
         end if;
      end if;
   end process FSMR;

   ----------------------------------------------------------------------------
   -- FSMC Process
   ----------------------------------------------------------------------------
   FSMC : process (thisState,TxEn,Ifgp2Done,Ifgp1Done,BackingOff,Crs,
                   Full_half_n)
   begin  --
      case thisState is
         when loadCntr =>
            if (((TxEn = '0') and (Full_half_n = '1')) or
                ((Crs = '0') and (Full_half_n = '0') and 
                 (BackingOff = '0'))) and 
                  Ifgp1Done = '0'  and Ifgp2Done = '0' then
               nextState <= startIfgp1Cnt;
            else
               nextState <= loadCntr; -- wait for end of transmission
            end if;
            
         when startIfgp1Cnt =>
            if (((Crs = '1') and (Full_half_n = '0')) or
                ((BackingOff = '1') and (Full_half_n = '0'))) then
               nextState <= loadCntr;
            elsif (Ifgp1Done = '1') then  -- gap done
               nextState <= startIfgp2Cnt;
            else
               nextState <= startIfgp1Cnt; -- still counting
            end if;
            

         when startIfgp2Cnt =>
            -- Added check for CRS to reset counter in when CRS goes low.
            if (((Crs = '1') and (Full_half_n = '0')) or
                ((BackingOff = '1') and (Full_half_n = '0'))) then
               nextState <= loadCntr;
            elsif (Ifgp2Done = '1') then  -- gap done
               nextState <= cntDone;
            else
               nextState <= startIfgp2Cnt; -- still counting
            end if;        
           
         when cntDone =>
            if (TxEn = '1' or Crs = '1') then  -- transmission started
               nextState <= loadCntr;
            else
               nextState <= cntDone;
            end if;        
           
      -- coverage off
         when others  => null;
            nextState <= loadCntr;
      -- coverage on
      
     end case;
   end process FSMC;
   
   ----------------------------------------------------------------------------
   -- FSMD Process
   ----------------------------------------------------------------------------
   FSMD : process(thisState)
   begin  --
      if ((thisState =  loadCntr) or (thisState =  startIfgp1Cnt) or 
          (thisState =  startIfgp2Cnt)) then
         Deferring <= '1';
      else
         Deferring <= '0';
      end if;
      
      if ((thisState = startIfgp1Cnt) or (thisState =  startIfgp2Cnt)) then
         CntrEnbl   <= '1';
      else
         CntrEnbl   <= '0';
      end if;
      
      if (thisState = loadCntr) then
         CntrLd   <= '1';
      else
         CntrLd   <= '0';
      end if;
   end process FSMD;   

end implementation;

