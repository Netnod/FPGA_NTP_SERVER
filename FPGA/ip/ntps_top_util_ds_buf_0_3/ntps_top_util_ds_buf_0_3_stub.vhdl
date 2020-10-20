-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Tue Oct 13 12:54:45 2020
-- Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.6.2003 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/joachim/Sandbox/repos/FPGA_NTP_SERVER/FPGA/ip/ntps_top_util_ds_buf_0_3/ntps_top_util_ds_buf_0_3_stub.vhdl
-- Design      : ntps_top_util_ds_buf_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ntps_top_util_ds_buf_0_3 is
  Port ( 
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end ntps_top_util_ds_buf_0_3;

architecture stub of ntps_top_util_ds_buf_0_3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "IBUF_DS_P[0:0],IBUF_DS_N[0:0],IBUF_OUT[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "util_ds_buf,Vivado 2019.2";
begin
end;
