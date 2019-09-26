

-------------------------------------------------------------------------------
-- xemac.vhd - entity/architecture pair
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
-- Filename     : xemac.vhd
-- Version      : v2.0
-- Description  : Design file for the Ethernet Lite MAC with
--                IPIF elements included.
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
-- PVK        07/21/2010     
-- ^^^^^^
-- Updated local register decoding logic to fix the issue related with read.
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
use ieee.numeric_std.all;

-------------------------------------------------------------------------------
-- axi_ethernetlite_v3_0 library is used for axi_ethernetlite_v3_0
-- component declarations
-------------------------------------------------------------------------------
library axi_ethernetlite_v3_0;
use axi_ethernetlite_v3_0.all;

-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Vcomponents from unisim library is used for FIFO instatiation
-- function declarations
-------------------------------------------------------------------------------
library unisim;
use unisim.Vcomponents.all;

-------------------------------------------------------------------------------
-- Definition of Generics:
-------------------------------------------------------------------------------
-- C_FAMILY               -- Target device family (spartan3e, spartan3a,
--                           spartan3an, spartan3af, virtex4 or virtex6)
-- C_S_AXI_ADDR_WIDTH     -- AXI address bus width - allowed value - 32 only
-- C_S_AXI_DATA_WIDTH     -- AXI data bus width - allowed value - 32 only
-- C_S_AXI_ACLK_PERIOD_PS -- The period of the AXI clock in ps
-- C_DUPLEX               -- 1 = full duplex, 0 = half duplex
-- C_TX_PING_PONG         -- 1 = ping-pong memory used for transmit buffer
-- C_RX_PING_PONG         -- 1 = ping-pong memory used for receive buffer
-- C_INCLUDE_MDIO         -- 1 = Include MDIO Innterface, 0 = No MDIO Interface
-- NODE_MAC               --   = Default MAC address of the core
-------------------------------------------------------------------------------
-- Definition of Ports:
--
--   System signals
--     Clk           -- System clock
--     Rst           -- System Reset
--     IP2INTC_Irpt  -- System Interrupt
--   IPIC signals   
--     IP2Bus_Data   -- IP  to Bus data 
--     IP2Bus_Error  -- IP  to Bus error
--     Bus2IP_Addr   -- Bus to IP address
--     Bus2IP_Data   -- Bus to IP data
--     Bus2IP_BE     -- Bus to IP byte enables
--     Bus2IP_RdCE   -- Bus to IP read chip enable
--     Bus2IP_WrCE   -- Bus to IP write chip enable
--     Bus2IP_Burst  -- Bus to IP burst
--  Ethernet
--     PHY_tx_clk    -- Ethernet tranmit clock
--     PHY_rx_clk    -- Ethernet receive clock
--     PHY_crs       -- Ethernet carrier sense
--     PHY_dv        -- Ethernet receive data valid
--     PHY_rx_data   -- Ethernet receive data
--     PHY_col       -- Ethernet collision indicator
--     PHY_rx_er     -- Ethernet receive error
--     PHY_rst_n     -- Ethernet PHY Reset
--     PHY_tx_en     -- Ethernet transmit enable
--     PHY_tx_data   -- Ethernet transmit data
--     Loopback      -- Internal Loopback enable
--     PHY_MDIO_I    -- Ethernet PHY MDIO data input 
--     PHY_MDIO_O    -- Ethernet PHY MDIO data output 
--     PHY_MDIO_T    -- Ethernet PHY MDIO data 3-state control
--     PHY_MDC       -- Ethernet PHY management clock
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity xemac is
  generic (
    C_FAMILY                : string := "virtex6";
    C_S_AXI_ADDR_WIDTH      : integer := 32;
    C_S_AXI_DATA_WIDTH      : integer := 32;
    C_S_AXI_ACLK_PERIOD_PS  : integer := 10000;
    C_DUPLEX                : integer := 1; -- 1 = full duplex, 0 = half duplex
    C_RX_PING_PONG          : integer := 0; -- 1 = ping-pong memory used for
                                            --     receive buffer
    C_TX_PING_PONG          : integer := 0; -- 1 = ping-pong memory used for
                                            --     transmit buffer
    C_INCLUDE_MDIO          : integer := 1; -- 1 = Include MDIO interface
                                            -- 0 = No MDIO interface
    NODE_MAC                : bit_vector := x"00005e00FACE"
                                            --  power up defaul MAC address
    );
  port (
    Clk           : in  std_logic;
    Rst           : in  std_logic;
    IP2INTC_Irpt  : out std_logic;


    -- Controls to the IP/IPIF modules
    IP2Bus_Data   : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0 );
    IP2Bus_Error  : out std_logic;
    Bus2IP_Addr   : in  std_logic_vector(12 downto 0);
    Bus2IP_Data   : in  std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
    Bus2IP_BE     : in  std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1)downto 0);
    Bus2IP_RdCE   : in  std_logic;
    Bus2IP_WrCE   : in  std_logic;
    Bus2IP_Burst  : in  std_logic;


    -- Ethernet Interface
    PHY_tx_clk    : in std_logic;
    PHY_rx_clk    : in std_logic;
    PHY_crs       : in std_logic;
    PHY_dv        : in std_logic;
    PHY_rx_data   : in std_logic_vector (3 downto 0);
    PHY_col       : in std_logic;
    PHY_rx_er     : in std_logic;
    PHY_tx_en     : out std_logic;
    PHY_tx_data   : out std_logic_vector (3 downto 0);
    Loopback      : out std_logic;

    -- MDIO Interface
    PHY_MDIO_I    : in  std_logic;
    PHY_MDIO_O    : out std_logic;
    PHY_MDIO_T    : out std_logic;
    PHY_MDC       : out std_logic
   );

end xemac;


architecture imp of xemac is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";

-------------------------------------------------------------------------------
--  Constant Declarations
-------------------------------------------------------------------------------
constant MDIO_CNT         : integer := ((200000/C_S_AXI_ACLK_PERIOD_PS)+1);
constant IP2BUS_DATA_ZERO : std_logic_vector(0 to 31) := X"00000000";


-------------------------------------------------------------------------------
--  Signal and Type Declarations
-------------------------------------------------------------------------------
signal phy_rx_data_i    : std_logic_vector (3 downto 0);
signal phy_tx_data_i    : std_logic_vector (3 downto 0);
signal tx_DPM_ce        : std_logic;
signal tx_DPM_ce_i      : std_logic; -- added 03-03-05 MSH
signal tx_DPM_adr       : std_logic_vector (11 downto 0);
signal tx_DPM_wr_data   : std_logic_vector (3 downto 0);
signal tx_DPM_rd_data   : std_logic_vector (3 downto 0);
signal tx_ping_rd_data  : std_logic_vector (3 downto 0);
signal tx_pong_rd_data  : std_logic_vector (3 downto 0) := (others => '0');
signal tx_DPM_wr_rd_n   : std_logic;
signal rx_DPM_ce        : std_logic;
signal rx_DPM_ce_i      : std_logic; -- added 03-03-05 MSH
signal rx_DPM_adr       : std_logic_vector (11 downto 0);
signal rx_DPM_wr_data   : std_logic_vector (3 downto 0);
signal rx_DPM_rd_data   : std_logic_vector (3 downto 0);
signal rx_ping_rd_data  : std_logic_vector (3 downto 0);
signal rx_pong_rd_data  : std_logic_vector (3 downto 0) := (others => '0');
signal rx_DPM_wr_rd_n   : std_logic;
signal IPIF_tx_Ping_CE  : std_logic;
signal IPIF_tx_Pong_CE  : std_logic := '0';
signal IPIF_rx_Ping_CE  : std_logic;
signal IPIF_rx_Pong_CE  : std_logic := '0';
signal tx_ping_data_out : std_logic_vector (31 downto 0);
signal tx_pong_data_out : std_logic_vector (31 downto 0) := (others => '0');
signal rx_ping_data_out : std_logic_vector (31 downto 0);
signal rx_pong_data_out : std_logic_vector (31 downto 0) := (others => '0');
signal dpm_wr_ack       : std_logic;
signal dpm_rd_ack       : std_logic;
signal rx_done          : std_logic;
signal rx_done_d1       : std_logic := '0';
signal tx_done          : std_logic;
signal tx_done_d1       : std_logic := '0';
signal tx_done_d2       : std_logic := '0';
signal tx_ping_ce       : std_logic;
signal tx_pong_ping_l   : std_logic := '0';
signal tx_idle          : std_logic;
signal rx_idle          : std_logic;
signal rx_ping_ce       : std_logic;
signal rx_pong_ping_l   : std_logic := '0';
signal reg_access             : std_logic;
signal reg_en                 : std_logic;
signal tx_ping_reg_en         : std_logic;
signal tx_pong_reg_en         : std_logic;
signal rx_ping_reg_en         : std_logic;
signal rx_pong_reg_en         : std_logic;
signal tx_ping_ctrl_reg_en    : std_logic;
signal tx_ping_length_reg_en  : std_logic;
signal tx_pong_ctrl_reg_en    : std_logic;
signal tx_pong_length_reg_en  : std_logic;
signal rx_ping_ctrl_reg_en    : std_logic;
signal rx_pong_ctrl_reg_en    : std_logic;
signal loopback_en            : std_logic;
signal tx_intr_en             : std_logic;
signal ping_mac_program       : std_logic;
signal pong_mac_program       : std_logic;
signal ping_tx_status         : std_logic;
signal pong_tx_status         : std_logic;
signal ping_pkt_lenth         : std_logic_vector(15 downto 0);
signal pong_pkt_lenth         : std_logic_vector(15 downto 0);
signal rx_intr_en             : std_logic;
signal ping_rx_status         : std_logic;
signal pong_rx_status         : std_logic;
signal ping_tx_done           : std_logic;
signal mdio_data_out          : std_logic_vector(31 downto 0);
signal reg_data_out           : std_logic_vector(31 downto 0);
signal mdio_reg_en            : std_logic;
signal gie_reg                : std_logic;
signal gie_reg_en             : std_logic;
signal gie_enable             : std_logic;
signal tx_packet_length       : std_logic_vector(15 downto 0);
signal stat_reg_en            : std_logic;
signal status_reg             : std_logic_vector(5 downto 0);
signal ping_mac_prog_done     : std_logic;
signal transmit_start         : std_logic;
signal mac_program_start      : std_logic;
signal rx_buffer_ready        : std_logic;
signal dpm_addr_ack           : std_logic;
signal control_reg            : std_logic;
signal length_reg             : std_logic;
signal word_access            : std_logic;
signal reg_access_i           : std_logic;
signal ip2intc_irpt_i         : std_logic;
signal reg_access_d1          : std_logic;
signal ping_soft_status       : std_logic;
signal pong_soft_status       : std_logic;
signal rx_pong_ce_en          : std_logic;
signal tx_pong_ce_en          : std_logic;


-------------------------------------------------------------------------------
-- New ipif_ssp1 signal declaration                                          --
-------------------------------------------------------------------------------

signal bus2ip_ce       : std_logic;
signal tx_ping_ce_en   : std_logic;
signal rx_ping_ce_en   : std_logic;

-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Component Declarations
-------------------------------------------------------------------------------
component SRL16E
    generic (
      INIT : bit_vector := X"0000"
      );

  port  (
    Q   : out std_logic; --[out]
    A0  : in  std_logic; --[in]
    A1  : in  std_logic; --[in]
    A2  : in  std_logic; --[in]
    A3  : in  std_logic; --[in]
    CE  : in  std_logic; --[in]
    CLK : in  std_logic; --[in]
    D   : in  std_logic  --[in]
  );
end component;


component FDR
  port (
    Q : out std_logic;
    C : in std_logic;
    D : in std_logic;
    R : in std_logic
  );
end component;

component FDRE
  port (
    Q  : out std_logic;
    C  : in std_logic;
    CE : in std_logic;
    D  : in std_logic;
    R  : in std_logic
  );
end component;

component LUT4
   generic(INIT : bit_vector);
   port (
     O  : out std_logic;
     I0 : in std_logic;
     I1 : in std_logic;
     I2 : in std_logic;
     I3 : in std_logic
   );
end component;


begin


   IP2Bus_Error <= '0';

   -- IP2INTC_Irpt generation if global interrupt is enable
   ip2intc_irpt_i <= gie_enable and ((rx_done and rx_intr_en) or
                                     (tx_done and tx_intr_en));
   ----------------------------------------------------------------------------
   -- IP2INTC_IRPT register
   ----------------------------------------------------------------------------
   IP2INTC_IRPT_REG_I: FDR
     port map (
       Q => IP2INTC_Irpt ,  --[out]
       C => Clk ,           --[in]
       D => ip2intc_irpt_i, --[in]
       R => Rst             --[in]
     );

--   ----------------------------------------------------------------------------
--   -- IPIF interface
--   ----------------------------------------------------------------------------


   -- PHY_tx_data conversion
   PHY_tx_data(0) <= phy_tx_data_i(0);
   PHY_tx_data(1) <= phy_tx_data_i(1);
   PHY_tx_data(2) <= phy_tx_data_i(2);
   PHY_tx_data(3) <= phy_tx_data_i(3);

   -- PHY_rx_data conversion
   phy_rx_data_i(0) <= PHY_rx_data(0);
   phy_rx_data_i(1) <= PHY_rx_data(1);
   phy_rx_data_i(2) <= PHY_rx_data(2);
   phy_rx_data_i(3) <= PHY_rx_data(3);

   ----------------------------------------------------------------------------
   -- EMAC
   ----------------------------------------------------------------------------
   EMAC_I: entity axi_ethernetlite_v3_0.emac
     generic map (
       C_DUPLEX            => C_DUPLEX,
       NODE_MAC            => NODE_MAC,
       C_FAMILY            => C_FAMILY
       )
     port map (
       Clk                 => Clk,
       Rst                 => Rst,
       Phy_tx_clk          => PHY_tx_clk,
       Phy_rx_clk          => PHY_rx_clk,
       Phy_crs             => phy_crs,
       Phy_dv              => Phy_dv,
       Phy_rx_data         => Phy_rx_data_i,
       Phy_col             => Phy_col,
       Phy_rx_er           => Phy_rx_er,
       Phy_tx_en           => Phy_tx_en,
       Phy_tx_data         => Phy_tx_data_i,
       Tx_DPM_ce           => tx_DPM_ce_i, 
       Tx_DPM_adr          => tx_DPM_adr,
       Tx_DPM_wr_data      => tx_DPM_wr_data,
       Tx_DPM_rd_data      => tx_DPM_rd_data,
       Tx_DPM_wr_rd_n      => tx_DPM_wr_rd_n,
       Tx_done             => tx_done,
       Tx_pong_ping_l      => tx_pong_ping_l,
       Tx_idle             => tx_idle,
       Rx_idle             => rx_idle,
       Rx_DPM_ce           => rx_DPM_ce_i, 
       Rx_DPM_adr          => rx_DPM_adr,
       Rx_DPM_wr_data      => rx_DPM_wr_data,
       Rx_DPM_rd_data      => rx_DPM_rd_data,
       Rx_DPM_wr_rd_n      => rx_DPM_wr_rd_n ,
       Rx_done             => rx_done,
       Rx_pong_ping_l      => rx_pong_ping_l,
       Tx_packet_length    => tx_packet_length,
       Transmit_start      => transmit_start,
       Mac_program_start   => mac_program_start,
       Rx_buffer_ready     => rx_buffer_ready
       );
   ----------------------------------------------------------------------------

   -- This core only supports word access
   word_access <= '1' when bus2ip_be="1111" else '0';

   -- DPRAM buffer chip enable generation
   bus2ip_ce     <= (Bus2IP_RdCE or (Bus2IP_WrCE and word_access));
   tx_ping_ce_en <= not Bus2IP_Addr(12) and not Bus2IP_Addr(11);
   rx_ping_ce_en <= Bus2IP_Addr(12) and not Bus2IP_Addr(11);

   IPIF_tx_Ping_CE <= bus2ip_ce and tx_ping_ce_en;
   IPIF_rx_Ping_CE <= bus2ip_ce and rx_ping_ce_en;

   -- IP2Bus_Data generation
   IP2BUS_DATA_GENERATE: for i in 31 downto 0 generate
      IP2Bus_Data(i) <= ((
                          (tx_ping_data_out(i) and tx_ping_ce_en)  or
                          (tx_pong_data_out(i) and tx_pong_ce_en)  or
                          (rx_ping_data_out(i) and rx_ping_ce_en)  or
                          (rx_pong_data_out(i) and rx_pong_ce_en)
                         ) and not reg_access)
                        or
                        ((
                          (reg_data_out(i)  and not mdio_reg_en) or
                          (mdio_data_out(i) and     mdio_reg_en)
                         ) and reg_access) ;

   end generate IP2BUS_DATA_GENERATE;


   ----------------------------------------------------------------------------
   -- DPM_TX_RD_DATA_GENERATE
   ----------------------------------------------------------------------------
   -- This logic generates tx_DPM_rd_data for transmit section from
   -- tx_ping_buffer and tx_pong_buffer.
   ----------------------------------------------------------------------------
   DPM_TX_RD_DATA_GENERATE: for i in 0 to 3 generate
      tx_DPM_rd_data(i) <= (tx_ping_rd_data(i) and not tx_pong_ping_l
                                               and (not tx_idle)) or
                            (tx_pong_rd_data(i) and     tx_pong_ping_l
                                                and (not tx_idle));
   end generate DPM_TX_RD_DATA_GENERATE;

   ----------------------------------------------------------------------------
   -- DPM_RX_RD_DATA_GENERATE
   ----------------------------------------------------------------------------
   -- This logic generates rx_DPM_rd_data for receive section from
   -- rx_ping_buffer and rx_pong_buffer.
   ----------------------------------------------------------------------------
   DPM_RX_RD_DATA_GENERATE: for i in 0 to 3 generate
      rx_DPM_rd_data(i) <= (rx_ping_rd_data(i) and not rx_pong_ping_l) or
                           (rx_pong_rd_data(i) and     rx_pong_ping_l);
   end generate DPM_RX_RD_DATA_GENERATE;

   -- Chip enable generation
   tx_ping_ce <= tx_DPM_ce and not tx_pong_ping_l;
   tx_DPM_ce  <= tx_DPM_ce_i;
   rx_DPM_ce  <= rx_DPM_ce_i;
   rx_ping_ce <= rx_DPM_ce and not rx_pong_ping_l;

   ----------------------------------------------------------------------------
   -- TX_PING Buffer
   ----------------------------------------------------------------------------
   TX_PING: entity axi_ethernetlite_v3_0.emac_dpram
     generic map (
       C_FAMILY             => C_FAMILY
       )
     port map (
       Clk                  => Clk                        ,
       Rst                  => Rst                        ,
       Ce_a                 => tx_ping_ce                 ,
       Wr_rd_n_a            => tx_DPM_wr_rd_n             ,
       Adr_a                => tx_DPM_adr                 ,
       Data_in_a            => tx_DPM_wr_data             ,
       Data_out_a           => tx_ping_rd_data            ,
       Ce_b                 => IPIF_tx_Ping_CE            ,
       Wr_rd_n_b            => Bus2IP_WrCE                ,
       Adr_b                => bus2ip_addr(10 downto 2)   ,
       Data_in_b            => Bus2IP_Data                ,
       Data_out_b           => tx_ping_data_out
       );


   ----------------------------------------------------------------------------
   -- RX_PING Buffer
   ----------------------------------------------------------------------------
   RX_PING: entity axi_ethernetlite_v3_0.emac_dpram
     generic map (
       C_FAMILY             => C_FAMILY
       )
     port map (
       Clk                  => Clk                        ,
       Rst                  => Rst                        ,
       Ce_a                 => rx_ping_ce                 ,
       Wr_rd_n_a            => rx_DPM_wr_rd_n             ,
       Adr_a                => rx_DPM_adr                 ,
       Data_in_a            => rx_DPM_wr_data             ,
       Data_out_a           => rx_ping_rd_data            ,
       Ce_b                 => IPIF_rx_Ping_CE            ,
       Wr_rd_n_b            => Bus2IP_WrCE                ,
       Adr_b                => bus2ip_addr(10 downto 2)   ,
       Data_in_b            => Bus2IP_Data                ,
       Data_out_b           => rx_ping_data_out
       );


   ----------------------------------------------------------------------------
   -- TX Done register
   ----------------------------------------------------------------------------
   TX_DONE_D1_I: FDR
     port map (
       Q => tx_done_d1 , --[out]
       C => Clk ,        --[in]
       D => tx_done    , --[in]
       R => Rst          --[in]
     );

   TX_DONE_D2_I: FDR
     port map (
       Q => tx_done_d2 , --[out]
       C => Clk ,        --[in]
       D => tx_done_d1 , --[in]
       R => Rst          --[in]
     );

   ----------------------------------------------------------------------------
   -- Transmit Pong memory generate
   ----------------------------------------------------------------------------
   TX_PONG_GEN: if C_TX_PING_PONG = 1 generate

      signal tx_pong_ce        : std_logic;
      signal pp_tog_ce         : std_logic;

      attribute INIT                  : string;

      -- attribute INIT of PP_TOG_LUT_I: label is "1111";

      Begin

         TX_PONG_I: entity axi_ethernetlite_v3_0.emac_dpram
           generic map (
             C_FAMILY             => C_FAMILY
             )
           port map (
             Clk                  => Clk                        ,
             Rst                  => Rst                        ,
             Ce_a                 => tx_pong_ce                 ,
             Wr_rd_n_a            => tx_DPM_wr_rd_n             ,
             Adr_a                => tx_DPM_adr                 ,
             Data_in_a            => tx_DPM_wr_data             ,
             Data_out_a           => tx_pong_rd_data            ,
             Ce_b                 => IPIF_tx_Pong_CE            ,
             Wr_rd_n_b            => Bus2IP_WrCE                ,
             Adr_b                => bus2ip_addr(10 downto 2)   ,
             Data_in_b            => Bus2IP_Data                ,
             Data_out_b           => tx_pong_data_out
             );

      -- TX Pong Buffer Chip enable
      tx_pong_ce <= tx_DPM_ce and tx_pong_ping_l;

      --IPIF_tx_Pong_CE <= bus2ip_ce and not Bus2IP_Addr(12) Bus2IP_Addr(11);
      IPIF_tx_Pong_CE <= bus2ip_ce and tx_pong_ce_en;
      tx_pong_ce_en <=  not Bus2IP_Addr(12) and Bus2IP_Addr(11);
      -------------------------------------------------------------------------
      -- TX_PONG_PING_L_PROCESS
      -------------------------------------------------------------------------
      -- This process generate tx_pong_ping_l for TX PING/PONG buffer access
      -------------------------------------------------------------------------
      TX_PONG_PING_L_PROCESS:process (Clk)
      begin   -- process
          if (Clk'event and Clk = '1') then
             if (Rst = '1') then
                tx_pong_ping_l <= '0';
             elsif (tx_done_d1 = '1' ) then
                   tx_pong_ping_l <= not tx_pong_ping_l;
             elsif (pong_tx_status = '1' and ping_tx_status = '0' ) then
                   tx_pong_ping_l <= '1';
             elsif (pong_tx_status = '0' and ping_tx_status = '1' ) then
                   tx_pong_ping_l <= '0';
             else
                tx_pong_ping_l <= tx_pong_ping_l;
             end if;
          end if;
      end process;

   end generate TX_PONG_GEN;



   ----------------------------------------------------------------------------
   -- RX Done register
   ----------------------------------------------------------------------------
   RX_DONE_D1_I: FDR
     port map (
       Q => rx_done_d1 , --[out]
       C => Clk        , --[in]
       D => rx_done    , --[in]
       R => Rst          --[in]
     );

   ----------------------------------------------------------------------------
   -- Receive Pong memory generate
   ----------------------------------------------------------------------------
   RX_PONG_GEN: if C_RX_PING_PONG = 1 generate

      signal rx_pong_ce        : std_logic;

      Begin

        RX_PONG_I: entity axi_ethernetlite_v3_0.emac_dpram
          generic map (
            C_FAMILY             => C_FAMILY
            )
          port map (
            Clk                  => Clk                        ,
            Rst                  => Rst                        ,
            Ce_a                 => rx_pong_ce                 ,
            Wr_rd_n_a            => rx_DPM_wr_rd_n             ,
            Adr_a                => rx_DPM_adr                 ,
            Data_in_a            => rx_DPM_wr_data             ,
            Data_out_a           => rx_pong_rd_data            ,
            Ce_b                 => IPIF_rx_Pong_CE            ,
            Wr_rd_n_b            => Bus2IP_WrCE                ,
            Adr_b                => bus2ip_addr(10 downto 2)   ,
            Data_in_b            => Bus2IP_Data                ,
            Data_out_b           => rx_pong_data_out
            );

      -- RX Pong Buffer enable
      rx_pong_ce <= rx_DPM_ce and rx_pong_ping_l;

      --IPIF_rx_Pong_CE <= bus2ip_ce  and Bus2IP_Addr(12) and Bus2IP_Addr(11);
      IPIF_rx_Pong_CE <= bus2ip_ce and rx_pong_ce_en;
      rx_pong_ce_en   <= Bus2IP_Addr(12) and Bus2IP_Addr(11);
      -------------------------------------------------------------------------
      -- RX_PONG_PING_L_PROCESS
      -------------------------------------------------------------------------
      -- This process generate rx_pong_ping_l for RX PING/PONG buffer access
      -------------------------------------------------------------------------
        RX_PONG_PING_L_PROCESS:process (Clk)
         begin   -- process
            if (Clk'event and Clk = '1') then
               if (Rst = '1') then
                  rx_pong_ping_l <= '0';
               elsif (rx_done_d1 = '1') then
                  if rx_pong_ping_l = '0' then
                     rx_pong_ping_l <= '1';
                  else
                     rx_pong_ping_l <= '0';
                 end if;
               else
                  rx_pong_ping_l <= rx_pong_ping_l;
               end if;
            end if;
         end process;

   end generate RX_PONG_GEN;

   ----------------------------------------------------------------------------
   -- Regiter Address Decoding
   ----------------------------------------------------------------------------
   -- This process loads data from the AXI when there is a write request and
   -- the control register is enabled.
   -- Register Address Space
   -----------------------------------------
   -- **** MDIO Registers offset ****
   --       Address Register    => 0x07E4
   --       Write Data Register => 0x07E8
   --       Read Data Register  => 0x07Ec
   --       Control Register    => 0x07F0
   -----------------------------------------
   -- **** Transmit Registers offset ****
   --       Ping Length Register  => 0x07F4
   --       Ping Control Register => 0x07FC
   --       Pong Length  Register => 0x0FF4
   --       Pong Control Register => 0x0FFC
   -----------------------------------------
   -- **** Receive Registers offset ****
   --       Ping Control Register => 0x17FC
   --       Pong Control Register => 0x1FFC
   ------------------------------------------
   -- bus2ip_addr(12 downto 0)= axi_addr (12 downto 0)
   ----------------------------------------------------------------------------
   reg_access_i <= '1' when bus2ip_addr(10 downto 5) = "111111"
                 else '0';


   -- Register access enable
   reg_en <= reg_access_i and (not Bus2IP_Burst);

   -- TX/RX PING/PONG address decode
   tx_ping_reg_en <= reg_en and (not bus2ip_addr(12)) and (not bus2ip_addr(11));
   rx_ping_reg_en <= reg_en and (    bus2ip_addr(12)) and (not bus2ip_addr(11));

   -- Status/Control/Length address decode
   stat_reg_en <= not (bus2ip_addr(4) and bus2ip_addr(3) and bus2ip_addr(2));
   control_reg <= bus2ip_addr(4) and      bus2ip_addr(3)  and bus2ip_addr(2);
   length_reg  <= bus2ip_addr(4) and (not bus2ip_addr(3)) and bus2ip_addr(2);
   gie_reg     <= bus2ip_addr(4) and      bus2ip_addr(3) and (not bus2ip_addr(2));




   ---- TX/RX Ping/Pong Control/Length reg enable
   tx_ping_ctrl_reg_en   <= tx_ping_reg_en and control_reg;
   tx_ping_length_reg_en <= tx_ping_reg_en and length_reg;
   rx_ping_ctrl_reg_en   <= rx_ping_reg_en and control_reg;
   gie_reg_en            <= tx_ping_reg_en and gie_reg;


   ----------------------------------------------------------------------------
   -- REG_ACCESS_PROCESS
   ----------------------------------------------------------------------------
   -- Registering the reg_access to break long timing path
   ----------------------------------------------------------------------------
   REG_ACCESS_PROCESS : process (Clk)
   begin  -- process
      if (Clk'event and Clk = '1') then
         if (Rst = '1') then
            reg_access     <= '0';
            reg_access_d1  <= '0';
         elsif Bus2IP_RdCE='1' then
            -- TX/RX Ping/Pong Control/Length reg enable
            reg_access     <= reg_access_i;
            reg_access_d1  <= reg_access;
         end if;
      end if;
   end process REG_ACCESS_PROCESS;

   ----------------------------------------------------------------------------
   -- TX_PONG_REG_GEN : Receive Pong Register generate
   ----------------------------------------------------------------------------
   -- This Logic is included only if both the buffers are enabled.
   ----------------------------------------------------------------------------
   TX_PONG_REG_GEN: if C_TX_PING_PONG = 1 generate

      tx_pong_reg_en      <= reg_en and (not bus2ip_addr(12))
                                    and (bus2ip_addr(11));
      tx_pong_ctrl_reg_en <= '1' when (tx_pong_reg_en='1') and
                                      (control_reg='1')    else
                             '0';

      tx_pong_length_reg_en <= '1' when (tx_pong_reg_en='1') and
                                        (length_reg='1') else
                               '0';

      -------------------------------------------------------------------------
      -- TX_PONG_CTRL_REG_PROCESS
      -------------------------------------------------------------------------
      -- This process loads data from the AXI when there is a write request and
      -- the control register is enabled.
      -------------------------------------------------------------------------
      TX_PONG_CTRL_REG_PROCESS : process (Clk)
      begin  -- process
         if (Clk'event and Clk = '1') then
            if (Rst = '1') then
               pong_mac_program   <= '0';
               pong_tx_status     <= '0';
               pong_soft_status   <= '0';
            elsif (Bus2IP_WrCE = '1' and tx_pong_ctrl_reg_en = '1') then
               --  Load Pong Control Register with AXI
               --  data if there is a write request
               --  and the control register is enabled
               pong_soft_status   <= Bus2IP_Data(31);
               pong_mac_program   <= Bus2IP_Data(1);
               pong_tx_status     <= Bus2IP_Data(0);
            -- Clear the status bit when trnasmit complete
            elsif (tx_done_d1 = '1' and tx_pong_ping_l = '1') then
               pong_tx_status     <= '0';
               pong_mac_program   <= '0';
            end if;
         end if;
      end process TX_PONG_CTRL_REG_PROCESS;

      -------------------------------------------------------------------------
      -- TX_PONG_LENGTH_REG_PROCESS
      -------------------------------------------------------------------------
      -- This process loads data from the AXI when there is a write request and
      -- the length register is enabled.
      -------------------------------------------------------------------------
      TX_PONG_LENGTH_REG_PROCESS : process (Clk)
      begin  -- process
         if (Clk'event and Clk = '1') then
            if (Rst = '1') then
               pong_pkt_lenth <= (others=>'0');
            elsif (Bus2IP_WrCE = '1' and tx_pong_length_reg_en = '1') then
               --  Load Packet length Register with AXI
               --  data if there is a write request
               --  and the length register is enabled
               pong_pkt_lenth <= Bus2IP_Data(15 downto 0);
            end if;
         end if;
      end process TX_PONG_LENGTH_REG_PROCESS;

   end generate TX_PONG_REG_GEN;

   ----------------------------------------------------------------------------
   -- NO_TX_PING_SIG :No Pong registers
   ----------------------------------------------------------------------------
   NO_TX_PING_SIG: if C_TX_PING_PONG = 0 generate

      tx_pong_ping_l        <= '0';
      tx_pong_length_reg_en <= '0';
      tx_pong_ctrl_reg_en   <= '0';
      pong_pkt_lenth        <= (others=>'0');
      pong_mac_program      <= '0';
      pong_tx_status        <= '0';
      IPIF_tx_Pong_CE       <= '0';
      tx_pong_data_out      <= (others=>'0');
      tx_pong_rd_data       <= (others=>'0');


   end generate NO_TX_PING_SIG;


   ----------------------------------------------------------------------------
   -- RX_PONG_REG_GEN: Receive Pong Register generate
   ----------------------------------------------------------------------------
   -- This Logic is included only if both the buffers are enabled.
   ----------------------------------------------------------------------------
   RX_PONG_REG_GEN: if C_RX_PING_PONG = 1 generate

      rx_pong_reg_en      <= reg_en and (bus2ip_addr(12)) and (bus2ip_addr(11));
      rx_pong_ctrl_reg_en <= '1' when (rx_pong_reg_en='1') and
                                      (control_reg='1')    else
                             '0';

      -- Receive frame indicator
      rx_buffer_ready     <= not (ping_rx_status and pong_rx_status);

      -------------------------------------------------------------------------
      -- RX_PONG_CTRL_REG_PROCESS
      -------------------------------------------------------------------------
      -- This process loads data from the AXI when there is a write request and
      -- the Pong control register is enabled.
      -------------------------------------------------------------------------
      RX_PONG_CTRL_REG_PROCESS : process (Clk)
      begin  -- process
         if (Clk'event and Clk = '1') then
            if (Rst = '1') then
                pong_rx_status   <= '0';
            elsif (Bus2IP_WrCE = '1' and rx_pong_ctrl_reg_en = '1') then
               --  Load Control Register with AXI
               --  data if there is a write request
               --  and the control register is enabled
               pong_rx_status   <= Bus2IP_Data(0);
            -- Clear the status bit when trnasmit complete
            --elsif (rx_done_d1 = '1' and rx_pong_ping_l = '1') then
            elsif (rx_done = '1' and rx_pong_ping_l = '1') then
               pong_rx_status   <= '1';
            end if;
         end if;
      end process RX_PONG_CTRL_REG_PROCESS;

   end generate RX_PONG_REG_GEN;

   ----------------------------------------------------------------------------
   -- No Pong registers
   ----------------------------------------------------------------------------
   NO_RX_PING_SIG: if C_RX_PING_PONG = 0 generate

      rx_pong_ping_l      <= '0';
      rx_pong_reg_en      <= '0';
      rx_pong_ctrl_reg_en <= '0';
      pong_rx_status      <= '0';
      IPIF_rx_Pong_CE     <= '0';
      rx_pong_rd_data     <= (others=>'0');
      rx_pong_data_out    <= (others=>'0');

      -- Receive frame indicator
      rx_buffer_ready     <= not ping_rx_status ;

   end generate NO_RX_PING_SIG;

   ----------------------------------------------------------------------------
   -- TX_PING_CTRL_REG_PROCESS
   ----------------------------------------------------------------------------
   -- This process loads data from the AXI when there is a write request and
   -- the control register is enabled.
   ----------------------------------------------------------------------------
   TX_PING_CTRL_REG_PROCESS : process (Clk)
   begin  -- process
      if (Clk'event and Clk = '1') then
         if (Rst = '1') then
            tx_intr_en       <= '0';
            ping_mac_program <= '0';
            ping_tx_status   <= '0';
            ping_soft_status <= '0';
         elsif (Bus2IP_WrCE = '1' and tx_ping_ctrl_reg_en = '1') then
            --  Load Control Register with AXI
            --  data if there is a write request
            --  and the control register is enabled
            ping_soft_status <= Bus2IP_Data(31);
            tx_intr_en       <= Bus2IP_Data(3);
            ping_mac_program <= Bus2IP_Data(1);
            ping_tx_status   <= Bus2IP_Data(0);
         -- Clear the status bit when trnasmit complete
         elsif (tx_done_d1 = '1' and tx_pong_ping_l = '0') then
            ping_tx_status   <= '0';
            ping_mac_program <= '0';
         end if;
      end if;
   end process TX_PING_CTRL_REG_PROCESS;

   ----------------------------------------------------------------------------
   -- TX_LOOPBACK_REG_PROCESS
   ----------------------------------------------------------------------------
   -- This process loads data from the AXI when there is a write request and
   -- the control register is enabled.
   ----------------------------------------------------------------------------
   TX_LOOPBACK_REG_PROCESS : process (Clk)
   begin  -- process
      if (Clk'event and Clk = '1') then
         if (Rst = '1') then
            loopback_en      <= '0';
         elsif (Bus2IP_WrCE = '1' and tx_ping_ctrl_reg_en = '1'
                                  and tx_idle='1'               ) then
            --  Load loopback Register with AXI
            --  data if there is a write request
            --  and the Loopback register is enabled
            loopback_en      <= Bus2IP_Data(4);
         -- Clear the status bit when trnasmit complete
         end if;
      end if;
   end process TX_LOOPBACK_REG_PROCESS;

   ----------------------------------------------------------------------------
   -- CDC module for syncing tx_en_i in fifo_empty domain
   ----------------------------------------------------------------------------
--  CDC_LOOPBACK: entity  proc_common_v4_0.cdc_sync
--  generic map (
--    C_CDC_TYPE           => 1,
--    C_RESET_STATE        => 0,
--    C_SINGLE_BIT         => 1,
--    C_FLOP_INPUT         => 0,
--    C_VECTOR_WIDTH       => 1,
--    C_MTBF_STAGES        => 4
--            )
--  port map(
--    prmry_aclk            => '1',
--    prmry_resetn          => '1',
--    prmry_in              => loopback_en,
--    prmry_ack             => open,
--    scndry_out            => Loopback,
--    scndry_aclk           => PHY_rx_clk,
--    scndry_resetn         => '1',
--    prmry_vect_in         => (OTHERS => '0'),
--    scndry_vect_out       => open
--     );


  Loopback <= loopback_en; --added the cdc block to drive the output directly

   ----------------------------------------------------------------------------
   -- TX_PING_LENGTH_REG_PROCESS
   ----------------------------------------------------------------------------
   -- This process loads data from the AXI when there is a write request and
   -- the Length register is enabled.
   ----------------------------------------------------------------------------
   TX_PING_LENGTH_REG_PROCESS : process (Clk)
   begin  -- process
      if (Clk'event and Clk = '1') then
         if (Rst = '1') then
            ping_pkt_lenth <= (others=>'0');
         elsif (Bus2IP_WrCE = '1' and tx_ping_length_reg_en = '1') then
            --  Load Packet length Register with AXI
            --  data if there is a write request
            --  and the length register is enabled
            ping_pkt_lenth <= Bus2IP_Data(15 downto 0);
         end if;
      end if;
   end process TX_PING_LENGTH_REG_PROCESS;

   ----------------------------------------------------------------------------
   -- GIE_EN_REG_PROCESS
   ----------------------------------------------------------------------------
   -- This process loads data from the AXI when there is a write request and
   -- the GIE register is enabled.
   ----------------------------------------------------------------------------
   GIE_EN_REG_PROCESS : process (Clk)
   begin  -- process
      if (Clk'event and Clk = '1') then
         if (Rst = '1') then
            gie_enable <= '0';
         elsif (Bus2IP_WrCE = '1' and gie_reg_en = '1') then
            --  Load Global Interrupt Enable Register with AXI
            --  data if there is a write request
            --  and the length register is enabled
            gie_enable <= Bus2IP_Data(31);
         end if;
      end if;
   end process GIE_EN_REG_PROCESS;

   ----------------------------------------------------------------------------
   -- RX_PING_CTRL_REG_PROCESS
   ----------------------------------------------------------------------------
   -- This process loads data from the AXI when there is a write request and
   -- the Ping control register is enabled.
   ----------------------------------------------------------------------------
   RX_PING_CTRL_REG_PROCESS : process (Clk)
   begin  -- process
      if (Clk'event and Clk = '1') then
         if (Rst = '1') then
             rx_intr_en       <= '0';
             ping_rx_status   <= '0';
         elsif (Bus2IP_WrCE = '1' and rx_ping_ctrl_reg_en = '1') then
            --  Load Control Register with AXI
            --  data if there is a write request
            --  and the control register is enabled
            rx_intr_en       <= Bus2IP_Data(3);
            ping_rx_status   <= Bus2IP_Data(0);
         -- Clear the status bit when trnasmit complete
         elsif (rx_done = '1' and rx_pong_ping_l = '0') then
            ping_rx_status   <= '1';
         end if;
      end if;
   end process RX_PING_CTRL_REG_PROCESS;

   ----------------------------------------------------------------------------
   -- REGISTER_READ_PROCESS
   ----------------------------------------------------------------------------
   -- This process loads data from the AXI when there is a write request and
   -- the control register is enabled.
   ----------------------------------------------------------------------------
   REGISTER_READ_PROCESS : process (Clk)
   begin  -- process
      if (Clk'event and Clk = '1') then
         if (Rst = '1') then
            reg_data_out   <= (others=>'0');
         elsif (Bus2IP_RdCE = '1' and tx_ping_ctrl_reg_en = '1') then
         -- TX PING Control Register Read through AXI
            reg_data_out(0)   <= ping_tx_status;
            reg_data_out(1)   <= ping_mac_program;
            reg_data_out(2)   <= '0';
            reg_data_out(3)   <= tx_intr_en;
            reg_data_out(4)   <= loopback_en;
            reg_data_out(31)    <= ping_soft_status;
            reg_data_out(30 downto 5)   <= (others=>'0');
         elsif (Bus2IP_RdCE = '1' and tx_pong_ctrl_reg_en = '1') then
         -- TX PONG Control Register Read through AXI
            reg_data_out(0)   <= pong_tx_status;
            reg_data_out(1)   <= pong_mac_program;
            reg_data_out(30 downto 2)   <= (others=>'0');
            reg_data_out(31)    <= pong_soft_status;
         elsif (Bus2IP_RdCE = '1' and tx_ping_length_reg_en = '1') then
         -- TX PING Length Register Read through AXI
            reg_data_out(31 downto 16)   <= (others=>'0');
            reg_data_out(15 downto 0)  <= ping_pkt_lenth;
         elsif (Bus2IP_RdCE = '1' and tx_pong_length_reg_en = '1') then
         -- TX PONG Length Register Read through AXI
            reg_data_out(31 downto 16)   <= (others=>'0');
            reg_data_out(15 downto 0)  <= pong_pkt_lenth;
         elsif (Bus2IP_RdCE = '1' and rx_ping_ctrl_reg_en = '1') then
         -- RX PING Control Register Read through AXI
            reg_data_out(0)   <= ping_rx_status;
            reg_data_out(1)   <= '0';
            reg_data_out(2)   <= '0';
            reg_data_out(3)   <= rx_intr_en;
            reg_data_out(31 downto 4)   <= (others=>'0');
         elsif (Bus2IP_RdCE = '1' and rx_pong_ctrl_reg_en = '1') then
         -- RX PONG Control Register Read through AXI
            reg_data_out(0)   <= pong_rx_status;
            reg_data_out(31 downto 1)   <= (others=>'0');
         elsif (Bus2IP_RdCE = '1' and gie_reg_en = '1') then
         -- GIE Register Read through AXI
            reg_data_out(31)   <= gie_enable;
            reg_data_out(30 downto 0)   <= (others=>'0');
         elsif (Bus2IP_RdCE = '1' and stat_reg_en = '1') then
         -- Common Status Register Read through AXI
            reg_data_out(0)   <= status_reg(0);
            reg_data_out(1)   <= status_reg(1);
            reg_data_out(2)   <= status_reg(2);
            reg_data_out(3)   <= status_reg(3);
            reg_data_out(4)   <= status_reg(4);
            reg_data_out(5)   <= status_reg(5);
            reg_data_out(31 downto 6)   <= (others=>'0');
         --else
         --   reg_data_out <= (others=>'0');
         end if;
      end if;
   end process REGISTER_READ_PROCESS;

   ----------------------------------------------------------------------------
   -- COMMON_STATUS_REG_PROCESS
   ----------------------------------------------------------------------------
   -- This process loads data from the AXI when there is a write request and
   -- the control register is enabled.
   -- status_reg        : std_logic_vector(0 to 5);
   -- status reg address = 0x07E0
   -- status_reg(5) : Ping TX complete
   -- status_reg(4) : Pong TX complete
   -- status_reg(3) : Ping RX complete
   -- status_reg(2) : Pong RX complete
   -- status_reg(1) : Ping MAC program complete
   -- status_reg(0) : Pong MAC program complete
   -- All Status bit will be cleared after reading this register
   ----------------------------------------------------------------------------
   COMMON_STATUS_REG_PROCESS : process (Clk)
   begin  -- process
      if (Clk'event and Clk = '1') then
         if (Rst = '1') then
             status_reg   <= (others=>'0');
         elsif (tx_done = '1') then
            if (tx_pong_ping_l = '0' and ping_mac_program='0' ) then
               status_reg    <= (others=>'0');
               status_reg(5) <= '1';
            elsif (tx_pong_ping_l = '0' and ping_mac_program='1' ) then
               status_reg    <= (others=>'0');
               status_reg(1) <= '1';
            elsif (tx_pong_ping_l = '1' and pong_mac_program='0' ) then
               status_reg    <= (others=>'0');
               status_reg(4) <= '1';
            elsif (tx_pong_ping_l = '1' and pong_mac_program='1' ) then
               status_reg    <= (others=>'0');
               status_reg(0) <= '1';
            end if;
         elsif (rx_done_d1 = '1') then
            if (rx_pong_ping_l = '0') then
               status_reg    <= (others=>'0');
               status_reg(3) <= '1';
            else
               status_reg    <= (others=>'0');
               status_reg(2) <= '1';
            end if;
         end if;
      end if;
   end process COMMON_STATUS_REG_PROCESS;

   ----------------------------------------------------------------------------
   -- TX_LENGTH_MUX_PROCESS
   ----------------------------------------------------------------------------
   -- This process loads data from the AXI when there is a write request and
   -- the control register is enabled.
   ----------------------------------------------------------------------------
   TX_LENGTH_MUX_PROCESS : process (Clk)
   begin  -- process
      if (Clk'event and Clk = '1') then
         if (Rst = '1') then
             tx_packet_length   <= (others=>'0');
         elsif (tx_pong_ping_l = '1') then
            --  Load Control Register with AXI
            tx_packet_length <= pong_pkt_lenth;
         -- Clear the status bit when trnasmit complete
         else
            tx_packet_length <= ping_pkt_lenth;
         end if;
      end if;
   end process TX_LENGTH_MUX_PROCESS;

   -- Tx Start indicator
   transmit_start <= ((ping_tx_status and not ping_mac_program) or
                      (pong_tx_status and not pong_mac_program)) and
                       not tx_done_d2;

   -- MAC program start indicator
   mac_program_start <= (ping_tx_status and ping_mac_program) or
                        (pong_tx_status and pong_mac_program);

   ----------------------------------------------------------------------------

   ----------------------------------------------------------------------------
   -- MDIO_GEN :- Include MDIO interface if the parameter C_INCLUDE_MDIO = 1
   ----------------------------------------------------------------------------
   MDIO_GEN: if C_INCLUDE_MDIO = 1 generate

      signal mdio_addr_en       : std_logic;
      signal mdio_wr_data_en    : std_logic;
      signal mdio_rd_data_en    : std_logic;
      signal mdio_ctrl_en       : std_logic;
      signal mdio_op_i          : std_logic;
      signal mdio_en_i          : std_logic;
      signal mdio_req_i         : std_logic;
      signal mdio_done_i        : std_logic;
      signal mdio_wr_data_reg   : std_logic_vector(15 downto 0);
      signal mdio_rd_data_reg   : std_logic_vector(15 downto 0);
      signal mdio_phy_addr      : std_logic_vector(4 downto 0);
      signal mdio_reg_addr      : std_logic_vector(4 downto 0);
      signal mdio_clk_i         : std_logic;
     -- signal mdio_ctrl_en_reg   : std_logic;
      signal clk_cnt            : integer range 0 to 63;
   begin

      -- MDIO reg enable
      mdio_reg_en     <= --not stat_reg_en_reg and
                         (mdio_addr_en    or
                          mdio_wr_data_en or
                          mdio_rd_data_en or
                          mdio_ctrl_en ) and (not Bus2IP_Burst);
                          --mdio_ctrl_en or mdio_ctrl_en_reg      ) and (not Bus2IP_Burst);

      -- MDIO address reg enable
      mdio_addr_en    <= reg_en and (not bus2ip_addr(4))
                                and (not bus2ip_addr(3))
                                and (    bus2ip_addr(2));

      -- MDIO write data reg enable
      mdio_wr_data_en <= reg_en and (not bus2ip_addr(4))
                                and (    bus2ip_addr(3))
                                and (not bus2ip_addr(2));

      -- MDIO read data reg enable
      mdio_rd_data_en <= reg_en and (not bus2ip_addr(4))
                                and (    bus2ip_addr(3))
                                and (    bus2ip_addr(2));

      -- MDIO controlreg enable
      mdio_ctrl_en    <= reg_en and (    bus2ip_addr(4))
                                and (not bus2ip_addr(3))
                                and (not bus2ip_addr(2));

      -------------------------------------------------------------------------
      -- MDIO_CTRL_REG_WR_PROCESS
      -------------------------------------------------------------------------
      -- This process loads data from the AXI when there is a write request and
      -- the MDIO control register is enabled.
      -------------------------------------------------------------------------
      MDIO_CTRL_REG_WR_PROCESS : process (Clk)
      begin  -- process
         if (Clk'event and Clk = '1') then
            if (Rst = '1') then
               mdio_en_i    <= '0';
               mdio_req_i   <= '0';
            elsif (Bus2IP_WrCE = '1' and mdio_ctrl_en= '1') then
               --  Load MDIO Control Register with AXI
               --  data if there is a write request
               --  and the control register is enabled
               mdio_en_i    <= Bus2IP_Data(3);
               mdio_req_i   <= Bus2IP_Data(0);
            -- Clear the status bit when trnasmit complete
            elsif mdio_done_i = '1' then
               mdio_req_i   <=  '0';
            end if;
         end if;
      end process MDIO_CTRL_REG_WR_PROCESS;

      -------------------------------------------------------------------------
      -- MDIO_ADDR_REG_WR_PROCESS
      -------------------------------------------------------------------------
      -- This process loads data from the AXI when there is a write request and
      -- the MDIO Address register is enabled.
      -------------------------------------------------------------------------
      MDIO_ADDR_REG_WR_PROCESS : process (Clk)
      begin  -- process
         if (Clk'event and Clk = '1') then
            if (Rst = '1') then
               mdio_phy_addr <= (others =>'0');
               mdio_reg_addr <= (others =>'0');
               mdio_op_i     <= '0';
            elsif (Bus2IP_WrCE = '1' and mdio_addr_en= '1') then
               --  Load MDIO ADDR Register with AXI
               --  data if there is a write request
               --  and the Address register is enabled
               mdio_phy_addr <= Bus2IP_Data(9 downto 5);
               mdio_reg_addr <= Bus2IP_Data(4 downto 0);
               mdio_op_i     <= Bus2IP_Data(10);

            end if;
         end if;
      end process MDIO_ADDR_REG_WR_PROCESS;

      -------------------------------------------------------------------------
      -- MDIO_WRITE_REG_WR_PROCESS
      -------------------------------------------------------------------------
      -- This process loads data from the AXI when there is a write request
      -- and the MDIO Write register is enabled.
      -------------------------------------------------------------------------
      MDIO_WRITE_REG_WR_PROCESS : process (Clk)
      begin  -- process
         if (Clk'event and Clk = '1') then
            if (Rst = '1') then
               mdio_wr_data_reg <= (others =>'0');
            elsif (Bus2IP_WrCE = '1' and mdio_wr_data_en= '1') then
               --  Load MDIO Write Data Register with AXI
               --  data if there is a write request
               --  and the Write Data register is enabled
               mdio_wr_data_reg <= Bus2IP_Data(15 downto 0);

            end if;
         end if;
      end process MDIO_WRITE_REG_WR_PROCESS;

      -------------------------------------------------------------------------
      -- MDIO_REG_RD_PROCESS
      -------------------------------------------------------------------------
      -- This process allows MDIO register read from the AXI when there is a
      -- read request and the MDIO registers are enabled.
      -------------------------------------------------------------------------
      MDIO_REG_RD_PROCESS : process (Clk)
      begin  -- process
         if (Clk'event and Clk = '1') then
            if (Rst = '1') then
               mdio_data_out <= (others =>'0');
            elsif (Bus2IP_RdCE = '1' and mdio_addr_en= '1') then
               --  MDIO Address Register Read through AXI
               mdio_data_out(4 downto 0) <= mdio_reg_addr;
               mdio_data_out(9 downto 5) <= mdio_phy_addr;
               mdio_data_out(10)       <= mdio_op_i;
               mdio_data_out(31  downto 11) <= (others=>'0');
            elsif (Bus2IP_RdCE = '1' and mdio_wr_data_en= '1') then
               --  MDIO Write Data Register Read through AXI
               mdio_data_out(15 downto 0) <= mdio_wr_data_reg;
               mdio_data_out(31  downto 16) <= (others=>'0');
            elsif (Bus2IP_RdCE = '1' and mdio_rd_data_en= '1') then
               --  MDIO Read Data Register Read through AXI
               mdio_data_out(15 downto 0) <= mdio_rd_data_reg;
               mdio_data_out(31 downto 16) <= (others=>'0');
            elsif (Bus2IP_RdCE = '1' and mdio_ctrl_en= '1') then
               --  MDIO Control Register Read through AXI
               mdio_data_out(0) <= mdio_req_i;
               mdio_data_out(1) <= '0';
               mdio_data_out(2) <= '0';
               mdio_data_out(3) <= mdio_en_i;
               mdio_data_out(31  downto 4) <= (others=>'0');
            --else
            --   mdio_data_out <= (others =>'0');
            end if;
         end if;
      end process MDIO_REG_RD_PROCESS;

      -------------------------------------------------------------------------
      -- PROCESS : MDIO_CLK_COUNTER
      -------------------------------------------------------------------------
      -- Generating MDIO clock. The minimum period for MDC clock is 400 ns.
      -------------------------------------------------------------------------
      MDIO_CLK_COUNTER : process(Clk)
      begin
         if (Clk'event and Clk = '1') then
            if (Rst = '1' ) then
               clk_cnt  <= MDIO_CNT;
               mdio_clk_i <= '0';
            elsif (clk_cnt = 0) then
               clk_cnt    <= MDIO_CNT;
               mdio_clk_i <= not mdio_clk_i;
            else
               clk_cnt <= clk_cnt - 1;
            end if;
         end if;
      end process;

      -------------------------------------------------------------------------
      -- MDIO master interface module
      -------------------------------------------------------------------------
      MDIO_IF_I: entity axi_ethernetlite_v3_0.mdio_if
         port map (
            Clk            => Clk       ,
            Rst            => Rst     ,
            MDIO_CLK       => mdio_clk_i       ,
            MDIO_en        => mdio_en_i        ,
            MDIO_OP        => mdio_op_i        ,
            MDIO_Req       => mdio_req_i       ,
            MDIO_PHY_AD    => mdio_phy_addr    ,
            MDIO_REG_AD    => mdio_reg_addr    ,
            MDIO_WR_DATA   => mdio_wr_data_reg ,
            MDIO_RD_DATA   => mdio_rd_data_reg ,
            PHY_MDIO_I     => PHY_MDIO_I       ,
            PHY_MDIO_O     => PHY_MDIO_O       ,
            PHY_MDIO_T     => PHY_MDIO_T       ,
            PHY_MDC        => PHY_MDC          ,
            MDIO_done      => mdio_done_i
            );
   end generate MDIO_GEN;

   ----------------------------------------------------------------------------
   -- NO_MDIO_GEN :- Include MDIO interface if the parameter C_INCLUDE_MDIO = 0
   ----------------------------------------------------------------------------
   NO_MDIO_GEN: if C_INCLUDE_MDIO = 0 generate
   begin

      mdio_data_out <= (others=>'0');
      mdio_reg_en   <= '0';
      PHY_MDIO_O    <= '0';
      PHY_MDIO_T    <= '1';

   end generate NO_MDIO_GEN;

end imp;




