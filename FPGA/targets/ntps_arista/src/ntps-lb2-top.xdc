#-------------------------------------------------------------------------------
#- Copyright (c) 2022 Netnod AB
#- Copyright (c) 2021 Arista Networks, Inc. All rights reserved.
#-------------------------------------------------------------------------------
#- Author:
#-   wingel@netnod.se
#-   fdk-support@arista.com
#-
#- Description:
#-   NTPS Application with Timestamp IP core l and lb2 board standard.
#-
#-   Licensed under BSD 3-clause license:
#-     https://opensource.org/licenses/BSD-3-Clause
#-
#- Tags:
#-   license-bsd-3-clause
#-
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#- Clock Definitions
#-------------------------------------------------------------------------------

# Define Quad 1 GT Clocks - 4 x Rx and one Tx
create_generated_clock -name ap5_rxclk [get_pins -hier -filter {NAME =~ *macphy_i*/*.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST/RXOUTCLK}]
create_generated_clock -name ap6_rxclk [get_pins -hier -filter {NAME =~ *macphy_i*/*.gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST/RXOUTCLK}]
create_generated_clock -name ap7_rxclk [get_pins -hier -filter {NAME =~ *macphy_i*/*.gen_gtye4_channel_inst[2].GTYE4_CHANNEL_PRIM_INST/RXOUTCLK}]
create_generated_clock -name ap8_rxclk [get_pins -hier -filter {NAME =~ *macphy_i*/*.gen_gtye4_channel_inst[3].GTYE4_CHANNEL_PRIM_INST/RXOUTCLK}]
create_generated_clock -name q1_txclk  [get_pins -hier -filter {NAME =~ *macphy_i*/*.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST/TXOUTCLK}]
# Define Quad 1 User Clocks - 4 x Rx and one Tx
    # Not required when not in OverClocked Mode
# Define Clock Delay Groups to manage skew between CLK and CLKDIV pins
    # Not required when not in OverClocked Mode

#-------------------------------------------------------------------------------
#- Timing Exceptions
#-------------------------------------------------------------------------------

set_clock_groups -asynchronous -group [get_clocks refclk_25] -group [get_clocks sem_clk]
set_clock_groups -asynchronous -group [get_clocks refclk_25] -group [get_clocks i2c_clk_*]
set_clock_groups -asynchronous -group [get_clocks refclk_25] -group [get_clocks ap*_rxclk]

set_clock_groups -asynchronous -group [get_clocks clk_500M_int] -group [get_clocks ap*_rxclk]
set_clock_groups -asynchronous -group [get_clocks clk_500M_ext] -group [get_clocks ap*_rxclk]

set_false_path -from [get_pins arista_sysctl_i/gen_sem.sem_i/g_icap.u_icap/CLK] -to [get_pins -hier -filter {NAME =~ arista_sysctl_i/gen_sem.sem_i/*/controller_synchro_icap_prerror/sync_a/D}]
set_false_path -from [get_pins arista_sysctl_i/gen_sem.sem_i/g_icap.u_icap/CLK] -to [get_pins -hier -filter {NAME =~ arista_sysctl_i/gen_sem.sem_i/*/controller_synchro_icap_prdone/sync_a/D}]
set_false_path -from [get_pins arista_sysctl_i/gen_sem.sem_i/g_icap.u_icap/CLK] -to [get_pins -hier -filter {NAME =~ arista_sysctl_i/gen_sem.sem_i/*/controller_synchro_icap_avail/sync_a/D}]

# ntp_clock need this. Don't know why.  Same problem on VCU118
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets proj_top_i/refclk_ts]

set_clock_groups -name ten_mhz_1 -asynchronous -group [get_clocks clk_out2_ntp_clock_pll]
set_clock_groups -name ten_mhz_2 -asynchronous -group [get_clocks clk_out2_ntp_clock_pll_1]

# We really want combinational loops for the rosc oscillators.
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets * -hierarchical -filter {NAME =~ */rosc/core/oscillators[0].rosc_array/dout_new*}]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets * -hierarchical -filter {NAME =~ */rosc/core/oscillators[*].rosc_array/dout_reg*}]

#-------------------------------------------------------------------------------
#- Location Constraints
#-------------------------------------------------------------------------------

create_pblock sem
resize_pblock [get_pblocks sem] -add {SLICE_X151Y300:SLICE_X155Y329}
resize_pblock [get_pblocks sem] -add {RAMB36_X10Y60:RAMB36_X10Y65}
resize_pblock [get_pblocks sem] -add {RAMB18_X10Y120:RAMB18_X10Y131}
resize_pblock [get_pblocks sem] -add {DSP48E2_X17Y120:DSP48E2_X17Y131}

add_cells_to_pblock -pblock sem -cells [get_cells arista_sysctl_i/gen_sem.sem_i/*]
remove_cells_from_pblock sem [get_cells -hier -filter {NAME =~ arista_sysctl_i/gen_sem.sem_i/*u_sem_ip/inst/controller/slr*_fecc_*_reg*}]
remove_cells_from_pblock sem [get_cells arista_sysctl_i/gen_sem.sem_i/g_icap.u_icap]
remove_cells_from_pblock sem [get_cells arista_sysctl_i/gen_sem.sem_i/g_slr[0].g_ecc.u_frame_ecc]
remove_cells_from_pblock sem [get_cells arista_sysctl_i/gen_sem.sem_i/g_slr[1].g_ecc.u_frame_ecc]
remove_cells_from_pblock sem [get_cells arista_sysctl_i/gen_sem.sem_i/g_slr[2].g_ecc.u_frame_ecc]

set_property LOC CONFIG_SITE_X0Y1 [get_cells arista_sysctl_i/gen_sem.sem_i/g_icap.u_icap]
set_property LOC CONFIG_SITE_X0Y0 [get_cells arista_sysctl_i/gen_sem.sem_i/g_slr[0].g_ecc.u_frame_ecc]
set_property LOC CONFIG_SITE_X0Y1 [get_cells arista_sysctl_i/gen_sem.sem_i/g_slr[1].g_ecc.u_frame_ecc]
set_property LOC CONFIG_SITE_X0Y2 [get_cells arista_sysctl_i/gen_sem.sem_i/g_slr[2].g_ecc.u_frame_ecc]

#-------------------------------------------------------------------------------
#- Physical Constraints
#- (Can be in a separate file to the above timing constraints)
#-------------------------------------------------------------------------------

set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[68]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[67]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[66]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[65]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[64]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[63]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[62]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[61]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[60]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[59]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[58]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[57]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[56]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[55]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[54]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[53]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[52]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[51]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[50]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[49]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[48]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[47]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[46]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[45]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[44]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[43]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[42]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[41]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[40]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[39]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[38]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[37]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[36]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[35]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[34]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[33]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[32]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[31]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[30]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[29]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[28]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[27]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[26]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[25]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[24]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[23]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[22]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[21]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[20]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[19]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[18]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[17]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[16]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[15]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[14]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[13]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[12]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[11]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[10]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[9]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[8]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[7]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[6]]
set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[5]]
# set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[4]]
# set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[3]]
# set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[2]]
# set_property IO_BUFFER_TYPE NONE [get_ports gt_tx*[1]]
set_property IO_BUFFER_TYPE NONE [get_ports pcie_tx*]
