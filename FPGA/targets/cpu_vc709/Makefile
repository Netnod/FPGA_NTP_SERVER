# Project settings
PROJ_NAME := cpu_vc709
FPGA_TOP := cpu_vc709_top
FPGA_PART := xc7vx690tffg1761-2
FPGA_BOARD := xilinx.com:vc709:part0:1.8

# Files for synthesis and simulation
SYN_FILES :=

# Constraint files
# Note, the order is important, some files contain definitions
# that later files rely upon
XDC_FILES :=

# IP files
XCI_FILES :=

TCL_FILES :=

# NEORV32_FILES are added to the library "neorv32" at the end, not the default library "work"
NEORV32_FILES :=

SYN_FILES += src/cpu_vc709_top.v
SYN_FILES += ../../cores/processor/rtl/neorv32_wrapper.vhd

SYN_FILES += ../../cores/verilog-i2c/rtl/i2c_slave_wbm.v
SYN_FILES += ../../cores/verilog-i2c/rtl/i2c_slave.v

NEORV32_FILES += ../../cores/processor/rtl/neorv32_cfs.vhd
SYN_FILES += ../../cores/processor/rtl/mirror_wb_slave.v
SYN_FILES += ../../cores/processor/rtl/cfs_twi_slave.v
SYN_FILES += ../../cores/processor/rtl/wb_axil_bridge.vhd

NEORV32_FILES += ../../cores/processor/rtl/neorv32_application_image.vhd

NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_boot_rom.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_bootloader_image.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_bus_keeper.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_busswitch.vhd
# NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_cfs.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_cpu.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_cpu_alu.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_cpu_bus.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_cpu_control.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_cpu_cp_bitmanip.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_cpu_cp_cfu.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_cpu_cp_fpu.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_cpu_cp_muldiv.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_cpu_cp_shifter.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_cpu_decompressor.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_cpu_regfile.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_debug_dm.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_debug_dtm.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_dmem.entity.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_fifo.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_gpio.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_gptmr.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_icache.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_imem.entity.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_mtime.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_neoled.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_onewire.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_package.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_pwm.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_slink.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_spi.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_sysinfo.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_top.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_trng.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_twi.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_uart.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_wdt.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_wishbone.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_xip.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/neorv32_xirq.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/mem/neorv32_dmem.default.vhd
NEORV32_FILES += ../../cores/neorv32/rtl/core/mem/neorv32_imem.default.vhd

SYN_FILES += $(NEORV32_FILES)

TCL_FILES += bd_vc709.tcl
TCL_FILES += neorv32.tcl

.PHONY: fpga vivado clean

all: fpga

fpga: $(PROJ_NAME).bit

vivado: $(PROJ_NAME).xpr
	vivado $(PROJ_NAME).xpr

clean:
	rm -f -- *~
	rm -f vivado*.log vivado*.jou
	rm -rf .Xil
	rm -rf -- $(PROJ_NAME).xpr $(PROJ_NAME).cache $(PROJ_NAME).hw $(PROJ_NAME).ip_user_files $(PROJ_NAME).runs $(PROJ_NAME).sim $(PROJ_NAME).srcs

neorv32.tcl: Makefile
	echo "set_property library neorv32 [ get_files \"$(NEORV32_FILES)\" ]" >neorv32.tcl

include ../common/vivado.mk
