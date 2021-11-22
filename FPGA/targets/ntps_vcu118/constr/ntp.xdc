#=======================================================================
# ntp.xdc
# -------
# Constraints for NTP.
# Pins, I/Os, timing, groups, clock domain crossing etc.
#=======================================================================

# NTP clock A
# -----------
set_property PACKAGE_PIN AL35 [get_ports TEN_MHZ_INA_P]
set_property PACKAGE_PIN AL36 [get_ports TEN_MHZ_INA_N]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports TEN_MHZ_INA_P]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports TEN_MHZ_INA_N]
set_clock_groups -name ntp_clocks_A -asynchronous -group [get_clocks -include_generated_clocks TEN_MHZ_INA_P]

# Avoid ERROR: [Place 30-681] Sub-optimal placement for a global
# clock-capable IO pin and MMCM pair. As a workaround for this error,
# please insert a BUFG in between the IO and the MMCM.  For some
# reason this error only occurs for TEN_MHZ_INA, not TEN_MHZ_INB.
# Why?
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ntps_interfaces_0/ntp_clock_topA/pll_0/inst/clkin1_ibufds/O]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ten_mhz_ina_ds_buf/O]

set_property PACKAGE_PIN AT35 [get_ports PPS_INA_P]
set_property PACKAGE_PIN AT36 [get_ports PPS_INA_N]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports PPS_INA_N]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports PPS_INA_P]
# set_input_delay  -clock [get_clocks -of_objects [get_pins ntps_interfaces_0/ntp_clock_topA/pll_0/clk_out2]] 7.000 PPS_INA_P
# set_input_delay  -clock [get_clocks -of_objects [get_pins ntps_interfaces_0/ntp_clock_topA/pll_0/clk_out2]] 7.000 PPS_INA_N
# set_property IOB TRUE [get_ports PPS_INA*]

set_property PACKAGE_PIN AJ36 [get_ports TEN_MHZ_OUTA]
set_property IOSTANDARD LVCMOS18 [get_ports TEN_MHZ_OUTA]

set_property PACKAGE_PIN AH31 [get_ports PPS_OUTA]
set_property IOSTANDARD LVCMOS18 [get_ports PPS_OUTA]
# set_output_delay -clock [get_clocks -of_objects [get_pins ntps_interfaces_0/ntp_clock_topA/pll_0/clk_out2]] 0.000 PPS_OUTA
# set_property IOB TRUE [get_ports PPS_OUTA]

# Constrain clock domain crossings for NTP time
set_max_delay 5 -from [get_pins ntps_interfaces_0/ntp_clock_topA/ntp_clock_0/NTP_TIME_reg[*]/Q] -to [get_pins network_path_*/tss/ntp_time_a_sync_reg[*]/D]


# NTP clock B
# -----------
set_property PACKAGE_PIN AY9 [get_ports TEN_MHZ_INB_P]
set_property PACKAGE_PIN BA9 [get_ports TEN_MHZ_INB_N]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports TEN_MHZ_INB_P]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports TEN_MHZ_INB_N]
set_clock_groups -name ntp_clocks_B -asynchronous -group [get_clocks -include_generated_clocks TEN_MHZ_INB_P]

set_property PACKAGE_PIN BD13 [get_ports PPS_INB_P]
set_property PACKAGE_PIN BE13 [get_ports PPS_INB_N]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports PPS_INB_N]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports PPS_INB_P]
# set_input_delay  -clock [get_clocks -of_objects [get_pins ntps_interfaces_0/ntp_clock_topB/pll_0/clk_out2]] 7.000 PPS_INB_P
# set_input_delay  -clock [get_clocks -of_objects [get_pins ntps_interfaces_0/ntp_clock_topB/pll_0/clk_out2]] 7.000 PPS_INB_N

set_property PACKAGE_PIN AG31 [get_ports TEN_MHZ_OUTB]
set_property IOSTANDARD LVCMOS18 [get_ports TEN_MHZ_OUTB]

set_property PACKAGE_PIN AW8 [get_ports PPS_OUTB]
set_property IOSTANDARD LVCMOS18 [get_ports PPS_OUTB]
# set_output_delay -clock [get_clocks -of_objects [get_pins ntps_interfaces_0/ntp_clock_topB/pll_0/clk_out2]] 0.000 PPS_OUTB
# set_property IOB TRUE [get_ports PPS_OUTB]
# set_property IOB TRUE [get_ports PPS_INB*]

# Constrain clock domain crossings for NTP time
set_max_delay 5 -from [get_pins ntps_interfaces_0/ntp_clock_topB/ntp_clock_0/NTP_TIME_reg[*]/Q] -to [get_pins network_path_*/tss/ntp_time_b_sync_reg[*]/D]

# EOF
