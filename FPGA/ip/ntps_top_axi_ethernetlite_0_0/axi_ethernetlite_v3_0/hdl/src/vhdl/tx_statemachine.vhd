-------------------------------------------------------------------------------
-- tx_statemachine - entity/architecture pair
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
-- Filename     : tx_statemachine.vhd
-- Version      : v2.0
-- Description  : This file contains the transmit control state machine.
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
--  C_DUPLEX               -- 1 = full duplex, 0 = half duplex
-------------------------------------------------------------------------------
-- Definition of Ports:
--
--  Clk                   -- System Clock
--  Rst                   -- System Reset
--  TxClkEn               -- Transmit clocl enable
--  Jam_rst               -- Jam reset
--  TxRst                 -- Transmit reset
--  Deferring             -- Deffering 
--  ColRetryCnt           -- Collision retry coun
--  ColWindowNibCnt       -- Collision window nibble count
--  JamTxNibCnt           -- TX Jam nibble count
--  TxNibbleCnt           -- TX Nibble count
--  BusFifoWrNibbleCnt    -- Bus FIFO write nibble count
--  CrcCnt                -- CRC count
--  BusFifoFull           -- Bus FIFO full
--  BusFifoEmpty          -- Bus FIFO empty
--  PhyCollision          -- Phy collision
--  Tx_pong_ping_l        -- TX Ping/Pong buffer enable
--  InitBackoff           -- Initialize back off
--  TxRetryRst            -- TX retry reset
--  TxExcessDefrlRst      -- TX excess defer reset
--  TxLateColnRst         -- TX late collision reset
--  TxColRetryCntRst_n    -- TX collision retry counter reset
--  TxColRetryCntEnbl     -- TX collision retry counter enable
--  TxNibbleCntRst        -- TX nibble counter reset
--  TxEnNibbleCnt         -- TX nibble count
--  TxNibbleCntLd         -- TX nibble counter load
--  BusFifoWrCntRst       -- Bus FIFO write counter reset
--  BusFifoWrCntEn        -- Bus FIFO write counter enable
--  EnblPre               -- Enable Preamble
--  EnblSFD               -- Enable SFD
--  EnblData              -- Enable Data  
--  EnblJam               -- Enable Jam
--  EnblCRC               -- Enable CRC 
--  BusFifoWr             -- Bus FIFO write enable
--  Phytx_en              -- PHY transmit enable
--  TxCrcEn               -- TX CRC enable
--  TxCrcShftOutEn        -- TX CRC shift out enable
--  Tx_addr_en            -- TX buffer address enable  
--  Tx_start              -- Trasnmit start
--  Tx_done               -- Transmit done
--  Tx_idle               -- Transmit idle
--  Tx_DPM_ce             -- TX buffer chip enable
--  Tx_DPM_wr_data        -- TX buffer write data
--  Tx_DPM_wr_rd_n        -- TX buffer write/read enable
--  Enblclear             -- Enable clear 
--  Transmit_start        -- Transmit start
--  Mac_program_start     -- MAC Program start
--  Mac_addr_ram_we       -- MAC Address RAM write enable
--  Mac_addr_ram_addr_wr  -- MAC Address RAM write address
--  Pre_sfd_done          -- Pre SFD done
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity tx_statemachine is
  generic 
     (
       C_DUPLEX : integer := 1
       -- 1 = full duplex, 0 = half duplex   
     );
  port 
    (
    Clk                  : in  std_logic;
    Rst                  : in  std_logic;
    TxClkEn              : in  std_logic; 
    Jam_rst              : out std_logic;
    TxRst                : in  std_logic;
    Deferring            : in  std_logic;        
    ColRetryCnt          : in  std_logic_vector (0 to 4);
    ColWindowNibCnt      : in  std_logic_vector (0 to 7);
    JamTxNibCnt          : in  std_logic_vector (0 to 3);
    TxNibbleCnt          : in  std_logic_vector (0 to 11);
    BusFifoWrNibbleCnt   : in  std_logic_vector (0 to 11);
    CrcCnt               : in  std_logic_vector (0 to 3);
    BusFifoFull          : in  std_logic;
    BusFifoEmpty         : in  std_logic;
    PhyCollision         : in  std_logic;
    Tx_pong_ping_l       : in  std_logic;
    InitBackoff          : out std_logic;
    TxRetryRst           : out std_logic;
    TxExcessDefrlRst     : out std_logic;
    TxLateColnRst        : out std_logic;          
    TxColRetryCntRst_n   : out std_logic;
    TxColRetryCntEnbl    : out std_logic;
    TxNibbleCntRst       : out std_logic;
    TxEnNibbleCnt        : out std_logic;
    TxNibbleCntLd        : out std_logic;
    BusFifoWrCntRst      : out std_logic;
    BusFifoWrCntEn       : out std_logic;
    EnblPre              : out std_logic;
    EnblSFD              : out std_logic;
    EnblData             : out std_logic;
    EnblJam              : out std_logic;
    EnblCRC              : out std_logic;
    BusFifoWr            : out std_logic;
    Phytx_en             : out std_logic;
    TxCrcEn              : out std_logic;
    TxCrcShftOutEn       : out std_logic;
    Tx_addr_en           : out std_logic;
    Tx_start             : out std_logic;
    Tx_done              : out std_logic;
    Tx_idle              : out std_logic;
    Tx_DPM_ce            : out std_logic;
    Tx_DPM_wr_data       : out std_logic_vector (0 to 3);
    Tx_DPM_wr_rd_n       : out std_logic;
    Enblclear            : out std_logic;
    Transmit_start       : in  std_logic;
    Mac_program_start    : in  std_logic;
    Mac_addr_ram_we      : out std_logic;
    Mac_addr_ram_addr_wr : out std_logic_vector(0 to 3);      
    Pre_sfd_done         : out std_logic
    );
 
end tx_statemachine;

-------------------------------------------------------------------------------
-- Definition of Generics:
--          No Generics were used for this Entity.
--
-- Definition of Ports:
--         
-------------------------------------------------------------------------------

architecture implementation of tx_statemachine is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";

-------------------------------------------------------------------------------
--  Constant Declarations
-------------------------------------------------------------------------------
-- Constants used in this design are found in mac_pkg.vhd
-------------------------------------------------------------------------------
-- Signal and Type Declarations
-------------------------------------------------------------------------------
signal idle                         : std_logic; -- state  0
signal lngthDelay1                  : std_logic; -- state  5
signal lngthDelay2                  : std_logic; -- state  6
signal ldLngthCntr                  : std_logic; -- state  7
signal preamble                     : std_logic; -- state  8
signal checkBusFifoFullSFD          : std_logic; -- state  9
signal SFD                          : std_logic; -- state 10
signal checkBusFifoFull             : std_logic; -- state 11
signal loadBusFifo                  : std_logic; -- state 12
signal checkCrc                     : std_logic; -- state 13  
signal checkBusFifoFullCrc          : std_logic; -- state 14
signal loadBusFifoCrc               : std_logic; -- state 15
signal waitFifoEmpty                : std_logic; -- state 16
signal txDone                       : std_logic; -- state 17
signal checkBusFifoFullJam          : std_logic; -- state 18
signal loadBusFifoJam               : std_logic; -- state 19
signal half_dup_error               : std_logic; -- state 20
signal collisionRetry               : std_logic; -- state 21
signal retryWaitFifoEmpty           : std_logic; -- state 22
signal retryReset                   : std_logic; -- state 23
signal txDone2                      : std_logic; -- state 24
signal txDonePause                  : std_logic; -- state 25
signal chgMacAdr1                   : std_logic; -- state 26
signal chgMacAdr2                   : std_logic; -- state 27
signal chgMacAdr3                   : std_logic; -- state 28
signal chgMacAdr4                   : std_logic; -- state 29
signal chgMacAdr5                   : std_logic; -- state 30
signal chgMacAdr6                   : std_logic; -- state 31
signal chgMacAdr7                   : std_logic; -- state 32
signal chgMacAdr8                   : std_logic; -- state 33
signal chgMacAdr9                   : std_logic; -- state 34
signal chgMacAdr10                  : std_logic; -- state 35
signal chgMacAdr11                  : std_logic; -- state 36
signal chgMacAdr12                  : std_logic; -- state 37
signal chgMacAdr13                  : std_logic; -- state 38
signal chgMacAdr14                  : std_logic; -- state 39
signal idle_D                       : std_logic; -- state  0
signal txLngthRdNib1_D              : std_logic; -- state  1
signal lngthDelay1_D                : std_logic; -- state  5
signal lngthDelay2_D                : std_logic; -- state  6
signal ldLngthCntr_D                : std_logic; -- state  7
signal preamble_D                   : std_logic; -- state  8
signal checkBusFifoFullSFD_D        : std_logic; -- state  9
signal SFD_D                        : std_logic; -- state 10
signal checkBusFifoFull_D           : std_logic; -- state 11
signal loadBusFifo_D                : std_logic; -- state 12
signal checkCrc_D                   : std_logic; -- state 13  
signal checkBusFifoFullCrc_D        : std_logic; -- state 14
signal loadBusFifoCrc_D             : std_logic; -- state 15
signal waitFifoEmpty_D              : std_logic; -- state 16
signal txDone_D                     : std_logic; -- state 17
signal checkBusFifoFullJam_D        : std_logic; -- state 18
signal loadBusFifoJam_D             : std_logic; -- state 19
signal half_dup_error_D             : std_logic; -- state 20
signal collisionRetry_D             : std_logic; -- state 21
signal retryWaitFifoEmpty_D         : std_logic; -- state 22
signal retryReset_D                 : std_logic; -- state 23
signal txDone2_D                    : std_logic; -- state 24
signal txDonePause_D                : std_logic; -- state 25
signal chgMacAdr1_D                 : std_logic; -- state 26
signal chgMacAdr2_D                 : std_logic; -- state 27
signal chgMacAdr3_D                 : std_logic; -- state 28
signal chgMacAdr4_D                 : std_logic; -- state 29
signal chgMacAdr5_D                 : std_logic; -- state 30
signal chgMacAdr6_D                 : std_logic; -- state 31
signal chgMacAdr7_D                 : std_logic; -- state 32
signal chgMacAdr8_D                 : std_logic; -- state 33
signal chgMacAdr9_D                 : std_logic; -- state 34
signal chgMacAdr10_D                : std_logic; -- state 35
signal chgMacAdr11_D                : std_logic; -- state 36
signal chgMacAdr12_D                : std_logic; -- state 37
signal chgMacAdr13_D                : std_logic; -- state 38
signal chgMacAdr14_D                : std_logic; -- state 39
signal txNibbleCntRst_i             : std_logic; 
signal txEnNibbleCnt_i              : std_logic;
signal txNibbleCntLd_i              : std_logic;
signal busFifoWr_i                  : std_logic;
signal phytx_en_i                   : std_logic;
signal phytx_en_i_n                 : std_logic;
signal txCrcEn_i                    : std_logic;
signal retrying_i                   : std_logic; 
signal phytx_en_reg                 : std_logic;
signal busFifoWrCntRst_reg          : std_logic;
signal retrying_reg                 : std_logic;
signal txCrcEn_reg                  : std_logic;
signal busFifoWrCntRst_i            : std_logic;
signal state_machine_rst            : std_logic;
signal full_half_n                  : std_logic;
signal goto_idle                    : std_logic; -- state  0
signal stay_idle                    : std_logic; -- state  0
signal goto_txLngthRdNib1_1         : std_logic; -- state  1
signal goto_txLngthRdNib1_2         : std_logic; -- state  1
signal goto_lngthDelay1             : std_logic; -- state  5
signal goto_lngthDelay2             : std_logic; -- state  6
signal goto_ldLngthCntr             : std_logic; -- state  7
signal stay_ldLngthCntr             : std_logic; -- state  7
signal goto_preamble                : std_logic; -- state  8
signal stay_preamble                : std_logic; -- state  8
signal goto_checkBusFifoFullSFD     : std_logic; -- state  9 
signal stay_checkBusFifoFullSFD     : std_logic; -- state  9
signal goto_SFD                     : std_logic; -- state 10 
signal stay_SFD                     : std_logic; -- state 10 
signal goto_checkBusFifoFull_1      : std_logic; -- state 11 
signal goto_checkBusFifoFull_2      : std_logic; -- state 11
signal stay_checkBusFifoFull        : std_logic; -- state 11
signal goto_loadBusFifo             : std_logic; -- state 12
signal goto_checkCrc                : std_logic; -- state 13 
signal goto_checkBusFifoFullCrc_1   : std_logic; -- state 14
signal goto_checkBusFifoFullCrc_2   : std_logic; -- state 14
signal stay_checkBusFifoFullCrc     : std_logic; -- state 14
signal goto_loadBusFifoCrc_1        : std_logic; -- state 15
signal goto_waitFifoEmpty_2         : std_logic; -- state 16
signal stay_waitFifoEmpty           : std_logic; -- state 16
signal goto_txDone_1                : std_logic; -- state 17
signal goto_txDone_2                : std_logic; -- state 17
signal goto_checkBusFifoFullJam_1   : std_logic; -- state 18
signal goto_checkBusFifoFullJam_2   : std_logic; -- state 18
signal stay_checkBusFifoFullJam     : std_logic; -- state 18
signal goto_loadBusFifoJam          : std_logic; -- state 19
signal goto_half_dup_error_1        : std_logic; -- state 20
signal goto_half_dup_error_2        : std_logic; -- state 20
signal goto_collisionRetry          : std_logic; -- state 21
signal goto_retryWaitFifoEmpty      : std_logic; -- state 22
signal stay_retryWaitFifoEmpty      : std_logic; -- state 22
signal goto_retryReset              : std_logic; -- state 23
signal goto_txDone2                 : std_logic; -- state 24
signal goto_txDonePause             : std_logic; -- state 25
signal goto_chgMacAdr1              : std_logic; -- state 26
signal goto_chgMacAdr2              : std_logic; -- state 27
signal goto_chgMacAdr3              : std_logic; -- state 28
signal goto_chgMacAdr4              : std_logic; -- state 29
signal goto_chgMacAdr5              : std_logic; -- state 30
signal goto_chgMacAdr6              : std_logic; -- state 31
signal goto_chgMacAdr7              : std_logic; -- state 32
signal goto_chgMacAdr8              : std_logic; -- state 33
signal goto_chgMacAdr9              : std_logic; -- state 34
signal goto_chgMacAdr10             : std_logic; -- state 35
signal goto_chgMacAdr11             : std_logic; -- state 36
signal goto_chgMacAdr12             : std_logic; -- state 37
signal goto_chgMacAdr13             : std_logic; -- state 38
signal goto_chgMacAdr14             : std_logic; -- state 39
signal txNibbleCnt_is_1             : std_logic;
signal busFifoWrNibbleCnt_is_14     : std_logic;
signal busFifoWrNibbleCnt_not_14    : std_logic;   
signal busFifoWrNibbleCnt_is_15     : std_logic;
signal busFifoWrNibbleCnt_not_15    : std_logic;
signal crcCnt_not_0                 : std_logic;
signal crcCnt_is_0                  : std_logic;
signal jamTxNibCnt_not_0            : std_logic;
signal jamTxNibCnt_is_0             : std_logic;
signal colWindowNibCnt_not_0        : std_logic;
signal colWindowNibCnt_is_0         : std_logic;
signal colRetryCnt_is_15            : std_logic;
signal pre_SFD_zero                 : std_logic;
signal waitdone_pre_sfd             : std_logic;
signal transmit_start_reg           : std_logic;
signal mac_program_start_reg        : std_logic;
  

-------------------------------------------------------------------------------
-- Component Declarations
-------------------------------------------------------------------------------
-- The following components are the building blocks of the tx state machine

component FDR
  port 
   (
    Q : out std_logic;
    C : in std_logic;
    D : in std_logic;
    R : in std_logic
    );
end component;

component FDS
  port 
   (
    Q : out std_logic;
    C : in std_logic;
    D : in std_logic;
    S : in std_logic
    );
end component;

component FDRE
  port
   (
    Q  : out std_logic;
    C  : in std_logic;
    CE : in std_logic;
    D  : in std_logic;
    R  : in std_logic
    );
end component;

begin

   Tx_DPM_wr_data <= (others => '0'); 
   -- Trnasmit Done indicator
   -- added txDone for ping pong control
   Tx_done          <= txDone and not retrying_reg; 
                        
   
   -- Full/Half duplex indicator
   full_half_n      <= '1'when C_DUPLEX = 1 else '0'; 
   
   -- Wait for Pre SFD
   --waitdone_pre_sfd <= PhyCollision and not(full_half_n) and not(pre_sfd_zero);
   Pre_sfd_done     <= pre_SFD_zero;
   
   -- PHY tx enable
   phytx_en_i_n     <= not(phytx_en_i);


   ----------------------------------------------------------------------------
   -- Signal Assignment
   ----------------------------------------------------------------------------
   TxNibbleCntRst      <= txNibbleCntRst_i;       
   TxEnNibbleCnt       <= txEnNibbleCnt_i;
   TxNibbleCntLd       <= txNibbleCntLd_i;
   
   BusFifoWr           <= busFifoWr_i;
   Phytx_en            <= phytx_en_i;
   TxCrcEn             <= txCrcEn_i;

   BusFifoWrCntRst     <= busFifoWrCntRst_i;
                  
   ----------------------------------------------------------------------------
   -- Pre SFD Counter
   ----------------------------------------------------------------------------
   PRE_SFD_count: entity axi_ethernetlite_v3_0.cntr5bit
     port map
            (
             cntout  =>  open,
             Clk     =>  Clk, 
             Rst     =>  Rst,
             en      =>  TxClkEn,
             ld      =>  phytx_en_i_n,
             load_in =>  "10011",
             zero    =>  pre_SFD_zero
             );  
   
   -- State machine reset
   state_machine_rst <= Rst;
   
   ----------------------------------------------------------------------------
   -- Counter enable generation
   ----------------------------------------------------------------------------
   -- Transmit Nibble Counte=1
   txNibbleCnt_is_1 <= not(TxNibbleCnt(0)) and not(TxNibbleCnt(1)) and 
                       not(TxNibbleCnt(2)) and not(TxNibbleCnt(3)) and 
                       not(TxNibbleCnt(4)) and not(TxNibbleCnt(5)) and
                       not(TxNibbleCnt(6)) and not(TxNibbleCnt(7)) and 
                       not(TxNibbleCnt(8)) and not(TxNibbleCnt(9)) and
                       not(TxNibbleCnt(10))and TxNibbleCnt(11);
   
   -- Bus FIFO write Nibble Counte=14
   busFifoWrNibbleCnt_is_14 <= BusFifoWrNibbleCnt(8) and 
                               BusFifoWrNibbleCnt(9) and 
                               BusFifoWrNibbleCnt(10) and 
                               not(BusFifoWrNibbleCnt(11));
                               
   -- Bus FIFO write Nibble Counte/=14
   busFifoWrNibbleCnt_not_14 <= not(busFifoWrNibbleCnt_is_14);
     
   -- Bus FIFO write Nibble Counte=15
   busFifoWrNibbleCnt_is_15 <= (BusFifoWrNibbleCnt(8)  and 
                                BusFifoWrNibbleCnt(9)  and 
                                BusFifoWrNibbleCnt(10) and 
                                BusFifoWrNibbleCnt(11));
                                
   -- Bus FIFO write Nibble Counte/=15
   busFifoWrNibbleCnt_not_15 <= not(busFifoWrNibbleCnt_is_15);
   
   -- CRC Count/=0
   crcCnt_not_0 <= CrcCnt(0) or CrcCnt(1) or CrcCnt(2) or CrcCnt(3);      
   
   -- CRC Count=0
   crcCnt_is_0  <= not crcCnt_not_0;  
   
   -- Jam Transmit Nibble count/=0
   jamTxNibCnt_not_0 <= JamTxNibCnt(0) or JamTxNibCnt(1) or JamTxNibCnt(2) or 
                        JamTxNibCnt(3);  
   
   -- Jam Transmit Nibble count=0
   jamTxNibCnt_is_0  <= not(jamTxNibCnt_not_0);
   
   -- Collision windo Nibble count/=0
   colWindowNibCnt_not_0 <= ColWindowNibCnt(0) or ColWindowNibCnt(1) or 
                            ColWindowNibCnt(2) or ColWindowNibCnt(3) or 
                            ColWindowNibCnt(4) or ColWindowNibCnt(5) or 
                            ColWindowNibCnt(6) or ColWindowNibCnt(7); 
                            
   -- Collision windo Nibble count=0
   colWindowNibCnt_is_0 <= not(colWindowNibCnt_not_0);
   
   -- Collision retry count=15
   colRetryCnt_is_15    <= not(ColRetryCnt(0)) and ColRetryCnt(1) and 
                                ColRetryCnt(2) and ColRetryCnt(3) and 
                                ColRetryCnt(4);    

   ----------------------------------------------------------------------------
   -- idle state
   ----------------------------------------------------------------------------    
   goto_idle <= txDonePause;
   

   stay_idle <= idle and not(Transmit_start) and not Mac_program_start; 
   
   
   
   idle_D <= goto_idle or stay_idle;
   
   ----------------------------------------------------------------------------
   -- idle state
   ----------------------------------------------------------------------------    
   STATE0A: FDS
     port map 
       (
       Q => idle,             --[out]
       C => Clk,              --[in]
       D => idle_D,           --[in]
       S => state_machine_rst --[in]
      );
     
   Tx_idle <= idle;  
   
   ----------------------------------------------------------------------------
   -- txLngthRdNib1 state
   ----------------------------------------------------------------------------
   --goto_txLngthRdNib1_1 <= idle and Transmit_start and not transmit_start_reg;

   goto_txLngthRdNib1_1 <= idle and 
                           ((transmit_start and not transmit_start_reg)
                            or 
                            (transmit_start and retrying_reg));
   
   goto_txLngthRdNib1_2 <= retryReset;
   
   txLngthRdNib1_D      <= goto_txLngthRdNib1_1 or goto_txLngthRdNib1_2;
     
     
   goto_lngthDelay1 <= txLngthRdNib1_D;   
   ----------------------------------------------------------------------------
   -- lngthDelay1 state
   ----------------------------------------------------------------------------    
   lngthDelay1_D    <= goto_lngthDelay1;
     
   STATE5A: FDR
     port map 
      (
       Q => lngthDelay1,      --[out]
       C => Clk,              --[in]
       D => lngthDelay1_D,    --[in]
       R => state_machine_rst --[in]
      );    
   ----------------------------------------------------------------------------
   -- lngthDelay2 state
   ----------------------------------------------------------------------------    
   goto_lngthDelay2 <= lngthDelay1;
   
   lngthDelay2_D    <= goto_lngthDelay2;
     
   STATE6A: FDR
     port map 
      (
       Q => lngthDelay2,      --[out]
       C => Clk,              --[in]
       D => lngthDelay2_D,    --[in]
       R => state_machine_rst --[in]
      );    
           
   ----------------------------------------------------------------------------
   -- ldLngthCntr state
   ----------------------------------------------------------------------------    
   goto_ldLngthCntr <= lngthDelay1;
   
   stay_ldLngthCntr <= ldLngthCntr and Deferring;
   
   ldLngthCntr_D    <= goto_ldLngthCntr or stay_ldLngthCntr;
     
   STATE7A: FDR
     port map 
      (
       Q => ldLngthCntr,      --[out]
       C => Clk,              --[in]
       D => ldLngthCntr_D,    --[in]
       R => state_machine_rst --[in]
      );    
     
   ----------------------------------------------------------------------------
   -- preamble state
   ----------------------------------------------------------------------------      
   goto_preamble <= (ldLngthCntr and (not(Deferring)));
     
   stay_preamble <= preamble and busFifoWrNibbleCnt_not_14;
   
   preamble_D    <= goto_preamble or stay_preamble;
   
   STATE8A: FDR
     port map 
      (
       Q => preamble,         --[out]
       C => Clk,              --[in]
       D => preamble_D,       --[in]
       R => state_machine_rst --[in]
      );  
   ----------------------------------------------------------------------------
   -- checkBusFifoFullSFD state
   ----------------------------------------------------------------------------      
   goto_checkBusFifoFullSFD <= preamble and busFifoWrNibbleCnt_is_14;
   
   stay_checkBusFifoFullSFD <= checkBusFifoFullSFD and BusFifoFull;
   
   checkBusFifoFullSFD_D    <= goto_checkBusFifoFullSFD or
                               stay_checkBusFifoFullSFD;
   STATE9A: FDR
     port map 
      (
       Q => checkBusFifoFullSFD,   --[out]
       C => Clk,                   --[in]
       D => checkBusFifoFullSFD_D, --[in]
       R => state_machine_rst      --[in]
      );
   ----------------------------------------------------------------------------
   -- SFD state
   ----------------------------------------------------------------------------
   goto_SFD <= checkBusFifoFullSFD and not (BusFifoFull);
   
   stay_SFD <= SFD and busFifoWrNibbleCnt_not_15;
   
   SFD_D    <= goto_SFD or stay_SFD;
   
   STATE10A: FDR
     port map 
      (
       Q => SFD,              --[out]
       C => Clk,              --[in]
       D => SFD_D,            --[in]
       R => state_machine_rst --[in]
       );
   ----------------------------------------------------------------------------
   -- checkBusFifoFull state
   ----------------------------------------------------------------------------
   goto_checkBusFifoFull_1 <= loadBusFifo and not(goto_checkCrc) and
                              not(goto_checkBusFifoFullJam_1);
   
   goto_checkBusFifoFull_2 <= SFD and busFifoWrNibbleCnt_is_15;
     
   stay_checkBusFifoFull   <= checkBusFifoFull and BusFifoFull and
                              not (goto_checkBusFifoFullJam_1);
   
   checkBusFifoFull_D      <= goto_checkBusFifoFull_1 or
                              goto_checkBusFifoFull_2 or
                              stay_checkBusFifoFull;
   
   STATE11A: FDR
     port map 
      (
       Q => checkBusFifoFull,   --[out]
       C => Clk,                --[in]
       D => checkBusFifoFull_D, --[in]
       R => state_machine_rst   --[in]
       );    
   ----------------------------------------------------------------------------
   -- loadBusFifo state
   ----------------------------------------------------------------------------   
   goto_loadBusFifo <= checkBusFifoFull and not(BusFifoFull) and 
                       not(goto_checkCrc) and not(goto_checkBusFifoFullJam_1);
   
   loadBusFifo_D    <= goto_loadBusFifo;
   
   STATE12A: FDR
     port map 
      (
       Q => loadBusFifo,      --[out]
       C => Clk,              --[in]
       D => loadBusFifo_D,    --[in]
       R => state_machine_rst --[in]
       );  
   ----------------------------------------------------------------------------
   -- checkCrc state
   ----------------------------------------------------------------------------    
   goto_checkCrc <= loadBusFifo and txNibbleCnt_is_1 and 
                    not(goto_checkBusFifoFullJam_1);
     
   checkCrc_D    <= goto_checkCrc;
     
   STATE13A: FDR
     port map 
      (
       Q => checkCrc,         --[out]
       C => Clk,              --[in]
       D => checkCrc_D,       --[in]
       R => state_machine_rst --[in]
      );      
   ----------------------------------------------------------------------------
   -- checkBusFifoFullCrc state
   ----------------------------------------------------------------------------
   goto_checkBusFifoFullCrc_1 <=  checkCrc and not(goto_checkBusFifoFullJam_1);
   
   goto_checkBusFifoFullCrc_2 <= loadBusFifoCrc and 
                                 not(goto_checkBusFifoFullJam_1);
   
   stay_checkBusFifoFullCrc   <=  checkBusFifoFullCrc and BusFifoFull and
                                not(goto_checkBusFifoFullJam_1);
   
   checkBusFifoFullCrc_D      <= goto_checkBusFifoFullCrc_1 or 
                                 goto_checkBusFifoFullCrc_2 or 
                                 stay_checkBusFifoFullCrc;  
   
   STATE14A: FDR
     port map 
      (
       Q => checkBusFifoFullCrc,   --[out]
       C => Clk,                   --[in]
       D => checkBusFifoFullCrc_D, --[in]
       R => state_machine_rst      --[in]
      );  
   ----------------------------------------------------------------------------
   -- loadBusFifoCrc state
   ----------------------------------------------------------------------------      
   goto_loadBusFifoCrc_1 <= checkBusFifoFullCrc and not(BusFifoFull) and
                            crcCnt_not_0 and not(goto_checkBusFifoFullJam_1);
     
   loadBusFifoCrc_D      <= goto_loadBusFifoCrc_1;  
     
   STATE15A: FDR
     port map 
      (
       Q => loadBusFifoCrc,   --[out]
       C => Clk,              --[in]
       D => loadBusFifoCrc_D, --[in]
       R => state_machine_rst --[in]
      );  
   ----------------------------------------------------------------------------
   -- waitFifoEmpty state
   ----------------------------------------------------------------------------       
   
   goto_waitFifoEmpty_2 <= checkBusFifoFullCrc and crcCnt_is_0 and
                          not(BusFifoFull) and not(goto_checkBusFifoFullJam_1);
   
   stay_waitFifoEmpty   <= waitFifoEmpty and not(BusFifoEmpty) and
                           not(goto_checkBusFifoFullJam_1);
   
   waitFifoEmpty_D      <= goto_waitFifoEmpty_2 or stay_waitFifoEmpty;
     
   STATE16A: FDR
     port map 
      (
       Q => waitFifoEmpty,    --[out]
       C => Clk,              --[in]
       D => waitFifoEmpty_D,  --[in]
       R => state_machine_rst --[in]
      );  
   ----------------------------------------------------------------------------
   -- txDone state
   ----------------------------------------------------------------------------   
   goto_txDone_1 <= waitFifoEmpty and BusFifoEmpty and 
                    not(goto_checkBusFifoFullJam_1);
   
   goto_txDone_2 <= half_dup_error or chgMacAdr14;
   
   txDone_D      <= goto_txDone_1 or goto_txDone_2;
     
   STATE17A: FDR
     port map 
      (
       Q => txDone,           --[out]
       C => Clk,              --[in]
       D => txDone_D,         --[in]
       R => state_machine_rst --[in]
      );  
   ----------------------------------------------------------------------------
   -- checkBusFifoFullJam state
   ----------------------------------------------------------------------------    
   goto_checkBusFifoFullJam_1 <= (checkBusFifoFull or loadBusFifo or checkCrc 
                                  or checkBusFifoFullCrc or waitFifoEmpty) and
                                  PhyCollision and not(full_half_n);
   
   goto_checkBusFifoFullJam_2 <= loadBusFifoJam;
     
   stay_checkBusFifoFullJam   <= checkBusFifoFullJam and (BusFifoFull or
                               not(pre_SFD_zero));
   
   checkBusFifoFullJam_D      <= goto_checkBusFifoFullJam_1 or
                                 goto_checkBusFifoFullJam_2 or 
                                 stay_checkBusFifoFullJam;
   
   STATE18A: FDR
     port map 
      (
       Q => checkBusFifoFullJam,   --[out]
       C => Clk,                   --[in]
       D => checkBusFifoFullJam_D, --[in]
       R => state_machine_rst      --[in]
       );  
   ----------------------------------------------------------------------------
   -- loadBusFifoJam state
   ----------------------------------------------------------------------------    
   goto_loadBusFifoJam <= checkBusFifoFullJam and 
                          not(stay_checkBusFifoFullJam) and 
                          jamTxNibCnt_not_0;
   
   loadBusFifoJam_D    <= goto_loadBusFifoJam;
   
   STATE19A: FDR
     port map 
      (
       Q => loadBusFifoJam,   --[out]
       C => Clk,              --[in]
       D => loadBusFifoJam_D, --[in]
       R => state_machine_rst --[in]
      );  
   ----------------------------------------------------------------------------
   -- half_dup_error state
   ----------------------------------------------------------------------------  
   goto_half_dup_error_1 <= checkBusFifoFullJam and not(BusFifoFull or
                            not(pre_SFD_zero)) and jamTxNibCnt_is_0 and
                            colWindowNibCnt_not_0 and colRetryCnt_is_15;
     
   goto_half_dup_error_2 <= checkBusFifoFullJam and not(BusFifoFull or
                            not(pre_SFD_zero)) and jamTxNibCnt_is_0 and 
                            colWindowNibCnt_is_0;
     
   half_dup_error_D      <= goto_half_dup_error_1 or goto_half_dup_error_2;
   
   STATE20A: FDR
     port map 
      (
       Q => half_dup_error,   --[out]
       C => Clk,              --[in]
       D => half_dup_error_D, --[in]
       R => state_machine_rst --[in]
      );
   
   ----------------------------------------------------------------------------
   -- collisionRetry state
   ----------------------------------------------------------------------------   
   goto_collisionRetry <= checkBusFifoFullJam and not(stay_checkBusFifoFullJam)
                          and not(goto_half_dup_error_1) and 
                          not(goto_half_dup_error_2) and
                          not(goto_loadBusFifoJam);
     
   collisionRetry_D    <= goto_collisionRetry;
   
   STATE21A: FDR
     port map 
      (
       Q => collisionRetry,   --[out]
       C => Clk,              --[in]
       D => collisionRetry_D, --[in]
       R => state_machine_rst --[in]
      );  
   
   ----------------------------------------------------------------------------
   -- retryWaitFifoEmpty state
   ----------------------------------------------------------------------------   
   goto_retryWaitFifoEmpty <= collisionRetry;
   
   stay_retryWaitFifoEmpty <= retryWaitFifoEmpty and not(BusFifoEmpty);
     
   retryWaitFifoEmpty_D <= goto_retryWaitFifoEmpty or stay_retryWaitFifoEmpty;
   
   STATE22A: FDR
     port map 
      (
       Q => retryWaitFifoEmpty,   --[out]
       C => Clk,                  --[in]
       D => retryWaitFifoEmpty_D, --[in]
       R => state_machine_rst     --[in]
      );
   
   ----------------------------------------------------------------------------
   -- retryReset state
   ----------------------------------------------------------------------------   
   goto_retryReset <= retryWaitFifoEmpty and BusFifoEmpty;
     
   retryReset_D    <= goto_retryReset;
   
   STATE23A: FDR
     port map 
      (
       Q => retryReset,       --[out]
       C => Clk,              --[in]
       D => retryReset_D,     --[in]
       R => state_machine_rst --[in]
      );  
   
   ----------------------------------------------------------------------------
   -- txDone2 state
   ----------------------------------------------------------------------------   
   goto_txDone2 <= txDone;
   
   txDone2_D    <= goto_txDone2;
   
   STATE24A: FDR
     port map 
      (
       Q => txDone2,          --[out]
       C => Clk,              --[in]
       D => txDone2_D,        --[in]
       R => state_machine_rst --[in]
      );  
   
   ----------------------------------------------------------------------------
   -- txDonePause state
   ----------------------------------------------------------------------------   
   goto_txDonePause <= txDone2;
   
   txDonePause_D    <= goto_txDonePause;
     
   STATE25A: FDR
     port map 
      (
       Q => txDonePause,      --[out]
       C => Clk,              --[in]
       D => txDonePause_D,    --[in]
       R => state_machine_rst --[in]
      );    
   
   ----------------------------------------------------------------------------
   -- chgMacAdr1 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr1 <= idle and Mac_program_start and not mac_program_start_reg;
   
   chgMacAdr1_D    <= goto_chgMacAdr1 ;
   
   STATE26A: FDR
     port map 
      (
       Q => chgMacAdr1,       --[out]
       C => Clk,              --[in]
       D => chgMacAdr1_D,     --[in]
       R => state_machine_rst --[in]
      );  
   
   ----------------------------------------------------------------------------
   -- chgMacAdr2 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr2 <= chgMacAdr1;
   
   chgMacAdr2_D    <= goto_chgMacAdr2 ;
   
   STATE27A: FDR
     port map 
      (
       Q => chgMacAdr2,       --[out]
       C => Clk,              --[in]
       D => chgMacAdr2_D,     --[in]
       R => state_machine_rst --[in]
      );  
   
   ----------------------------------------------------------------------------
   -- chgMacAdr3 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr3 <= chgMacAdr2;
   
   chgMacAdr3_D    <= goto_chgMacAdr3 ;
     
   STATE28A: FDR
     port map 
      (
       Q => chgMacAdr3,       --[out]
       C => Clk,              --[in]
       D => chgMacAdr3_D,     --[in]
       R => state_machine_rst --[in]
      );    
   
   ----------------------------------------------------------------------------
   -- chgMacAdr4 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr4 <= chgMacAdr3;
   
   chgMacAdr4_D    <= goto_chgMacAdr4 ;
     
   STATE29A: FDR
     port map 
      (
       Q => chgMacAdr4,       --[out]
       C => Clk,              --[in]
       D => chgMacAdr4_D,     --[in]
       R => state_machine_rst --[in]
       );  
   
   ----------------------------------------------------------------------------
   -- chgMacAdr5 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr5 <= chgMacAdr4;
   
   chgMacAdr5_D    <= goto_chgMacAdr5 ;
     
   STATE30A: FDR
     port map 
      (
       Q => chgMacAdr5,       --[out]
       C => Clk,              --[in]
       D => chgMacAdr5_D,     --[in]
       R => state_machine_rst --[in]
      );   
   
   ----------------------------------------------------------------------------
   -- chgMacAdr6 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr6 <= chgMacAdr5;
   
   chgMacAdr6_D    <= goto_chgMacAdr6 ;
   
   STATE31A: FDR
     port map 
      (
       Q => chgMacAdr6,       --[out]
       C => Clk,              --[in]
       D => chgMacAdr6_D,     --[in]
       R => state_machine_rst --[in]
      );  
   
   ----------------------------------------------------------------------------
   -- chgMacAdr7 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr7 <= chgMacAdr6;
   
   chgMacAdr7_D    <= goto_chgMacAdr7 ;
   
   STATE32A: FDR
     port map 
      (
       Q => chgMacAdr7,       --[out]
       C => Clk,              --[in]
       D => chgMacAdr7_D,     --[in]
       R => state_machine_rst --[in]
      );    
   
   ----------------------------------------------------------------------------
   -- chgMacAdr8 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr8 <= chgMacAdr7;
   
   chgMacAdr8_D    <= goto_chgMacAdr8 ;
   
   STATE33A: FDR
     port map 
      (
       Q => chgMacAdr8,       --[out]
       C => Clk,              --[in]
       D => chgMacAdr8_D,     --[in]
       R => state_machine_rst --[in]
      );  
   
   ----------------------------------------------------------------------------
   -- chgMacAdr9 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr9 <= chgMacAdr8;
   
   chgMacAdr9_D    <= goto_chgMacAdr9 ;
   
   STATE34A: FDR
     port map 
      (
       Q => chgMacAdr9,       --[out]
       C => Clk,              --[in]
       D => chgMacAdr9_D,     --[in]
       R => state_machine_rst --[in]
      );     
   
   ----------------------------------------------------------------------------
   -- chgMacAdr10 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr10 <= chgMacAdr9;
   
   chgMacAdr10_D    <= goto_chgMacAdr10 ;
   
   STATE35A: FDR
     port map 
      (
       Q => chgMacAdr10,      --[out]
       C => Clk,              --[in]
       D => chgMacAdr10_D,    --[in]
       R => state_machine_rst --[in]
      );   
   
   ----------------------------------------------------------------------------
   -- chgMacAdr11 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr11 <= chgMacAdr10;
   
   chgMacAdr11_D    <= goto_chgMacAdr11 ;
   
   STATE36A: FDR
     port map 
      (
       Q => chgMacAdr11,      --[out]
       C => Clk,              --[in]
       D => chgMacAdr11_D,    --[in]
       R => state_machine_rst --[in]
      );  
   
   ----------------------------------------------------------------------------
   -- chgMacAdr12 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr12 <= chgMacAdr11;
   
   chgMacAdr12_D    <= goto_chgMacAdr12 ;
   
   STATE37A: FDR
     port map 
      (
       Q => chgMacAdr12,      --[out]
       C => Clk,              --[in]
       D => chgMacAdr12_D,    --[in]
       R => state_machine_rst --[in]
      );    
   
   ----------------------------------------------------------------------------
   -- chgMacAdr13 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr13 <= chgMacAdr12;
   
   chgMacAdr13_D    <= goto_chgMacAdr13 ;
     
   STATE38A: FDR
     port map 
      (
       Q => chgMacAdr13,      --[out]
       C => Clk,              --[in]
       D => chgMacAdr13_D,    --[in]
       R => state_machine_rst --[in]
      );  
   
   ----------------------------------------------------------------------------
   -- chgMacAdr14 state
   ----------------------------------------------------------------------------    
   goto_chgMacAdr14 <= chgMacAdr13;
   
   chgMacAdr14_D    <= goto_chgMacAdr14 ;
   
   STATE39A: FDR
     port map 
      (
       Q => chgMacAdr14,      --[out]
       C => Clk,              --[in]
       D => chgMacAdr14_D,    --[in]
       R => state_machine_rst --[in]
      );    
   ----------------------------------------------------------------------------   
   -- end of states
   ----------------------------------------------------------------------------   

   ----------------------------------------------------------------------------
   -- REG_PROCESS
   ----------------------------------------------------------------------------
   -- This process registers all the signals on the bus clock.
   ----------------------------------------------------------------------------
   REG_PROCESS : process (Clk)
   begin  --
     if (Clk'event and Clk = '1') then     -- rising clock edge
       if (Rst = '1') then
         phytx_en_reg          <= '0';
         busFifoWrCntRst_reg   <= '0';
         retrying_reg          <= '0';
         txCrcEn_reg           <= '0';   
         transmit_start_reg    <= '0';
         mac_program_start_reg <= '0';
       else
   
         phytx_en_reg          <= phytx_en_i;
         busFifoWrCntRst_reg   <= busFifoWrCntRst_i;
         retrying_reg          <= retrying_i;
         txCrcEn_reg           <= txCrcEn_i;
         transmit_start_reg    <= Transmit_start;
         mac_program_start_reg <= Mac_program_start; 
       end if;
     end if;
   end process REG_PROCESS;
 
   ----------------------------------------------------------------------------
   -- COMB_PROCESS
   ----------------------------------------------------------------------------
   -- This process generate control signals for the state machine.
   ----------------------------------------------------------------------------
   COMB_PROCESS : process (phytx_en_reg, busFifoWrCntRst_reg, 
                           txCrcEn_reg, txDone, idle, preamble, 
                           half_dup_error, checkBusFifoFull,
                           collisionRetry, retrying_reg, 
                           checkBusFifoFullCrc, SFD, loadBusFifoCrc, 
                           checkBusFifoFullSFD)
   begin
      
      -- Generate PHY Tx Enable
      if (txDone='1' or idle='1') then
         phytx_en_i <= '0';
      elsif (preamble = '1') then
         phytx_en_i <= '1';
      else
         phytx_en_i <= phytx_en_reg;
      end if;
      
      -- Generate BusFifo Write Counter reset
      if (half_dup_error='1' or txDone='1' or idle='1') then
         busFifoWrCntRst_i <= '1';
      elsif (preamble = '1') then
         busFifoWrCntRst_i <= '0';
      else
         busFifoWrCntRst_i <= busFifoWrCntRst_reg;
      end if;    
      
      -- Generate retry signal in case of collision
      if (collisionRetry='1') then
         retrying_i <= '1';
      elsif (idle = '1') then
         retrying_i <= '0';
      else
         retrying_i <= retrying_reg;
      end if;
     
      -- Generate transmit CRC enable
      if (checkBusFifoFull='1') then
         txCrcEn_i <= '1';
      elsif (checkBusFifoFullSFD='1' or checkBusFifoFullCRC='1' or SFD='1' or
             idle='1' or loadBusFifoCrc='1' or preamble='1') then
         txCrcEn_i <= '0';
      else
         txCrcEn_i <= txCrcEn_reg;
      end if;
   end process COMB_PROCESS;
   
   ----------------------------------------------------------------------------
   -- FSMD_PROCESS
   ----------------------------------------------------------------------------
   -- This process generate control signals for the state machine for 
   -- transmit operation
   ----------------------------------------------------------------------------
   FSMD_PROCESS : process(crcCnt_is_0, JamTxNibCnt, goto_checkBusFifoFullCrc_1,
                          pre_SFD_zero, checkBusFifoFullJam, full_half_n,
                          retryReset, txDonePause, loadBusFifo, loadBusFifoJam,
                          checkCrc, txDone2, chgMacAdr2, chgMacAdr3,
                          chgMacAdr4, chgMacAdr5, chgMacAdr6, chgMacAdr7, 
                          chgMacAdr8, chgMacAdr9, chgMacAdr10, chgMacAdr11, 
                          chgMacAdr12, chgMacAdr13, chgMacAdr14, chgMacAdr1, 
                          lngthDelay1, lngthDelay2, idle, checkBusFifoFull, 
                          txDone, ldLngthCntr,half_dup_error, collisionRetry, 
                          checkBusFifoFullCrc, loadBusFifoCrc, retrying_reg, 
                          preamble, SFD)
  
   begin

      -- Enable JAM reset
      if (checkBusFifoFullJam = '1' and pre_SFD_zero = '1' and 
          full_half_n = '0' and (JamTxNibCnt = "0111")) then
         Jam_rst <= '1';
      else
         Jam_rst <= '0';     
      end if;
   
      -- Bus FIFO write counte enable
      BusFifoWrCntEn      <= '1'; -- temp 
   
      -- Enable TX late collision reset
         TxLateColnRst <= '0';
      
      -- Enable TX deffer reset 
         TxExcessDefrlRst <= '0';        
      
      -- Enable back off and TX collision retry counter 
      if (collisionRetry = '1') then
         InitBackoff <= '1';
         TxColRetryCntEnbl <= '1';
      else
         InitBackoff <= '0';
         TxColRetryCntEnbl <= '0';
      end if;
      
      -- Enable TX retry reset
      if (retryReset = '1') or
         (txDonePause = '1') then -- clear up any built up garbage in async 
                                  -- FIFOs  at the end of a packet
        TxRetryRst <= '1';        
      else
        TxRetryRst <= '0';     
      end if;    
      
      -- Enable TX nibble counter reset
      if (idle = '1') then
         txNibbleCntRst_i <= '1';
      else
         txNibbleCntRst_i <= '0';
      end if;
      
      -- Enable TX collision retry reset
      if (idle = '1' and retrying_reg = '0') then
         TxColRetryCntRst_n   <= '0';
      else
         TxColRetryCntRst_n   <= '1';
      end if;
      
      -- Enable TX CRC counter shift 
      if ((checkBusFifoFullCrc = '1') or (loadBusFifoCrc = '1')) then
         TxCrcShftOutEn   <= '1';
      else
         TxCrcShftOutEn   <= '0';
      end if;
      
      -- Enable Preamble in the frame
      if (preamble = '1') then
         EnblPre   <= '1';
      else
         EnblPre   <= '0';
      end if;
      
      -- Enable SFD in the frame
      if (SFD = '1') then
         EnblSFD   <= '1';
      else
         EnblSFD   <= '0';
      end if;
      
      -- Enable Data in the frame
      if (loadBusFifo = '1') then
         EnblData <= '1';
      else
         EnblData <= '0';
      end if;   
      
      -- Enable CRC
      if (loadBusFifoCrc = '1') then
         EnblCRC <= '1';
      else
         EnblCRC <= '0';
      end if;
      
      -- Enable TX nibble counter load 
      if (SFD = '1') then
         txNibbleCntLd_i   <= '1';
      else
         txNibbleCntLd_i   <= '0';
      end if;
  
      -- Enable clear for TX interface FIFO
      if (checkBusFifoFullCrc = '1' and crcCnt_is_0  = '1') or
          ((checkBusFifoFullJam='1' or  loadBusFifoJam='1') 
            and pre_SFD_zero = '1'  and full_half_n = '0') or
            (collisionRetry = '1' ) or  (half_dup_error = '1') or
            (checkCrc = '1' and goto_checkBusFifoFullCrc_1 = '0') then
         Enblclear <= '1';
      else
         Enblclear <= '0';
      end if;
      
      -- Enable Bus FIFO write
      if ((loadBusFifo = '1') or
          (preamble = '1') or
          (SFD = '1') or
          (loadBusFifoCrc = '1')
          ) then
         busFifoWr_i   <= '1';
      else
         busFifoWr_i   <= '0';
      end if;
      
      -- Enable JAM TX nibble 
      if (loadBusFifo = '1') then
         txEnNibbleCnt_i  <= '1';
      else
         txEnNibbleCnt_i  <= '0';
      end if;   
      
 
      -- Enable TX buffer address increment
      if (loadBusFifo = '1') or (chgMacAdr2 = '1')  or (chgMacAdr3 = '1') or
         (chgMacAdr4 = '1')  or (chgMacAdr5 = '1')  or (chgMacAdr6 = '1') or
         (chgMacAdr7 = '1')  or (chgMacAdr8 = '1')  or (chgMacAdr9 = '1') or
         (chgMacAdr10 = '1') or (chgMacAdr11 = '1') or (chgMacAdr12 = '1') or
         (chgMacAdr13 = '1') or (chgMacAdr14 = '1') then
         Tx_addr_en <= '1'; 
      else
         Tx_addr_en <= '0';
      end if;   
      
      -- Generate TX start after preamble
      if (preamble = '1') or
         (chgMacAdr1 = '1') then
         Tx_start <= '1'; -- reset address to 0 for start of transmit
      else
         Tx_start <= '0';
      end if;
   
         
      -- TX DPM buffer CE
      if (idle = '1') or
         (lngthDelay1 = '1') or (lngthDelay2 = '1') or 
         (checkBusFifoFull = '1') or (ldLngthCntr = '1') or
         (txDone = '1') or (txDone2 = '1') or (txDonePause = '1') or
         (chgMacAdr1 = '1')  or (chgMacAdr2 = '1')  or (chgMacAdr3 = '1') or
         (chgMacAdr4 = '1')  or (chgMacAdr5 = '1')  or (chgMacAdr6 = '1') or
         (chgMacAdr7 = '1')  or (chgMacAdr8 = '1')  or (chgMacAdr9 = '1') or
         (chgMacAdr10 = '1') or (chgMacAdr11 = '1') or (chgMacAdr12 = '1') or
         (chgMacAdr13 = '1') or (chgMacAdr14 = '1') then
         Tx_DPM_ce <= '1';
      else
         Tx_DPM_ce <= '0';
      end if;

      -- Enable JAM 
      if (loadBusFifoJam = '1') then
         EnblJam <= '1';
      else
         EnblJam <= '0';
      end if;
     
     -- TX DPM write enable
     Tx_DPM_wr_rd_n <= '0';
   
                                    
  end process FSMD_PROCESS;


   ----------------------------------------------------------------------------
   -- OUTPUT_REG1
   ----------------------------------------------------------------------------
   -- This process generate mack address RAM write enable 
   ----------------------------------------------------------------------------
   OUTPUT_REG1:process (Clk)
   begin
      if (Clk'event and Clk='1') then
         if (Rst = '1') then
            Mac_addr_ram_we <= '0';
         elsif (idle_D = '1') then
            Mac_addr_ram_we <= '0';
         elsif (chgMacAdr3_D = '1')  or 
               (chgMacAdr4_D = '1')  or
               (chgMacAdr5_D = '1')  or
               (chgMacAdr6_D = '1')  or
               (chgMacAdr7_D = '1')  or
               (chgMacAdr8_D = '1')  or
               (chgMacAdr9_D = '1')  or
               (chgMacAdr10_D = '1') or
               (chgMacAdr11_D = '1') or
               (chgMacAdr12_D = '1') or
               (chgMacAdr13_D = '1') or
               (chgMacAdr14_D = '1') then
            Mac_addr_ram_we <= '1';     
         else
            Mac_addr_ram_we <= '0';
         end if;
      end if;
   end process OUTPUT_REG1;

    
   ----------------------------------------------------------------------------
   -- OUTPUT_REG2
   ----------------------------------------------------------------------------
   -- This process MAC Addr RAM write Adrress to update the MAC address of 
   -- EMACLite Core.
   ----------------------------------------------------------------------------
   OUTPUT_REG2:process (Clk)
   begin
 
      if (Clk'event and Clk='1') then
         if (Rst = '1') then
            Mac_addr_ram_addr_wr <= x"0";
         else
            if idle_D = '1' then
               Mac_addr_ram_addr_wr <= x"0";
            elsif chgMacAdr3_D = '1' then
               Mac_addr_ram_addr_wr <= x"0";             
            elsif chgMacAdr4_D = '1' then
               Mac_addr_ram_addr_wr <= x"1";             
            elsif chgMacAdr5_D = '1' then
               Mac_addr_ram_addr_wr <= x"2";             
            elsif chgMacAdr6_D = '1' then
               Mac_addr_ram_addr_wr <= x"3";             
            elsif chgMacAdr7_D = '1' then
               Mac_addr_ram_addr_wr <= x"4";             
            elsif chgMacAdr8_D = '1' then
               Mac_addr_ram_addr_wr <= x"5";             
            elsif chgMacAdr9_D = '1' then
               Mac_addr_ram_addr_wr <= x"6";             
            elsif chgMacAdr10_D = '1' then
               Mac_addr_ram_addr_wr <= x"7";             
            elsif chgMacAdr11_D = '1' then
               Mac_addr_ram_addr_wr <= x"8";             
            elsif chgMacAdr12_D = '1' then
               Mac_addr_ram_addr_wr <= x"9";             
            elsif chgMacAdr13_D = '1' then
               Mac_addr_ram_addr_wr <= x"a";             
            elsif chgMacAdr14_D = '1' then
               Mac_addr_ram_addr_wr <= x"b";             
            else
               Mac_addr_ram_addr_wr <= x"0";
            end if;
         end if;
      end if;
   end process OUTPUT_REG2;
    
 end implementation;
 
