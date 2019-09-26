-------------------------------------------------------------------------------
-- crcgenrx - entity/architecture pair
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
-- Filename    : crcgenrx.vhd
-- Version     : v4.00.a
-- Description : This module does an 4-bit parallel CRC generation. 
--               The polynomial is that specified for IEEE 802.3 (ethernet)
--               LANs and other standards.
--
--               I. Functionality:
--               1. The module does an 4-bit parallel CRC generation.  
--               2. The module provides a synchronous 4-bit per clock load and
--                  unload function.
--               3. The polynomial is that specified for 802.3 LANs and other
--                  standards.
--                  The polynomial computed is:
--                  G(x)=X**32+X**26+X**23+X**22+X**16+X**12+X**11+X**10+X**8
--                       +X**7+X**5+X**4+X** >2+X+1
-- 
--              II. Module I/O
--              Inputs: Clk, CLKEN, Rst, LOAD, COMPUTE, DATA_IN[3:0]
--              outputs: CRC_OK, DATA_OUT[3:0], CRC[31:0]
--
--              III.Truth Table:        
-- 
--              CLKEN  Rst  COMPUTE   LOAD   | DATA_OUT 
--              ------------------------------------------ 
--               0      X      X        X      | No change
--               1      0      0        0      | No change
--               1      1      X        X      | 0xFFFF (all ones) 
--               1      0      X        1      | load and shift 1 nibble of crc
--               1      0      1        0      | Compute CRC
--
--               0      0      1        1      | unload 4 byte crc 
--                                               NOT IMPLEMENTED)
-- 
--              Loading and unloading of the 32-bit CRC register is done one
--              nibble at a time by asserting LOAD and CLKEN.  The Data on
--              data_in is shifted into the the LSB of the CRC register. The
--              MSB of the CRC register is available on data_out. 
--
--              Signals ending in _n are active low.
--
-- Copyright 1997 VAutomation Inc. Nashua NH USA (603) 882-2282.
-- Modification for 4 Bit done by Ronald Hecht @ Xilinx Inc.
-- This software is provided AS-IS and free of charge with the restriction that
-- this copyright notice remain in all copies of the Source Code at all times.
-- Visit HTTP://www.vautomation.com for more information on our cores.
-------------------------------------------------------------------------------
-- We remove the 32 bits register which restore the crc value in the old code.
-- For receive part we only need to know the crc is ok or not, so remove the 
-- register for restoring crc value will save some resources.
--
-- THE INTERFACE REQUIREMENTS OF THIS MODULE
--
-- Rst        reset everything to initial value. We must give this reset 
--              before we use crc module, otherwise the result will incorrect.
-- Clk      For use with mactx module, it will be 2.5 MHZ.
-- Data         Input Data from other module in nibbles.
-- DataEn       Enable crcgenrx. Make sure your enable and first Data can be 
--              captured at the beginning of Data stream. 
-- CrcOk        At the end of Data stream, this will go high if the crc is 
--              correct.
--
-- VHDL-Standard:  VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--
--  axi_ethernetlite.vhd
--      \
--      \-- xemac.vhd
--           \
--           \-- axi_ipif_interface.vhd
--           \-- mdio_if.vhd
--           \-- emac_dpram.vhd                     
--           \    \                     
--           \    \-- RAMB16_S4_S36
--           \                          
--           \    
--           \-- emac.vhd                     
--                \                     
--                \                     
--                \-- receive.vhd
--                \      rx_statemachine.vhd
--                \      rx_intrfce.vhd
--                \         ethernetlite_v3_0_dmem_v2.edn
--                \      crcgenrx.vhd
--                \                     
--                \-- transmit.vhd
--                       crcgentx.vhd
--                          crcnibshiftreg
--                       tx_intrfce.vhd
--                          ethernetlite_v3_0_dmem_v2.edn
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
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------
-- axi_ethernetlite_v3_0 library is used for axi_ethernetlite_v3_0 
-- component declarations
-------------------------------------------------------------------------------
library axi_ethernetlite_v3_0;
use axi_ethernetlite_v3_0.mac_pkg.all;

-------------------------------------------------------------------------------
-- Definition of Ports:
--
--  Clk      -- System Clock
--  Rst      -- System Reset
--  Data     -- Data in 
--  DataEn   -- Data enable
--  CrcOk    -- CRC valid
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity crcgenrx is

    port 
         (
          Clk     : in std_logic;
          Rst     : in std_logic;
          Data    : in std_logic_vector(3 downto 0);
          DataEn  : in std_logic;
          CrcOk   : out std_logic
          );

end crcgenrx;

architecture arch1 of crcgenrx is 

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of arch1 : architecture is "yes";

    constant CRC_REMAINDER         : std_logic_vector(31 downto 0) :=
                                      "11000111000001001101110101111011";
                                       -- 0xC704DD7B

    signal crc_local               : std_logic_vector(31 downto 0);  -- local version
    signal data_transpose          : std_logic_vector(3 downto 0);

    function parallel_crc (crc_in  : std_logic_vector(31 downto 0);
                         data_in   : std_logic_vector(3 downto 0)
                         ) return std_logic_vector is
    variable c, crc_out            : std_logic_vector(31 downto 0);
    variable x                     : std_logic_vector (31 downto 28);
    variable d                     : std_logic_vector (3 downto 0);
  begin
-- Because the equations are long I am keeping the name of the incoming
-- CRC and the XOR vector short.

    c := crc_in;
    d := data_in;

-- the first thing that a parallel CRC needs to do is to develop the
-- vector formed by XORing the input vector by the current CRC. This
-- vector is then used during the CRC calculation.

    x := (c(31) xor d(3)) & (c(30) xor d(2)) &
         (c(29) xor d(1)) & (c(28) xor d(0));

-- The parellel CRC is a function of the X vector and the current CRC.
    crc_out :=
      (c(27) ) &
      (c(26) ) &
      (c(25) xor x(31) ) &
      (c(24) xor x(30) ) &
      (c(23) xor x(29) ) &
      (c(22) xor x(31) xor x(28) ) &
      (c(21) xor x(31) xor x(30) ) &
      (c(20) xor x(30) xor x(29) ) &
      (c(19) xor x(29) xor x(28) ) &
      (c(18) xor x(28) ) &
      (c(17) ) &
      (c(16) ) &
      (c(15) xor x(31) ) &
      (c(14) xor x(30) ) &
      (c(13) xor x(29) ) &
      (c(12) xor x(28) ) &
      (c(11) xor x(31) ) &
      (c(10) xor x(31) xor x(30) ) &
      (c(9 ) xor x(31) xor x(30) xor x(29) ) &
      (c(8 ) xor x(30) xor x(29) xor x(28) ) &
      (c(7 ) xor x(31) xor x(29) xor x(28) ) &
      (c(6 ) xor x(31) xor x(30) xor x(28) ) &
      (c(5 ) xor x(30) xor x(29) ) &
      (c(4 ) xor x(31) xor x(29) xor x(28) ) &
      (c(3 ) xor x(31) xor x(30) xor x(28) ) &
      (c(2 ) xor x(30) xor x(29) ) &
      (c(1 ) xor x(31) xor x(29) xor x(28) ) &
      (c(0 ) xor x(31) xor x(30) xor x(28) ) &
      ( x(31) xor x(30) xor x(29) ) &
      ( x(30) xor x(29) xor x(28) ) &
      ( x(29) xor x(28) ) &
      ( x(28) );


    return(crc_out);

  end parallel_crc;

begin  ------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Xilinx modification, use asynchronous clear
-------------------------------------------------------------------------------
  data_transpose <= Data(0) & Data(1) & Data(2) & Data(3); 
                    -- Reverse the bit order

  -- Create the 32 Flip flops (with clock enable flops)
  CRC_REG : process(Clk)    
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
         crc_local   <= (others=>'1');
        elsif  DataEn = '1' then
         crc_local <= parallel_crc(crc_local, data_transpose);
      end if;
    end if;
  end process CRC_REG;

-------------------------------------------------------------------------------
-- Xilinx modification, remove reset from mux
-------------------------------------------------------------------------------

  CrcOk <= '1' when crc_local = CRC_REMAINDER else '0';
                                        -- This is a 32-bit wide AND
                                        -- function, so proper
                                        -- attention should be paid
                                        -- when synthesizing to
                                        -- achieve good results.  If
                                        -- there are cycles available
                                        -- pipeling this gate would be
                                        -- appropriate.

end arch1;
