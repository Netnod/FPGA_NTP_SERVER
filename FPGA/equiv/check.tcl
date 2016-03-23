set hdlin_unresolved_modules black_box

# Read old board based design

#read_verilog -container r -libname WORK -01 synchronizer_simple.v
#read_verilog -container r -libname WORK -01 synchronizer_vector.v

read_verilog -container r -libname WORK -01 ntps_top_rst_axi_pcie3_0_250M_0.v
read_verilog -container r -libname WORK -01 ntps_top_axi_ethernetlite_0_0.v
read_verilog -container r -libname WORK -01 ntps_top_util_ds_buf_0_0.v
read_verilog -container r -libname WORK -01 ntps_top_util_ds_buf_0_3.v
read_verilog -container r -libname WORK -01 ntps_top_clock_control_0_0.v

read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_pps_gen_0_0/synth/ntps_top_pps_gen_0_0.v
read_verilog -container r -libname WORK -01 pps_test_imp_1TIJF2L.v

read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/new/clk50_gen.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_clk50_gen_0_0/synth/ntps_top_clk50_gen_0_0.v

read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_axi_pcie3_0_0/synth/ntps_top_axi_pcie3_0_0.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/ipshared/user.org/network_path_shared_v1_0/73cd8987/network_path_shared.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_network_path_shared_0_2/synth/ntps_top_network_path_shared_0_2.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/ipshared/user.org/network_path_v1_0/491b6e57/network_path.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_network_path_0_0/synth/ntps_top_network_path_0_0.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_network_path_1_0/synth/ntps_top_network_path_1_0.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_network_path_1_1/synth/ntps_top_network_path_1_1.v

read_verilog -container r -libname WORK -01 ../../keymem/ip/keymem/keymem_stub.v
read_verilog -container r -libname WORK -01 ../../keymem/ip/axi_keymem_ctrl/axi_keymem_ctrl_stub.v
read_verilog -container r -libname WORK -01 ../../keymem/hdl/keymem_top.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_keymem_top_0_0/synth/ntps_top_keymem_top_0_0.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_keymem_top_0_1/synth/ntps_top_keymem_top_0_1.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_keymem_top_0_2/synth/ntps_top_keymem_top_0_2.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_keymem_top_0_3/synth/ntps_top_keymem_top_0_3.v

read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/new/mdio_out_mux.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_mdio_mux_0_0/synth/ntps_top_mdio_mux_0_0.v

#read_sverilog -container r -libname WORK ../../xilinx/kcpsm6.v
#read_verilog -container r -libname WORK -01 ../../xilinx/power_test_control_program.v
#read_verilog -container r -libname WORK -01 ../../xilinx/power_test_control.v
#read_verilog -container r -libname WORK -01 ../../xilinx/vc709_power_monitor.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/ipshared/mechanicalmen/user_registers_slave_v1_0/7d130b43/user_registers_axi_slave.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/ipshared/mechanicalmen/user_registers_slave_v1_0/7d130b43/imports/common/user_registers_slave.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_user_registers_slave_0_1/synth/ntps_top_user_registers_slave_0_1.v

# AXI backplane
read_verilog -container r -libname WORK -01 ../ip/ntps_top_auto_pc_0/ntps_top_auto_pc_0_stub.v
read_verilog -container r -libname WORK -01 ../ip/ntps_top_auto_ds_0/ntps_top_auto_ds_0_stub.v 
read_verilog -container r -libname WORK -01 ../ip/ntps_top_s00_data_fifo_0/ntps_top_s00_data_fifo_0_stub.v
read_verilog -container r -libname WORK -01 ../ip/ntps_top_xbar_0/ntps_top_xbar_0_stub.v
read_verilog -container r -libname WORK -01 ntps_top_axi_pcie3_0_axi_periph_1.v
read_verilog -container r -libname WORK -01 consts.v

read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/ipshared/mechanicalmen/ntp_clock_v1_0/735e2c1f/hdl/ntp_clock_v1_0.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/ipshared/mechanicalmen/ntp_clock_v1_0/735e2c1f/hdl/ntp_clock_v1_0_S00_AXI.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/ipshared/mechanicalmen/ntp_clock_v1_0/735e2c1f/hdl/ntp_counters.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/ipshared/mechanicalmen/ntp_clock_v1_0/735e2c1f/hdl/pll_sync.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_ntp_clock_0_0/synth/ntps_top_ntp_clock_0_0.v
read_verilog -container r -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_ntp_clock_0_1/synth/ntps_top_ntp_clock_0_1.v

read_verilog -container r -libname WORK -01 ../../ntp_clock/ip/ntp_clock_ds_buf/ntp_clock_ds_buf_stub.v
read_verilog -container r -libname WORK -01 ../../ntp_clock/ip/ntp_clock_pll/ntp_clock_pll_stub.v

read_verilog -container r -libname WORK -01 ntp_clock_top.v

read_verilog -container r -libname WORK -01 ntps_top.v
set_top r:/WORK/ntps_top

# Read new hdl based design

#read_verilog -container i -libname WORK -01 synchronizer_simple.v
#read_verilog -container i -libname WORK -01 synchronizer_vector.v

read_verilog -container i -libname WORK -01 ntps_top_util_ds_buf_0_0.v
read_verilog -container i -libname WORK -01 ntps_top_util_ds_buf_0_3.v
read_verilog -container i -libname WORK -01 ntps_top_clock_control_0_0.v

read_verilog -container i -libname WORK -01 ../../ntp_clock/hdl/pps_gen.v
read_verilog -container i -libname WORK -01 ../../ntp_clock/hdl/pps_test.v

read_verilog -container i -libname WORK -01 ../hdl/clk50_gen.v

read_verilog -container i -libname WORK -01 ../../network_path/hdl/network_path_shared.v
read_verilog -container i -libname WORK -01 ../../network_path/hdl/network_path.v

read_verilog -container i -libname WORK -01 ../../keymem/ip/keymem/keymem_stub.v
read_verilog -container i -libname WORK -01 ../../keymem/ip/axi_keymem_ctrl/axi_keymem_ctrl_stub.v
read_verilog -container i -libname WORK -01 ../../keymem/hdl/keymem_top.v

read_verilog -container i -libname WORK -01 ../hdl/mdio_mux.v
read_verilog -container i -libname WORK -01 ntps_top_axi_ethernetlite_0_0.v

#read_sverilog -container i -libname WORK ../../xilinx/kcpsm6.v
#read_verilog -container i -libname WORK -01 ../../xilinx/power_test_control_program.v
#read_verilog -container i -libname WORK -01 ../../xilinx/power_test_control.v
#read_verilog -container i -libname WORK -01 ../../xilinx/vc709_power_monitor.v
read_verilog -container i -libname WORK -01 ../../pvtmon/pvtmon_axi_slave.v
read_verilog -container i -libname WORK -01 ../../pvtmon/pvtmon_top.v

read_verilog -container i -libname WORK -01 ntps_top_rst_axi_pcie3_0_250M_0.v
read_verilog -container i -libname WORK -01 /home/rolf/Work/Xilinx/NTP_SERVER/NTP_SERVER.srcs/sources_1/bd/ntps_top/ip/ntps_top_axi_pcie3_0_0/synth/ntps_top_axi_pcie3_0_0.v
read_verilog -container i -libname WORK -01 ../ip/ntps_top_auto_pc_0/ntps_top_auto_pc_0_stub.v
read_verilog -container i -libname WORK -01 ../ip/ntps_top_auto_ds_0/ntps_top_auto_ds_0_stub.v 
read_verilog -container i -libname WORK -01 ../ip/ntps_top_s00_data_fifo_0/ntps_top_s00_data_fifo_0_stub.v
read_verilog -container i -libname WORK -01 ../ip/ntps_top_xbar_0/ntps_top_xbar_0_stub.v
read_verilog -container i -libname WORK -01 ../hdl/pcie_axi.v
read_verilog -container i -libname WORK -01 ../hdl/ntps_top.v

read_verilog -container i -libname WORK -01 ../../ntp_clock/ip/ntp_clock_ds_buf/ntp_clock_ds_buf_stub.v
read_verilog -container i -libname WORK -01 ../../ntp_clock/ip/ntp_clock_pll/ntp_clock_pll_stub.v
read_verilog -container i -libname WORK -01 ../../ntp_clock/hdl/pll_sync.v
read_verilog -container i -libname WORK -01 ../../ntp_clock/hdl/ntp_counters.v
read_verilog -container i -libname WORK -01 ../../ntp_clock/hdl/ntp_clock_axi_slave.v
read_verilog -container i -libname WORK -01 ../../ntp_clock/hdl/ntp_clock.v
read_verilog -container i -libname WORK -01 ../../ntp_clock/hdl/ntp_clock_top.v

set_top i:/WORK/ntps_top

verify
