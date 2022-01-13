# Project settings
PROJ_NAME := ntps_vc709_i2c
FPGA_TOP := i2c_top
FPGA_PART := xc7vx690tffg1761-2
FPGA_BOARD := xilinx.com:vc709:part0:1.8

# Files for synthesis and simulation
SYN_FILES :=

SYN_FILES += ../../cores/aes-siv/src/rtl/aes_siv_core.v
SYN_FILES += ../../cores/aes/src/rtl/aes_core.v
SYN_FILES += ../../cores/aes/src/rtl/aes_encipher_block.v
SYN_FILES += ../../cores/aes/src/rtl/aes_key_mem.v
SYN_FILES += ../../cores/aes/src/rtl/aes_sbox.v
SYN_FILES += ../../cores/cmac/src/rtl/cmac_core.v
SYN_FILES += ../../cores/md5/src/rtl/md5_core.v
SYN_FILES += ../../cores/rosc_entropy/src/rtl/rosc.v
SYN_FILES += ../../cores/rosc_entropy/src/rtl/rosc_entropy.v
SYN_FILES += ../../cores/rosc_entropy/src/rtl/rosc_entropy_core.v
SYN_FILES += ../../cores/sha1/src/rtl/sha1_core.v
SYN_FILES += ../../cores/sha1/src/rtl/sha1_w_mem.v
SYN_FILES += ../../cores/siphash/src/rtl/siphash_core.v

SYN_FILES += ../../cores/v7_xt_conn_trd/hardware/sources/hdl/clock_control/clock_control.v
SYN_FILES += ../../cores/v7_xt_conn_trd/hardware/sources/hdl/clock_control/clock_control_program.v
SYN_FILES += ../../cores/v7_xt_conn_trd/hardware/sources/hdl/clock_control/kcpsm6.v
SYN_FILES += ../../cores/v7_xt_conn_trd/hardware/sources/hdl/common/synchronizer_simple.v
SYN_FILES += ../../cores/v7_xt_conn_trd/hardware/sources/hdl/common/synchronizer_vector.v
SYN_FILES += ../../cores/v7_xt_conn_trd/hardware/sources/hdl/pvtmon/kcpsm6.v
SYN_FILES += ../../cores/v7_xt_conn_trd/hardware/sources/hdl/pvtmon/power_test_control.v
SYN_FILES += ../../cores/v7_xt_conn_trd/hardware/sources/hdl/pvtmon/power_test_control_program.v
SYN_FILES += ../../cores/v7_xt_conn_trd/hardware/sources/hdl/pvtmon/vc709_power_monitor.v

SYN_FILES += ../../cores/xge_ll_mac/hdl/oc_mac.v
SYN_FILES += ../../cores/xge_ll_mac/hdl/rx_control.v
SYN_FILES += ../../cores/xge_ll_mac/hdl/rx_enqueue.v
SYN_FILES += ../../cores/xge_ll_mac/hdl/tx_control.v
SYN_FILES += ../../cores/xge_ll_mac/hdl/tx_dequeue.v

SYN_FILES += ../../network_path/api_extension/src/rtl/api_extension.v
SYN_FILES += ../../network_path/hdl/network_path.v
SYN_FILES += ../../network_path/hdl/network_path_axi_slave.v
SYN_FILES += ../../network_path/hdl/network_path_shared.v
SYN_FILES += ../../network_path/keymem/src/rtl/ntp_auth_keymem.v
SYN_FILES += ../../network_path/keymem/src/rtl/nts_keymem.v
SYN_FILES += ../../network_path/nts/src/rtl/memory/bram.v
SYN_FILES += ../../network_path/nts/src/rtl/memory/bram_dp2w.v
SYN_FILES += ../../network_path/nts/src/rtl/memory/bram_dpge.v
SYN_FILES += ../../network_path/nts/src/rtl/memory/memory_ctrl.v
SYN_FILES += ../../network_path/nts/src/rtl/misc/counter64.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_dispatcher.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_dispatcher_mux.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_engine/ctrl_gre.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_engine/icmp.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_engine/ntp_auth.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_engine/nts_api.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_engine/nts_engine.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_engine/nts_parser_ctrl.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_engine/nts_rx_buffer.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_engine/nts_timestamp.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_engine/nts_tx_buffer.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_engine/nts_verify_secure.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_extractor.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_extractor_mux.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_extractor_tx.v
SYN_FILES += ../../network_path/nts/src/rtl/nts_top.v
SYN_FILES += ../../network_path/nts/src/rtl/preprocessor.v
SYN_FILES += ../../network_path/nts_noncegen/src/rtl/nts_noncegen.v
SYN_FILES += ../../network_path/packet_proc/hdl/pp_api.v
SYN_FILES += ../../network_path/packet_proc/hdl/pp_mac_top.v
SYN_FILES += ../../network_path/packet_proc/hdl/pp_top.v

SYN_FILES += ../../ntp_clock/hdl/ntp_clock.v
SYN_FILES += ../../ntp_clock/hdl/ntp_clock_axi_slave.v
SYN_FILES += ../../ntp_clock/hdl/ntp_clock_select.v
SYN_FILES += ../../ntp_clock/hdl/ntp_clock_top.v
SYN_FILES += ../../ntp_clock/hdl/ntp_counters.v
SYN_FILES += ../../ntp_clock/hdl/pll_sync.v
SYN_FILES += ../../ntp_clock/hdl/pps_gen.v
SYN_FILES += ../../ntp_clock/hdl/pps_test.v
SYN_FILES += ../../ntp_clock/hdl/time_sel_sync.v

SYN_FILES += src/i2c_top.v
SYN_FILES += src/clk50_gen.v
SYN_FILES += src/ntps_clocks.v
SYN_FILES += src/ntps_phys.v
SYN_FILES += src/ntps_interfaces.v

SYN_FILES += pvtmon/pvtmon_axi_slave.v
SYN_FILES += pvtmon/pvtmon_top.v

SYN_FILES += vc709_i2c.srcs/sources_1/bd/design_1/synth/design_1.v

SYN_FILES += ../../cores/verilog-i2c/rtl/i2c_slave.v
SYN_FILES += ../../cores/verilog-i2c/rtl/i2c_slave_axil_master.v

# Constraint files
# Note, the order is important, some files contain definitions
# that later files rely upon
XDC_FILES :=
# XDC_FILES += constr/clock_control.xdc
# XDC_FILES += constr/clock_groups.xdc
# XDC_FILES += constr/debug.xdc
# XDC_FILES += constr/misc.xdc

XDC_FILES += constr/vc709.xdc
XDC_FILES += constr/interface_board.xdc
XDC_FILES += constr/sfp_ports.xdc
XDC_FILES += constr/network_path.tcl
XDC_FILES += constr/ntps.tcl

# IP files
XCI_FILES :=

XCI_FILES += xilinx_ip/network_path/ten_gig_eth_pcs_pma_ip/ten_gig_eth_pcs_pma_ip.xci
XCI_FILES += xilinx_ip/network_path/ten_gig_eth_pcs_pma_ip_shared_logic/ten_gig_eth_pcs_pma_ip_shared_logic_in_core.xci
# XCI_FILES += xilinx_ip/ntp_clock/ntp_clock_ds_buf/ntp_clock_ds_buf.xci
XCI_FILES += xilinx_ip/ntp_clock/ntp_clock_pll/ntp_clock_pll.xci
XCI_FILES += xilinx_ip/ntp_clock/ntps_top_clk_wiz_0_1/ntps_top_clk_wiz_0_1.xci
XCI_FILES += xilinx_ip/top/ntps_top_axi_ethernetlite_0_0/ntps_top_axi_ethernetlite_0_0.xci

XCI_FILES += vc709_i2c.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_0/design_1_auto_ds_0.xci
XCI_FILES += vc709_i2c.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0.xci
XCI_FILES += vc709_i2c.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xci
XCI_FILES += vc709_i2c.srcs/sources_1/bd/design_1/ip/design_1_util_ds_buf_0/design_1_util_ds_buf_0.xci
XCI_FILES += vc709_i2c.srcs/sources_1/bd/design_1/ip/design_1_axi_pcie3_0_0/ip_2/design_1_axi_pcie3_0_0_pcie3_ip.xci
XCI_FILES += vc709_i2c.srcs/sources_1/bd/design_1/ip/design_1_axi_pcie3_0_0/design_1_axi_pcie3_0_0.xci
XCI_FILES += vc709_i2c.srcs/sources_1/bd/design_1/ip/design_1_axi_pcie3_0_0/ip_0/axi_pcie3_v3_0_10_blk_mem_gen_v8_3_6_64B_parity.xci
XCI_FILES += vc709_i2c.srcs/sources_1/bd/design_1/ip/design_1_axi_pcie3_0_0/ip_1/axi_pcie3_v3_0_10_fifo_generator_v13_1_4_64B_parity.xci
XCI_FILES += vc709_i2c.srcs/sources_1/bd/design_1/ip/design_1_axi_pcie3_0_axi_periph_0/design_1_axi_pcie3_0_axi_periph_0.xci

# Tcl file to run before starting synthesis
TCL_PRE := pre_synth.tcl

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


include ../common/vivado.mk
