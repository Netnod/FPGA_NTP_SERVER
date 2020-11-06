## PCS-PMA & 10GBASE-R constraints

##GT Ref clk
set_property PACKAGE_PIN AH8 [get_ports xphy_refclk_p]
set_property PACKAGE_PIN AH7 [get_ports xphy_refclk_n]

##---------------------------------------------------------------------------------------
## 10GBASE-R constraints
##---------------------------------------------------------------------------------------
## SFP+ Cage mapping on VC709
# P2 --> X1Y13
# P3 --> X1Y12
# P4 --> X1Y14
# P5 --> X1Y15
## GT placement ## MGT_BANK_113

# order of ports match panel not pcb!
set_property PACKAGE_PIN AN5 [get_ports xphy1_rxn]
set_property PACKAGE_PIN AN6 [get_ports xphy1_rxp]
set_property PACKAGE_PIN AP3 [get_ports xphy1_txn]
set_property PACKAGE_PIN AP4 [get_ports xphy1_txp]
set_property PACKAGE_PIN AB41 [get_ports sfp_tx_disable1]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable1]
set_property PACKAGE_PIN Y38 [get_ports sfp_tx_fault1]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_fault1]
set_property PACKAGE_PIN AB42 [get_ports sfp_module_detect1_n]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_module_detect1_n]
set_property PACKAGE_PIN Y39 [get_ports sfp_signal_lost1]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_signal_lost1]

set_property PACKAGE_PIN AM7 [get_ports xphy0_rxn]
set_property PACKAGE_PIN AM8 [get_ports xphy0_rxp]
set_property PACKAGE_PIN AN1 [get_ports xphy0_txn]
set_property PACKAGE_PIN AN2 [get_ports xphy0_txp]
set_property PACKAGE_PIN Y42 [get_ports sfp_tx_disable0]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable0]
set_property PACKAGE_PIN AA39 [get_ports sfp_tx_fault0]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_fault0]
set_property PACKAGE_PIN AA42 [get_ports sfp_module_detect0_n]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_module_detect0_n]
set_property PACKAGE_PIN AA40 [get_ports sfp_signal_lost0]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_signal_lost0]

set_property PACKAGE_PIN AL5 [get_ports xphy2_rxn]
set_property PACKAGE_PIN AL6 [get_ports xphy2_rxp]
set_property PACKAGE_PIN AM3 [get_ports xphy2_txn]
set_property PACKAGE_PIN AM4 [get_ports xphy2_txp]
set_property PACKAGE_PIN AC38 [get_ports sfp_tx_disable2]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable2]
set_property PACKAGE_PIN AA41 [get_ports sfp_tx_fault2]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_fault2]
set_property PACKAGE_PIN AC39 [get_ports sfp_module_detect2_n]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_module_detect2_n]
set_property PACKAGE_PIN AD38 [get_ports sfp_signal_lost2]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_signal_lost2]

set_property PACKAGE_PIN AJ5 [get_ports xphy3_rxn]
set_property PACKAGE_PIN AJ6 [get_ports xphy3_rxp]
set_property PACKAGE_PIN AL1 [get_ports xphy3_txn]
set_property PACKAGE_PIN AL2 [get_ports xphy3_txp]
set_property PACKAGE_PIN AC40 [get_ports sfp_tx_disable3]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable3]
set_property PACKAGE_PIN AE38 [get_ports sfp_tx_fault3]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_fault3]
set_property PACKAGE_PIN AC41 [get_ports sfp_module_detect3_n]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_module_detect3_n]
set_property PACKAGE_PIN AD40 [get_ports sfp_signal_lost3]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_signal_lost3]
