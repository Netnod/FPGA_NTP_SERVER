#--------------------------------------------------------------------
# NTP clock A
set_property PACKAGE_PIN K40 [get_ports TEN_MHZ_INA_clk_n]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports TEN_MHZ_INA_clk_p]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports TEN_MHZ_INA_clk_n]

set_property PACKAGE_PIN K42 [get_ports PPS_INA_P]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports PPS_INA_N]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports PPS_INA_P]

set_property PACKAGE_PIN G39 [get_ports TEN_MHZ_OUTA]
set_property IOSTANDARD LVCMOS18 [get_ports TEN_MHZ_OUTA]
set_property DRIVE 12 [get_ports TEN_MHZ_OUTA]
#set_property OFFCHIP_TERM NONE [get_ports TEN_MHZ_OUTA]

set_property PACKAGE_PIN N40 [get_ports PPS_OUTA]
set_property IOSTANDARD LVCMOS18 [get_ports PPS_OUTA]
set_property DRIVE 12 [get_ports PPS_OUTA]
set_property SLEW FAST [get_ports PPS_OUTA]
#set_property OFFCHIP_TERM NONE [get_ports PPS_OUTA]

#--------------------------------------------------------------------
# NTP clock B
#set_property PACKAGE_PIN J41 [get_ports TEN_MHZ_INB_clk_n] # FMC1_HPC_LA01_CC_N
# FMC1_HPC_HB00_CC_N
set_property PACKAGE_PIN J26 [get_ports TEN_MHZ_INB_clk_n]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports TEN_MHZ_INB_clk_p]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports TEN_MHZ_INB_clk_n]

#set_property PACKAGE_PIN N38 [get_ports PPS_INB_P] # FMC1_HPC_LA10_P
# FMC1_HPC_HB19_P
set_property PACKAGE_PIN L25 [get_ports PPS_INB_P]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports PPS_INB_N]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports PPS_INB_P]

#set_property PACKAGE_PIN H39 [get_ports TEN_MHZ_OUTB] # FMC1_HPC_LA13_P
# FMC1_HPC_HB15_P
set_property PACKAGE_PIN M21 [get_ports TEN_MHZ_OUTB]
set_property IOSTANDARD LVCMOS18 [get_ports TEN_MHZ_OUTB]
set_property DRIVE 12 [get_ports TEN_MHZ_OUTB]
#set_property OFFCHIP_TERM NONE [get_ports TEN_MHZ_OUTB]

#set_property PACKAGE_PIN N39 [get_ports PPS_OUTB] # FMC1_HPC_LA14_P
# FMC1_HPC_HB21_P
set_property PACKAGE_PIN P22 [get_ports PPS_OUTB]
set_property IOSTANDARD LVCMOS18 [get_ports PPS_OUTB]
set_property DRIVE 12 [get_ports PPS_OUTB]
set_property SLEW FAST [get_ports PPS_OUTB]
#set_property OFFCHIP_TERM NONE [get_ports PPS_OUTB]

# FMC1_HPC_LA11_P
set_property PACKAGE_PIN F40 [get_ports HEAD2]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD2]
# FMC1_HPC_LA11_N
set_property PACKAGE_PIN F41 [get_ports HEAD4]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD4]
# FMC1_HPC_LA12_P
set_property PACKAGE_PIN R40 [get_ports HEAD6]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD6]
# FMC1_HPC_LA12_N
set_property PACKAGE_PIN P40 [get_ports HEAD8]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD8]
# FMC1_HPC_LA07_P
set_property PACKAGE_PIN G41 [get_ports HEAD10]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD10]
# FMC1_HPC_LA07_N
set_property PACKAGE_PIN G42 [get_ports HEAD12]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD12]
# FMC1_HPC_LA08_P
set_property PACKAGE_PIN M37 [get_ports HEAD14]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD14]
# FMC1_HPC_LA08_N
set_property PACKAGE_PIN M38 [get_ports HEAD16]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD16]
# FMC1_HPC_LA04_P
set_property PACKAGE_PIN H40 [get_ports HEAD18]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD18]
# FMC1_HPC_LA04_N
set_property PACKAGE_PIN H41 [get_ports HEAD20]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD20]
# FMC1_HPC_LA03_P
set_property PACKAGE_PIN M42 [get_ports HEAD22]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD22]
# FMC1_HPC_LA03_N
set_property PACKAGE_PIN L42 [get_ports HEAD24]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD24]
# FMC1_HPC_LA02_P
set_property PACKAGE_PIN P41 [get_ports HEAD26]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD26]
# FMC1_HPC_LA02_N
set_property PACKAGE_PIN N41 [get_ports HEAD28]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD28]
# FMC1_HPC_LA09_P
set_property PACKAGE_PIN R42 [get_ports HEAD30]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD30]
# FMC1_HPC_LA09_N
set_property PACKAGE_PIN P42 [get_ports HEAD32]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD32]

# FMC1_HPC_LA05_P
set_property PACKAGE_PIN M41 [get_ports HEAD34]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD34]
# FMC1_HPC_LA05_N
set_property PACKAGE_PIN L41 [get_ports HEAD36]
set_property IOSTANDARD LVCMOS18 [get_ports HEAD36]

set_input_delay  -clock [get_clocks -of_objects [get_pins ntps_interfaces_0/ntp_clock_topA/pll_0/clk_out2]] 7.000 PPS_INA_P
set_input_delay  -clock [get_clocks -of_objects [get_pins ntps_interfaces_0/ntp_clock_topA/pll_0/clk_out2]] 7.000 PPS_INA_N
set_output_delay -clock [get_clocks -of_objects [get_pins ntps_interfaces_0/ntp_clock_topA/pll_0/clk_out2]] 0.000 PPS_OUTA

set_input_delay  -clock [get_clocks -of_objects [get_pins ntps_interfaces_0/ntp_clock_topB/pll_0/clk_out2]] 7.000 PPS_INB_P
set_input_delay  -clock [get_clocks -of_objects [get_pins ntps_interfaces_0/ntp_clock_topB/pll_0/clk_out2]] 7.000 PPS_INB_N
set_output_delay -clock [get_clocks -of_objects [get_pins ntps_interfaces_0/ntp_clock_topB/pll_0/clk_out2]] 0.000 PPS_OUTB

set_property IOB TRUE [get_ports PPS_OUTA]
set_property IOB TRUE [get_ports PPS_OUTB]
set_property IOB TRUE [get_ports PPS_INA*]
set_property IOB TRUE [get_ports PPS_INB*]

# EOF
