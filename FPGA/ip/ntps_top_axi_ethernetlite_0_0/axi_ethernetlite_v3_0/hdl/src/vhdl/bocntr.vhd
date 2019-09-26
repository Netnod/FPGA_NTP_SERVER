-------------------------------------------------------------------------------
-- bocntr - entity/architecture pair
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
-- Filename     : bocntr.vhd
-- Version      : v2.0
-- Description  : This is the transmit collision back off counter
--                the back off delay for retry n (1 <= n <= 16) is defined as
--                delay where delay is a uniformly distributed integer number
--                of slot times (512 bit times) defined as 
--                0 <= delay <= 2^k where k is min(n, 10) i.e., k is equal
--                to the retry attempt up to 10 and then remains at 10 for 
--                retry attempts 11 through 16.  So the delay for retry 1
--                would be 0, 1, or 2 slot times.  The delay for retry 2
--                would be 0, 1, 2, 3, or 4 slot times.
--
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
use ieee.std_logic_unsigned.all;

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
--  InitBackoff  -- Backoff initialized
--  RetryCnt     -- Retry count
--  BackingOff   -- Backing off from transmit
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity bocntr is

  port (
    Clk         : in  std_logic; -- tx Clk based (2.5 or 25 MHz)
    Clken       : in  std_logic;  
    Rst         : in  std_logic;
    InitBackoff : in  std_logic;  
    RetryCnt    : in std_logic_vector(0 to 4);    
    BackingOff  : out std_logic);

end bocntr;

-------------------------------------------------------------------------------
-- Definition of Generics:
--          No Generics were used for this Entity.
--
-- Definition of Ports:
--         
-------------------------------------------------------------------------------

architecture implementation of bocntr is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";

-------------------------------------------------------------------------------
--  Constant Declarations
-------------------------------------------------------------------------------
-- Constants used in this design are found in mac_pkg.vhd
-------------------------------------------------------------------------------
-- Signal and Type Declarations
-------------------------------------------------------------------------------

  type StateName is (idle, shifting, inBackoff);

  signal thisState          : StateName;
  signal nextState          : StateName;
  signal initBackoffLtch    : std_logic;
  signal initBackoffLtchRst : std_logic;
  signal backingOff_i       : std_logic;
  signal lfsrOut            : std_logic;
  signal slotCntRst         : std_logic;
  signal slotCntEnbl        : std_logic;
  signal slotCnt            : std_logic_vector(0 to 6);
  signal backOffCntLd       : std_logic;
  signal backOffCntEnbl     : std_logic;
  signal backOffCnt         : std_logic_vector(0 to 9);
  signal shftCntLd          : std_logic;
  signal shftCntEnbl        : std_logic;
  signal shftCnt            : std_logic_vector(0 to 3);
  signal shftRst            : std_logic;
  signal shftEnbl           : std_logic;
  signal shftData           : std_logic_vector(0 to 9);
  signal slotDone           : std_logic;
  signal numRetries         : std_logic_vector(0 to 3);
  
-------------------------------------------------------------------------------
-- Component Declarations
-------------------------------------------------------------------------------

begin

  LFSRP : entity axi_ethernetlite_v3_0.lfsr16
    port map(
             Rst     => Rst,
             Clk     => Clk,
             Clken   => Clken,
             Enbl    => shftEnbl,
             Shftout => lfsrOut);

   numRetries <= "1010" when (((RetryCnt(1) = '1') and     -- 8 or larger and
                             ((RetryCnt(3) = '1') or       -- 10, 11, 14, 15 or
                             (RetryCnt(2) = '1'))) or      -- 12 thru 15
                             (RetryCnt(0) = '1')) else     -- 12 thru 15
                             RetryCnt(1 to 4);             -- 9 or less
 -------------------------------------------------------------------------------
 -- INT_SHFT_PROCESS
 -------------------------------------------------------------------------------
  INT_SHFT_PROCESS : process (Clk)
  begin
    if (Clk'event and Clk = '1') then
      if (Clken = '1') then
        if shftRst = '1' then
          shftData <= (others => '0');
        elsif (shftEnbl = '1') then
          shftData(9) <= lfsrOut;
          shftData(8) <= shftData(9);
          shftData(7) <= shftData(8);
          shftData(6) <= shftData(7);
          shftData(5) <= shftData(6);
          shftData(4) <= shftData(5);
          shftData(3) <= shftData(4);
          shftData(2) <= shftData(3);
          shftData(1) <= shftData(2);
          shftData(0) <= shftData(1);
        -- coverage off
        else
         null;
        -- coverage on
        end if;
      end if;
    end if;
  end process INT_SHFT_PROCESS;

 -------------------------------------------------------------------------------
 -- INT_SLOT_COUNT_PROCESS
 -------------------------------------------------------------------------------
  INT_SLOT_COUNT_PROCESS: process (Clk)
  begin
    if (Clk'event and Clk = '1') then
      if (Clken = '1') then
        if ((slotCntRst = '1') or (slotDone = '1')) then
          slotCnt <= "1111111";
        elsif (slotCntEnbl = '1' and not(slotCnt = "0000000")) then
          slotCnt <= slotCnt - 1;
    -- coverage off
        else
          null;
    -- coverage on
        end if;
      end if;
    end if;
  end process INT_SLOT_COUNT_PROCESS;

 -------------------------------------------------------------------------------
 -- INT_BACKOFF_COUNT_PROCESS
 -------------------------------------------------------------------------------
  INT_BACKOFF_COUNT_PROCESS: process (Clk)
  begin  -- 
    if (Clk'event and Clk = '1') then
      if (Clken = '1') then
        if (backOffCntLd = '1') then
          backOffCnt <= shftData;
        elsif (backOffCntEnbl = '1' and not(backOffCnt = "0000000000") and 
              (slotDone = '1')) then
          backOffCnt <= backOffCnt - 1;
        -- coverage off
        else
        null;
        -- coverage on

        end if;
      end if;
    end if;
  end process INT_BACKOFF_COUNT_PROCESS;  

 -------------------------------------------------------------------------------
 -- INT_SHIFT_COUNT_PROCESS
 -------------------------------------------------------------------------------
  INT_SHIFT_COUNT_PROCESS: process (Clk)
  begin  -- 
    if (Clk'event and Clk = '1') then
      if (Clken = '1') then
        if (shftCntLd = '1') then
          shftCnt <= numRetries;
        elsif (shftCntEnbl = '1' and not(shftCnt = "0000")) then
          shftCnt <= shftCnt - 1;
        -- coverage off
        else
        null;
        -- coverage on
        end if;
      end if;
    end if;
  end process INT_SHIFT_COUNT_PROCESS;  

 -------------------------------------------------------------------------------
 -- INT_BACKOFFDONE_PROCESS
 -------------------------------------------------------------------------------
  INT_BACKOFFDONE_PROCESS: process (Clk)
  begin  -- 
    if (Clk'event and Clk = '1') then
      if (Rst = '1') then
        backingOff_i <= '0';
      elsif (InitBackoff = '1') then
        backingOff_i <= '1';
      elsif ((backOffCntEnbl = '1') and  (backOffCnt = "000000000")) then
        backingOff_i <= '0';
      -- coverage off
      else
       null;
      -- coverage on
      end if;
    end if;
  end process INT_BACKOFFDONE_PROCESS;

  BackingOff <= backingOff_i;

 -------------------------------------------------------------------------------
 -- INT_SLOT_TIME_DONE_PROCESS
 -------------------------------------------------------------------------------
  INT_SLOT_TIME_DONE_PROCESS: process (Clk)
  begin  -- 
    if (Clk'event and Clk = '1') then
      if (Rst = '1') then
        slotDone <= '0';
      elsif (slotCntEnbl = '0') then
        slotDone <= '0';
      elsif ((slotDone = '1') and (Clken = '1')) then
        slotDone <= '0';
      elsif ((slotCntEnbl = '1') and  (slotCnt = "0000000")) then
        slotDone <= '1';
      else
        null;
      end if;
    end if;
  end process INT_SLOT_TIME_DONE_PROCESS;
  
 -------------------------------------------------------------------------------
 -- INT_LATCH_PROCESS
 -------------------------------------------------------------------------------
  INT_LATCH_PROCESS: process (Clk)
  begin  -- 
    if (Clk'event and Clk = '1') then
      if (Rst = '1') then
        initBackoffLtch <= '0';
      elsif (InitBackoff = '1') then
        initBackoffLtch <= '1';
      elsif (initBackoffLtchRst = '1') then
        initBackoffLtch <= '0';
      -- coverage off
      else
       null;
      -- coverage on
      -- coverage on
      end if;
    end if;
  end process INT_LATCH_PROCESS;
  
-------------------------------------------------------------------------------
-- An FSM that deals with backing off
-------------------------------------------------------------------------------
  FSMR : process (Clk)
  begin  --
    if (Clk'event and Clk = '1') then     -- rising clock edge
       if (Rst = '1') then
          thisState <= idle;
        elsif (Clken = '1') then
          thisState <= nextState;
       end if;
    end if;
  end process FSMR;

-------------------------------------------------------------------------------
-- State Machine
-------------------------------------------------------------------------------
  FSMC : process (thisState,initBackoffLtch,shftCnt,backOffCnt)
  begin  --
    case thisState is
      when idle =>
        if (initBackoffLtch = '1') then
          nextState <= shifting;
        else
          nextState <= idle;
        end if;
      when shifting =>
        if (shftCnt = "0000") then
          nextState <= inBackoff;
        else
          nextState <= shifting;
        end if;
      when inBackoff =>
        if (backOffCnt = "000000000") then
          nextState <= idle;
        else
          nextState <= inBackoff;
        end if;              
      -- coverage off
      when others         => null;
        nextState <= idle;
      -- coverage on
    end case;
  end process FSMC;

-------------------------------------------------------------------------------
-- State Machine Control signals generation
-------------------------------------------------------------------------------
  FSMD : process(thisState)
  
  begin
         
   if (thisState =  idle) then
     shftRst <= '1';
     shftCntLd <= '1';
   else
     shftRst <= '0';
     shftCntLd <= '0';
   end if;
   
   if ((thisState = idle) or (thisState =  shifting)) then
     slotCntRst   <= '1';
     backOffCntLd <= '1';
   else
     slotCntRst   <= '0';
     backOffCntLd <= '0';
   end if;

   if (thisState =  shifting) then
     shftCntEnbl <= '1';
     shftEnbl <= '1';
     initBackoffLtchRst <= '1';
   else
     shftCntEnbl <= '0';
     shftEnbl <= '0';
     initBackoffLtchRst <= '0';
   end if;
   
   if (thisState =  inBackoff) then
     slotCntEnbl <= '1';
     backOffCntEnbl <= '1';
   else
     slotCntEnbl <= '0';
     backOffCntEnbl <= '0';
   end if;
   
  end process FSMD;   
  
end implementation;
