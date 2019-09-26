-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Thu Sep 26 15:34:19 2019
-- Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/wingel/work/FPGA_NTP_INTERNAL/FPGA_NTP_SERVER/FPGA/ip/ntps_top_util_ds_buf_0_0/ntps_top_util_ds_buf_0_0_funcsim.vhdl
-- Design      : ntps_top_util_ds_buf_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_util_ds_buf_0_0_util_ds_buf is
  port (
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ntps_top_util_ds_buf_0_0_util_ds_buf : entity is "util_ds_buf";
end ntps_top_util_ds_buf_0_0_util_ds_buf;

architecture STRUCTURE of ntps_top_util_ds_buf_0_0_util_ds_buf is
  attribute box_type : string;
  attribute box_type of \USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUFDS_GTE2_I\ : label is "PRIMITIVE";
begin
\USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUFDS_GTE2_I\: unisim.vcomponents.IBUFDS_GTE2
    generic map(
      CLKCM_CFG => true,
      CLKRCV_TRST => true,
      CLKSWING_CFG => B"11"
    )
        port map (
      CEB => '0',
      I => IBUF_DS_P(0),
      IB => IBUF_DS_N(0),
      O => IBUF_OUT(0),
      ODIV2 => IBUF_DS_ODIV2(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ntps_top_util_ds_buf_0_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ntps_top_util_ds_buf_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ntps_top_util_ds_buf_0_0 : entity is "ntps_top_util_ds_buf_0_0,util_ds_buf,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of ntps_top_util_ds_buf_0_0 : entity is "ntps_top_util_ds_buf_0_0,util_ds_buf,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=util_ds_buf,x_ipVersion=2.1,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_BUF_TYPE=ibufdsgte2,C_SIZE=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ntps_top_util_ds_buf_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ntps_top_util_ds_buf_0_0 : entity is "util_ds_buf,Vivado 2015.2";
end ntps_top_util_ds_buf_0_0;

architecture STRUCTURE of ntps_top_util_ds_buf_0_0 is
begin
U0: entity work.ntps_top_util_ds_buf_0_0_util_ds_buf
     port map (
      IBUF_DS_N(0) => IBUF_DS_N(0),
      IBUF_DS_ODIV2(0) => IBUF_DS_ODIV2(0),
      IBUF_DS_P(0) => IBUF_DS_P(0),
      IBUF_OUT(0) => IBUF_OUT(0)
    );
end STRUCTURE;
