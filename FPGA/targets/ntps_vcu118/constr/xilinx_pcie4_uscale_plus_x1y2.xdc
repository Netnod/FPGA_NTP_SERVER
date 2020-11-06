##-----------------------------------------------------------------------------
##
## (c) Copyright 2012-2012 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.
##
##-----------------------------------------------------------------------------
##
## Project    : UltraScale+ FPGA PCI Express v4.0 Integrated Block
## File       : xilinx_pcie4_uscale_plus_x1y2.xdc
## Version    : 1.3 
##-----------------------------------------------------------------------------
#
###############################################################################
# Vivado - PCIe GUI / User Configuration 
###############################################################################
#
# Link Speed   - Gen3 - 8.0 Gb/s
# Link Width   - X16
# AXIST Width  - 512-bit
# AXIST Frequ  - 250 MHz = User Clock
# Core Clock   - 500 MHz
# Pipe Clock   - 125 MHz (Gen1) / 250 MHz (Gen2/Gen3/Gen4)
#
# Family       - virtexuplus
# Part         - xcvu9p
# Package      - flga2104
# Speed grade  - -2L
# PCIe Block   - X1Y2
# Xilinx BNo   - 5
#
# Xilinx Reference Board is VCU118
#
#
# PLL TYPE     - QPLL1
#
###############################################################################
# User Time Names / User Time Groups / Time Specs
###############################################################################
#
set_false_path -from [get_ports pcie_perstn_rst]
set_property PULLUP true [get_ports pcie_perstn_rst]

# set_property IOSTANDARD LVCMOS18 [get_ports pcie_perstn_raw]
# set_property PACKAGE_PIN AM17 [get_ports pcie_perstn_raw]

#

create_clock -name pcie_clk -period 10 [get_ports pcie_clk_p]
set_property PACKAGE_PIN AL9 [get_ports pcie_clk_p]
set_property PACKAGE_PIN AL8 [get_ports pcie_clk_n]

#

# LEDs for VCU118
set_property PACKAGE_PIN AT32 [get_ports led_0]
# user_link_up
set_property PACKAGE_PIN AV34 [get_ports led_1]
# Clock Up/Heart Beat(HB)
set_property PACKAGE_PIN AY30 [get_ports led_2]
# cfg_current_speed[0] => 00: Gen1; 01: Gen2; 10:Gen3; 11:Gen4
set_property PACKAGE_PIN BB32 [get_ports led_3]
# cfg_current_speed[1]
set_property PACKAGE_PIN BF32 [get_ports led_4]
# cfg_negotiated_width[0] => 000: x1; 001: x2; 010: x4; 011: x8; 100: x16 
set_property PACKAGE_PIN AU37 [get_ports led_5]
# cfg_negotiated_width[1]
set_property PACKAGE_PIN AV36 [get_ports led_6]
# cfg_negotiated_width[2]
set_property PACKAGE_PIN BA37 [get_ports led_7]
#

set_property IOSTANDARD LVCMOS12 [get_ports led_0]
set_property IOSTANDARD LVCMOS12 [get_ports led_1]
set_property IOSTANDARD LVCMOS12 [get_ports led_2]
set_property IOSTANDARD LVCMOS12 [get_ports led_3]
set_property IOSTANDARD LVCMOS12 [get_ports led_4]
set_property IOSTANDARD LVCMOS12 [get_ports led_5]
set_property IOSTANDARD LVCMOS12 [get_ports led_6]
set_property IOSTANDARD LVCMOS12 [get_ports led_7]
#
set_property DRIVE 8 [get_ports led_0]
set_property DRIVE 8 [get_ports led_1]
set_property DRIVE 8 [get_ports led_2]
set_property DRIVE 8 [get_ports led_3]
set_property DRIVE 8 [get_ports led_4]
set_property DRIVE 8 [get_ports led_5]
set_property DRIVE 8 [get_ports led_6]
set_property DRIVE 8 [get_ports led_7]

#
set_false_path -to [get_ports -filter NAME=~led_*]
#
# Clock for the 300 MHz clock is already created in the Clock Wizard IP.
# 300 MHz clock pin constraints.
set_property IOSTANDARD DIFF_SSTL12 [get_ports clk_300MHz_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports clk_300MHz_n]
set_property PACKAGE_PIN G31 [get_ports clk_300MHz_p]
set_property PACKAGE_PIN F31 [get_ports clk_300MHz_n]
#
#
# CLOCK_ROOT LOCKing to Reduce CLOCK SKEW
# Add/Edit  Clock Routing Option to improve clock path skew
#
# BITFILE/BITSTREAM compress options
# ##############################################################################
# Flash Programming Example Settings: These should be modified to match the target board.
# ##############################################################################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8 [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design ]
#
#
# pcie_clk vs TXOUTCLK
set_clock_groups -name async18 -asynchronous -group [get_clocks {pcie_clk}] -group [get_clocks -of_objects [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gtye4_channel_inst[*].GTYE4_CHANNEL_PRIM_INST/TXOUTCLK}]]
set_clock_groups -name async19 -asynchronous -group [get_clocks -of_objects [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gtye4_channel_inst[*].GTYE4_CHANNEL_PRIM_INST/TXOUTCLK}]] -group [get_clocks {pcie_clk}]
#
# clk_300MHz vs user_clk
set_clock_groups -name async20 -asynchronous -group [get_clocks -of_objects [get_ports clk_300MHz_p]] -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]]
set_clock_groups -name async21 -asynchronous -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] -group [get_clocks -of_objects [get_ports clk_300MHz_p]]
#
# clk_300MHz vs TXOUTCLK
set_clock_groups -name async22 -asynchronous -group [get_clocks -of_objects [get_ports clk_300MHz_p]] -group [get_clocks -of_objects [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gtye4_channel_inst[*].GTYE4_CHANNEL_PRIM_INST/TXOUTCLK}]]
set_clock_groups -name async23 -asynchronous -group [get_clocks -of_objects [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[*].*gen_gtye4_channel_inst[*].GTYE4_CHANNEL_PRIM_INST/TXOUTCLK}]] -group [get_clocks -of_objects [get_ports clk_300MHz_p]]
#
#
#
set_clock_groups -name asynco -asynchronous -group [get_clocks -of_objects [get_pins mem_clk_inst/clk_out1]] -group [get_clocks {pcie_clk}]
set_clock_groups -name asyncp -asynchronous -group [get_clocks {pcie_clk}] -group [get_clocks -of_objects [get_pins mem_clk_inst/clk_out1]]
#
#
#
# ASYNC CLOCK GROUPINGS
# pcie_clk vs user_clk
set_clock_groups -name async5 -asynchronous -group [get_clocks {pcie_clk}] -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]]
set_clock_groups -name async6 -asynchronous -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_userclk/O]] -group [get_clocks {pcie_clk}]
# pcie_clk vs pclk
set_clock_groups -name async1 -asynchronous -group [get_clocks {pcie_clk}] -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_pclk/O]]
set_clock_groups -name async2 -asynchronous -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_pclk/O]] -group [get_clocks {pcie_clk}]
#
#
#
# Add/Edit Pblock slice constraints for 512b soft logic to improve timing
#create_pblock soft_512b; add_cells_to_pblock [get_pblocks soft_512b] [get_cells {vcu118_pcie_x16_gen3_i/inst/pcie_4_0_pipe_inst/pcie_4_0_init_ctrl_inst vcu118_pcie_x16_gen3_i/inst/pcie_4_0_pipe_inst/pcie4_0_512b_intfc_mod}]
# Keep This Logic Left/Right Side Of The PCIe Block (Whichever is near to the FPGA Boundary)
#resize_pblock [get_pblocks soft_512b] -add {SLICE_X157Y300:SLICE_X168Y372}
#set_property EXCLUDE_PLACEMENT 1 [get_pblocks soft_512b]
#
set_clock_groups -name async24 -asynchronous -group [get_clocks -of_objects [get_pins vcu118_pcie_x16_gen3_i/inst/gt_top_i/diablo_gt.diablo_gt_phy_wrapper/phy_clk_i/bufg_gt_intclk/O]] -group [get_clocks {pcie_clk}]
#
#create_waiver -type METHODOLOGY -id {LUTAR-1} -user "pcie4_uscale_plus" -desc "user link up is synchroized in the user clk so it is safe to ignore"  -internal -scoped -tags 1024539  -objects [get_cells { pcie_app_uscale_i/PIO_i/len_i[5]_i_4 }] -objects [get_pins { pcie4_uscale_plus_0_i/inst/user_lnk_up_cdc/arststages_ff_reg[0]/CLR pcie4_uscale_plus_0_i/inst/user_lnk_up_cdc/arststages_ff_reg[1]/CLR }] 

