-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Nov 20 14:07:43 2019
-- Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/joachim/Sandbox/repos/FPGA_NTP_SERVER/FPGA/network_path/packet_proc/ip/pp_fifo_ss/pp_fifo_ss_stub.vhdl
-- Design      : pp_fifo_ss
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pp_fifo_ss is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 619 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 619 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );

end pp_fifo_ss;

architecture stub of pp_fifo_ss is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,din[619:0],wr_en,rd_en,dout[619:0],full,empty";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_4,Vivado 2019.1";
begin
end;
