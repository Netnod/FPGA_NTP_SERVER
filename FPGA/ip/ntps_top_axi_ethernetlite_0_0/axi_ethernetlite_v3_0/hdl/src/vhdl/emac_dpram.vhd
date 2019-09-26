-------------------------------------------------------------------------------
-- emac_dpram.vhd  - entity/architecture pair
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
-- Filename     : emac_dpram.vhd
-- Version      : v2.0
-- Description  : Realization of dprams   
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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-------------------------------------------------------------------------------
-- axi_ethernetlite_v3_0 library is used for axi_ethernetlite_v3_0 
-- component declarations
-------------------------------------------------------------------------------
library axi_ethernetlite_v3_0;
use axi_ethernetlite_v3_0.mac_pkg.all;

-------------------------------------------------------------------------------
library lib_bmg_v1_0;
use lib_bmg_v1_0.all;

-------------------------------------------------------------------------------
-- Vcomponents from unisim library is used for FIFO instatiation
-- function declarations
-------------------------------------------------------------------------------
library unisim;
use unisim.Vcomponents.all;  -- uses BRAM primitives 

-------------------------------------------------------------------------------
-- Definition of Generics:
-------------------------------------------------------------------------------
-- C_FAMILY             -- Target device family 
-------------------------------------------------------------------------------
-- Definition of Ports:
--
--  Clk                 -- System Clock
--  Rst                 -- System Reset
--  Ce_a                -- Port A enable
--  Wr_rd_n_a           -- Port A write/read enable
--  Adr_a               -- Port A address
--  Data_in_a           -- Port A data in
--  Data_out_a          -- Port A data out
--  Ce_b                -- Port B enable
--  Wr_rd_n_b           -- Port B write/read enable
--  Adr_b               -- Port B address
--  Data_in_b           -- Port B data in
--  Data_out_b          -- Port B data out
-------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------
entity emac_dpram is
  generic 
   (
    C_FAMILY : string := "virtex6" 
    );
  port 
    (   
    Clk        : in  std_logic;
    Rst        : in  std_logic;
    -- a Port signals
    Ce_a       : in  std_logic;
    Wr_rd_n_a  : in  std_logic;
    Adr_a      : in  std_logic_vector(11 downto 0);
    Data_in_a  : in  std_logic_vector(3 downto 0);
    Data_out_a : out std_logic_vector(3 downto 0);
    
    -- b Port Signals
    Ce_b       : in  std_logic;
    Wr_rd_n_b  : in  std_logic;
    Adr_b      : in  std_logic_vector(8 downto 0);
    Data_in_b  : in  std_logic_vector(31 downto 0);
    Data_out_b : out std_logic_vector(31 downto 0)
    );
end entity emac_dpram;

                
architecture imp of emac_dpram is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";

--    component RAMB16_S4_S36
---- pragma translate_off
--      generic
--      (
--        WRITE_MODE_A : string := "READ_FIRST"; 
--      --WRITE_FIRST(default)/ READ_FIRST/ NO_CHANGE
--        WRITE_MODE_B : string := "READ_FIRST" 
--      --WRITE_FIRST(default)/ READ_FIRST/ NO_CHANGE
--      );
---- pragma translate_on
--      port (
--        DOA   : out std_logic_vector (3 downto 0);
--        DOB   : out std_logic_vector (31 downto 0);
--        DOPB  : out std_logic_vector (3 downto 0);
--        ADDRA : in std_logic_vector (11 downto 0);
--        CLKA  : in std_logic;
--        DIA   : in std_logic_vector (3 downto 0);
--        ENA   : in std_logic;
--        SSRA  : in std_logic;
--        WEA   : in std_logic;
--        ADDRB : in std_logic_vector (8 downto 0);
--        CLKB  : in std_logic;
--        DIB   : in std_logic_vector (31 downto 0);
--        DIPB  : in std_logic_vector (3 downto 0);
--        ENB   : in std_logic;
--        SSRB  : in std_logic;
--        WEB   : in std_logic
--      );
--    end component;
    
--constant create_v2_mem  : boolean   := supported(C_FAMILY, u_RAMB16_S4_S36);  

-------------------------------------------------------------------------------
--  Signal and Type Declarations
-------------------------------------------------------------------------------

signal ce_a_i          : std_logic; 
signal ce_b_i          : std_logic; 
--signal wr_rd_n_a_i     : std_logic; 
signal wr_rd_n_a_i     : std_logic_vector(0 downto 0); 
--signal wr_rd_n_b_i     : std_logic; 
signal wr_rd_n_b_i     : std_logic_vector(0 downto 0); 

signal port_b_data_in  : STD_LOGIC_VECTOR (31 downto 0);
signal port_b_data_out : STD_LOGIC_VECTOR (31 downto 0);        

--attribute WRITE_MODE_A : string;
--attribute WRITE_MODE_A of I_DPB16_4_9: label is "READ_FIRST";
--attribute WRITE_MODE_B : string;
--attribute WRITE_MODE_B of I_DPB16_4_9: label is "READ_FIRST"; 
    
    
  
begin  -- architecture

  ce_a_i <= Ce_a or Rst; 
  ce_b_i <= Ce_b or Rst; 
  wr_rd_n_a_i(0) <= Wr_rd_n_a and not(Rst); 
  wr_rd_n_b_i(0) <= Wr_rd_n_b and not(Rst); 

-------------------------------------------------------------------------------
-- Using VII 4096 x 4 : 2048 x 8 Dual Port Primitive
-------------------------------------------------------------------------------
 --     port_b_data_in(31) <= Data_in_b(0);
 --     port_b_data_in(30) <= Data_in_b(1);
 --     port_b_data_in(29) <= Data_in_b(2);
 --     port_b_data_in(28) <= Data_in_b(3);
 --     port_b_data_in(27) <= Data_in_b(4);
 --     port_b_data_in(26) <= Data_in_b(5);
 --     port_b_data_in(25) <= Data_in_b(6);
 --     port_b_data_in(24) <= Data_in_b(7);
 --     port_b_data_in(23) <= Data_in_b(8);
 --     port_b_data_in(22) <= Data_in_b(9);
 --     port_b_data_in(21) <= Data_in_b(10);
 --     port_b_data_in(20) <= Data_in_b(11);
 --     port_b_data_in(19) <= Data_in_b(12);
 --     port_b_data_in(18) <= Data_in_b(13);
 --     port_b_data_in(17) <= Data_in_b(14);
 --     port_b_data_in(16) <= Data_in_b(15);
 --     port_b_data_in(15) <= Data_in_b(16);
 --     port_b_data_in(14) <= Data_in_b(17);
 --     port_b_data_in(13) <= Data_in_b(18);
 --     port_b_data_in(12) <= Data_in_b(19);
 --     port_b_data_in(11) <= Data_in_b(20);
 --     port_b_data_in(10) <= Data_in_b(21);
 --     port_b_data_in(9)  <= Data_in_b(22);
 --     port_b_data_in(8)  <= Data_in_b(23);
 --     port_b_data_in(7)  <= Data_in_b(24);
 --     port_b_data_in(6)  <= Data_in_b(25);
 --     port_b_data_in(5)  <= Data_in_b(26);
 --     port_b_data_in(4)  <= Data_in_b(27);
 --     port_b_data_in(3)  <= Data_in_b(28);
 --     port_b_data_in(2)  <= Data_in_b(29);
 --     port_b_data_in(1)  <= Data_in_b(30);
 --     port_b_data_in(0)  <= Data_in_b(31);
 --
 --     Data_out_b(31) <= port_b_data_out(0);
 --     Data_out_b(30) <= port_b_data_out(1);
 --     Data_out_b(29) <= port_b_data_out(2);
 --     Data_out_b(28) <= port_b_data_out(3);
 --     Data_out_b(27) <= port_b_data_out(4);
 --     Data_out_b(26) <= port_b_data_out(5);
 --     Data_out_b(25) <= port_b_data_out(6);
 --     Data_out_b(24) <= port_b_data_out(7);  
 --     Data_out_b(23) <= port_b_data_out(8);
 --     Data_out_b(22) <= port_b_data_out(9);
 --     Data_out_b(21) <= port_b_data_out(10);
 --     Data_out_b(20) <= port_b_data_out(11);
 --     Data_out_b(19) <= port_b_data_out(12);
 --     Data_out_b(18) <= port_b_data_out(13);
 --     Data_out_b(17) <= port_b_data_out(14);
 --     Data_out_b(16) <= port_b_data_out(15);  
 --     Data_out_b(15) <= port_b_data_out(16);
 --     Data_out_b(14) <= port_b_data_out(17);
 --     Data_out_b(13) <= port_b_data_out(18);
 --     Data_out_b(12) <= port_b_data_out(19);
 --     Data_out_b(11) <= port_b_data_out(20);
 --     Data_out_b(10) <= port_b_data_out(21);
 --     Data_out_b(9)  <= port_b_data_out(22);
 --     Data_out_b(8)  <= port_b_data_out(23);  
 --     Data_out_b(7)  <= port_b_data_out(24);
 --     Data_out_b(6)  <= port_b_data_out(25);
 --     Data_out_b(5)  <= port_b_data_out(26);
 --     Data_out_b(4)  <= port_b_data_out(27);
 --     Data_out_b(3)  <= port_b_data_out(28);
 --     Data_out_b(2)  <= port_b_data_out(29);
 --     Data_out_b(1)  <= port_b_data_out(30);
 --     Data_out_b(0)  <= port_b_data_out(31);  
 --
 --
 --     I_DPB16_4_9: RAMB16_S4_S36
 --       port map (
 --         DOA   => Data_out_a,      --[out]
 --         DOB   => port_b_data_out, --[out]
 --         DOPB  => open,            --[out]
 --         ADDRA => Adr_a,           --[in]
 --         CLKA  => Clk,             --[in]
 --         DIA   => Data_in_a,       --[in]
 --         ENA   => ce_a_i,          --[in]
 --         SSRA  => Rst,             --[in]
 --         WEA   => wr_rd_n_a_i,     --[in]
 --         ADDRB => Adr_b,           --[in]
 --         CLKB  => Clk,             --[in]
 --         DIB   => port_b_data_in,  --[in]
 --         DIPB  => (others => '0'), --[in]
 --         ENB   => ce_b_i,          --[in]
 --         SSRB  => Rst,             --[in]
 --         WEB   => wr_rd_n_b_i      --[in]
 --       );
 --
      
--      I_DPB16_4_9: RAMB16_S4_S36
--        port map (
--          DOA   => Data_out_a,      --[out]
--          DOB   => Data_out_b,      --[out]
--          DOPB  => open,            --[out]
--          ADDRA => Adr_a,           --[in]
--          CLKA  => Clk,             --[in]
--          DIA   => Data_in_a,       --[in]
--          ENA   => ce_a_i,          --[in]
--          SSRA  => Rst,             --[in]
--          WEA   => wr_rd_n_a_i,     --[in]
--          ADDRB => Adr_b,           --[in]
--          CLKB  => Clk,             --[in]
--          DIB   => Data_in_b,       --[in]
--          DIPB  => (others => '0'), --[in]
--          ENB   => ce_b_i,          --[in]
--          SSRB  => Rst,             --[in]
--          WEB   => wr_rd_n_b_i      --[in]
--        );

dpram_blkmem: entity lib_bmg_v1_0.blk_mem_gen_wrapper
   generic map (
      c_family                 => C_FAMILY,
      c_xdevicefamily          => C_FAMILY,
      c_mem_type               => 2,
      c_algorithm              => 1,
      c_prim_type              => 1,
      c_byte_size              => 8,   -- 8 or 9
      c_sim_collision_check    => "NONE",
      c_common_clk             => 1,   -- 0, 1
      c_disable_warn_bhv_coll  => 1,   -- 0, 1
      c_disable_warn_bhv_range => 1,   -- 0, 1
      c_load_init_file         => 0,
      c_init_file_name         => "no_coe_file_loaded",
      c_use_default_data       => 0,   -- 0, 1
      c_default_data           => "0", -- "..."
      -- Port A Specific Configurations
      c_has_mem_output_regs_a  => 0,   -- 0, 1
      c_has_mux_output_regs_a  => 0,   -- 0, 1
      c_write_width_a          => 4,   -- 1 to 1152
      c_read_width_a           => 4,   -- 1 to 1152
      c_write_depth_a          => 4096,  -- 2 to 9011200
      c_read_depth_a           => 4096,  -- 2 to 9011200
      c_addra_width            => 12,    -- 1 to 24
      c_write_mode_a           => "READ_FIRST",
      c_has_ena                => 1,   -- 0, 1
      c_has_regcea             => 1,   -- 0, 1
      c_has_ssra               => 0,   -- 0, 1
      c_sinita_val             => "0", --"..."
      c_use_byte_wea           => 0,   -- 0, 1
      c_wea_width              => 1,   -- 1 to 128
      -- Port B Specific Configurations
      c_has_mem_output_regs_b  => 0,   -- 0, 1
      c_has_mux_output_regs_b  => 0,   -- 0, 1
      c_write_width_b          => 32,  -- 1 to 1152
      c_read_width_b           => 32,  -- 1 to 1152
      c_write_depth_b          => 512,  -- 2 to 9011200
      c_read_depth_b           => 512,  -- 2 to 9011200
      c_addrb_width            => 9,    -- 1 to 24
      c_write_mode_b           => "READ_FIRST",
      c_has_enb                => 1,   -- 0, 1
      c_has_regceb             => 1,   -- 0, 1
      c_has_ssrb               => 0,   -- 0, 1
      c_sinitb_val             => "0", -- "..."
      c_use_byte_web           => 0,   -- 0, 1
      c_web_width              => 1,   -- 1 to 128
      -- Other Miscellaneous Configurations
      c_mux_pipeline_stages    => 0,   -- 0, 1, 2, 3
      c_use_ecc                => 0,
      c_use_ramb16bwer_rst_bhv => 0--,   --0, 1
      )
   port map (
      clka    => Clk,
      ssra    => '0',
      dina    => Data_in_a,
      addra   => Adr_a,
      ena     => ce_a_i,
      regcea  => '1',
      wea     => wr_rd_n_a_i,
      douta   => Data_out_a,

      clkb    => Clk,
      ssrb    => '0',
      dinb    => Data_in_b,
      addrb   => Adr_b,
      enb     => ce_b_i,
      regceb  => '1',
      web     => wr_rd_n_b_i,
      doutb   => Data_out_b,

      dbiterr => open,
      sbiterr => open );

--assert (create_v2_mem)
--report "The primitive RAMB16_S4_S36 is not Supported by the Target device"
--severity FAILURE; 
   
end architecture imp;
