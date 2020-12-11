#=======================================================================
# ntp_top_constr.xdc
# ------------------
# Assoreted top level constraints.
# Pins, I/Os, for things not complex enough to warrant a
# separate constraint file.
#=======================================================================

# Device config
# -------------
set_property CFGBVS GND                                [current_design]
set_property CONFIG_VOLTAGE 1.8                        [current_design]


# Bitstream
# ---------
set_property BITSTREAM.GENERAL.COMPRESS true           [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN {DIV-1} [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES       [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8           [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES        [current_design]


# Reset
# -----
# set_property IOSTANDARD LVCMOS18 [get_ports pcie_perstn_raw]
# set_property PACKAGE_PIN AM17 [get_ports pcie_perstn_raw]
set_false_path -from [get_ports pcie_perstn_rst]
set_property PULLUP true [get_ports pcie_perstn_rst]


# LEDs on VCU118
# --------------
set_property PACKAGE_PIN AT32 [get_ports led_0]
set_property IOSTANDARD LVCMOS12 [get_ports led_0]
set_property DRIVE 8 [get_ports led_0]

set_property PACKAGE_PIN AV34 [get_ports led_1]
set_property IOSTANDARD LVCMOS12 [get_ports led_1]
set_property DRIVE 8 [get_ports led_1]

set_property PACKAGE_PIN AY30 [get_ports led_2]
set_property IOSTANDARD LVCMOS12 [get_ports led_2]
set_property DRIVE 8 [get_ports led_2]

set_property PACKAGE_PIN BB32 [get_ports led_3]
set_property IOSTANDARD LVCMOS12 [get_ports led_3]
set_property DRIVE 8 [get_ports led_3]

set_property PACKAGE_PIN BF32 [get_ports led_4]
set_property IOSTANDARD LVCMOS12 [get_ports led_4]
set_property DRIVE 8 [get_ports led_4]

set_property PACKAGE_PIN AU37 [get_ports led_5]
set_property IOSTANDARD LVCMOS12 [get_ports led_5]
set_property DRIVE 8 [get_ports led_5]

set_property PACKAGE_PIN AV36 [get_ports led_6]
set_property IOSTANDARD LVCMOS12 [get_ports led_6]
set_property DRIVE 8 [get_ports led_6]

set_property PACKAGE_PIN BA37 [get_ports led_7]
set_property IOSTANDARD LVCMOS12 [get_ports led_7]
set_property DRIVE 8 [get_ports led_7]

set_false_path -to [get_ports -filter NAME=~led_*]


# Assorted old constraints to be cleanup, included, removed etc.
# --------------------------------------------------------------
# set_property PACKAGE_PIN AB8 [get_ports PCIE_CLK_P]
# create_clock -period 10.000 -name PCIE_CLK -waveform {0.000 5.000} [get_ports PCIE_CLK_P]

# set_property IOSTANDARD DIFF_SSTL15 [get_ports SYS_CLK_P]
# set_property PACKAGE_PIN H19 [get_ports SYS_CLK_P]

# set_property PACKAGE_PIN AV35 [get_ports pcie_perst]
# set_property IOSTANDARD LVCMOS18 [get_ports pcie_perst]


# PMBUS
#------
# set_property PACKAGE_PIN AW37 [get_ports pmbus_clk]
# set_property IOSTANDARD LVCMOS18 [get_ports pmbus_clk]
# set_property PACKAGE_PIN AY39 [get_ports pmbus_data]
# set_property IOSTANDARD LVCMOS18 [get_ports pmbus_data]
# set_property PACKAGE_PIN AV38 [get_ports pmbus_alert]
# set_property IOSTANDARD LVCMOS18 [get_ports pmbus_alert]

#=======================================================================
# EOF ntps_top_constr.xdc
#=======================================================================
