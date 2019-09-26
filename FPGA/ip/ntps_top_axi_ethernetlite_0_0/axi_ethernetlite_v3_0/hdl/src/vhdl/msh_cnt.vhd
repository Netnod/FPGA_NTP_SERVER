-------------------------------------------------------------------------------
-- msh_cnt - entity/architecture pair
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
-- Filename     : msh_cnt.vhd
-- Version      : v2.0
-- Description  : A register that can be loaded and added to or subtracted from
--                (but not both). The width of the register is specified
--                with a generic. The load value and the arith
--                value, i.e. the value to be added (subtracted), may be of
--                lesser width than the register and may be
--                offset from the LSB position. (Uncovered positions
--                load or add (subtract) zero.) The register can be
--                reset, via the Rst signal, to a freely selectable value.
--                The register is defined in terms of big-endian bit ordering.
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------
-- Vcomponents from unisim library is used for FIFO instatiation
-- function declarations
-------------------------------------------------------------------------------
library unisim;
use unisim.Vcomponents.all;


-------------------------------------------------------------------------------
-- Definition of Generics:
-------------------------------------------------------------------------------
-- C_ADD_SUB_NOT    -- 1 = Arith Add, 0 = Arith Substract
-- C_REG_WIDTH      -- Width of data
-- C_RESET_VALUE    -- Default value for the operation. Must be specified.
-------------------------------------------------------------------------------
-- Port Declaration
-------------------------------------------------------------------------------
-- Definition of Ports:
--
--  Clk             -- System Clock
--  Rst             -- System Reset
--  Q               -- Counter data out
--  Z               -- Indicates '0' when decrementing
--  LD              -- Counter load data
--  AD              -- Counter load arithmatic data
--  LOAD            -- Counter load enable
--  OP              -- Counter arith operation enable
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity msh_cnt is
    generic 
        (
        -----------------------------------------------------------------------
        -- True if the arithmetic operation is add, false if subtract.
        C_ADD_SUB_NOT : boolean := false;
        -----------------------------------------------------------------------
        -- Width of the register.
        C_REG_WIDTH   : natural := 8;
        -----------------------------------------------------------------------
        -- Reset value. (No default, must be specified in the instantiation.)
        C_RESET_VALUE : std_logic_vector
        -----------------------------------------------------------------------
        );
    port 
       (
        Clk    : in  std_logic;
        Rst    : in  std_logic; -- Reset to C_RESET_VALUE. (Overrides OP,LOAD)
        Q      : out std_logic_vector(0 to C_REG_WIDTH-1);
        Z      : out std_logic; -- indicates 0 when decrementing
        LD     : in  std_logic_vector(0 to C_REG_WIDTH-1); -- Load data.
        AD     : in  std_logic_vector(0 to C_REG_WIDTH-1); -- Arith data.
        LOAD   : in  std_logic;  -- Enable for the load op, Q <= LD.
        OP     : in  std_logic   -- Enable for the arith op, Q <= Q + AD.
                                   -- (Q <= Q - AD if C_ADD_SUB_NOT = false.)
                                   -- (Overrrides LOAD.)
        );
end msh_cnt;


architecture imp of msh_cnt is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";

-------------------------------------------------------------------------------
-- Component Declarations
-------------------------------------------------------------------------------
    component MULT_AND
       port
         (
          LO :  out   std_ulogic;
          I1 :  in    std_ulogic;
          I0 :  in    std_ulogic
          );
    end component;

    component MUXCY_L is
      port 
        (
        DI : in  std_logic;
        CI : in  std_logic;
        S  : in  std_logic;
        LO : out std_logic
        );
    end component MUXCY_L;

    component XORCY is
      port 
       (
        LI : in  std_logic;
        CI : in  std_logic;
        O  : out std_logic
        );
    end component XORCY;

    component FDRE is
      port 
       (
        Q  : out std_logic;
        C  : in  std_logic;
        CE : in  std_logic;
        D  : in  std_logic;
        R  : in  std_logic
       );
    end component FDRE;
  
    component FDSE is
      port 
       (
        Q  : out std_logic;
        C  : in  std_logic;
        CE : in  std_logic;
        D  : in  std_logic;
        S  : in  std_logic
       );
    end component FDSE;
  
    signal q_i            : std_logic_vector(0 to C_REG_WIDTH-1);
    signal q_i_ns         : std_logic_vector(0 to C_REG_WIDTH-1);
    signal xorcy_out      : std_logic_vector(0 to C_REG_WIDTH-1);
    signal gen_cry_kill_n : std_logic_vector(0 to C_REG_WIDTH-1);
    signal cry            : std_logic_vector(0 to C_REG_WIDTH);
    signal z_i            : std_logic;

begin

    Q <= q_i;

    cry(C_REG_WIDTH) <= '0' when C_ADD_SUB_NOT else OP;

    PERBIT_GEN: for j in C_REG_WIDTH-1 downto 0 generate
        signal load_bit, arith_bit, ClkEn : std_logic;
    begin

        -----------------------------------------------------------------------
        -- Assign to load_bit the bit from input port LD.
        -----------------------------------------------------------------------
           load_bit <= LD(j);
        -----------------------------------------------------------------------
        -- Assign to arith_bit the bit from input port AD.
        -----------------------------------------------------------------------
            arith_bit <= AD(j);
        -----------------------------------------------------------------------
        -- LUT output generation.
        -- Adder case
        -----------------------------------------------------------------------
        Q_I_GEN_ADD: if C_ADD_SUB_NOT generate
            q_i_ns(j) <= q_i(j) xor  arith_bit when  OP = '1' else load_bit;
        end generate;
        -----------------------------------------------------------------------
        -- Subtractor case
        -----------------------------------------------------------------------
        Q_I_GEN_SUB: if not C_ADD_SUB_NOT generate
            q_i_ns(j) <= q_i(j) xnor arith_bit when  OP = '1' else load_bit;
        end generate;

        -----------------------------------------------------------------------
        -- Kill carries (borrows) for loads but
        -- generate or kill carries (borrows) for add (sub).
        -----------------------------------------------------------------------
        MULT_AND_i1: MULT_AND
           port map 
             (
              LO => gen_cry_kill_n(j),
              I1 => OP,
              I0 => Q_i(j)
             );

        -----------------------------------------------------------------------
        -- Propagate the carry (borrow) out.
        -----------------------------------------------------------------------
        MUXCY_L_i1: MUXCY_L
          port map 
           (
            DI => gen_cry_kill_n(j),
            CI => cry(j+1),
            S  => q_i_ns(j),
            LO => cry(j)
           );

        -----------------------------------------------------------------------
        -- Apply the effect of carry (borrow) in.
        -----------------------------------------------------------------------
        XORCY_i1: XORCY
          port map 
            (
            LI => q_i_ns(j),
            CI => cry(j+1),
            O  =>  xorcy_out(j)
            );

        STOP_AT_0_SUB: if not C_ADD_SUB_NOT generate
          ClkEn <= (LOAD or OP) when (not (conv_integer(q_i) = 0)) else '0';
        end generate STOP_AT_0_SUB;
        
        STOP_AT_MSB_ADD : if C_ADD_SUB_NOT generate
          ClkEn <= LOAD or OP;
        end generate STOP_AT_MSB_ADD;
        
        -----------------------------------------------------------------------
        -- Generate either a resettable or setable FF for bit j, depending
        -- on C_RESET_VALUE at bit j.
        -----------------------------------------------------------------------
        FF_RST0_GEN: if C_RESET_VALUE(j) = '0' generate
            FDRE_i1: FDRE
              port map 
                (
                Q  => q_i(j),
                C  => Clk,
                CE => ClkEn,
                D  => xorcy_out(j),
                R  => Rst
                );
        end generate;

        FF_RST1_GEN: if C_RESET_VALUE(j) = '1' generate
            FDSE_i1: FDSE
              port map 
               (
                Q  => q_i(j),
                C  => Clk,
                CE => ClkEn,
                D  => xorcy_out(j),
                S  => Rst
               );
        end generate;

      end generate;
      
      z_i <= '1' when ((conv_integer(q_i) = 1)) else '0';

      z_ff: FDSE
        port map 
         (
          Q  => Z,
          C  => Clk,
          CE => '1',
          D  => z_i,
          S  => Rst
          );

end imp;
