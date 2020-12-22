# Project settings
PROJ_NAME := ve_vcu118
FPGA_TOP := fpga
FPGA_PART := xcvu9p-flga2104-2L-e
FPGA_BOARD := xilinx.com:vcu118:part0:2.3

VE_DIR := ../../cores/verilog-ethernet

# Files for synthesis and simulation
SYN_FILES :=

# Constraint files
# Note, the order is important, some files contain definitions
# that later files rely upon
XDC_FILES :=

# TCL files
TCL_FILES :=

SYN_FILES += hdl/fpga.v
SYN_FILES += hdl/ntps_top.v
SYN_FILES += hdl/fpga_core.v
SYN_FILES += $(VE_DIR)/example/VCU118/fpga_10g/rtl/debounce_switch.v
SYN_FILES += $(VE_DIR)/example/VCU118/fpga_10g/rtl/sync_signal.v
SYN_FILES += $(VE_DIR)/example/VCU118/fpga_10g/rtl/mdio_master.v
SYN_FILES += $(VE_DIR)/rtl/eth_mac_1g_fifo.v
SYN_FILES += $(VE_DIR)/rtl/eth_mac_1g.v
SYN_FILES += $(VE_DIR)/rtl/axis_gmii_rx.v
SYN_FILES += $(VE_DIR)/rtl/axis_gmii_tx.v
SYN_FILES += $(VE_DIR)/rtl/eth_mac_10g_fifo.v
SYN_FILES += $(VE_DIR)/rtl/eth_mac_10g.v
SYN_FILES += $(VE_DIR)/rtl/axis_xgmii_rx_64.v
SYN_FILES += $(VE_DIR)/rtl/axis_xgmii_tx_64.v
SYN_FILES += $(VE_DIR)/rtl/eth_phy_10g.v
SYN_FILES += $(VE_DIR)/rtl/eth_phy_10g_rx.v
SYN_FILES += $(VE_DIR)/rtl/eth_phy_10g_rx_if.v
SYN_FILES += $(VE_DIR)/rtl/eth_phy_10g_rx_frame_sync.v
SYN_FILES += $(VE_DIR)/rtl/eth_phy_10g_rx_ber_mon.v
SYN_FILES += $(VE_DIR)/rtl/eth_phy_10g_tx.v
SYN_FILES += $(VE_DIR)/rtl/eth_phy_10g_tx_if.v
SYN_FILES += $(VE_DIR)/rtl/xgmii_baser_dec_64.v
SYN_FILES += $(VE_DIR)/rtl/xgmii_baser_enc_64.v
SYN_FILES += $(VE_DIR)/rtl/lfsr.v
SYN_FILES += $(VE_DIR)/rtl/eth_axis_rx.v
SYN_FILES += $(VE_DIR)/rtl/eth_axis_tx.v
SYN_FILES += $(VE_DIR)/rtl/udp_complete_64.v
SYN_FILES += $(VE_DIR)/rtl/udp_checksum_gen_64.v
SYN_FILES += $(VE_DIR)/rtl/udp_64.v
SYN_FILES += $(VE_DIR)/rtl/udp_ip_rx_64.v
SYN_FILES += $(VE_DIR)/rtl/udp_ip_tx_64.v
SYN_FILES += $(VE_DIR)/rtl/ip_complete_64.v
SYN_FILES += $(VE_DIR)/rtl/ip_64.v
SYN_FILES += $(VE_DIR)/rtl/ip_eth_rx_64.v
SYN_FILES += $(VE_DIR)/rtl/ip_eth_tx_64.v
SYN_FILES += $(VE_DIR)/rtl/ip_arb_mux.v
SYN_FILES += $(VE_DIR)/rtl/arp.v
SYN_FILES += $(VE_DIR)/rtl/arp_cache.v
SYN_FILES += $(VE_DIR)/rtl/arp_eth_rx.v
SYN_FILES += $(VE_DIR)/rtl/arp_eth_tx.v
SYN_FILES += $(VE_DIR)/rtl/eth_arb_mux.v
SYN_FILES += $(VE_DIR)/lib/axis/rtl/arbiter.v
SYN_FILES += $(VE_DIR)/lib/axis/rtl/priority_encoder.v
SYN_FILES += $(VE_DIR)/lib/axis/rtl/axis_adapter.v
SYN_FILES += $(VE_DIR)/lib/axis/rtl/axis_fifo.v
SYN_FILES += $(VE_DIR)/lib/axis/rtl/axis_switch.v
SYN_FILES += $(VE_DIR)/lib/axis/rtl/axis_register.v
SYN_FILES += $(VE_DIR)/lib/axis/rtl/axis_async_fifo.v
SYN_FILES += $(VE_DIR)/lib/axis/rtl/axis_async_fifo_adapter.v
SYN_FILES += $(VE_DIR)/lib/axis/rtl/sync_reset.v

XDC_FILES += constr/fpga.xdc
XDC_FILES += $(VE_DIR)/syn/eth_mac_fifo.tcl
XDC_FILES += $(VE_DIR)/lib/axis/syn/axis_async_fifo.tcl
XDC_FILES += $(VE_DIR)/lib/axis/syn/sync_reset.tcl

# TCL IP
TCL_FILES += xilinx_ip/gig_ethernet_pcs_pma_0.tcl
TCL_FILES += xilinx_ip/gtwizard_ultrascale_0.tcl

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
