-------------------------------------------------------------------------------
-- rx_statemachine - entity/architecture pair
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
-- Filename     : rx_statemachine.vhd
-- Version      : v2.0
-- Description  : This file contains the receive control state machine.
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
-- 
library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.UNSIGNED;
use ieee.numeric_std."+";

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
-- C_DUPLEX               -- 1 = full duplex, 0 = half duplex
-------------------------------------------------------------------------------
-- Definition of Ports:
--
--  Clk                  -- System Clock
--  Rst                  -- System Reset
--  Emac_rx_rd_data      -- RX FIFO read data to controller
--  Rcv_en               -- Receive enable
--  RxBusFifoRdAck       -- RX FIFO read ack
--  BusFifoEmpty         -- RX FIFO empty
--  Collision            -- Collision detected
--  DataValid            -- Data valid from PHY
--  RxError              -- Receive error
--  BusFifoData          -- RX FIFO data
--  CrcOk                -- CRC correct in the receive data
--  BusFifoRd            -- RX FIFO read
--  RxAbortRst           -- Receive abort
--  RxCrcRst             -- Receive CRC reset
--  RxCrcEn              -- RX CRC enable
--  Rx_addr_en           -- Receive address enable
--  Rx_start             -- Receive start
--  Rx_done              -- Receive complete
--  Rx_pong_ping_l       -- RX Ping/Pong buffer enable
--  Rx_DPM_ce            -- RX buffer chip enable
--  Rx_DPM_wr_data       -- RX buffer write data
--  Rx_DPM_rd_data       -- RX buffer read data
--  Rx_DPM_wr_rd_n       -- RX buffer write read enable
--  Rx_idle              -- RX idle
--  Mac_addr_ram_addr_rd -- MAC Addr RAM read address
--  Mac_addr_ram_data    -- MAC Addr RAM read data
--  Rx_buffer_ready      -- RX buffer ready to accept new packet
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity rx_statemachine is
  generic (
    C_DUPLEX : integer := 1
      -- 1 = full duplex, 0 = half duplex    
    );
  port (
        Clk                    : in  std_logic;
        Rst                    : in  std_logic;
        Emac_rx_rd_data_d1     : in  std_logic_vector(0 to 5);   -- 03-26-04
        Receive_enable         : out std_logic;   -- 03-26-04
        RxBusFifoRdAck         : in  std_logic;  
        BusFifoEmpty           : in  std_logic;
        Collision              : in  std_logic;
        DataValid              : in  std_logic;
        RxError                : in  std_logic;
        BusFifoData            : in  std_logic_vector(0 to 3);
        CrcOk                  : in  std_logic;
        BusFifoRd              : out std_logic;
        RxAbortRst             : out std_logic;
        RxCrcRst               : out std_logic;
        RxCrcEn                : out std_logic;   
        Rx_addr_en             : out std_logic;
        Rx_start               : out std_logic;
        Rx_done                : out std_logic;
        Rx_pong_ping_l         : in  std_logic;
        Rx_DPM_ce              : out std_logic;
        Rx_DPM_wr_data         : out std_logic_vector (0 to 3);
        Rx_DPM_rd_data         : in  std_logic_vector (0 to 3);    
        Rx_DPM_wr_rd_n         : out std_logic;
        Rx_idle                : out std_logic;
        Mac_addr_ram_addr_rd   : out std_logic_vector(0 to 3);
        Mac_addr_ram_data      : in  std_logic_vector (0 to 3);
        Rx_buffer_ready        : in  std_logic 
    
        ); 
end rx_statemachine;


architecture imp of rx_statemachine is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";

type bo2sl_type is array (boolean) of std_logic;
constant bo2sl : bo2sl_type := (false => '0', true => '1');
signal idle                         : std_logic; -- state 0
signal waitForSfd1                  : std_logic; -- state 1
signal sfd1CheckBusFifoEmpty        : std_logic; -- state 2
signal waitForSfd2                  : std_logic; -- state 3
signal startReadDestAdrNib          : std_logic; -- state 4
signal rdDestAddrNib_eq_0           : std_logic;
signal rdDestAddrNib_eq_12          : std_logic;
signal startReadDataNib             : std_logic; -- state 17
signal crcCheck                     : std_logic; -- state 18
signal rxDone                       : std_logic; -- state 20
signal receiveRst                   : std_logic; -- state 21
signal rxCollision                  : std_logic; -- state 22
signal idle_D                       : std_logic; -- state 0
signal waitForSfd1_D                : std_logic; -- state 1
signal sfd1CheckBusFifoEmpty_D      : std_logic; -- state 2
signal waitForSfd2_D                : std_logic; -- state 3
signal startReadDestAdrNib_D        : std_logic; -- state 4
signal startReadDataNib_D           : std_logic; -- state 17
signal crcCheck_D                   : std_logic; -- state 18
signal rxDone_D                     : std_logic; -- state 20
signal receiveRst_D                 : std_logic; -- state 21
signal rxCollision_D                : std_logic; -- state 22
signal goto_idle_1                  : std_logic; -- state 0
signal goto_idle_2                  : std_logic; -- state 0
signal goto_idle_3                  : std_logic; -- state 0
signal goto_idle_4                  : std_logic; -- state 0
signal goto_waitForSfd1             : std_logic; -- state 1
signal goto_sfd1CheckBusFifoEmpty_1 : std_logic; -- state 2
signal goto_sfd1CheckBusFifoEmpty_2 : std_logic; -- state 2
signal goto_waitForSfd2             : std_logic; -- state 3
signal goto_startReadDestAdrNib_1   : std_logic; -- state 4
signal goto_readDestAdrNib1         : std_logic; -- state 5
signal goto_startReadDataNib_2      : std_logic; -- state 17
signal goto_crcCheck                : std_logic; -- state 18
signal goto_rxDone_3                : std_logic; -- state 20
signal goto_receiveRst_1            : std_logic; -- state 21
signal goto_receiveRst_2            : std_logic; -- state 21
signal goto_receiveRst_3            : std_logic; -- state 21
signal goto_receiveRst_5            : std_logic; -- state 21
signal goto_receiveRst_9            : std_logic; -- state 21
signal goto_receiveRst_10           : std_logic; -- state 21
signal goto_receiveRst_14           : std_logic; -- state 21
signal goto_rxCollision_1           : std_logic; -- state 22
signal goto_rxCollision_2           : std_logic; -- state 22
signal goto_rxCollision_5           : std_logic; -- state 22
signal stay_idle                    : std_logic; -- state 0
signal stay_sfd1CheckBusFifoEmpty   : std_logic; -- state 2
signal stay_startReadDestAdrNib     : std_logic; -- state 4
signal stay_startReadDataNib        : std_logic; -- state 17
signal state_machine_rst            : std_logic;
signal full_half_n                  : std_logic;
signal checkingBroadcastAdr_i       : std_logic;
signal checkingBroadcastAdr_reg     : std_logic;
signal busFifoData_is_5             : std_logic;
signal busFifoData_is_13            : std_logic;
signal busFifoData_not_5            : std_logic;
signal busFifoData_not_13           : std_logic;
signal bcastAddrGood                : std_logic;
signal ucastAddrGood                : std_logic;
signal crcokr1                      : std_logic;
signal crcokin                      : std_logic;
signal rxCrcEn_i                    : std_logic;
signal mac_addr_ram_addr_rd_D       : std_logic_vector(0 to 3);
signal rdDestAddrNib_D_t            : std_logic_vector(0 to 3);
signal rdDestAddrNib_D_t_q          : std_logic_vector(0 to 3);
signal rxDone_i                     : std_logic;
signal preamble_valid               : std_logic;
signal preamble_error_reg           : std_logic;
signal preamble_error               : std_logic;
signal busFifoData_is_5_d1          : std_logic;
signal busFifoData_is_5_d2          : std_logic;
signal busFifoData_is_5_d3          : std_logic;
signal pkt_length_cnt               : integer range 0 to 127; 
signal crc_rst                      : std_logic;

component FDR
  port (
    Q : out std_logic;
    C : in std_logic;
    D : in std_logic;
    R : in std_logic
  );
end component;

component FDS
  port (
    Q : out std_logic;
    C : in std_logic;
    D : in std_logic;
    S : in std_logic
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

-------------------------------------------------------------------------------
-- Begin architecture
-------------------------------------------------------------------------------
begin
  
   ----------------------------------------------------------------------------
   -- CRC check
   ----------------------------------------------------------------------------
   crcokin <= ((CrcOk      -- set
              or crcokr1)  -- keep
              and (not(rxCrcEn_i) or CrcOk)); -- clear when 0
      
   crcokdelay: FDR
     port map (
       Q => crcokr1, --[out]
       C => Clk,     --[in]
       D => crcokin, --[in]
       R => crc_rst  --[in]
     );
    
   -- Added this to reset CRCokr1 before starting the next packet reception.
   crc_rst <= Rst or (not CrcOk and crcokr1);    
         
   --   RX Complete indicator
   Rx_done     <= rxDone_i; -- added Rx_done output for ping pong control      
   
     
   -- Generate rxdone only if received framelength is greater than minimum 
   -- frame length
   rxDone_i <= '1' when rxDone='1' and pkt_length_cnt=0 else
               '0';
   
   -- Check start of Frame
   -- If receive data=5
   busFifoData_is_5    <= not(BusFifoData(0)) and BusFifoData(1) and 
                          not(BusFifoData(2)) and BusFifoData(3);
                          
   -- If receive data/=5
   busFifoData_not_5   <= not(busFifoData_is_5);
   
   -- If receive data=13
   busFifoData_is_13   <= BusFifoData(0) and BusFifoData(1) and 
                     not(BusFifoData(2)) and BusFifoData(3);
                     
   -- If receive data/=13
   busFifoData_not_13       <= not(busFifoData_is_13);
   
   -- State Machine Reset
   state_machine_rst <= Rst;
   
    
   ----------------------------------------------------------------------------
   -- idle state
   ----------------------------------------------------------------------------  
   goto_idle_1 <= rxDone;
   goto_idle_2 <= receiveRst;  
   goto_idle_3 <= waitForSfd1 and (not(DataValid) or busFifoData_not_5);
   goto_idle_4 <= waitForSfd2 and (not(DataValid) or 
                  (busFifoData_not_5 and busFifoData_not_13));      
     
   stay_idle <= idle and not(goto_waitForSfd1); 
   
   idle_D <= goto_idle_1 or goto_idle_2 or goto_idle_3 or goto_idle_4 
                         or stay_idle;
   
   state0a: FDS
     port map (
       Q => idle,             --[out]
       C => Clk,              --[in]
       D => idle_D,           --[in]
       S => state_machine_rst --[in]
     );
   ----------------------------------------------------------------------------
   -- waitForSfd1 state
   ----------------------------------------------------------------------------    
   goto_waitForSfd1 <= idle and (RxBusFifoRdAck or not(BusFifoEmpty)) 
                       and (Rx_buffer_ready);
     
     
   waitForSfd1_D <= goto_waitForSfd1;
   
   state1a: FDR
     port map (
       Q => waitForSfd1,      --[out]
       C => Clk,              --[in]
       D => waitForSfd1_D,    --[in]
       R => state_machine_rst --[in]
     );    
   Rx_idle <= idle or waitForSfd1;  
   ----------------------------------------------------------------------------
   -- sfd1CheckBusFifoEmpty state
   ----------------------------------------------------------------------------    
   goto_sfd1CheckBusFifoEmpty_1 <= waitForSfd1 and busFifoData_is_5 
                                               and DataValid;
   goto_sfd1CheckBusFifoEmpty_2 <= waitForSfd2 and busFifoData_is_5 
                                               and DataValid;
   
   stay_sfd1CheckBusFifoEmpty <= sfd1CheckBusFifoEmpty   and 
                                 not(goto_rxCollision_1) and
                                 not(goto_receiveRst_1)  and
                                 not(goto_waitForSfd2);
     
   sfd1CheckBusFifoEmpty_D <= goto_sfd1CheckBusFifoEmpty_1 or 
                              goto_sfd1CheckBusFifoEmpty_2 or 
                              stay_sfd1CheckBusFifoEmpty;
   
   state2a: FDR
     port map (
       Q => sfd1CheckBusFifoEmpty,    --[out]
       C => Clk,                      --[in]
       D => sfd1CheckBusFifoEmpty_D,  --[in]
       R => state_machine_rst         --[in]
     ); 
   ----------------------------------------------------------------------------
   -- waitForSfd2 state
   ----------------------------------------------------------------------------    
   goto_waitForSfd2 <= sfd1CheckBusFifoEmpty and not(goto_rxCollision_1) and 
                      not(goto_receiveRst_1) and (RxBusFifoRdAck or 
                                                  not(BusFifoEmpty)) and 
                                                  busFifoData_is_5;
   
   waitForSfd2_D <= goto_waitForSfd2;
   
   state3a: FDR
     port map (
       Q => waitForSfd2,      --[out]
       C => Clk,              --[in]
       D => waitForSfd2_D,    --[in]
       R => state_machine_rst --[in]
     );  
   
   
   ----------------------------------------------------------------------------
   --startReadDestAdrNib state
   ----------------------------------------------------------------------------    
   goto_startReadDestAdrNib_1 <= waitForSfd2 and busFifoData_is_13  
                                             and preamble_valid
                                             and DataValid;
   
   stay_startReadDestAdrNib <= startReadDestAdrNib     and 
                               not(goto_rxCollision_2) and
                               not(goto_receiveRst_2)  and 
                               not(goto_readDestAdrNib1);
     
   startReadDestAdrNib_D <= goto_startReadDestAdrNib_1  or 
                            stay_startReadDestAdrNib;
   
   state4a: FDR
     port map (
       Q => startReadDestAdrNib,    --[out]
       C => Clk,                    --[in]
       D => startReadDestAdrNib_D,  --[in]
       R => state_machine_rst       --[in]
     );
   ----------------------------------------------------------------------------
   --readDestAdrNib1 state
   ----------------------------------------------------------------------------    
   goto_readDestAdrNib1 <= startReadDestAdrNib     and 
                           not(goto_rxCollision_2) and 
                           not(goto_receiveRst_2)  and 
                           RxBusFifoRdAck;
     
   
   rdDestAddrNib_eq_0  <= bo2sl(rdDestAddrNib_D_t_q = "0000");
   rdDestAddrNib_eq_12 <= bo2sl(rdDestAddrNib_D_t_q = "1011");
   
   ----------------------------------------------------------------------------
   -- STATE_REG_PROCESS
   ----------------------------------------------------------------------------
   -- Registeting the read destination address.
   ----------------------------------------------------------------------------
   STATE_REG_PROCESS : process (Clk)
   begin
      if (Clk'event and Clk='1') then
         if (state_machine_rst = '1' or 
             goto_startReadDestAdrNib_1 = '1') then  
            rdDestAddrNib_D_t_q <= "0000";
         else
            rdDestAddrNib_D_t_q <= rdDestAddrNib_D_t;
         end if;
      end if;
   end process STATE_REG_PROCESS;
   
   
   ----------------------------------------------------------------------------
   -- FSM_CMB_PROCESS
   ----------------------------------------------------------------------------
   -- This process generate read destination address for the MAC address RAM
   -- for the received frame. 
   ----------------------------------------------------------------------------
   FSM_CMB_PROCESS : process (startReadDestAdrNib,goto_rxCollision_2,
            goto_receiveRst_2,RxBusFifoRdAck,goto_receiveRst_3,bcastAddrGood,
            ucastAddrGood,goto_receiveRst_5,
            rdDestAddrNib_D_t_q)
   begin
   ----
   
      rdDestAddrNib_D_t <= rdDestAddrNib_D_t_q;

      case (rdDestAddrNib_D_t_q) is
   
         when "0000" => 
         
            if (startReadDestAdrNib and not(goto_rxCollision_2) and 
                not(goto_receiveRst_2) and RxBusFifoRdAck) = '1' then
               rdDestAddrNib_D_t <= "0001";
            else
               rdDestAddrNib_D_t <= "0000";
            end if;
         
         when "0001" =>  
         
            if (RxBusFifoRdAck and (bcastAddrGood or ucastAddrGood) and
                not(goto_receiveRst_5) and not(goto_receiveRst_3)) = '1' then
               rdDestAddrNib_D_t <= "0010";
            elsif goto_receiveRst_5='1' or goto_receiveRst_3='1' then
               rdDestAddrNib_D_t <= "0000";
            else
                 rdDestAddrNib_D_t <= "0001";
            end if;  
                        
                          
         
         when "0010" =>  
            if (RxBusFifoRdAck and (bcastAddrGood or ucastAddrGood) and 
                not(goto_receiveRst_5) and not(goto_receiveRst_3)) = '1' then
               rdDestAddrNib_D_t <= "0011";
            elsif goto_receiveRst_5='1' or goto_receiveRst_3='1' then
               rdDestAddrNib_D_t <= "0000";
            else
               rdDestAddrNib_D_t <= "0010";
            end if;
                          
         
         when "0011" =>  
            if (RxBusFifoRdAck and (bcastAddrGood or ucastAddrGood) and 
                not(goto_receiveRst_5) and not(goto_receiveRst_3)) = '1' then
               rdDestAddrNib_D_t <= "0100";
            elsif goto_receiveRst_5='1' or goto_receiveRst_3='1' then
               rdDestAddrNib_D_t <= "0000";
            else
               rdDestAddrNib_D_t <= "0011";
            end if;
                          
         
         when "0100" =>  
            if (RxBusFifoRdAck and (bcastAddrGood or ucastAddrGood) and 
                not(goto_receiveRst_5) and not(goto_receiveRst_3)) = '1' then
               rdDestAddrNib_D_t <= "0101";
            elsif goto_receiveRst_5='1' or goto_receiveRst_3='1' then
               rdDestAddrNib_D_t <= "0000";
            else
               rdDestAddrNib_D_t <= "0100";
            end if;
                          
         
         when "0101" =>  
            if (RxBusFifoRdAck and (bcastAddrGood or ucastAddrGood) and 
                not(goto_receiveRst_5) and not(goto_receiveRst_3)) = '1' then
               rdDestAddrNib_D_t <= "0110";
            elsif goto_receiveRst_5='1' or goto_receiveRst_3='1' then
               rdDestAddrNib_D_t <= "0000";
            else
               rdDestAddrNib_D_t <= "0101";
            end if;
                          
         
         when "0110" =>  
            if (RxBusFifoRdAck and (bcastAddrGood or ucastAddrGood) and 
                not(goto_receiveRst_5) and not(goto_receiveRst_3)) = '1' then
               rdDestAddrNib_D_t <= "0111";
            elsif goto_receiveRst_5='1' or goto_receiveRst_3='1' then
               rdDestAddrNib_D_t <= "0000";
            else
               rdDestAddrNib_D_t <= "0110";
            end if;
                          
         when "0111" =>  
            if (RxBusFifoRdAck and (bcastAddrGood or ucastAddrGood) and 
                not(goto_receiveRst_5) and not(goto_receiveRst_3)) = '1' then
               rdDestAddrNib_D_t <= "1000";
            elsif goto_receiveRst_5='1' or goto_receiveRst_3='1' then
               rdDestAddrNib_D_t <= "0000";
            else
               rdDestAddrNib_D_t <= "0111";
             end if;
                          
         when "1000" =>  
            if (RxBusFifoRdAck and (bcastAddrGood or ucastAddrGood) and 
                not(goto_receiveRst_5) and not(goto_receiveRst_3)) = '1' then
               rdDestAddrNib_D_t <= "1001";
            elsif goto_receiveRst_5='1' or goto_receiveRst_3='1' then
               rdDestAddrNib_D_t <= "0000";
            else
               rdDestAddrNib_D_t <= "1000";
            end if;
         
         when "1001" =>  
            if (RxBusFifoRdAck and (bcastAddrGood or ucastAddrGood) and 
                not(goto_receiveRst_5) and not(goto_receiveRst_3)) = '1' then
               rdDestAddrNib_D_t <= "1010";
            elsif goto_receiveRst_5='1' or goto_receiveRst_3='1' then
               rdDestAddrNib_D_t <= "0000";
            else
               rdDestAddrNib_D_t <= "1001";
            end if;
                          
         when "1010" =>  
            if (RxBusFifoRdAck and (bcastAddrGood or ucastAddrGood) and 
                not(goto_receiveRst_5) and not(goto_receiveRst_3)) = '1' then
               rdDestAddrNib_D_t <= "1011";
            elsif goto_receiveRst_5='1' or goto_receiveRst_3='1' then
               rdDestAddrNib_D_t <= "0000";
            else
               rdDestAddrNib_D_t <= "1010";
            end if;
                          
         when "1011" =>  
            if (RxBusFifoRdAck and (bcastAddrGood or ucastAddrGood) and 
                not(goto_receiveRst_5) and not(goto_receiveRst_3)) = '1' then
               rdDestAddrNib_D_t <= "1100";
            elsif goto_receiveRst_5='1' or goto_receiveRst_3='1' then
               rdDestAddrNib_D_t <= "0000";
            else
               rdDestAddrNib_D_t <= "1011";
            end if;
                          
         when "1100" =>  
            if (RxBusFifoRdAck and (bcastAddrGood or ucastAddrGood) and 
                not(goto_receiveRst_5) and not(goto_receiveRst_3)) = '1' then
               rdDestAddrNib_D_t <= "0000";
            elsif goto_receiveRst_5='1' or goto_receiveRst_3='1' then
               rdDestAddrNib_D_t <= "0000";
            else
               rdDestAddrNib_D_t <= "1100";
            end if;
         
         
         when others =>  null;
        end case;
    end process FSM_CMB_PROCESS;
   
    
   ----------------------------------------------------------------------------
   --startReadDataNib state
   ----------------------------------------------------------------------------      
   goto_startReadDataNib_2 <= rdDestAddrNib_eq_12 and RxBusFifoRdAck and
     (bcastAddrGood or ucastAddrGood) and not(goto_receiveRst_5) and 
     not(goto_receiveRst_3);
   
   stay_startReadDataNib <= startReadDataNib and not(goto_rxCollision_5) 
     and not(goto_receiveRst_9) and DataValid;
     
   startReadDataNib_D <= goto_startReadDataNib_2
     or stay_startReadDataNib;
   
   state17a: FDR
     port map (
       Q => startReadDataNib,    --[out]
       C => Clk,                 --[in]
       D => startReadDataNib_D,  --[in]
       R => state_machine_rst    --[in]
     );  
   ----------------------------------------------------------------------------
   --crcCheck state
   ----------------------------------------------------------------------------      
   goto_crcCheck <= startReadDataNib and not(DataValid) ;
   
   goto_receiveRst_1 <= sfd1CheckBusFifoEmpty and not(goto_rxCollision_1) 
                                              and RxError;
   
   goto_receiveRst_2 <= startReadDestAdrNib   and not(goto_rxCollision_2) 
                                              and RxError;
   
   goto_receiveRst_9 <= startReadDataNib      and not(goto_rxCollision_5) 
                                              and RxError;

   crcCheck_D <= goto_crcCheck or goto_receiveRst_1 or 
                                  goto_receiveRst_2 or 
                                  goto_receiveRst_9;
   
   state18a: FDR
     port map (
       Q => crcCheck,         --[out]
       C => Clk,              --[in]
       D => crcCheck_D,       --[in]
       R => state_machine_rst --[in]
     );  

   -------------------------------------------------------------------------------
   --rxDone state
   -------------------------------------------------------------------------------      
   --goto_rxDone_3 <= writeFinalData ;
   goto_rxDone_3 <= crcCheck and crcokr1;
     
   rxDone_D <= goto_rxDone_3 ;
   
   
   state20a: FDR
     port map (
       Q => rxDone,           --[out]
       C => Clk,              --[in]
       D => rxDone_D,         --[in]
       R => state_machine_rst --[in]
     );  
   ----------------------------------------------------------------------------
   --rxCollision state
   ----------------------------------------------------------------------------    
   full_half_n <= '1'when C_DUPLEX = 1 else
                  '0';
   goto_rxCollision_1 <= sfd1CheckBusFifoEmpty and Collision 
                                               and not(full_half_n);
   
   goto_rxCollision_2 <= startReadDestAdrNib   and Collision 
                                               and not(full_half_n);
   
   goto_rxCollision_5 <= startReadDataNib      and Collision 
                                               and not(full_half_n);
     
   rxCollision_D <= goto_rxCollision_1 or goto_rxCollision_2 or 
                    goto_rxCollision_5;
   
   state21a: FDR
     port map (
       Q => rxCollision,       --[out]
       C => Clk,               --[in]
       D => rxCollision_D,     --[in]
       R => state_machine_rst  --[in]
     );  
   ----------------------------------------------------------------------------
   --receiveRst state
   ----------------------------------------------------------------------------      
   goto_receiveRst_3 <= not rdDestAddrNib_eq_0 and not(DataValid);
   
   goto_receiveRst_5 <= not rdDestAddrNib_eq_0 and 
                        not(BusFifoEmpty)      and 
                        not(bcastAddrGood or ucastAddrGood);
   
   goto_receiveRst_10<= crcCheck and not(crcokr1);
   goto_receiveRst_14<= rxCollision;

     
   receiveRst_D <= goto_receiveRst_3  or
                   goto_receiveRst_5  or 
                   goto_receiveRst_10 or 
                   goto_receiveRst_14 or
                   preamble_error_reg;
   
   state22a: FDR
     port map (
       Q => receiveRst,        --[out]
       C => Clk,               --[in]
       D => receiveRst_D,      --[in]
       R => state_machine_rst  --[in]
     );  
   ----------------------------------------------------------------------------   
   -- end of states
   ----------------------------------------------------------------------------   
   

   ----------------------------------------------------------------------------
   -- BROADCAST_ADDR_REG
   ----------------------------------------------------------------------------
   -- This process generate control signals for the state machine.
   ----------------------------------------------------------------------------
   BROADCAST_ADDR_REG : process (Clk)
   begin  --
      if (Clk'event and Clk = '1') then     -- rising clock edge
         if (Rst = '1') then
            checkingBroadcastAdr_reg <= '0';
         else
            checkingBroadcastAdr_reg <= checkingBroadcastAdr_i;          
         end if;
      end if;
   end process BROADCAST_ADDR_REG;
   
   ----------------------------------------------------------------------------
   -- RX_FSMD_PROCESS
   ----------------------------------------------------------------------------
   -- This process generate control signals for the state machine.
   ----------------------------------------------------------------------------
   RX_FSMD_PROCESS : process( DataValid,RxBusFifoRdAck,idle, 
                              startReadDestAdrNib, startReadDataNib, 
                              sfd1CheckBusFifoEmpty, rxDone, receiveRst, 
                              waitForSfd2, Emac_rx_rd_data_d1, 
                              checkingBroadcastAdr_reg, rdDestAddrNib_eq_0,
                              rdDestAddrNib_D_t_q) 
   begin
   
      -- Reset RX CRC in idle state
      if (idle = '1') then
         RxCrcRst           <=  '1';
      else
         RxCrcRst           <=  '0';
      end if;
      
      
      -- RX CRC enable
      if ((( startReadDestAdrNib or (not rdDestAddrNib_eq_0) or 
           (startReadDataNib and DataValid)) 
           and RxBusFifoRdAck) = '1')   then
         RxCrcEn     <=   '1';
         rxCrcEn_i   <=   '1';
      else
         RxCrcEn     <=   '0';
         rxCrcEn_i   <=   '0';
      end if; 
      
      -- RX buffer FIFO read enable
      if ((idle = '1') or
          (sfd1CheckBusFifoEmpty = '1') or 
          (not rdDestAddrNib_eq_0 = '1') or
          (rxDone = '1') or   -- 03-26-04
          (startReadDestAdrNib = '1') or
          (startReadDataNib = '1')) and (RxBusFifoRdAck = '0')then
         BusFifoRd          <=   '1';
      else
         BusFifoRd          <=   '0';
      end if; 
      
      -- RX abort reset
      if (receiveRst = '1') then
         RxAbortRst <= '1';
      else
         RxAbortRst <= '0';
      end if;   

      
      -- RX buffer address enable
      if RxBusFifoRdAck = '1' and
         (
          (startReadDestAdrNib = '1') or  -- 03-26-04
          (not rdDestAddrNib_eq_0 = '1') or
          (startReadDataNib = '1')
         ) then
         Rx_addr_en <= '1'; --enable address increment
      else
         Rx_addr_en <= '0';
      end if; 
      
      -- Generate RX start after SFD is detected
      if (waitForSfd2 = '1')then
         Rx_start <= '1'; -- reset address to 0 for start of receive
      else
         Rx_start <= '0';
      end if;
      
      -- RX buffer chip enable
      if (idle = '1') or
         ((
           (startReadDestAdrNib = '1') or  -- 03-26-04
           (not rdDestAddrNib_eq_0 = '1') or
           (startReadDataNib = '1')
          ) and (RxBusFifoRdAck = '1')
         ) then
         Rx_DPM_ce <= '1';
      else
         Rx_DPM_ce <= '0';
      end if;
      
      -- RX buffer read/write enable
      if (startReadDestAdrNib = '1') or  -- 03-26-04
         (not rdDestAddrNib_eq_0 = '1') or
         (startReadDataNib = '1') then
         Rx_DPM_wr_rd_n <= '1';   
      else   
         Rx_DPM_wr_rd_n <= '0';
      end if;
      
      -- RX buffer chip enable
      if (idle = '1') then
         checkingBroadcastAdr_i <= '0';  -- reset
      -- 06-09-04 Use delayed data for compare
      elsif (rdDestAddrNib_D_t_q = x"1" and 
             Emac_rx_rd_data_d1(0 to 3) = x"f") then   
         checkingBroadcastAdr_i <= '1'; -- set
      else
         checkingBroadcastAdr_i <= checkingBroadcastAdr_reg; -- stay the same
      end if;   
   
   end process RX_FSMD_PROCESS;
   
   -- write data to Receive DPRAM
   Rx_DPM_wr_data  <= BusFifoData;
   
   ----------------------------------------------------------------------------
   -- MARAR_PROC
   ----------------------------------------------------------------------------
   -- This process generate MAC RAM address to get mac addres to compare with
   -- incoming frame destination address
   ----------------------------------------------------------------------------
   MARAR_PROC : process (rdDestAddrNib_D_t, idle_D, startReadDestAdrNib_D)
   begin
      case rdDestAddrNib_D_t is
         when "0001" => mac_addr_ram_addr_rd_D <= x"0";
         when "0010" => mac_addr_ram_addr_rd_D <= x"1";
         when "0011" => mac_addr_ram_addr_rd_D <= x"2";
         when "0100" => mac_addr_ram_addr_rd_D <= x"3";
         when "0101" => mac_addr_ram_addr_rd_D <= x"4";
         when "0110" => mac_addr_ram_addr_rd_D <= x"5";
         when "0111" => mac_addr_ram_addr_rd_D <= x"6";
         when "1000" => mac_addr_ram_addr_rd_D <= x"7";
         when "1001" => mac_addr_ram_addr_rd_D <= x"8";
         when "1010" => mac_addr_ram_addr_rd_D <= x"9";
         when "1011" => mac_addr_ram_addr_rd_D <= x"a";
         when "1100" => mac_addr_ram_addr_rd_D <= x"b";
         when others => mac_addr_ram_addr_rd_D <= x"0";
      end case;
      
      -- Reset the address in idle or start of new frame
      if (idle_D or startReadDestAdrNib_D) = '1' then
         mac_addr_ram_addr_rd_D <= x"0";
      end if;
   end process MARAR_PROC;
   
   ----------------------------------------------------------------------------
   -- OUTPUT_REG
   ----------------------------------------------------------------------------
   -- Registerit the mac_addr_ram_addr_rd
   ----------------------------------------------------------------------------
   OUTPUT_REG:process (Clk)
   begin
      if Clk'event and Clk = '1' then
         if Rst = '1' then
            Mac_addr_ram_addr_rd <= (others => '0');
         else
            Mac_addr_ram_addr_rd <= mac_addr_ram_addr_rd_D;
         end if;
      end if;
   end process OUTPUT_REG;
   
   ----------------------------------------------------------------------------
   -- Check if the incoming packet is broadcast packet
   ----------------------------------------------------------------------------
   bcastAddrGood <= '1' when checkingBroadcastAdr_i = '1' and 
                             Emac_rx_rd_data_d1(0 to 3) = x"F" else -- 03-26-04
                    '0';   
   
   ----------------------------------------------------------------------------
   -- Check if the incoming packet is unicast and address matches to core 
   -- MAC address
   ----------------------------------------------------------------------------
   ucastAddrGood <= '1' when checkingBroadcastAdr_i = '0' and 
                            (Emac_rx_rd_data_d1(0 to 3) = Mac_addr_ram_data) 
                                                              else  -- 03-26-04
                    '0';    
                    
   -- Genarate Receive enable
   Receive_enable <= not(crcCheck or rxDone or receiveRst); 
   
   
   ----------------------------------------------------------------------------
   -- PROCESS : PKT_LENGTH_COUNTER 
   ----------------------------------------------------------------------------
   -- This counter is used to check if the receive packet length is greater 
   -- minimum packet length (64 byte - 128 nibble)
   ----------------------------------------------------------------------------
   PKT_LENGTH_COUNTER : process(Clk)
   begin
      if (Clk'event and Clk = '1') then
         if (Rst = '1' or preamble_error_reg = '1' ) then
            pkt_length_cnt <= 0;
         elsif goto_readDestAdrNib1 = '1' then  -- load the counter for 
            pkt_length_cnt <= 127;              -- minimum packet length
         elsif (rxCrcEn_i='1') then             -- Enable Down Counter   
            if (pkt_length_cnt = 0) then  
               pkt_length_cnt <= 0;
            else
               pkt_length_cnt <= pkt_length_cnt - 1;
            end if;
         end if;
      end if;
   end process;


   ----------------------------------------------------------------------------
   -- PROCESS : SFD_CHECK_REG 
   ----------------------------------------------------------------------------
   -- This process registers the preamble nibble to checl if atleast last 2 
   -- preamble nibbles are valid before the SFD nibble. 
   ----------------------------------------------------------------------------
   SFD_CHECK_REG : process(Clk)
   begin
      if (Clk'event and Clk = '1') then
         if (Rst = '1' ) then
            busFifoData_is_5_d1 <= '0';
            busFifoData_is_5_d2 <= '0';
            busFifoData_is_5_d3 <= '0';
         elsif RxBusFifoRdAck = '1' then  
            busFifoData_is_5_d1 <= busFifoData_is_5;
            busFifoData_is_5_d2 <= busFifoData_is_5_d1;
            busFifoData_is_5_d3 <= busFifoData_is_5_d2;
         end if;
      end if;
   end process;
   

   preamble: FDR
     port map (
       Q => preamble_error_reg, --[out]
       C => Clk,                --[in]
       D => preamble_error,     --[in]
       R => state_machine_rst   --[in]
     );  

   -- Premable valid
   preamble_valid <= (busFifoData_is_5_d1)  and 
                      busFifoData_is_13; 

   -- Premable Error 
   preamble_error <=  (not busFifoData_is_5    and 
                           busFifoData_is_5_d1 and 
                       not busFifoData_is_13) and waitForSfd2 ; 

end imp;
