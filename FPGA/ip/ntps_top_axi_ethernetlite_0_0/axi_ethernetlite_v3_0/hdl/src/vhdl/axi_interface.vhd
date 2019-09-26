-------------------------------------------------------------------------------
-- axi_interface - entity / architecture pair
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
-------------------------------------------------------------------------------
-- Filename:        axi_interface.vhd
-- Version:         v1.00a
-- Description:     This module takes care of AXI protocol interface for AXI4 
--                  AXI4-Lite interfaces. This supports word access and INCR 
--                  burst only.
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
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_cmb" 
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_misc.all;

-------------------------------------------------------------------------------
-- Vcomponents from unisim library is used for FIFO instatiation
-- function declarations
-------------------------------------------------------------------------------
library unisim;
use unisim.Vcomponents.all;

-------------------------------------------------------------------------------
-- Definition of Generics :
-------------------------------------------------------------------------------
-- System generics
--    C_FAMILY                   --  Xilinx FPGA Family
--                          
-- AXI generics             
--    C_S_AXI_PROTOCOL           --  AXI protocol type
--    C_S_AXI_CTRL_BASEADDR      --  Base address of the core
--    C_S_AXI_HIGHADDR           --  Permits alias of address space
--                                   by making greater than xFFF
--    C_S_AXI_CTRL_ADDR_WIDTH    --  Width of AXI Address Bus (in bits)
--    C_S_AXI_CTRL_DATA_WIDTH    --  Width of the AXI Data Bus (in bits)
--
-------------------------------------------------------------------------------
-- Definition of Ports :
-------------------------------------------------------------------------------
-- System signals
--    S_AXI_ACLK          --  AXI Clock
--    S_AXI_ARESET        --  AXI Reset
--    IP2INTC_Irpt        --  Device interrupt output to microprocessor 
--                            interrupt input or system interrupt controller.
-- AXI signals                
--    S_AXI_AWADDR        --  AXI Write address
--    S_AXI_AWVALID       --  Write address valid
--    S_AXI_AWREADY       --  Write address ready
--    S_AXI_WDATA         --  Write data
--    S_AXI_WSTRB         --  Write strobes
--    S_AXI_WVALID        --  Write valid
--    S_AXI_WREADY        --  Write ready
--    S_AXI_BRESP         --  Write response
--    S_AXI_BVALID        --  Write response valid
--    S_AXI_BREADY        --  Response ready
--    S_AXI_ARADDR        --  Read address
--    S_AXI_ARVALID       --  Read address valid
--    S_AXI_ARREADY       --  Read address ready
--    S_AXI_RDATA         --  Read data
--    S_AXI_RRESP         --  Read response
--    S_AXI_RVALID        --  Read valid
--    S_AXI_RREADY        --  Read ready
--
-- IPIC signals   
--    IP2Bus_Data        -- IP  to Bus data 
--    IP2Bus_Error       -- IP  to Bus error
--    Bus2IP_Addr        -- Bus to IP address
--    Bus2IP_Data        -- Bus to IP data
--    Bus2IP_RdCE        -- Bus to IP read chip enable
--    Bus2IP_WrCE        -- Bus to IP write chip enable
--    Bus2IP_BE          -- Bus to IP byte enables
--    Bus2IP_Burst       -- Bus to IP burst indicator
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- Entity section
-------------------------------------------------------------------------------

entity axi_interface is

  generic (

--  -- System Parameter
    C_FAMILY              : string                    := "virtex6";
--  -- AXI Parameters
    C_S_AXI_PROTOCOL      : string                    := "AXI4";
    C_S_AXI_ID_WIDTH      : integer range 1 to 16     := 4; 
    C_S_AXI_ADDR_WIDTH    : integer                   := 13;
    C_S_AXI_DATA_WIDTH    : integer range 32 to 128   := 32
   );
 
  port (
--   -- AXI Global System Signals
       S_AXI_ACLK    : in  std_logic;
       S_AXI_ARESETN : in  std_logic;
--   -- AXI Write Address Channel Signals
       S_AXI_AWID    : in  std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
       S_AXI_AWADDR  : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
       S_AXI_AWLEN   : in  std_logic_vector(7 downto 0);
       S_AXI_AWSIZE  : in  std_logic_vector(2 downto 0);
       S_AXI_AWBURST : in  std_logic_vector(1 downto 0);
       S_AXI_AWCACHE : in  std_logic_vector(3 downto 0);
       S_AXI_AWVALID : in  std_logic;
       S_AXI_AWREADY : out std_logic;
--   -- AXI Write Channel Signals
       S_AXI_WDATA   : in  std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
       S_AXI_WSTRB   : in  std_logic_vector
                               (((C_S_AXI_DATA_WIDTH/8)-1) downto 0);
       S_AXI_WLAST   : in  std_logic;
       S_AXI_WVALID  : in  std_logic;
       S_AXI_WREADY  : out std_logic;

--   -- AXI Write Response Channel Signals
       S_AXI_BID     : out std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
       S_AXI_BRESP   : out std_logic_vector(1 downto 0);
       S_AXI_BVALID  : out std_logic;
       S_AXI_BREADY  : in  std_logic;
--   -- AXI Read Address Channel Signals
       S_AXI_ARID    : in  std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
       S_AXI_ARADDR  : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
       S_AXI_ARLEN   : in  std_logic_vector(7 downto 0);
       S_AXI_ARSIZE  : in  std_logic_vector(2 downto 0);
       S_AXI_ARBURST : in  std_logic_vector(1 downto 0);
       S_AXI_ARCACHE : in  std_logic_vector(3 downto 0);
       S_AXI_ARVALID : in  std_logic;
       S_AXI_ARREADY : out std_logic;
--   -- AXI Read Data Channel Signals
       S_AXI_RID     : out std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
       S_AXI_RDATA   : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
       S_AXI_RRESP   : out std_logic_vector(1 downto 0);
       S_AXI_RLAST   : out std_logic;
       S_AXI_RVALID  : out std_logic;
       S_AXI_RREADY  : in  std_logic;

        
      -- Controls to the IP/IPIF modules
       IP2Bus_Data   : in  std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0 );
       IP2Bus_Error  : in  std_logic;

       Bus2IP_Addr   : out std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
       Bus2IP_Data   : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
       Bus2IP_BE     : out std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1)downto 0);
       Bus2IP_Burst  : out std_logic;
       Bus2IP_RdCE   : out std_logic;
       Bus2IP_WrCE   : out std_logic
);

end entity axi_interface;

-------------------------------------------------------------------------------
-- Architecture section
-------------------------------------------------------------------------------
architecture rtl of axi_interface is



  -----------------------------------------------------------------------------
    -- Constant Declarations
  -----------------------------------------------------------------------------
  constant  ZEROES     : std_logic_vector := X"00000000";
  constant RST_ACTIVE  : std_logic := '0';
  -----------------------------------------------------------------------------
    -- Signal and Type Declarations
  -----------------------------------------------------------------------------
  signal bus2ip_addr_i   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal wid             : std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0); 
  signal rid             : std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0); 
  signal read_burst_cntr : std_logic_vector(7 downto 0); 
  signal bvalid          : std_logic;
  signal rvalid          : std_logic;
  signal read_req           : std_logic;
  signal write_req          : std_logic;
  signal awready_i          : std_logic;
  signal arready_i          : std_logic;
  signal arready_i1          : std_logic;
  signal arready_i2          : std_logic;
  signal s_axi_rlast_i      : std_logic;
  signal read_burst_length  : std_logic_vector(7 downto 0);
  signal rd_burst           : std_logic;
  signal rd_last            : std_logic;
  signal read_req_d1        : std_logic;
  signal read_req_re        : std_logic;
  signal bus2ip_rdce_i      : std_logic;
  signal bus2ip_rdce_i_d1   : std_logic;

  signal IP2Bus_Data_sampled: std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0 );

  signal read_in_prog, write_in_prog : std_logic;
  signal read_complete, write_complete : std_logic;


  -----------------------------------------------------------------------------
    -- Begin Architecture
  -----------------------------------------------------------------------------
    
  begin

  -- AXI signal assignment
  S_AXI_BRESP   <= "00";
  S_AXI_BVALID  <= bvalid;
--  S_AXI_RDATA   <= IP2Bus_Data;
  --S_AXI_RVALID  <= rvalid;
  S_AXI_RRESP   <= "00";
  
  -- IPIC signal assignment          
  Bus2IP_Addr   <= bus2ip_addr_i;
  Bus2IP_Data   <= S_AXI_WDATA;
  Bus2IP_RdCE   <= bus2ip_rdce_i;
  Bus2IP_BE     <= S_AXI_WSTRB;
  Bus2IP_Burst  <= '0';
  
  AXI4_RDATA_GEN : if (C_S_AXI_PROTOCOL = "AXI4") generate
      AXI_READ_OUTPUT_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  S_AXI_RDATA  <= (others =>'0');
              elsif S_AXI_RREADY = '1' then
                  S_AXI_RDATA   <= IP2Bus_Data;
              end if;
          end if;
      end process AXI_READ_OUTPUT_P;

  
  end generate AXI4_RDATA_GEN;

  AXI4LITE_RDATA_GEN : if (C_S_AXI_PROTOCOL = "AXI4LITE") generate
     S_AXI_RDATA   <= IP2Bus_Data_sampled;
  
  end generate AXI4LITE_RDATA_GEN;




  -- AWREADY is enabled only if valid write request and no read request 
  --awready_i <= (not write_req) and not (S_AXI_ARVALID or read_req or rvalid);
  
  -- ARREADY is enabled only if valid read request and no current write request 
  --arready_i <= (not read_req) and not (write_req);
  




  -----------------------------------------------------------------------------
  --  Generate AXI4-MM interface if (C_S_AXI_PROTOCOL="AXI4")
  -----------------------------------------------------------------------------
  AXI4_MM_IF_GEN : if (C_S_AXI_PROTOCOL = "AXI4") generate

  S_AXI_AWREADY <= awready_i;
  S_AXI_WREADY  <= write_req;
  S_AXI_ARREADY <= arready_i;
  Bus2IP_WrCE   <= S_AXI_WVALID and write_req;

  --  -----------------------------------------------------------------------
  --  Process AXI_AWREADY_P to generate Write request on the IPIC
  --  -----------------------------------------------------------------------
      AXI_AWREADY_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  awready_i <='0';
              elsif (S_AXI_AWVALID = '1' and awready_i = '1') then
                  awready_i  <= '0';
              else
                  awready_i  <= (not write_req) and not (S_AXI_ARVALID or read_req or rvalid);
              end if;
          end if;
      end process AXI_AWREADY_P;

  --  -----------------------------------------------------------------------
  --  Process AXI_ARREADY_P to generate Write request on the IPIC
  --  -----------------------------------------------------------------------
      AXI_ARREADY_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  arready_i <='0';
              elsif (S_AXI_ARVALID = '1' and arready_i = '1') then
                  arready_i  <= '0';
              else
                  arready_i <= (not read_req) and not (S_AXI_AWVALID or write_req);
              end if;
          end if;
      end process AXI_ARREADY_P;

  --  -----------------------------------------------------------------------
  --  Process AXI_READ_OUTPUT_P to generate Write request on the IPIC
  --  -----------------------------------------------------------------------
      --AXI_READ_OUTPUT_P: process (S_AXI_ACLK) is
      --begin
      --    if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
      --        if (S_AXI_ARESETN=RST_ACTIVE) then
      --            S_AXI_RDATA  <= (others =>'0');
      --            S_AXI_RVALID <='0';
      --        elsif S_AXI_RREADY = '1' then
      --            S_AXI_RDATA   <= IP2Bus_Data;
      --            S_AXI_RVALID  <= rvalid;
      --        end if;
      --    end if;
      --end process AXI_READ_OUTPUT_P;


      AXI_READ_VALID_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  S_AXI_RVALID <='0';
              elsif S_AXI_RREADY = '1' then
                  S_AXI_RVALID  <= rvalid;
              end if;
          end if;
      end process AXI_READ_VALID_P;

      AXI_READ_CE_DELAY_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  bus2ip_rdce_i_d1  <= '0';
              else 
                  bus2ip_rdce_i_d1  <= bus2ip_rdce_i;
              end if;
          end if;
      end process AXI_READ_CE_DELAY_P;

      AXI_READ_OUTPUT_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  IP2Bus_Data_sampled  <= (others =>'0');
              elsif bus2ip_rdce_i_d1 = '1' then
                  IP2Bus_Data_sampled  <= IP2Bus_Data;
              end if;
          end if;
      end process AXI_READ_OUTPUT_P;

     -- AXI4 outputs
     S_AXI_BID     <= wid; 
     S_AXI_RID     <= rid;
     --S_AXI_RLAST   <= s_axi_rlast_i and rvalid; 
     
     -- Read burst
     rd_burst <=  or_reduce(read_burst_length);
     rd_last <= (s_axi_rlast_i and rd_burst) or (s_axi_rlast_i and S_AXI_RREADY);
     s_axi_rlast_i <= '1' when read_burst_cntr = "00000000" else '0';  
     
     -- Read request on IPIC
     bus2ip_rdce_i <= read_req_re  or (read_req and S_AXI_RREADY);

     -- AXI/IPIC Read request signal generation
     read_req_re <= read_req and not read_req_d1;



  --  -----------------------------------------------------------------------
  --  Process AXI_READ_OUTPUT_P to generate Write request on the IPIC
  --  -----------------------------------------------------------------------
      AXI_READ_LAST_OUTPUT_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  S_AXI_RLAST  <= '0';
              elsif S_AXI_RREADY = '1' then
                  S_AXI_RLAST   <= s_axi_rlast_i and rvalid;
              end if;
          end if;
      end process AXI_READ_LAST_OUTPUT_P;



  --  -----------------------------------------------------------------------
  --  Process WRITE_REQUEST_P to generate Write request on the IPIC
  --  -----------------------------------------------------------------------
      WRITE_REQUEST_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  write_req <= '0';
              elsif (S_AXI_AWVALID = '1' and awready_i = '1') then   
                  write_req <= '1';
              elsif (S_AXI_WVALID = '1' and S_AXI_WLAST = '1') then
                  write_req <= '0';
              else
                  write_req <= write_req;
              end if;
          end if;
      end process WRITE_REQUEST_P;


  --  -----------------------------------------------------------------------
  --  Process READ_REQUEST_P to generate read request
  --  -----------------------------------------------------------------------
      READ_REQUEST_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  read_req <= '0';
              elsif (S_AXI_ARVALID = '1' and arready_i = '1') then   
                  read_req <= '1';
              elsif (s_axi_rlast_i = '1') then 
                  read_req <= '0';
              end if;
          end if;
      end process READ_REQUEST_P;

  --  -----------------------------------------------------------------------
  --  Process ADDR_GEN_P to generate bus2ip_addr for read/write
  --  -----------------------------------------------------------------------
      ADDR_GEN_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  bus2ip_addr_i <= (others=>'0');
              elsif (S_AXI_ARVALID = '1' and arready_i = '1') then   
                  bus2ip_addr_i <= S_AXI_ARADDR;
              elsif (bus2ip_rdce_i='1' and rd_burst='1') then
                  bus2ip_addr_i <= bus2ip_addr_i + 4;
              elsif (S_AXI_AWVALID = '1' and awready_i = '1') then   
                  bus2ip_addr_i <= S_AXI_AWADDR;
              elsif (S_AXI_WVALID = '1' and write_req='1') then
                  bus2ip_addr_i <= bus2ip_addr_i + 4;
              end if;
          end if;
      end process ADDR_GEN_P;
  
  --  -----------------------------------------------------------------------
  --  Process WRITE_ID_P to generate Write response ID on AXI
  --  -----------------------------------------------------------------------
      WRITE_ID_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  wid <= (others=>'0');
              elsif (S_AXI_AWVALID = '1' and awready_i = '1') then   
                  wid <= S_AXI_AWID;
              end if;
          end if;
      end process WRITE_ID_P;

  --  -----------------------------------------------------------------------
  --  Process WRITE_BVALID_P to generate Write Response valid
  --  -----------------------------------------------------------------------
      WRITE_BVALID_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  bvalid <= '0';
              elsif (S_AXI_WLAST = '1' and write_req = '1' and S_AXI_WVALID = '1') then   
                  bvalid <= '1';
              elsif (S_AXI_BREADY = '1') then
                  bvalid <= '0';
              end if;
          end if;
      end process WRITE_BVALID_P;


  --  -----------------------------------------------------------------------
  --  Process READ_ID_P to generate read ID
  --  -----------------------------------------------------------------------
      READ_ID_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  rid <= (others=>'0');
              elsif (S_AXI_ARVALID = '1' and arready_i = '1') then   
                  rid <= S_AXI_ARID;
              end if;
          end if;
      end process READ_ID_P;

  --  -----------------------------------------------------------------------
  --  Process READ_BURST_CNTR_P to generate rdlast signal after completion
  --  of burst
  --  -----------------------------------------------------------------------
      READ_BURST_CNTR_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  read_burst_cntr <= (others=>'0');
              elsif (S_AXI_ARVALID = '1' and arready_i = '1') then   
                  read_burst_cntr <= S_AXI_ARLEN;
              elsif (rvalid = '1' and S_AXI_RREADY='1') then
                  read_burst_cntr <= read_burst_cntr-'1';
              end if;
          end if;
      end process READ_BURST_CNTR_P;

  --  -----------------------------------------------------------------------
  --  Process READ_BURST_LENGTH_P to latch the burst length for read xfer
  --  -----------------------------------------------------------------------
      READ_BURST_LENGTH_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  read_burst_length <= (others=>'0');
              elsif (S_AXI_ARVALID = '1' and arready_i = '1') then   
                  read_burst_length <= S_AXI_ARLEN;
              end if;
          end if;
      end process READ_BURST_LENGTH_P;


  --  -----------------------------------------------------------------------
  --  Process READ_RVALID_P to generate Read valid
  --  -----------------------------------------------------------------------
      READ_RVALID_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  rvalid <= '0';
              elsif (s_axi_rlast_i = '1' and S_AXI_RREADY='1' and rd_burst='1') then
                  rvalid <= '0';
              elsif (read_req = '1') then   
                  rvalid <= '1';
              elsif (s_axi_rlast_i = '1' and S_AXI_RREADY='1') then
                  rvalid <= '0';
              end if;
          end if;
      end process READ_RVALID_P;


  --  -----------------------------------------------------------------------
  --  Process READ_REQUEST_REG_P to generate Read request on IPIC
  --  -----------------------------------------------------------------------
      READ_REQUEST_REG_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  read_req_d1 <= '0';
              else
                  read_req_d1 <= read_req;
              end if;
          end if;
      end process READ_REQUEST_REG_P;

  

  --------------------------
  end generate AXI4_MM_IF_GEN;
  ---------------------------




  -----------------------------------------------------------------------------
  --  Generate AXI4-Lite interface if (C_S_AXI_PROTOCOL="AXI4LITE")
  -----------------------------------------------------------------------------
  AXI4_LITE_IF_GEN : if (C_S_AXI_PROTOCOL = "AXI4LITE") generate

  S_AXI_AWREADY <= awready_i;
  S_AXI_WREADY  <= awready_i;
  S_AXI_ARREADY <= arready_i;
  Bus2IP_WrCE   <= S_AXI_WVALID and write_in_prog; --and write_req;

  --  -----------------------------------------------------------------------
  --  Process AXI_AWREADY_P to generate Write request on the IPIC
  --  -----------------------------------------------------------------------
      AXI_AWREADY_P1: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  write_in_prog <='0';
                  read_in_prog <='0';
              elsif ((rvalid = '1' and S_AXI_RREADY = '1') or (bvalid = '1' and S_AXI_BREADY = '1')) then -- and write_complete = '1') then
          --    elsif (read_complete = '1' or (bvalid = '1' and S_AXI_BREADY = '1')) then -- and write_complete = '1') then
                  write_in_prog <='0';
                  read_in_prog <='0';
              elsif (S_AXI_ARVALID = '1' and write_in_prog = '0') then
                  read_in_prog <='1';
              elsif ((S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') and read_in_prog = '0') then
                  write_in_prog <='1';
              end if;
          end if;
      end process AXI_AWREADY_P1;
  --  -----------------------------------------------------------------------
  --  Process AXI_AWREADY_P to generate Write request on the IPIC
  --  -----------------------------------------------------------------------
      AXI_AWREADY_P2: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  awready_i <='0';
              elsif (S_AXI_WVALID = '1' and write_in_prog = '1' and awready_i = '0') then
                  awready_i  <= '1';
              else
                  awready_i  <= '0'; --(not write_req) and not (S_AXI_ARVALID or read_req or rvalid);
              end if;
          end if;
      end process AXI_AWREADY_P2;


  --  -----------------------------------------------------------------------
  --  Process WRITE_BVALID_P to generate Write Response valid
  --  -----------------------------------------------------------------------
      WRITE_BVALID_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  bvalid <= '0';
              elsif (awready_i = '1') then   
                  bvalid <= '1';
              elsif (S_AXI_BREADY = '1') then
                  bvalid <= '0';
              end if;
          end if;
      end process WRITE_BVALID_P;
      
      WRITE_BVALID_P2: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  write_complete <= '0';
              elsif (bvalid = '1' and S_AXI_BREADY = '1' and write_complete = '0') then   
                  write_complete <= '1';
              else
                  write_complete <= '0';
              end if;
          end if;
      end process WRITE_BVALID_P2;


  --  -----------------------------------------------------------------------
  --  Process AXI_ARREADY_P to generate Write request on the IPIC
  --  -----------------------------------------------------------------------
      AXI_ARREADY_P1: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  arready_i1 <='0';
              elsif (read_in_prog = '1') then -- and rvalid = '1') then --S_AXI_ARVALID = '1' and read_complete = '1' and arready_i = '0') then
                  arready_i1  <= '1';
              else
                  arready_i1 <= '0';
              end if;
          end if;
      end process AXI_ARREADY_P1;

      AXI_ARREADY_P2: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  arready_i2 <='0';
              else
                  arready_i2 <= arready_i1;
              end if;
          end if;
      end process AXI_ARREADY_P2;

           arready_i <= arready_i1 and (not arready_i2);


  --    AXI_READ_VALID_P1: process (S_AXI_ACLK) is
  --    begin
  --        if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
  --            if (S_AXI_ARESETN=RST_ACTIVE) then
  --                S_AXI_RVALID <='0';
  --            elsif S_AXI_RREADY = '1' then
                  S_AXI_RVALID  <= rvalid;
  --            end if;
  --        end if;
  --    end process AXI_READ_VALID_P1;

      AXI_READ_CE_DELAY_P1: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  bus2ip_rdce_i_d1  <= '0';
              else 
                  bus2ip_rdce_i_d1  <= bus2ip_rdce_i;
              end if;
          end if;
      end process AXI_READ_CE_DELAY_P1;

      AXI_READ_OUTPUT_P1: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  IP2Bus_Data_sampled  <= (others =>'0');
              elsif bus2ip_rdce_i_d1 = '1' then
                  IP2Bus_Data_sampled  <= IP2Bus_Data;
              end if;
          end if;
      end process AXI_READ_OUTPUT_P1;

  
     -- AXI4 outputs
     --S_AXI_BID   <= (others => '0');
     --S_AXI_RID   <= (others => '0');
     S_AXI_RLAST <= rvalid; 
     S_AXI_BID     <= wid; 
     S_AXI_RID     <= rid;
     wid   <= (others => '0');
     rid   <= (others => '0');


  --  -----------------------------------------------------------------------
  --  Process WRITE_REQUEST_P to generate Write request on the IPIC
  --  -----------------------------------------------------------------------
--      WRITE_REQUEST_P: process (S_AXI_ACLK) is
--      begin
--          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
--              if (S_AXI_ARESETN=RST_ACTIVE) then
--                  write_req <= '0';
--              elsif (S_AXI_AWVALID = '1' and awready_i = '1') then   
--                  write_req <= '1';
--              elsif (write_req = '1' and S_AXI_WVALID = '1') then
--                  write_req <= '0';
--	      else
--	          write_req <= write_req;
--              end if;
--          end if;
--      end process WRITE_REQUEST_P;


  --  -----------------------------------------------------------------------
  --  Process READ_REQUEST_P to generate read request
  --  -----------------------------------------------------------------------
      READ_REQUEST_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then -- or read_in_prog = '0') then
                  read_req <= '0';
              elsif (S_AXI_ARVALID = '1' and bus2ip_rdce_i_d1 = '0') then   
                  read_req <= '1';
              elsif (S_AXI_RREADY = '1') then 
                  read_req <= '0';
              end if;
          end if;
      end process READ_REQUEST_P;

  --  -----------------------------------------------------------------------
  --  Process ADDR_GEN_P to generate bus2ip_addr for read/write
  --  -----------------------------------------------------------------------
      ADDR_GEN_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  bus2ip_addr_i <= (others=>'0');
              elsif (S_AXI_ARVALID = '1' and write_in_prog = '0') then --read_in_prog = '1') then   
                  bus2ip_addr_i <= S_AXI_ARADDR;
              elsif (S_AXI_AWVALID = '1' and read_in_prog = '0') then --write_in_prog = '1') then   
                  bus2ip_addr_i <= S_AXI_AWADDR;
              end if;
          end if;
      end process ADDR_GEN_P;
  

  --  -----------------------------------------------------------------------
  --  Process READ_RVALID_P to generate Read valid
  --  -----------------------------------------------------------------------
      READ_RVALID_P: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  rvalid <= '0';
              elsif (S_AXI_RREADY='1' and rvalid = '1') then
                  rvalid <= '0';
              elsif (read_req = '1' and bus2ip_rdce_i_d1 = '1') then   
                  rvalid <= '1';
              end if;
          end if;
      end process READ_RVALID_P;

      READ_RVALID_P1: process (S_AXI_ACLK) is
      begin
          if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
              if (S_AXI_ARESETN=RST_ACTIVE) then
                  read_complete <= '0';
              elsif ((rvalid = '1' and S_AXI_RREADY = '1')) then --(arready_i = '1') then
                  read_complete <= '1';
              else
                  read_complete <= '0';
                  
              end if;
          end if;
      end process READ_RVALID_P1;


 -- --  -----------------------------------------------------------------------
 -- --  Process WRITE_ID_P to generate Write response ID on AXI
 -- --  -----------------------------------------------------------------------
 --     WRITE_ID_P: process (S_AXI_ACLK) is
 --     begin
 --         if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
 --             if (S_AXI_ARESETN=RST_ACTIVE) then
 --                 wid <= (others=>'0');
 --             elsif (S_AXI_AWVALID = '1' and awready_i = '1') then   
 --                 wid <= S_AXI_AWID;
 --             end if;
 --         end if;
 --     end process WRITE_ID_P;
 --
 -- --  Process READ_ID_P to generate read ID
 -- --  -----------------------------------------------------------------------
 --     READ_ID_P: process (S_AXI_ACLK) is
 --     begin
 --         if (S_AXI_ACLK'event and S_AXI_ACLK = '1') then
 --             if (S_AXI_ARESETN=RST_ACTIVE) then
 --                 rid <= (others=>'0');
 --             elsif (S_AXI_ARVALID = '1' and arready_i = '1') then   
 --                 rid <= S_AXI_ARID;
 --             end if;
 --         end if;
 --     end process READ_ID_P;
      
      
      -- Read request on IPIC
      bus2ip_rdce_i <= read_in_prog; --read_req;
      

  --------------------------
  end generate AXI4_LITE_IF_GEN;
  ---------------------------

 

end architecture rtl;
--
