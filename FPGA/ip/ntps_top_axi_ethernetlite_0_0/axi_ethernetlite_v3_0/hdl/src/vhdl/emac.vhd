-------------------------------------------------------------------------------
-- emac - entity/architecture pair
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
-- Filename     : emac.vhd
-- Version      : v2.0
-- Description  : Design file for the Ethernet Lite MAC. 
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-------------------------------------------------------------------------------
-- axi_ethernetlite_v3_0 library is used for axi_ethernetlite_v3_0 
-- component declarations
-------------------------------------------------------------------------------
library axi_ethernetlite_v3_0;
use axi_ethernetlite_v3_0.mac_pkg.all;
use axi_ethernetlite_v3_0.all;

-------------------------------------------------------------------------------
-- Vcomponents from unisim library is used for FIFO instatiation
-- function declarations
-------------------------------------------------------------------------------
library unisim;
use unisim.Vcomponents.all;

library lib_cdc_v1_0;
use lib_cdc_v1_0.all;

-------------------------------------------------------------------------------
-- Definition of Generics:
-------------------------------------------------------------------------------
--  C_DUPLEX               -- 1 = full duplex, 0 = half duplex
--  NODE_MAC               -- EMACLite MAC address
--  C_FAMILY               -- Target device family 
-------------------------------------------------------------------------------
-- Definition of Ports:
--
--  Clk                    -- System Clock
--  Rst                    -- System Reset
--  PHY_tx_clk             -- Ethernet tranmit clock
--  PHY_rx_clk             -- Ethernet receive clock
--  PHY_crs                -- Ethernet carrier sense
--  PHY_dv                 -- Ethernet receive data valid
--  PHY_rx_data            -- Ethernet receive data
--  PHY_col                -- Ethernet collision indicator
--  PHY_rx_er              -- Ethernet receive error
--  PHY_rst_n              -- Ethernet PHY Reset
--  PHY_tx_en              -- Ethernet transmit enable
--  PHY_tx_data            -- Ethernet transmit data
--  Tx_DPM_ce              -- TX buffer chip enable
--  Tx_DPM_adr             -- Tx buffer address
--  Tx_DPM_wr_data         -- TX buffer write data
--  Tx_DPM_rd_data         -- TX buffer read data
--  Tx_DPM_wr_rd_n         -- TX buffer write/read enable
--  Tx_done                -- Transmit done
--  Tx_pong_ping_l         -- TX Ping/Pong buffer enable
--  Tx_idle                -- Transmit idle
--  Rx_idle                -- Receive idle
--  Rx_DPM_ce              -- RX buffer chip enable
--  Rx_DPM_adr             -- RX buffer address
--  Rx_DPM_wr_data         -- RX buffer write data
--  Rx_DPM_rd_data         -- RX buffer read data
--  Rx_DPM_wr_rd_n         -- RX buffer write/read enable
--  Rx_done                -- Receive done
--  Rx_pong_ping_l         -- RX Ping/Pong buffer enable
--  Tx_packet_length       -- Transmit packet length
--  Transmit_start         -- Transmit Start
--  Mac_program_start      -- MAC Program start
--  Rx_buffer_ready        -- RX Buffer ready indicator
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity emac is
  generic (
    C_DUPLEX          : integer    := 1; 
      -- 1 = full duplex, 0 = half duplex       
    NODE_MAC          : bit_vector := x"00005e00FACE";
    C_FAMILY          : string     := "virtex6"
    );                
  port (              
    Clk               : in  std_logic;
    Rst               : in  std_logic;
    Phy_tx_clk        : in  std_logic;
    Phy_rx_clk        : in  std_logic;
    Phy_crs           : in  std_logic;
    Phy_dv            : in  std_logic;
    Phy_rx_data       : in  std_logic_vector (0 to 3);
    Phy_col           : in  std_logic;
    Phy_rx_er         : in  std_logic;
    Phy_tx_en         : out std_logic;
    Phy_tx_data       : out std_logic_vector (0 to 3);
    Tx_DPM_ce         : out std_logic;
    Tx_DPM_adr        : out std_logic_vector (0 to 11);
    Tx_DPM_wr_data    : out std_logic_vector (0 to 3);
    Tx_DPM_rd_data    : in  std_logic_vector (0 to 3);
    Tx_DPM_wr_rd_n    : out std_logic;
    Tx_done           : out std_logic;
    Tx_pong_ping_l    : in  std_logic;
    Tx_idle           : out std_logic;
    Rx_idle           : out std_logic;
    Rx_DPM_ce         : out std_logic;
    Rx_DPM_adr        : out std_logic_vector (0 to 11);
    Rx_DPM_wr_data    : out std_logic_vector (0 to 3);
    Rx_DPM_rd_data    : in  std_logic_vector (0 to 3);
    Rx_DPM_wr_rd_n    : out std_logic;
    Rx_done           : out std_logic;
    Rx_pong_ping_l    : in  std_logic;
    Tx_packet_length  : in  std_logic_vector(0 to 15);
    Transmit_start    : in  std_logic;
    Mac_program_start : in  std_logic;
    Rx_buffer_ready   : in  std_logic
    );
end emac;

architecture imp of emac is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";

-------------------------------------------------------------------------------
--  Constant Declarations
-------------------------------------------------------------------------------
  signal phy_col_d1            : std_logic; -- added 3-03-05 MSH
  signal phy_crs_d1            : std_logic; -- added 3-03-05 MSH
  signal phy_col_d2            : std_logic; -- added 27-jul-2011
  signal phy_crs_d2            : std_logic; -- added 27-jul-2011
  signal rxbuffer_addr         : std_logic_vector(0 to 11);
  signal rx_addr_en            : std_logic;
  signal rx_start              : std_logic;
  signal txbuffer_addr         : std_logic_vector(0 to 11);
  signal tx_addr_en            : std_logic;
  signal tx_start              : std_logic;
  signal mac_addr_ram_addr     : std_logic_vector(0 to 3);
  signal mac_addr_ram_addr_rd  : std_logic_vector(0 to 3);
  signal mac_addr_ram_we       : std_logic;
  signal mac_addr_ram_addr_wr  : std_logic_vector(0 to 3);
  signal mac_addr_ram_data     : std_logic_vector(0 to 3);
  signal txClkEn               : std_logic;
  signal tx_clk_reg_d1         : std_logic;  
  signal tx_clk_reg_d2         : std_logic;
  signal tx_clk_reg_d3         : std_logic;
  signal mac_tx_frame_length   : std_logic_vector(0 to 15);
  signal nibbleLength          : std_logic_vector(0 to 11);
  signal nibbleLength_orig     : std_logic_vector(0 to 11);
  signal en_pad                : std_logic;
  signal Phy_tx_clk_axi_d      : std_logic;
-------------------------------------------------------------------------------
-- Component Declarations
-------------------------------------------------------------------------------

-- The following components are the building blocks of the EMAC

component FDR
  port (
    Q : out std_logic;
    C : in std_logic;
    D : in std_logic;
    R : in std_logic
    );
end component;



begin

   ----------------------------------------------------------------------------
   -- Receive Interface
   ----------------------------------------------------------------------------
   RX: entity axi_ethernetlite_v3_0.receive
     generic map
       (
       C_DUPLEX => C_DUPLEX,
       C_FAMILY => C_FAMILY   
       )    
     port map
       (   
       Clk                  => Clk,
       Rst                  => Rst,
       Phy_rx_clk           => Phy_rx_clk,
       Phy_dv               => Phy_dv,
       Phy_rx_data          => Phy_rx_data, 
       Phy_rx_col           => phy_col_d2, 
       Phy_rx_er            => Phy_rx_er,
       Rx_addr_en           => rx_addr_en,
       Rx_start             => rx_start,
       Rx_done              => Rx_done,
       Rx_pong_ping_l       => Rx_pong_ping_l,
       Rx_DPM_ce            => Rx_DPM_ce,
       Rx_DPM_wr_data       => Rx_DPM_wr_data,
       Rx_DPM_rd_data       => Rx_DPM_rd_data,
       Rx_DPM_wr_rd_n       => Rx_DPM_wr_rd_n,
       Rx_idle              => Rx_idle,
       Mac_addr_ram_addr_rd => mac_addr_ram_addr_rd,
       Mac_addr_ram_data    => mac_addr_ram_data,
       Rx_buffer_ready      => Rx_buffer_ready
   
       );      
   
   ----------------------------------------------------------------------------
   -- Transmit Interface
   ----------------------------------------------------------------------------
   TX: entity axi_ethernetlite_v3_0.transmit
     generic map
       (
       C_DUPLEX => C_DUPLEX,
       C_FAMILY => C_FAMILY
       )
     port map
       (
       Clk                   =>  Clk,
       Rst                   =>  Rst,
       NibbleLength          =>  nibbleLength,
       NibbleLength_orig     =>  nibbleLength_orig,
       En_pad                =>  en_pad,
       TxClkEn               =>  txClkEn,
       Phy_tx_clk            =>  Phy_tx_clk,
       Phy_crs               =>  phy_crs_d2, 
       Phy_col               =>  phy_col_d2, 
                    
       Phy_tx_en             =>  phy_tx_en,
       Phy_tx_data           =>  phy_tx_data,
       Tx_addr_en            =>  tx_addr_en,
       Tx_start              =>  tx_start,
       Tx_done               =>  Tx_done,
       Tx_pong_ping_l        =>  Tx_pong_ping_l,
       Tx_idle               =>  Tx_idle,
       Tx_DPM_ce             =>  Tx_DPM_ce,
       Tx_DPM_wr_data        =>  Tx_DPM_wr_data,
       Tx_DPM_rd_data        =>  Tx_DPM_rd_data,
       Tx_DPM_wr_rd_n        =>  Tx_DPM_wr_rd_n,
       Transmit_start        =>  Transmit_start,
       Mac_program_start     =>  Mac_program_start,
       Mac_addr_ram_we       =>  mac_addr_ram_we,
       Mac_addr_ram_addr_wr  =>  mac_addr_ram_addr_wr
                                 
       );              

   ----------------------------------------------------------------------------
   -- Registerign PHY Col
   ----------------------------------------------------------------------------
   COLLISION_SYNC_1: FDR             
     port map 
       (
       Q => phy_col_d1, --[out]
       C => Clk,        --[in]
       D => Phy_col,    --[in]
       R => Rst         --[in]
       );
   
   COLLISION_SYNC_2: FDR             
     port map 
       (
       Q => phy_col_d2, --[out]
       C => Clk,        --[in]
       D => phy_col_d1, --[in]
       R => Rst         --[in]
       );
   
   ----------------------------------------------------------------------------
   -- Registerign PHY CRs
   ----------------------------------------------------------------------------
   C_SENSE_SYNC_1: FDR               
     port map 
       (
       Q => phy_crs_d1, --[out]
       C => Clk,        --[in]
       D => Phy_crs,    --[in]
       R => Rst         --[in]
       );
             
   C_SENSE_SYNC_2: FDR               
     port map 
       (
       Q => phy_crs_d2, --[out]
       C => Clk,        --[in]
       D => phy_crs_d1, --[in]
       R => Rst         --[in]
       );
             
   ----------------------------------------------------------------------------
   -- MAC Address RAM
   ----------------------------------------------------------------------------
   NODEMACADDRRAMI: entity axi_ethernetlite_v3_0.MacAddrRAM
      generic map 
        (
        MACAddr  => NODE_MAC
        )
      port map 
        (
        addr     => mac_addr_ram_addr,
        dout     => mac_addr_ram_data,
        din      => Tx_DPM_rd_data,
        we       => mac_addr_ram_we,
        Clk      => Clk
        );
   
   mac_addr_ram_addr <= mac_addr_ram_addr_rd when mac_addr_ram_we = '0' else
                        mac_addr_ram_addr_wr;

   ----------------------------------------------------------------------------
   -- RX Address Counter for the RxBuffer
   ----------------------------------------------------------------------------
   RXADDRCNT: process (Clk)
     begin
       if Clk'event and Clk = '1' then
         if Rst = '1' then
           rxbuffer_addr <= (others => '0');
         elsif rx_start = '1' then
           rxbuffer_addr <= (others => '0');
         elsif rx_addr_en = '1' then
           rxbuffer_addr <= rxbuffer_addr + 1;
         end if;
       end if;
     end process RXADDRCNT;
   
   Rx_DPM_adr <= rxbuffer_addr;

   ----------------------------------------------------------------------------
   -- TX Address Counter for the TxBuffer (To Read)
   ----------------------------------------------------------------------------
   TXADDRCNT: process (Clk)
     begin
       if Clk'event and Clk = '1' then
         if Rst = '1' then
           txbuffer_addr <= (others => '0');
         elsif tx_start = '1' then
           txbuffer_addr <= (others => '0');
         elsif tx_addr_en = '1' then
           txbuffer_addr <= txbuffer_addr + 1;
         end if;
       end if;
     end process TXADDRCNT;

                   
   Tx_DPM_adr <= txbuffer_addr;
  
   ----------------------------------------------------------------------------
   -- CDC module for syncing phy_tx_clk in PHY_tx_clk domain
   ----------------------------------------------------------------------------
  CDC_TX_CLK: entity  lib_cdc_v1_0.cdc_sync
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
    prmry_in              => Phy_tx_clk,
    prmry_ack             => open,
    scndry_out            => Phy_tx_clk_axi_d,
    scndry_aclk           => Clk,
    scndry_resetn         => '1',
    prmry_vect_in         => (OTHERS => '0'),
    scndry_vect_out       => open
     );
   ----------------------------------------------------------------------------
   -- INT_tx_clk_sync_PROCESS
   ----------------------------------------------------------------------------
   -- This process syncronizes the tx Clk and generates an enable pulse
   ----------------------------------------------------------------------------
   INT_TX_CLK_SYNC_PROCESS : process (Clk)
   begin  --   
      if (Clk'event and Clk = '1') then
         if (Rst = RESET_ACTIVE) then
            tx_clk_reg_d1 <= '0';
            tx_clk_reg_d2 <= '0';
            tx_clk_reg_d3 <= '0';
         else            
            tx_clk_reg_d1 <= Phy_tx_clk_axi_d;
            tx_clk_reg_d2 <= tx_clk_reg_d1;
            tx_clk_reg_d3 <= tx_clk_reg_d2;
         end if;
      end if;
   end process INT_TX_CLK_SYNC_PROCESS;  
   
   txClkEn <= '1' when tx_clk_reg_d2 = '1' and tx_clk_reg_d3 = '0' else 
                 '0';

  
   ----------------------------------------------------------------------------
   -- ADJP
   ----------------------------------------------------------------------------
   -- Adjust the packet length is it is less than minimum
   ----------------------------------------------------------------------------
   ADJP : process(mac_tx_frame_length)
   begin
      if mac_tx_frame_length > MinimumPacketLength then
         nibbleLength <= mac_tx_frame_length(5 to 15) & '0';
         en_pad       <= '0';
      else
         nibbleLength <= MinimumPacketLength(5 to 15) & '0';
         en_pad       <= '1';
      end if;
   end process ADJP;    
   
   nibbleLength_orig <= mac_tx_frame_length(5 to 15) & '0';

   mac_tx_frame_length <= Tx_packet_length;
   ----------------------------------------------------------------------------
  
end imp;


